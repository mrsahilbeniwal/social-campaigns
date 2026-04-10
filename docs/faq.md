# Frequently Asked Questions

Stuff people actually ask.

---

### Does this work with [my AI coding tool]?

Probably. If your tool supports skills (instruction files that the AI reads and follows), it works. Tested and confirmed on:
- **Claude Code** — full support
- **Google Antigravity / Kilo** — full support
- **Cursor** — full support
- **Windsurf** — full support
- **Cline (VS Code)** — full support

If your tool can read markdown files and generate images, you'll get the full experience. If it can't generate images, the skill saves detailed prompts you can paste into Midjourney, DALL-E, or any other image generator.

---

### Do I need a specific tech stack?

No. The skill works with any codebase — React, Vue, Svelte, Django, Rails, WordPress, Shopify, static HTML, or even a plain README. It adapts its scanning approach based on what it finds. See [supported-frameworks.md](supported-frameworks.md) for details on what it scans in each stack.

Backend-only projects with no frontend will have less brand data to extract, so the skill will ask you to fill in the gaps. It still works — it just needs your help.

---

### How long does a full campaign take to generate?

Depends on the model and your machine, but roughly:

| Phase | Time |
|-------|------|
| Brand Audit | 1-2 minutes |
| Competitor Research | 2-3 minutes (depends on web search speed) |
| Strategy | 1-2 minutes |
| Content Generation (2 weeks of posts) | 5-15 minutes (mostly image generation) |
| Total | ~10-20 minutes |

Compare that to doing it manually: 2-3 full working days, minimum. Or hiring an agency: $3K-5K and 2 weeks.

---

### The brand colors it extracted are wrong. What do I do?

Tell it. After the brand audit phase, the skill shows you the brand profile and waits for your approval. Just say "the primary color should be #4F46E5, not #3B82F6" and it'll update. You can correct anything — colors, fonts, tone, target audience, product description. The skill uses the corrected version for everything that follows.

---

### Can I use this for a client's project?

Absolutely. That's one of the best use cases. Clone or open the client's project, install the skill, and run a campaign. You'll have a professional brand audit, competitor research, content strategy, and 2 weeks of ready-to-post content. Hand it to the client or post it yourself.

The MIT license means you can use this commercially without restrictions.

---

### What if my project has no website or landing page?

The skill will work with whatever it finds. If there's no frontend, it reads:
- README.md for product description
- Package metadata (name, description, keywords)
- Documentation files for tone and features

If even those are sparse, it'll ask you directly: "What does your product do? Who's it for? What's the vibe?" Then it builds the brand profile from your answers.

---

### Can I re-run the skill for fresh content?

Yes. Use the "Content Refresh" mode:
```
"Create a fresh batch of social media content using the existing brand profile."
```
It skips the brand audit and competitor research (reuses what's already saved) and just generates new posts with the same strategy.

---

### Does it support languages other than English?

Yes. Ask for it:
```
"Create this campaign in Hindi"
"Adapt the campaign for a Spanish-speaking audience"
```
The skill won't just translate text — it adjusts cultural references, idioms, and hashtag strategy for the target audience.

---

### The generated images look off. What can I do?

Image generation depends on the AI tool's image capabilities. A few things to try:
- Ask for a re-roll: "Regenerate the image for Monday's post with a darker background"
- Be specific about what's wrong: "The text on the image is too small and hard to read"
- Edit the prompt: The skill saves the image generation prompt alongside each image, so you can tweak it and re-run
- Use the prompts externally: Copy the saved prompt into Midjourney, Leonardo, or Ideogram if the built-in generator isn't cutting it

---

### How is this different from Canva / Buffer / Hootsuite / Later?

Those tools help you *schedule and design* content. This skill helps you *think and create* it.

- **Canva** gives you templates. This skill gives you a strategy informed by your actual brand and competitive landscape.
- **Buffer/Hootsuite** schedule posts. This skill creates what to post and tells you when.
- **This skill** is where the creative and strategic work happens. Those other tools are where you publish and schedule.

They're complementary, not competitive. Generate content here, schedule it there.

---

### Can I contribute new caption frameworks or prompt templates?

Please do. The reference files are designed to be community-driven. If you've tested a caption formula that works well, or you have an image prompt style that produces consistently good results, open a PR. See [CONTRIBUTING.md](../CONTRIBUTING.md) for details.

---

### My question isn't here.

Open an issue or start a discussion on GitHub. Real questions from real users make the best FAQ entries.
