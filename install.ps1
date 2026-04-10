# Social Campaign — Windows Installer
# Detects your AI coding tool and drops the skill into the right folder.
# Usage: irm https://raw.githubusercontent.com/mrsahilbeniwal/social-campaign/main/install.ps1 | iex

$ErrorActionPreference = "Stop"
$Version = "1.0.0"
$Repo = "https://github.com/mrsahilbeniwal/social-campaign.git"
$SkillName = "social-campaign"

function Write-Banner {
    Write-Host ""
    Write-Host "  ╔══════════════════════════════════════════╗" -ForegroundColor Cyan
    Write-Host "  ║  Social Campaign — AI Skill Installer    ║" -ForegroundColor Cyan
    Write-Host "  ║  v$Version                                  ║" -ForegroundColor Cyan
    Write-Host "  ╚══════════════════════════════════════════╝" -ForegroundColor Cyan
    Write-Host ""
}

function Write-Info($msg) { Write-Host "  → $msg" -ForegroundColor Blue }
function Write-Ok($msg) { Write-Host "  ✓ $msg" -ForegroundColor Green }
function Write-Warn($msg) { Write-Host "  ! $msg" -ForegroundColor Yellow }
function Write-Err($msg) { Write-Host "  ✗ $msg" -ForegroundColor Red }

function Install-Skill {
    param([string]$TargetDir, [string]$PlatformName)

    $SkillDir = Join-Path $TargetDir $SkillName

    if (Test-Path $SkillDir) {
        Write-Warn "Skill already installed at $SkillDir"
        $overwrite = Read-Host "   Overwrite? (y/N)"
        if ($overwrite -ne "y" -and $overwrite -ne "Y") {
            Write-Info "Skipped $PlatformName"
            return
        }
        Remove-Item -Recurse -Force $SkillDir
    }

    # clone to temp
    $TempDir = Join-Path $env:TEMP "social-campaign-install-$(Get-Random)"
    New-Item -ItemType Directory -Path $TempDir -Force | Out-Null

    Write-Info "Downloading skill files..."
    git clone --depth 1 --quiet $Repo "$TempDir\repo" 2>$null

    # copy only what matters
    New-Item -ItemType Directory -Path $SkillDir -Force | Out-Null
    Copy-Item "$TempDir\repo\SKILL.md" $SkillDir
    Copy-Item "$TempDir\repo\references" $SkillDir -Recurse

    # cleanup
    Remove-Item -Recurse -Force $TempDir -ErrorAction SilentlyContinue

    Write-Ok "Installed to $SkillDir ($PlatformName)"
}

# detect platforms
function Find-Platforms {
    $script:Platforms = @()

    # Claude Code
    $claudeDir = Join-Path $env:USERPROFILE ".claude"
    if (Test-Path $claudeDir) {
        $script:ClaudeSkills = Join-Path $claudeDir "skills"
        Write-Info "Found Claude Code"
        $script:Platforms += "claude"
    }

    # Global agent skills
    $agentDir = Join-Path $env:USERPROFILE ".agents\skills"
    $script:AgentSkills = $agentDir
    if (Test-Path (Split-Path $agentDir)) {
        Write-Info "Found global agent skills directory"
        $script:Platforms += "agent"
    }

    # Cursor
    $cursorDir = Join-Path $env:USERPROFILE ".cursor"
    if (Test-Path $cursorDir) {
        Write-Info "Found Cursor"
        $script:Platforms += "cursor"
    }

    if ($script:Platforms.Count -eq 0) {
        Write-Warn "No AI coding tools detected. Installing to global skills directory."
        $script:AgentSkills = $agentDir
    }
}

# main
Write-Banner

# check for git
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Err "git is required but not installed."
    Write-Err "Get it here: https://git-scm.com"
    exit 1
}

# handle arguments
$mode = $args[0]

switch ($mode) {
    "--local" {
        Write-Info "Installing to current project..."
        Install-Skill (Join-Path (Get-Location) ".agents\skills") "This Project"
    }
    "--global" {
        Write-Info "Installing to global skills..."
        Install-Skill (Join-Path $env:USERPROFILE ".agents\skills") "Global Skills"
    }
    "--claude" {
        Write-Info "Installing to Claude Code..."
        Install-Skill (Join-Path $env:USERPROFILE ".claude\skills") "Claude Code"
    }
    "--help" {
        Write-Host "Usage: install.ps1 [option]"
        Write-Host ""
        Write-Host "Options:"
        Write-Host "  (none)      Interactive install"
        Write-Host "  --local     Install to current project (.agents\skills\)"
        Write-Host "  --global    Install to global skills (~\.agents\skills\)"
        Write-Host "  --claude    Install to Claude Code (~\.claude\skills\)"
        Write-Host "  --help      Show this message"
        Write-Host ""
        Write-Host "One-liner:"
        Write-Host "  irm https://raw.githubusercontent.com/mrsahilbeniwal/social-campaign/main/install.ps1 | iex"
        exit 0
    }
    default {
        Find-Platforms

        Write-Host ""
        Write-Host "  Where should I install?" -ForegroundColor White
        Write-Host ""

        $i = 1
        if ($script:ClaudeSkills) {
            Write-Host "  $i) Claude Code     → $($script:ClaudeSkills)\"
            $i++
        }
        Write-Host "  $i) Global Skills   → $($script:AgentSkills)\"
        Write-Host "  a) All detected locations"
        Write-Host "  p) Custom path"
        Write-Host ""

        $choice = Read-Host "  Pick one (default: a)"
        if (-not $choice) { $choice = "a" }

        switch ($choice) {
            "a" {
                if ($script:ClaudeSkills) { Install-Skill $script:ClaudeSkills "Claude Code" }
                Install-Skill $script:AgentSkills "Global Skills"
            }
            "p" {
                $customPath = Read-Host "  Enter path"
                Install-Skill $customPath "Custom"
            }
            default {
                Install-Skill $script:AgentSkills "Global Skills"
            }
        }
    }
}

Write-Host ""
Write-Host "  Done! " -ForegroundColor Green -NoNewline
Write-Host "Open your AI coding tool and say:"
Write-Host ""
Write-Host '  "Create a social media campaign for this project"' -ForegroundColor Cyan
Write-Host ""
Write-Host "  That's it. The skill handles the rest."
Write-Host ""
