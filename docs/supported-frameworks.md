# Supported Frameworks and Stacks

Social Campaign works with any codebase, but it knows some frameworks better than others. Here's what it scans, where it looks, and what it extracts.

---

## How the Brand Scanner Works

The skill doesn't just grep for hex colors. It understands modern frontend architecture — design tokens, component libraries, structured theming. If those aren't present, it falls back to raw CSS analysis.

### Scan Priority (highest to lowest)

1. Design tokens — Tailwind config, theme files, CSS custom properties
2. Component library config — Material UI theme, Chakra theme, Shadcn config
3. Stylesheets — CSS files, SCSS, global styles
4. Package metadata — package.json, README, meta tags
5. Content files — Landing page copy, about pages, pricing text

---

## Framework-Specific Scan Behavior

### React / Next.js / Vite

| What It Looks For | Where |
|-------------------|-------|
| Brand colors | `tailwind.config.*`, `theme.ts`, `:root` CSS vars, `globals.css` |
| Typography / fonts | Google Fonts imports, `@font-face` declarations, font-family in theme |
| Product info | `src/pages/index.*`, `src/app/page.*`, landing page components |
| Pricing | Components with "pricing", "plans", or "tier" in the name |
| Copy and tone | Hero sections, meta descriptions, README.md |
| Images and logos | `public/` directory, `assets/`, imported images in components |

### Vue / Nuxt

| What It Looks For | Where |
|-------------------|-------|
| Brand colors | `tailwind.config.*`, `assets/css/`, Vuetify theme config |
| Typography | `nuxt.config.*` (Google Fonts module), global CSS |
| Product info | `pages/index.vue`, layout components |
| Images | `public/`, `assets/images/` |

### Svelte / SvelteKit

| What It Looks For | Where |
|-------------------|-------|
| Brand colors | `tailwind.config.*`, `src/app.css`, CSS custom properties |
| Product info | `src/routes/+page.svelte`, layout files |
| Copy | Text content in main route files |

### Static HTML / Vanilla CSS

| What It Looks For | Where |
|-------------------|-------|
| Everything | `index.html`, `style.css`, `styles/`, `css/` |
| Colors | Hex values, RGB, HSL in stylesheets |
| Fonts | `@font-face`, Google Fonts `<link>` tags, `font-family` rules |
| Meta info | `<title>`, `<meta>` tags, OG tags |
| Images | `<img>` tags, background-image in CSS, `/images/`, `/assets/` |

### Shopify / Liquid Templates

| What It Looks For | Where |
|-------------------|-------|
| Theme settings | `config/settings_schema.json`, `settings_data.json` |
| Brand colors | Theme settings, CSS in `assets/` |
| Products | `templates/product.liquid`, collection templates |
| Copy | Section content, `locales/en.default.json` |

### WordPress (Theme Development)

| What It Looks For | Where |
|-------------------|-------|
| Brand colors | `style.css`, `theme.json`, Customizer settings |
| Theme info | `style.css` header (theme name, description, author) |
| Content | Template files, `functions.php` for registered fonts, menus |

### Python / Django / Flask / FastAPI

| What It Looks For | Where |
|-------------------|-------|
| Project identity | README.md, setup.py / pyproject.toml (name, description, author) |
| Docs and copy | `docs/`, docstrings in main modules |
| API info | Route definitions, OpenAPI specs |
| Static assets | `static/`, `templates/` |

### Backend-Only Projects (Go, Rust, Java, etc.)

The skill won't find much visual brand identity in a pure backend codebase. Instead, it focuses on:

- README.md, documentation, and comments for voice/tone
- Package metadata for product description
- API docs for feature lists
- Then it asks you to fill in the visual gaps (colors, fonts, target audience)

---

## What Happens When Something's Missing

The skill is designed to work with incomplete information. Here's the fallback chain:

| If this is missing... | The skill does this... |
|----------------------|----------------------|
| No CSS / no colors found | Asks you for brand colors, or suggests a palette based on your industry |
| No font imports | Defaults to clean, modern suggestions (Inter, DM Sans, etc.) |
| No landing page copy | Reads README.md for product description and tone |
| No product/pricing info | Asks you directly: "What does your product do? Who's it for?" |
| No images/logos | Notes that in the brand profile, generates content that works without a logo |
| Raw backend API with no frontend | Extracts what it can from docs/README, asks for the rest |

The skill always produces output. It just produces better output when your project has rich brand assets to scan.

---

## Adding Support for New Frameworks

If you work with a framework not listed here and the brand scanner misses important files, open an issue with:

1. The framework name and version
2. Where your design tokens / theme / brand assets live
3. Example file paths and content structure

We'll add scan rules for it.
