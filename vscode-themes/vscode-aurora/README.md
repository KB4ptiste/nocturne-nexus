# Aurora Nexus – VS Code Theme

Aurora Nexus is the **light-mode sibling** of Nocturne Nexus. Same orbital accent language, inverted shell:

- Light lavender backgrounds
- Dark violet ink for code & UI chrome
- Shared accent families with Nocturne Nexus (purple, magenta, warm, cyan, teal)
- Focus on legibility and consistent semantic roles

## Installation (local dev)

1. Clone or copy the extension folder into your workspace, for example:

   ```bash
   nocturne-themes/
     vscode-aurora/
       package.json
       themes/
         aurora-nexus.json
       media/
         aurora-nexus-icon.png
   ```

2. From the `vscode-aurora` folder, run:

   ```bash
   npm install   # only if you add build tooling; not required for a pure theme
   ```

3. Launch VS Code with the extension in development mode:

   ```bash
   code .
   ```

   Press `F5` to start an **Extension Development Host**. Open the Command Palette and choose:

   - `Preferences: Color Theme`
   - Select **Aurora Nexus**.

## Design intent

Aurora Nexus reuses the **Nocturne Nexus accent palette** and flips the structure for light:

- Background shell:
  - `#F5ECFF` editor surface
  - `#E4D8FB` panels & sidebars
  - `#D7C6F7` accent blocks and headers
- Text & neutrals:
  - `#241B2F` primary ink
  - `#4A3C65` muted text
  - `#6D5B98` comments & lower-priority labels
- Accents (shared with Nocturne Nexus):
  - Purple: `#B399FF`, `#A761EC`, `#C8A8FF`
  - Magenta: `#FF80BF`, `#FF99D1`
  - Cool: `#80FFEA`, `#33B9A6`, `#52C7B8`
  - Status: `#8AFF80`, `#FFCA80`, `#FF9580`

Usage guidelines:

- Reserve bright accents for **small areas**: carets, borders, active icons, selection outlines.
- Keep body text in dark ink (`#241B2F`) for contrast.
- Use warm colors (orange, coral) for diffs, diagnostics, and semantic warnings/errors.

## Folder structure

Recommended repo layout alongside Nocturne Nexus:

```text
nocturne-themes/
  vscode-nocturne/
    package.json
    themes/Nocturne-color-theme.json
  vscode-aurora/
    package.json
    themes/aurora-nexus.json
    media/aurora-nexus-icon.png
```

## License

Aurora Nexus is released under the **MIT License**. See the `LICENSE` file for details.
