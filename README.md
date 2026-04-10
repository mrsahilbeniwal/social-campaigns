<div align="center">

# 🚀 Social Campaign

### Turn your codebase into a social media content engine.

**The AI skill that reads your project, understands your brand, researches your competitors, builds a marketing strategy, and generates ready-to-post social media content — all from inside your IDE.**

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)
[![Made with AI](https://img.shields.io/badge/Made%20with-AI%20Agents-blueviolet)](#compatible-platforms)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](CODE_OF_CONDUCT.md)
[![Stars](https://img.shields.io/github/stars/mrsahilbeniwal/social-campaigns?style=social)](https://github.com/mrsahilbeniwal/social-campaigns)

[Quick Install](#-quick-install) · [Commands](#commands) · [How It Works](#-how-it-works) · [Examples](#-real-world-examples) · [Docs](docs/) · [Contributing](#-contributing)

</div>

---

## 💡 The Problem

You built something incredible. Maybe it's a SaaS app that saves people hours. Maybe it's an e-commerce store with products you're proud of. Maybe it's a developer tool that you poured your soul into.

But nobody knows it exists.

You know you should be posting on social media. You've seen your competitors somehow, they're everywhere. Instagram, LinkedIn, Twitter, TikTok. Clean graphics, witty captions, consistent branding. And you're sitting here wondering: *"How do they have time for this?"*

Here's the truth: **they probably don't.** They either hired an expensive agency, have a dedicated marketing person, or they're using tools like this one.

**Social Campaign** is the bridge between building and marketing. It's an AI skill that lives inside your code editor and does what a $5,000/month social media agency does — except it actually understands your product because it literally reads your code.

## ✨ What Makes This Different

Most social media tools ask you to fill out a questionnaire about your brand. *"What are your brand colors? What's your target audience? What tone do you want?"*

Social Campaign **doesn't ask**. It **reads**.

It scans your codebase — your CSS files, your Tailwind config, your landing page copy, your pricing page, your README, your meta tags — and it *knows* your brand. Your colors, your fonts, your voice, your products, your value proposition. Everything that makes your brand *yours*.

Then it goes further:
- 🔍 **Researches your competitors** — finds them, analyzes their social media, identifies what they're doing well and where they're falling short
- 📋 **Builds a real strategy** — not generic "post 3 times a week" advice, but a strategy tailored to your specific brand, audience, and competitive landscape
- 🎨 **Generates the actual content** — images, captions, hashtags, posting schedules, and platform-specific adaptations
- 📦 **Saves everything organized** — brand profile, competitor analysis, content strategy, and every single post asset, all neatly organized in your project

## 🎯 Campaign Modes

| Mode | Description |
|------|-------------|
| 🚀 **Full Campaign** | Complete strategy + 2 weeks of content for brands starting from zero |
| 📢 **Product Launch** | 14-day launch sequence: teasers → reveal → post-launch momentum |
| 📅 **Content Refresh** | Fresh content batch for brands with existing social presence |
| 🎯 **Single Post** | One polished post with image + caption for a specific announcement |
| 📊 **Competitor Spy** | Deep competitive analysis without content generation |
| 🔄 **Repurpose** | Turn blog posts, docs, and changelogs into social media content |

## ⚡ Quick Install

One command. It detects your AI coding tool and drops the skill in the right place.

**Mac / Linux:**
```bash
curl -fsSL https://raw.githubusercontent.com/mrsahilbeniwal/social-campaigns/main/install.sh | bash
```

**Windows (PowerShell):**
```powershell
irm https://raw.githubusercontent.com/mrsahilbeniwal/social-campaigns/main/install.ps1 | iex
```

**Or install manually:**
```bash
git clone https://github.com/mrsahilbeniwal/social-campaigns.git
cp -r social-campaign ~/.agents/skills/   # global — works with most tools
# or
cp -r social-campaign ~/.claude/skills/   # Claude Code specifically
# or
cp -r social-campaign .agents/skills/     # this project only
```

The installer supports `--claude`, `--global`, and `--local` flags. Run with `--help` for all options.

### Commands

After installing, use these commands in your AI coding assistant. **12 commands** — works across all supported platforms.

#### 🎯 Campaign Modes — Choose Your Workflow

| Command | What You Say | What Happens |
|---------|-------------|--------------|
| `campaign full` | *"Create a social media campaign for this project"* | Full 5-phase workflow: audit → research → strategy → generate → iterate |
| `campaign launch` | *"I'm launching v2.0 next week — create a launch campaign"* | Launch sequence: teasers → sneak peek → countdown → launch → results |
| `campaign refresh` | *"I need fresh content for next week"* | New content using your existing brand profile |
| `campaign single` | *"Create one Instagram post about our new pricing"* | 1 polished post with image + caption |
| `campaign spy` | *"What are my competitors doing on social media?"* | Competitive analysis report, no content generation |
| `campaign repurpose` | *"Turn my latest blog post into social media content"* | Transforms existing content into platform-specific posts |

#### 🔧 Phase-Selective — Run Any Phase Independently

| Command | What You Say | Output |
|---------|-------------|--------|
| `campaign brand-audit` | *"Scan my project and extract the brand identity"* | `social-campaign/brand-profile.md` |
| `campaign competitors` | *"Research my top 5 competitors"* | `social-campaign/competitor-analysis.md` |
| `campaign strategy` | *"Build a content strategy for my brand"* | `social-campaign/content-strategy.md` |
| `campaign generate` | *"Generate the actual images and captions"* | `social-campaign/content/` folder |
| `campaign iterate` | *"Create A/B variants of my best posts"* | Variants, repurposing, multi-language |

#### 📊 Utility

| Command | What You Say | Output |
|---------|-------------|--------|
| `campaign status` | *"What's been generated so far?"* | Lists all campaign files and their completion status |

#### Smart Dependency Handling

Each phase builds on the last. If you jump straight to `campaign generate` without running the earlier phases, the skill automatically detects missing dependencies and runs them first — or asks you to confirm.

```
You:     "Generate social media content for my project"
Agent:   Checks for brand-profile.md → Not found
         → Runs Phase 1 (Brand Audit) automatically
         → Checks for competitor-analysis.md → Not found
         → Runs Phase 2 (Competitor Intelligence)
         → Continues to content generation
```

> **Note:** You don't have to type these commands exactly. The AI agent understands natural language — *"help me with Instagram for my SaaS"* works just as well as `campaign full`. The commands above are just the clearest way to get exactly what you want.

## 📖 How It Works

Social Campaign follows a 5-phase process, with human checkpoints between each phase so you stay in control:

```
┌──────────────────────────────────────────────────────────────┐
│                    YOUR PROJECT CODEBASE                      │
│  CSS · Tailwind · Components · Copy · Images · Package.json  │
└───────────────────────────┬──────────────────────────────────┘
                            │
                            ▼
              ┌─────────────────────────┐
              │  PHASE 1: Brand Audit   │
              │  Scan → Extract → Map   │
              │  brand-profile.md       │
              └────────────┬────────────┘
                           │ ✅ User confirms
                           ▼
              ┌─────────────────────────┐
              │  PHASE 2: Competitor    │
              │  Research → Analyze     │
              │  competitor-analysis.md │
              └────────────┬────────────┘
                           │ ✅ User reviews
                           ▼
              ┌─────────────────────────┐
              │  PHASE 3: Strategy      │
              │  Pillars · Calendar     │
              │  content-strategy.md    │
              └────────────┬────────────┘
                           │ ✅ User approves
                           ▼
              ┌─────────────────────────┐
              │  PHASE 4: Generate      │
              │  Images · Captions      │
              │  content/week-1/...     │
              └────────────┬────────────┘
                           │ ✅ User reviews
                           ▼
              ┌─────────────────────────┐
              │  PHASE 5: Iterate       │
              │  A/B · Repurpose        │
              │  Optimize · Expand      │
              └─────────────────────────┘
```

### Phase 1: Brand Audit 🔍
The AI reads your code like a brand strategist reads a brand book:
- **Colors** from your CSS, Tailwind config, or design tokens
- **Typography** from your font imports and CSS declarations
- **Voice & tone** from your landing page copy, meta descriptions, and README
- **Products & pricing** from your feature sections and pricing pages
- **Target audience** inferred from your copy, pricing tiers, and use cases

### Phase 2: Competitor Intelligence 🕵️
Using web search, it finds your top 3-5 competitors and analyzes:
- What platforms they're on and how active they are
- What content types get them the most engagement
- Where they're strong and where they're weak
- The white space — opportunities nobody is filling

### Phase 3: Content Strategy 📋
Combining brand DNA and competitive insights, it creates:
- Platform-specific strategy (which platforms and why)
- Content pillars (4-5 recurring themes)
- A sample 2-week content calendar
- Hashtag playbook
- Caption guidelines matching your brand voice
- KPIs and goals to track progress

### Phase 4: Content Generation 🎨
Using AI image generation, it produces:
- On-brand visuals for every post in the calendar
- Platform-optimized captions with Hook → Value → CTA structure
- Alt text for accessibility
- Platform-specific adaptations (same content, different format)
- Organized in a clean directory structure

### Phase 5: Iteration & Optimization 🔄
- A/B test variants of high-priority posts
- Repurpose content across platforms
- Multi-language adaptations
- Performance-informed refinements

## 📂 What It Generates

After running a full campaign, your project gets a `social-campaign/` directory:

```
social-campaign/
├── brand-profile.md              ← Your brand DNA, extracted from code
├── competitor-analysis.md        ← Deep competitive research
├── content-strategy.md           ← Full marketing strategy
├── content/
│   ├── week-1/
│   │   ├── mon-product-spotlight/
│   │   │   ├── image.png         ← AI-generated visual
│   │   │   ├── caption.md        ← Platform-ready caption
│   │   │   └── alt-text.txt      ← Accessibility text
│   │   ├── tue-thought-leadership/
│   │   │   └── ...
│   │   └── .../
│   └── week-2/
│       └── .../
├── assets/
│   ├── color-palette.md
│   ├── hashtag-library.md
│   └── caption-templates.md
└── reports/
    └── campaign-summary.md       ← Executive overview
```

## 🌍 Compatible Platforms

Social Campaign works with any AI coding assistant that supports skills:

| Platform | Status | Notes |
|----------|--------|-------|
| **Claude Code** | ✅ Full support | Image generation, web search, file system |
| **Google Antigravity / Kilo** | ✅ Full support | Image generation, web search, file system |
| **Cursor** | ✅ Full support | With image gen via plugins |
| **Windsurf** | ✅ Full support | Native tool access |
| **Cline (VS Code)** | ✅ Full support | Via MCP tools |
| **Aider** | ⚠️ Partial | No image gen — saves prompts instead |
| **GitHub Copilot** | ⚠️ Partial | Limited tool access |

### How It Adapts

The skill automatically detects what tools are available:
- **Has `generate_image`?** → Generates images directly
- **Has Stitch MCP?** → Creates social posts as design screens
- **Has `search_web`?** → Does real competitor research
- **No image gen?** → Saves detailed prompts for Midjourney/DALL-E/Canva AI
- **No web search?** → Asks you for competitor info, provides analysis framework

## 📸 Real-World Examples

### Example 1: SaaS Product
> *"Create a social media campaign for my project management tool"*

The skill scans the codebase, discovers it's a React app with a blue/white color scheme, finds the tagline "Ship faster, together", identifies three pricing tiers, and creates a LinkedIn + Twitter strategy focused on productivity tips, feature spotlights, and developer culture content.

### Example 2: E-Commerce Store
> *"I need Instagram content for my sustainable fashion brand"*

It reads the Shopify/Next.js codebase, extracts the earthy green/cream palette, discovers 47 product listings, finds customer testimonials embedded in the site, and generates a carousel-heavy Instagram strategy with lifestyle photography prompts and eco-conscious messaging.

### Example 3: Open Source Project
> *"Help me promote my open source CLI tool on Twitter"*

It reads the README, extracts feature highlights and usage examples, analyzes similar open-source tools' social presence, and creates a developer-focused Twitter strategy using code snippets, demo GIFs, and "how I built this" storytelling.

### Example 4: Product Launch
> *"I'm launching v2.0 next week — create a launch campaign"*

It scans the changelog for v2.0 features, understands the existing brand from v1, and generates a complete 14-day launch sequence: mystery teasers → sneak peeks → countdown → launch day blitz → feature deep-dives → early results celebration.

## 📚 Built-in Reference Library

The skill comes with a comprehensive reference library that the AI uses during content generation:

| Reference File | What It Contains |
|---------------|------------------|
| `references/platform-specs.md` | Image dimensions, character limits, and best practices for Instagram, LinkedIn, Twitter/X, Facebook, TikTok, and Pinterest |
| `references/prompt-templates.md` | 8+ image generation prompt templates: product showcases, testimonials, carousels, announcements, comparisons, data visualizations, and more |
| `references/content-pillars.md` | Industry-specific content pillar templates for e-commerce, SaaS, agencies, personal brands, and local businesses |
| `references/campaign-types.md` | Step-by-step playbooks for product launches, always-on campaigns, seasonal events, engagement growth, and crisis response |
| `references/caption-frameworks.md` | Proven caption formulas: PAS, story arc, list format, bold claims, questions, micro-value drops — plus platform-specific adaptations and 10+ hook templates |

📖 **Want to go deeper?** Check out the [docs/](docs/) folder for [advanced usage](docs/advanced-usage.md), [supported frameworks](docs/supported-frameworks.md), and [FAQ](docs/faq.md).

## 🤝 Contributing

I'd love your help making this better! Whether it's:
- 🐛 Reporting a bug or suggesting a feature
- 📝 Adding new prompt templates or caption frameworks
- 🌍 Adding support for more platforms (Threads, Bluesky, Mastodon)
- 🌐 Translating the skill to other languages
- 📊 Sharing real-world results to help others

Check out [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## 💬 Community

- **Issues:** Found a bug or have a feature request? [Open an issue](https://github.com/mrsahilbeniwal/social-campaigns/issues)
- **Discussions:** Want to share results, ask questions, or suggest improvements? [Start a discussion](https://github.com/mrsahilbeniwal/social-campaigns/discussions)
- **Twitter/X:** Share your campaigns with `#SocialCampaignAI` — I'd love to see what you build

## ⭐ Star History

If this skill saved you time or helped you launch your social media presence, drop a star! It helps others discover this tool.

## 📄 License

[MIT License](LICENSE) — Copyright (c) 2026 Sahil Beniwal

Free to use, modify, and distribute. Attribution appreciated but not required.

---

<div align="center">

**Built with ❤️ by [Sahil Beniwal](https://github.com/mrsahilbeniwal)**

*Because every great product deserves to be seen.*

</div>
