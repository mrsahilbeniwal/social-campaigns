#!/bin/bash

# Social Campaign — Installer
# Detects your AI coding tool and drops the skill into the right folder.
# Usage: curl -fsSL https://raw.githubusercontent.com/mrsahilbeniwal/social-campaign/main/install.sh | bash

set -e

REPO="https://github.com/mrsahilbeniwal/social-campaign.git"
SKILL_NAME="social-campaign"
VERSION="1.0.0"

# colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m'

print_banner() {
    echo ""
    echo -e "${CYAN}╔══════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║${NC}  ${BOLD}Social Campaign${NC} — AI Skill Installer     ${CYAN}║${NC}"
    echo -e "${CYAN}║${NC}  v${VERSION}                                  ${CYAN}║${NC}"
    echo -e "${CYAN}╚══════════════════════════════════════════╝${NC}"
    echo ""
}

log_info() {
    echo -e "${BLUE}→${NC} $1"
}

log_success() {
    echo -e "${GREEN}✓${NC} $1"
}

log_warn() {
    echo -e "${YELLOW}!${NC} $1"
}

log_error() {
    echo -e "${RED}✗${NC} $1"
}

# figure out where the skill should go for each platform
detect_platforms() {
    FOUND=0

    # Claude Code
    if [ -d "$HOME/.claude" ]; then
        CLAUDE_SKILLS="$HOME/.claude/skills"
        log_info "Found Claude Code"
        FOUND=$((FOUND + 1))
    fi

    # Global agent skills (works with Antigravity, Cursor, Windsurf, etc.)
    if [ -d "$HOME/.agents/skills" ]; then
        AGENT_SKILLS="$HOME/.agents/skills"
        log_info "Found global agent skills directory"
        FOUND=$((FOUND + 1))
    fi

    # Cursor (check for Cursor config)
    if [ -d "$HOME/.cursor" ]; then
        CURSOR_DIR="$HOME/.cursor"
        log_info "Found Cursor"
        FOUND=$((FOUND + 1))
    fi

    # Windsurf
    if [ -d "$HOME/.windsurf" ] || [ -d "$HOME/.codeium" ]; then
        WINDSURF_DIR="$HOME/.windsurf"
        log_info "Found Windsurf"
        FOUND=$((FOUND + 1))
    fi

    if [ $FOUND -eq 0 ]; then
        log_warn "No AI coding tools detected automatically."
        log_warn "That's fine — we'll install to the global skills directory."
        AGENT_SKILLS="$HOME/.agents/skills"
    fi
}

# clone the repo into a temp dir, then copy only what matters
install_skill() {
    local TARGET_DIR="$1"
    local PLATFORM_NAME="$2"

    mkdir -p "$TARGET_DIR"

    # if skill already exists, ask before overwriting
    if [ -d "$TARGET_DIR/$SKILL_NAME" ]; then
        log_warn "Skill already installed at $TARGET_DIR/$SKILL_NAME"
        read -p "   Overwrite? (y/N) " -n 1 -r
        echo
        if [[ ! $REPLY =~ ^[Yy]$ ]]; then
            log_info "Skipped $PLATFORM_NAME"
            return
        fi
        rm -rf "$TARGET_DIR/$SKILL_NAME"
    fi

    # clone into a temp dir
    TMPDIR=$(mktemp -d)
    git clone --depth 1 --quiet "$REPO" "$TMPDIR/$SKILL_NAME" 2>/dev/null

    # copy only the skill files, not the github stuff
    mkdir -p "$TARGET_DIR/$SKILL_NAME"
    cp "$TMPDIR/$SKILL_NAME/SKILL.md" "$TARGET_DIR/$SKILL_NAME/"
    cp -r "$TMPDIR/$SKILL_NAME/references" "$TARGET_DIR/$SKILL_NAME/"

    # cleanup
    rm -rf "$TMPDIR"

    log_success "Installed to $TARGET_DIR/$SKILL_NAME ($PLATFORM_NAME)"
}

# let the user pick where to install
prompt_install() {
    echo ""
    echo -e "${BOLD}Where should I install?${NC}"
    echo ""

    OPTIONS=()
    
    if [ -n "$CLAUDE_SKILLS" ]; then
        OPTIONS+=("claude")
        echo "  1) Claude Code     → $CLAUDE_SKILLS/"
    fi

    if [ -n "$AGENT_SKILLS" ]; then
        OPTIONS+=("agent")
        echo "  2) Global Skills   → $AGENT_SKILLS/"
    fi

    echo "  a) All detected locations"
    echo "  p) Custom path"
    echo ""

    read -p "Pick one (default: a): " CHOICE
    CHOICE=${CHOICE:-a}

    case $CHOICE in
        1)
            if [ -n "$CLAUDE_SKILLS" ]; then
                install_skill "$CLAUDE_SKILLS" "Claude Code"
            fi
            ;;
        2)
            if [ -n "$AGENT_SKILLS" ]; then
                install_skill "$AGENT_SKILLS" "Global Skills"
            fi
            ;;
        a|A)
            [ -n "$CLAUDE_SKILLS" ] && install_skill "$CLAUDE_SKILLS" "Claude Code"
            [ -n "$AGENT_SKILLS" ] && install_skill "$AGENT_SKILLS" "Global Skills"
            # fallback if nothing was detected
            if [ -z "$CLAUDE_SKILLS" ] && [ -z "$AGENT_SKILLS" ]; then
                install_skill "$HOME/.agents/skills" "Global Skills"
            fi
            ;;
        p|P)
            read -p "Enter path: " CUSTOM_PATH
            install_skill "$CUSTOM_PATH" "Custom"
            ;;
        *)
            log_error "Invalid choice."
            exit 1
            ;;
    esac
}

# project-level install (drops skill in current project)
install_local() {
    local PROJECT_DIR="$1"
    install_skill "$PROJECT_DIR/.agents/skills" "This Project"
}

# main
print_banner

# check for git
if ! command -v git &>/dev/null; then
    log_error "git is required but not installed."
    log_error "Install git and try again: https://git-scm.com"
    exit 1
fi

# handle flags
if [ "$1" = "--local" ] || [ "$1" = "-l" ]; then
    log_info "Installing to current project only..."
    install_local "$(pwd)"
elif [ "$1" = "--global" ] || [ "$1" = "-g" ]; then
    log_info "Installing to global skills directory..."
    install_skill "$HOME/.agents/skills" "Global Skills"
elif [ "$1" = "--claude" ]; then
    log_info "Installing to Claude Code..."
    install_skill "$HOME/.claude/skills" "Claude Code"
elif [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    echo "Usage: install.sh [option]"
    echo ""
    echo "Options:"
    echo "  (none)      Interactive — detects your tools and asks where to install"
    echo "  --local     Install to current project only (.agents/skills/)"
    echo "  --global    Install to global skills (~/.agents/skills/)"
    echo "  --claude    Install to Claude Code (~/.claude/skills/)"
    echo "  --help      Show this message"
    echo ""
    echo "One-liner:"
    echo "  curl -fsSL https://raw.githubusercontent.com/mrsahilbeniwal/social-campaign/main/install.sh | bash"
    exit 0
else
    detect_platforms
    prompt_install
fi

echo ""
echo -e "${GREEN}${BOLD}Done!${NC} Open your AI coding tool and say:"
echo ""
echo -e "  ${CYAN}\"Create a social media campaign for this project\"${NC}"
echo ""
echo -e "That's it. The skill handles the rest."
echo ""
