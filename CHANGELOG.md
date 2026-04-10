# Changelog

All notable changes to this project will be documented in this file.

Format based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [2.0.0] - 2026-04-10

Major creative quality and workflow overhaul.

### Added

Creative Intelligence System

- **Creative Brief phase (Phase 3B)** — New mandatory phase between Strategy and Generation that forces campaign concept development, narrative arc design, and visual identity system definition before any content is created
- **Brand Narrative Synthesis** — Phase 1 now goes beyond data extraction to synthesize brand tension, transformation, enemy, personality, and a customer one-liner
- **Campaign Concept validation** — Competitor Swap Test ensures concepts are specific to the product, not generic
- **Narrative Arc framework** — 5-act story structure across 2 weeks of content (Wake-Up → Deeper Truth → Answer Exists → How It Works → Social Proof)
- **Concept-to-Post Mapping** — Every post defines its campaign role, emotional beat, visual hook, caption hook, and core moment

Content Cohesion System

- **Caption-Image Cohesion System** in `caption-frameworks.md` — Core Moment Method ensures every caption and image serve the same idea
- **6 cohesion patterns** — Question→Answer, Show→Tell, Tension→Release, Number→Meaning, Process→Purpose, Contrast→Choice
- **Anti-pattern documentation** — Explicit examples of disconnected content and how to fix it
- **Three-Layer Prompt System** in `prompt-templates.md` — Every image prompt requires Concept Anchor → Emotional Intent → Visual Execution
- **Good vs Bad prompt examples** — Side-by-side comparisons for each template type

New Reference File

- **`creative-brief-guide.md`** — 3 complete example creative briefs (SaaS, E-Commerce, Personal Brand), concept development methodology, common mistakes, and validation checklist

### Changed

Workflow Control

- **Mandatory Approval Gates** — ⛔ STOP gates after every phase (Phases 1, 2, 3, 3B, 4) with explicit halt language
- **Creative Direction Preview** — Phase 4 now generates first post only, presents for approval, then batches remaining posts
- **6-phase workflow** — Expanded from 5 to 6 phases (Brand Audit → Competitors → Strategy → Creative Brief → Generation → Iteration)

Prompt Templates Rewrite

- All 8 prompt templates rewritten with concept-anchoring and emotional intent layers
- Each template now includes "Why this format works" and "Concept connection step"
- Added Prompt Quality Checklist with 7 verification items

Caption Frameworks Enhancement

- Added Cohesion System as foundational section before all frameworks
- Added cohesion workflow (Core Moment → Emotion → Image Concept → Caption Hook → Framework)

### Fixed

- Agent no longer runs continuously without user input — hard stops prevent autopilot
- Content concepts now directly connected to product identity — no more generic campaigns
- Captions and images now designed as a unit — no more disconnected content

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
