# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [1.0.0] - 2026-04-10

### 🎉 Initial Release

The first public release of Social Campaign — an AI skill that turns your codebase into a social media content engine.

### Added

**Core Skill (SKILL.md)**
- 5-phase campaign workflow: Brand Audit → Competitor Intelligence → Content Strategy → Content Generation → Iteration
- 6 campaign modes: Full Campaign, Product Launch, Content Refresh, Single Post, Competitor Spy, Repurpose
- 4-layer brand scanning system (Identity, Visual, Product Intelligence, Content Assets)
- Environment-adaptive execution (works with or without image generation / web search tools)
- A/B variant generation for high-priority posts
- Content repurposing matrix (blog → social, changelog → social, etc.)
- Multi-language campaign support
- Quality checklist with 20+ verification items

**Reference Library**
- `platform-specs.md` — Image dimensions, character limits, and best practices for Instagram, LinkedIn, Twitter/X, Facebook, TikTok, and Pinterest
- `prompt-templates.md` — 8 image generation prompt templates (product showcase, feature highlight, testimonial, announcement, behind-the-scenes, carousel, comparison, statistics)
- `content-pillars.md` — Industry-specific pillar templates for E-Commerce, SaaS, Agency, Personal Brand, and Local Business
- `campaign-types.md` — Campaign playbooks for Product Launch (14-day sequence), Always-On, Seasonal/Event, Engagement/Growth, and Crisis Response
- `caption-frameworks.md` — 8 caption writing frameworks (Hook→Value→CTA, PAS, Story Arc, List, Bold Claim, Transformation, Question Lead, Micro-Value Drop) plus 10 hook templates and platform-specific adaptations

**GitHub Presence**
- Comprehensive README with installation, usage, examples, and compatibility matrix
- MIT License (Copyright Sahil Beniwal)
- Contributing guidelines
- GitHub issue and PR templates

### Compatibility
- Claude Code ✅
- Google Antigravity / Kilo ✅
- Cursor ✅
- Windsurf ✅
- Cline (VS Code) ✅
- Aider ⚠️ (no image gen)
- GitHub Copilot ⚠️ (limited tools)
