# Nocturne Theme for VS Code

Nocturne is a dark, purple-forward theme designed for people who spend a lot of time staring at code.  
It uses a deep violet base, soft lavender text, and high-chroma accents for structure, actions, and diagnostics.

This repo is the **source of truth** for:
- The Nocturne VS Code theme
- The shared color palette
- The cross-platform design system (editor, terminal, Chroma, web)

---
## Features

- Deep, low-glare background tuned for long sessions
- Clear separation between:
  - **Structure** (types, classes, constants)
  - **Behavior** (functions, methods)
  - **Values** (strings, numbers, booleans)
  - **Diagnostics** (errors, warnings, info)
- Consistent mapping of colors across:
  - VS Code UI & syntax
  - Terminal (ANSI)
  - Chroma / RGB layouts
  - Web UI components

If you use Nocturne in multiple tools, they all speak the same visual language.

---
## Installation

### From VSIX (local)

1. Build or download the VSIX file:
   ```bash
   vsce package
   ```

2. In VS Code:
   - Open the **Extensions** view
   - Click the `...` menu → **Install from VSIX...**
   - Select your generated `*.vsix` file

3. Set the color theme:
   - Command Palette → `Preferences: Color Theme`
   - Choose **Nocturne**

### From Marketplace

If/when the theme is published to the marketplace:

1. Open the **Extensions** view in VS Code.
2. Search for **"Nocturne"** by **PseudoAsylum**.
3. Install and select it as your color theme.

---
## Repository Structure

Suggested layout if you haven’t already organized it this way:

```text
.
├─ LICENSE
├─ README.md
├─ docs/
│  ├─ nocturne-palette.md
│  └─ nocturne-design-system.md
├─ design-system/
│  └─ tokens.json
├─ vscode/
│  ├─ package.json
│  └─ Nocturne-color-theme.json
├─ terminal/
│  └─ (future) nocturne-terminal.json
├─ chroma/
│  └─ (future) nocturne-razer-chroma.chroma
└─ web/
   └─ (future) nocturne.css
```

- `docs/` contains **human-facing** documentation.
- `design-system/tokens.json` is the **machine-readable source of truth** for color roles and hex values.
- `vscode/` is the VS Code theme implementation that consumes those tokens.

---
## Design System

Nocturne uses a role-based design system.  
Colors are assigned to **roles**, not to arbitrary elements.

Read: `docs/nocturne-design-system.md`

High-level mapping:

- `base.canvas` → main background (`#271E32`)
- `surface.*` → panels, sidebars, elevated surfaces
- `text.*` → primary, muted, tertiary text
- `accent.structure` → types, classes, constants, headings
- `accent.action` → functions, methods, links, badges
- `accent.value` → strings, added/success states
- `accent.warning` → warnings, “pay attention” states
- `accent.error` → errors, destructive actions
- `accent.keyword` → language keywords / control flow

All downstream implementations (VS Code, terminal, Chroma, web) should use these roles as their starting point.

---
## Development

### Prerequisites

- Node.js
- `vsce` (VS Code extension packaging tool)
- Git

### Install dependencies

From the repo root:

```bash
npm install
```

### Package the extension

```bash
vsce package
```

This produces a `.vsix` file you can install locally.

### Test changes

1. Open the repo in VS Code.
2. Press `F5` to start an **Extension Development Host**.
3. In the new window, switch to the **Nocturne** color theme.
4. Open a variety of files:
   - TypeScript / JavaScript
   - JSON
   - Markdown
   - Diff views and Git changes
   - Terminal

Check that all roles (structure, action, values, diagnostics) feel consistent.

---
## Using the Colors Elsewhere

- **Terminal:** map ANSI colors according to the roles in `nocturne-design-system.md`.
- **Chroma / RGB:** use action/value/warning/error roles for key clusters (movement, confirm, cancel, etc.).
- **Web:** expose the tokens as CSS variables and consume them in components rather than hardcoding hex values.

The rule: **pick by role first, hex second.**

---
## License

This theme is released under the MIT License.  
See `LICENSE` for details.
