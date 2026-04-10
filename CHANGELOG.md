# Changelog

All notable changes to this project will be documented in this file.

Format based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [1.0.0] - 2026-04-10

Initial public release.

### Added

Core Skill (SKILL.md)

- 5-phase campaign workflow: Brand Audit, Competitor Intelligence, Content Strategy, Content Generation, Iteration
- 6 campaign modes: Full Campaign, Product Launch, Content Refresh, Single Post, Competitor Spy, Repurpose
- 12 commands with natural language triggers and smart dependency handling
- 4-layer brand scanning system (Identity, Visual, Product Intelligence, Content Assets)
- Environment-adaptive execution (works with or without image generation / web search tools)
- A/B variant generation for high-priority posts
- Content repurposing matrix (blog to social, changelog to social, etc.)
- Multi-language campaign support
- Quality checklist with 20+ verification items

Reference Library

- `platform-specs.md` — Image dimensions, character limits, and best practices for 6 platforms
- `prompt-templates.md` — 8 image generation prompt templates
- `content-pillars.md` — Industry-specific pillar templates for 5 verticals
- `campaign-types.md` — Campaign playbooks for 5 campaign types
- `caption-frameworks.md` — 8 caption frameworks, 10 hook templates, platform-specific adaptations

Installation

- One-liner install scripts for Mac/Linux and Windows
- Auto-detection of AI coding platforms (Claude Code, Cursor, Windsurf, Antigravity, Cline)
- Manual install instructions

### Compatibility

- Claude Code — full support
- Google Antigravity / Kilo — full support
- Cursor — full support
- Windsurf — full support
- Cline (VS Code) — full support
- Aider — partial (no image gen)
- GitHub Copilot — partial (limited tools)
