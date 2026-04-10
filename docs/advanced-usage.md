# Advanced Usage

Once you've run a basic campaign and understand the flow, here's how to get more out of Social Campaign.

---

## Running Specific Campaign Modes

You don't always need the full 5-phase workflow. Sometimes you just need one thing done well.

### Product Launch (14-day sequence)

```
"I'm launching [product/feature] on [date]. Create a product launch campaign."
```

This skips the general strategy and goes straight into a time-sensitive launch sequence — teasers, countdown, launch day blitz, and post-launch follow-up.

### Competitor Spy (research only)

```
"Analyze what my competitors are doing on social media. Don't generate any content yet."
```

Good for when you want intel before committing to a strategy. You'll get a research doc with their strengths, weaknesses, posting frequency, and content gaps you can exploit.

### Single Post (one-off)

```
"Create one Instagram post announcing our new pricing."
```

When you don't need a whole campaign — just one polished post with an image and caption, ready to publish.

### Content Refresh

```
"Generate a fresh batch of social media content based on our existing brand profile."
```

Reuses the brand profile from a previous run and produces new content without repeating the brand audit or competitor research.

### Repurpose

```
"Turn our latest blog post into a LinkedIn carousel, a Twitter thread, and an Instagram story."
```

Takes existing content from your project (blog posts, changelogs, docs) and reshapes it for social platforms.

---

## Customizing the Brand Scan

By default, the skill scans your entire project to extract brand identity. Sometimes you want to guide it.

### Pointing to Specific Files

```
"Run a brand audit but focus on our landing page (src/pages/index.tsx)
and our design tokens (styles/theme.ts)."
```

This narrows the scan to the files that matter most, which helps in large monorepos.

### Overriding Extracted Values

After the brand profile is generated, you can correct anything before the skill moves on:

```
"The brand voice should be more playful, not professional.
Also, our primary color is #4F46E5, not the blue you found."
```

The skill saves the updated profile and uses it for all subsequent content.

### Working with Design Systems

If your project uses Tailwind, Material UI, Chakra, or any design system with explicit tokens, the skill prioritizes those over raw CSS values. It looks for:

- `tailwind.config.js` / `tailwind.config.ts`
- `theme.ts` / `theme.js` / `tokens.ts`
- CSS custom properties (`:root` declarations)
- Design token JSON files

---

## A/B Testing Your Content

For important posts, ask the skill to generate variants:

```
"Create 3 variants of the launch announcement post —
one bold and confident, one question-based, one story-driven."
```

Each variant gets its own image and caption, labeled A, B, C. Post the best-performing one and learn what resonates with your audience.

---

## Multi-Language Campaigns

If you serve a global audience:

```
"Adapt the campaign for Spanish-speaking audiences.
Keep the brand identity but adjust cultural references and idioms."
```

The skill won't just translate — it adjusts tone, references, hashtags, and even image text to fit the target audience. Cultural adaptation, not word-for-word translation.

---

## Content from Existing Assets

Your codebase is full of content waiting to become social posts:

| Source | What the skill extracts |
|--------|------------------------|
| Changelog | Feature announcements, update posts |
| Blog posts (if in-repo) | Threads, carousels, quote cards |
| README | Product explainers, "how it works" posts |
| Testimonials (if embedded) | Social proof cards |
| Pricing page | Comparison posts, value proposition graphics |
| Docs | Tips, how-tos, educational threads |

To trigger this:

```
"Turn my CHANGELOG.md into a series of feature announcement posts."
```

---

## Keeping Campaigns Organized

All output goes into `social-campaign/` in your project root. After a few runs, it can grow. Here's how to keep it clean:

```
social-campaign/
├── brand-profile.md              ← stays forever, update as brand evolves
├── competitor-analysis.md        ← refresh quarterly
├── content-strategy.md           ← update when strategy shifts
├── content/
│   ├── 2026-04-launch/           ← name campaigns by date + purpose
│   ├── 2026-04-weekly/
│   └── 2026-05-refresh/
└── reports/
```

Ask the skill to use named campaigns:

```
"Create a campaign called 'summer-launch' with 2 weeks of content."
```

---

## Tips from Real Use

- Run brand audit once, reference it many times. Don't redo the audit for every content batch.
- Edit the brand profile by hand. The AI gets 80% right. The last 20% is yours to add.
- Use Competitor Spy before your first full campaign. Having intel makes the strategy phase sharper.
- Start with Single Post mode if you've never used the skill. Get a feel for output quality before doing a full campaign.
- Review generated images before posting. AI image generation is good but not perfect — some will need a re-roll or a tweak.
