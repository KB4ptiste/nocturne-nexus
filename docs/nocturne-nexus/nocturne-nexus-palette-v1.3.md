# Nocturne Nexus Color Palette – Source of Truth (v1.3)

This document is the canonical color registry for Nocturne Nexus.

Version 1.3 changes:
- Adds teal accents (`nn-accent-teal-primary`, `nn-accent-teal-soft`) to the tertiary cool family.
- Adds a 3D purple ramp (`nn-3d-purple-shadow`, `nn-3d-purple-mid`, `nn-3d-purple-light`, `nn-3d-purple-highlight`) to the primary-violet family.

There are two views:

1. Machine-readable registry – stable IDs, hex values, roles, accent families.
2. Human-oriented breakdown – grouped by role with usage guidance.

---

## 1. Machine-readable palette registry

Use this block as the single source of truth for automated systems or AI tools.

```json
{
  "meta": {
    "paletteName": "Nocturne Nexus",
    "version": "1.3",
    "themeType": "dark",
    "source": "VS Code theme JSON (Nocturne-color-theme.json) + utility neutrals + extended accents",
    "accentFamilies": {
      "primary-violet": "Core brand violet/magenta family used for main accents, icons, and 3D ramps.",
      "secondary-warm": "Amber/orange/yellow/coral family used for warnings and warm emphasis.",
      "tertiary-cool": "Cyan/teal family used very selectively for technical highlights.",
      "status-success": "Green family reserved for success/positive status."
    },
    "notes": "Minor version bump: adds teal accents in the tertiary cool family and a 3D purple ramp in the primary-violet family."
  },
  "colors": [
    {
      "id": "nn-bg-panel",
      "hex": "#241B2F",
      "name": "Panel & Sidebar Background",
      "category": "background",
      "intent": "Secondary background for sidebars, panels, tabs, and structural chrome.",
      "alphaVariants": [],
      "usageExamples": [
        "vscode.colors.activityBar.background",
        "vscode.colors.activityBarBadge.foreground",
        "vscode.colors.badge.foreground",
        "vscode.colors.button.foreground",
        "vscode.colors.editorIndentGuide.background",
        "vscode.colors.editorWhitespace.foreground",
        "vscode.colors.input.background",
        "vscode.colors.list.inactiveSelectionBackground",
        "vscode.colors.panel.background",
        "vscode.colors.peekViewEditor.background",
        "vscode.colors.sideBar.background",
        "vscode.colors.statusBar.debuggingForeground",
        "vscode.colors.tab.activeBackground",
        "vscode.colors.tab.inactiveBackground",
        "vscode.colors.terminal.ansiBlack",
        "vscode.colors.titleBar.activeBackground"
      ]
    },
    {
      "id": "nn-bg-elevated",
      "hex": "#261C31",
      "name": "Elevated Surface / Highlight Background",
      "category": "background",
      "intent": "Subtle elevated surfaces, line highlights, and structural emphasis.",
      "alphaVariants": [
        "#261C3180"
      ],
      "usageExamples": [
        "vscode.colors.diffEditor.diagonalFill",
        "vscode.colors.editor.foldBackground",
        "vscode.colors.editor.inactiveSelectionBackground",
        "vscode.colors.editor.lineHighlightBackground",
        "vscode.colors.list.activeSelectionBackground",
        "vscode.colors.list.focusBackground",
        "vscode.colors.panel.border",
        "vscode.colors.statusBar.background",
        "vscode.colors.statusBar.noFolderBackground"
      ]
    },
    {
      "id": "nn-bg-editor-core",
      "hex": "#271E32",
      "name": "Core Editor Background",
      "category": "background",
      "intent": "Primary dark canvas for code, terminal, and minimap.",
      "alphaVariants": [],
      "usageExamples": [
        "vscode.colors.editor.background",
        "vscode.colors.editorGutter.background",
        "vscode.colors.minimap.background",
        "vscode.colors.terminal.background"
      ]
    },
    {
      "id": "nn-accent-teal-primary",
      "hex": "#33B9A6",
      "name": "Primary Teal Accent",
      "category": "accent",
      "intent": "Teal accent within the tertiary cool family for rare, high-contrast highlights, icons, and orbital segments.",
      "alphaVariants": [],
      "usageExamples": [
        "icons.experimental.tealPrimary",
        "wallpaper.orbitalSyntax.tealSegment"
      ],
      "accentFamily": "tertiary-cool"
    },
    {
      "id": "nn-border-subtle",
      "hex": "#3C3F46",
      "name": "Subtle Dark Border",
      "category": "foreground",
      "intent": "Dark neutral border/outline for cards, panels, and structural separators.",
      "alphaVariants": [],
      "usageExamples": [
        "icons.generic.border"
      ]
    },
    {
      "id": "nn-bg-accent-block",
      "hex": "#3E2E50",
      "name": "Accent Block / Brand Surface",
      "category": "background",
      "intent": "Strong purple surface for taskbar-like blocks, selections, and brand-tinted panels.",
      "alphaVariants": [
        "#3E2E5040",
        "#3E2E5080"
      ],
      "usageExamples": [
        "vscode.colors.dropdown.background",
        "vscode.colors.editor.hoverHighlightBackground",
        "vscode.colors.editor.selectionBackground",
        "vscode.colors.editor.selectionHighlightBackground",
        "vscode.colors.editorBracketMatch.background",
        "vscode.colors.list.hoverBackground",
        "vscode.colors.minimap.selectionHighlight",
        "vscode.colors.peekView.border",
        "vscode.colors.tab.border",
        "vscode.colors.terminal.ansiBrightBlack",
        "vscode.colors.terminal.selectionBackground",
        "vscode.colors.titleBar.inactiveBackground"
      ],
      "accentFamily": "primary-violet"
    },
    {
      "id": "nn-bg-scrollbar-track",
      "hex": "#49345E",
      "name": "Scrollbar Track & Rail",
      "category": "background",
      "intent": "Track/rail for scrollbars and slim rails.",
      "alphaVariants": [
        "#49345E99",
        "#49345ECC",
        "#49345EFF"
      ],
      "usageExamples": [
        "vscode.colors.scrollbarSlider.activeBackground",
        "vscode.colors.scrollbarSlider.background",
        "vscode.colors.scrollbarSlider.hoverBackground"
      ]
    },
    {
      "id": "nn-3d-purple-shadow",
      "hex": "#4A3C65",
      "name": "3D Purple Shadow",
      "category": "accent",
      "intent": "Deep shadow tone for 3D purple icon faces and recessed surfaces.",
      "alphaVariants": [],
      "usageExamples": [
        "icons.3d.purpleShadow"
      ],
      "accentFamily": "primary-violet"
    },
    {
      "id": "nn-accent-teal-soft",
      "hex": "#52C7B8",
      "name": "Soft Teal Accent",
      "category": "accent",
      "intent": "Softer teal accent for subtle cool highlights and glows in wallpaper and icon details.",
      "alphaVariants": [],
      "usageExamples": [
        "icons.experimental.tealSoft",
        "wallpaper.nocturneNebula.tealGlow"
      ],
      "accentFamily": "tertiary-cool"
    },
    {
      "id": "nn-3d-purple-mid",
      "hex": "#6D5B98",
      "name": "3D Purple Mid",
      "category": "accent",
      "intent": "Mid-tone purple for main 3D icon faces and mid-depth surfaces.",
      "alphaVariants": [],
      "usageExamples": [
        "icons.3d.purpleMid"
      ],
      "accentFamily": "primary-violet"
    },
    {
      "id": "nn-accent-cyan-primary",
      "hex": "#80FFEA",
      "name": "Primary Cyan Accent",
      "category": "accent",
      "intent": "Cool technical accent for cursors, info highlights, and precise highlights.",
      "alphaVariants": [
        "#80FFEA15",
        "#80FFEA25",
        "#80FFEA40",
        "#80FFEA60",
        "#80FFEA80"
      ],
      "usageExamples": [
        "vscode.colors.activityBarBadge.background",
        "vscode.colors.badge.background",
        "vscode.colors.editor.findMatchBackground",
        "vscode.colors.editor.findMatchHighlightBackground",
        "vscode.colors.editor.findRangeHighlightBackground",
        "vscode.colors.editorBracketMatch.border",
        "vscode.colors.editorInfo.foreground",
        "vscode.colors.minimap.findMatchHighlight",
        "vscode.colors.terminal.ansiCyan",
        "vscode.colors.terminalCursor.foreground",
        "vscode.semanticTokenColors.function",
        "vscode.semanticTokenColors.method",
        "vscode.semanticTokenColors.namespace",
        "vscode.tokenColors.Functions & Methods",
        "vscode.tokenColors.Links"
      ],
      "accentFamily": "tertiary-cool"
    },
    {
      "id": "nn-status-success",
      "hex": "#8AFF80",
      "name": "Success Green",
      "category": "status",
      "intent": "Success states, added/inserted code, and positive feedback.",
      "alphaVariants": [
        "#8AFF8015"
      ],
      "usageExamples": [
        "vscode.colors.diffEditor.insertedTextBackground",
        "vscode.colors.editorGutter.addedBackground",
        "vscode.colors.terminal.ansiGreen",
        "vscode.semanticTokenColors.string",
        "vscode.tokenColors.Inserted / Added",
        "vscode.tokenColors.Strings"
      ],
      "accentFamily": "status-success"
    },
    {
      "id": "nn-3d-purple-light",
      "hex": "#907ACB",
      "name": "3D Purple Light",
      "category": "accent",
      "intent": "Light-facing 3D purple tone for lit faces and bevels.",
      "alphaVariants": [],
      "usageExamples": [
        "icons.3d.purpleLight"
      ],
      "accentFamily": "primary-violet"
    },
    {
      "id": "nn-fg-muted",
      "hex": "#977DB5",
      "name": "Muted Text",
      "category": "foreground",
      "intent": "Comments, placeholders, and secondary labels.",
      "alphaVariants": [],
      "usageExamples": [
        "vscode.colors.editorIndentGuide.activeBackground",
        "vscode.colors.editorLineNumber.foreground",
        "vscode.colors.input.placeholderForeground",
        "vscode.colors.titleBar.inactiveForeground",
        "vscode.tokenColors.Comments"
      ]
    },
    {
      "id": "nn-accent-cyan-bright",
      "hex": "#9AFFF0",
      "name": "Bright Cyan Accent",
      "category": "accent",
      "intent": "Bright cyan accent for ANSI bright cyan and rare, sharp highlights.",
      "alphaVariants": [],
      "usageExamples": [
        "vscode.colors.terminal.ansiBrightCyan"
      ],
      "accentFamily": "tertiary-cool"
    },
    {
      "id": "nn-accent-purple-glow",
      "hex": "#A761EC",
      "name": "Glow Purple Accent",
      "category": "accent",
      "intent": "High-energy purple accent for glows, active tab borders, and logo details.",
      "alphaVariants": [],
      "usageExamples": [
        "vscode.colors.tab.activeBorderTop"
      ],
      "accentFamily": "primary-violet"
    },
    {
      "id": "nn-status-success-bright",
      "hex": "#A8FF9A",
      "name": "Bright Success Green",
      "category": "status",
      "intent": "Bright success feedback and ANSI bright green.",
      "alphaVariants": [],
      "usageExamples": [
        "vscode.colors.terminal.ansiBrightGreen"
      ],
      "accentFamily": "status-success"
    },
    {
      "id": "nn-neutral-light",
      "hex": "#B0B5C5",
      "name": "Light Neutral Stroke",
      "category": "foreground",
      "intent": "Cool light neutral for icon strokes, dividers, and non-brand structural chrome.",
      "alphaVariants": [],
      "usageExamples": [
        "icons.generic.outline"
      ]
    },
    {
      "id": "nn-fg-accent-soft",
      "hex": "#B394D6",
      "name": "Soft Lavender Accent Text",
      "category": "foreground",
      "intent": "Soft accent text for labels, inactive tabs, and low-priority text.",
      "alphaVariants": [],
      "usageExamples": [
        "vscode.colors.tab.inactiveForeground"
      ],
      "accentFamily": "primary-violet"
    },
    {
      "id": "nn-accent-purple-primary",
      "hex": "#B399FF",
      "name": "Primary Purple Accent",
      "category": "accent",
      "intent": "Core brand purple for key icons, buttons, property names, classes, and ANSI blue.",
      "alphaVariants": [],
      "usageExamples": [
        "vscode.colors.button.background",
        "vscode.colors.terminal.ansiBlue",
        "vscode.semanticTokenColors.class",
        "vscode.semanticTokenColors.enumMember",
        "vscode.semanticTokenColors.interface",
        "vscode.semanticTokenColors.property",
        "vscode.semanticTokenColors.typeParameter",
        "vscode.semanticTokenColors.variable.readonly",
        "vscode.tokenColors.Classes, Types, Enums",
        "vscode.tokenColors.Constants",
        "vscode.tokenColors.Headings",
        "vscode.tokenColors.JSON Property Names / Object Keys"
      ],
      "accentFamily": "primary-violet"
    },
    {
      "id": "nn-accent-purple-bright",
      "hex": "#C8A8FF",
      "name": "Bright Purple Accent",
      "category": "accent",
      "intent": "Brightest purple for highlights and bright ANSI variants.",
      "alphaVariants": [],
      "usageExamples": [
        "vscode.colors.terminal.ansiBrightBlue"
      ],
      "accentFamily": "primary-violet"
    },
    {
      "id": "nn-fg-primary",
      "hex": "#D8C5EE",
      "name": "Primary Text",
      "category": "foreground",
      "intent": "Main foreground text on dark backgrounds.",
      "alphaVariants": [],
      "usageExamples": [
        "vscode.colors.activityBar.foreground",
        "vscode.colors.dropdown.foreground",
        "vscode.colors.editor.foreground",
        "vscode.colors.editorCursor.foreground",
        "vscode.colors.editorLineNumber.activeForeground",
        "vscode.colors.input.foreground",
        "vscode.colors.list.activeSelectionForeground",
        "vscode.colors.sideBar.foreground",
        "vscode.colors.statusBar.foreground",
        "vscode.colors.tab.activeForeground",
        "vscode.colors.terminal.ansiWhite",
        "vscode.colors.terminal.foreground",
        "vscode.colors.titleBar.activeForeground",
        "vscode.semanticTokenColors.parameter",
        "vscode.tokenColors.Operators & Punctuation",
        "vscode.tokenColors.Variables"
      ]
    },
    {
      "id": "nn-3d-purple-highlight",
      "hex": "#DACAFF",
      "name": "3D Purple Highlight",
      "category": "accent",
      "intent": "Specular highlight tone for 3D purple edges, corners, and small bright accents.",
      "alphaVariants": [],
      "usageExamples": [
        "icons.3d.purpleHighlight"
      ],
      "accentFamily": "primary-violet"
    },
    {
      "id": "nn-fg-bright",
      "hex": "#F5ECFF",
      "name": "Bright Accent Text",
      "category": "foreground",
      "intent": "Highest-contrast text for rare, strong emphasis and 3D highlights.",
      "alphaVariants": [],
      "usageExamples": [
        "vscode.colors.terminal.ansiBrightWhite"
      ]
    },
    {
      "id": "nn-accent-magenta",
      "hex": "#FF80BF",
      "name": "Magenta Accent",
      "category": "accent",
      "intent": "Keywords, storage types, and ANSI magenta; magenta branch of the violet brand family.",
      "alphaVariants": [],
      "usageExamples": [
        "vscode.colors.terminal.ansiMagenta",
        "vscode.tokenColors.Keywords & Storage"
      ],
      "accentFamily": "primary-violet"
    },
    {
      "id": "nn-status-error",
      "hex": "#FF9580",
      "name": "Error Coral",
      "category": "status",
      "intent": "Errors, removed code, and ANSI red.",
      "alphaVariants": [
        "#FF958015",
        "#FF958040"
      ],
      "usageExamples": [
        "vscode.colors.diffEditor.removedTextBackground",
        "vscode.colors.editorError.foreground",
        "vscode.colors.editorGutter.deletedBackground",
        "vscode.colors.minimap.errorHighlight",
        "vscode.colors.terminal.ansiRed",
        "vscode.tokenColors.Error / Invalid"
      ],
      "accentFamily": "secondary-warm"
    },
    {
      "id": "nn-accent-magenta-bright",
      "hex": "#FF99D1",
      "name": "Bright Magenta Accent",
      "category": "accent",
      "intent": "ANSI bright magenta and ultra-vivid magenta highlights.",
      "alphaVariants": [],
      "usageExamples": [
        "vscode.colors.terminal.ansiBrightMagenta"
      ],
      "accentFamily": "primary-violet"
    },
    {
      "id": "nn-status-error-soft",
      "hex": "#FFB3A0",
      "name": "Soft Error Coral",
      "category": "status",
      "intent": "Softer error feedback and ANSI bright red.",
      "alphaVariants": [],
      "usageExamples": [
        "vscode.colors.terminal.ansiBrightRed"
      ],
      "accentFamily": "secondary-warm"
    },
    {
      "id": "nn-status-warning",
      "hex": "#FFCA80",
      "name": "Warning Amber",
      "category": "status",
      "intent": "Warnings, changed code, and ANSI yellow.",
      "alphaVariants": [
        "#FFCA8015",
        "#FFCA8030",
        "#FFCA8040"
      ],
      "usageExamples": [
        "vscode.colors.editor.wordHighlightBackground",
        "vscode.colors.editor.wordHighlightStrongBackground",
        "vscode.colors.editorGutter.modifiedBackground",
        "vscode.colors.editorWarning.foreground",
        "vscode.colors.minimap.warningHighlight",
        "vscode.colors.statusBar.debuggingBackground",
        "vscode.colors.terminal.ansiYellow",
        "vscode.semanticTokenColors.boolean",
        "vscode.semanticTokenColors.number",
        "vscode.tokenColors.Changed",
        "vscode.tokenColors.Numbers & Booleans"
      ],
      "accentFamily": "secondary-warm"
    },
    {
      "id": "nn-status-warning-bright",
      "hex": "#FFDE9E",
      "name": "Bright Warning Amber",
      "category": "status",
      "intent": "Bright warnings and ANSI bright yellow.",
      "alphaVariants": [],
      "usageExamples": [
        "vscode.colors.terminal.ansiBrightYellow"
      ],
      "accentFamily": "secondary-warm"
    }
  ]
}
```

---

## 2. Human-oriented breakdown

### 2.1 Core backgrounds

| ID              | Hex       | Name                          | Intended usage |
|-----------------|-----------|-------------------------------|----------------|
| `nn-bg-panel` | `#241B2F` | Panel & Sidebar Background | Secondary background for sidebars, panels, tabs, and structural chrome. |
| `nn-bg-elevated` | `#261C31` | Elevated Surface / Highlight Background | Subtle elevated surfaces, line highlights, and structural emphasis. |
| `nn-bg-editor-core` | `#271E32` | Core Editor Background | Primary dark canvas for code, terminal, and minimap. |
| `nn-bg-accent-block` | `#3E2E50` | Accent Block / Brand Surface | Strong purple surface for taskbar-like blocks, selections, and brand-tinted panels. |
| `nn-bg-scrollbar-track` | `#49345E` | Scrollbar Track & Rail | Track/rail for scrollbars and slim rails. |


### 2.2 Text, neutrals & foreground

| ID              | Hex       | Name                 | Intended usage |
|-----------------|-----------|----------------------|----------------|
| `nn-border-subtle` | `#3C3F46` | Subtle Dark Border | Dark neutral border/outline for cards, panels, and structural separators. |
| `nn-fg-muted` | `#977DB5` | Muted Text | Comments, placeholders, and secondary labels. |
| `nn-neutral-light` | `#B0B5C5` | Light Neutral Stroke | Cool light neutral for icon strokes, dividers, and non-brand structural chrome. |
| `nn-fg-accent-soft` | `#B394D6` | Soft Lavender Accent Text | Soft accent text for labels, inactive tabs, and low-priority text. |
| `nn-fg-primary` | `#D8C5EE` | Primary Text | Main foreground text on dark backgrounds. |
| `nn-fg-bright` | `#F5ECFF` | Bright Accent Text | Highest-contrast text for rare, strong emphasis and 3D highlights. |


### 2.3 Brand & accent colors

| ID                     | Hex       | Accent family    | Name                 | Intended usage |
|------------------------|-----------|------------------|----------------------|----------------|
| `nn-accent-teal-primary` | `#33B9A6` | tertiary-cool | Primary Teal Accent | Teal accent within the tertiary cool family for rare, high-contrast highlights, icons, and orbital segments. |
| `nn-3d-purple-shadow` | `#4A3C65` | primary-violet | 3D Purple Shadow | Deep shadow tone for 3D purple icon faces and recessed surfaces. |
| `nn-accent-teal-soft` | `#52C7B8` | tertiary-cool | Soft Teal Accent | Softer teal accent for subtle cool highlights and glows in wallpaper and icon details. |
| `nn-3d-purple-mid` | `#6D5B98` | primary-violet | 3D Purple Mid | Mid-tone purple for main 3D icon faces and mid-depth surfaces. |
| `nn-accent-cyan-primary` | `#80FFEA` | tertiary-cool | Primary Cyan Accent | Cool technical accent for cursors, info highlights, and precise highlights. |
| `nn-3d-purple-light` | `#907ACB` | primary-violet | 3D Purple Light | Light-facing 3D purple tone for lit faces and bevels. |
| `nn-accent-cyan-bright` | `#9AFFF0` | tertiary-cool | Bright Cyan Accent | Bright cyan accent for ANSI bright cyan and rare, sharp highlights. |
| `nn-accent-purple-glow` | `#A761EC` | primary-violet | Glow Purple Accent | High-energy purple accent for glows, active tab borders, and logo details. |
| `nn-accent-purple-primary` | `#B399FF` | primary-violet | Primary Purple Accent | Core brand purple for key icons, buttons, property names, classes, and ANSI blue. |
| `nn-accent-purple-bright` | `#C8A8FF` | primary-violet | Bright Purple Accent | Brightest purple for highlights and bright ANSI variants. |
| `nn-3d-purple-highlight` | `#DACAFF` | primary-violet | 3D Purple Highlight | Specular highlight tone for 3D purple edges, corners, and small bright accents. |
| `nn-accent-magenta` | `#FF80BF` | primary-violet | Magenta Accent | Keywords, storage types, and ANSI magenta; magenta branch of the violet brand family. |
| `nn-accent-magenta-bright` | `#FF99D1` | primary-violet | Bright Magenta Accent | ANSI bright magenta and ultra-vivid magenta highlights. |


### 2.4 Status & semantic colors

| ID                     | Hex       | Accent family    | Name                 | Intended usage |
|------------------------|-----------|------------------|----------------------|----------------|
| `nn-status-success` | `#8AFF80` | status-success | Success Green | Success states, added/inserted code, and positive feedback. |
| `nn-status-success-bright` | `#A8FF9A` | status-success | Bright Success Green | Bright success feedback and ANSI bright green. |
| `nn-status-error` | `#FF9580` | secondary-warm | Error Coral | Errors, removed code, and ANSI red. |
| `nn-status-error-soft` | `#FFB3A0` | secondary-warm | Soft Error Coral | Softer error feedback and ANSI bright red. |
| `nn-status-warning` | `#FFCA80` | secondary-warm | Warning Amber | Warnings, changed code, and ANSI yellow. |
| `nn-status-warning-bright` | `#FFDE9E` | secondary-warm | Bright Warning Amber | Bright warnings and ANSI bright yellow. |


### 2.5 Alpha / overlay variants

These are not separate base colors. They are overlays derived from the base colors above.

| Base ID             | Base Hex   | Alpha variants (8-digit hex) | Typical usage |
|---------------------|-----------|------------------------------|---------------|
| `nn-bg-elevated` | `#261C31` | `#261C3180` | Derived overlay for hovers, selections, or highlights. |
| `nn-bg-accent-block` | `#3E2E50` | `#3E2E5040, #3E2E5080` | Derived overlay for hovers, selections, or highlights. |
| `nn-bg-scrollbar-track` | `#49345E` | `#49345E99, #49345ECC, #49345EFF` | Derived overlay for hovers, selections, or highlights. |
| `nn-accent-cyan-primary` | `#80FFEA` | `#80FFEA15, #80FFEA25, #80FFEA40, #80FFEA60, #80FFEA80` | Derived overlay for hovers, selections, or highlights. |
| `nn-status-success` | `#8AFF80` | `#8AFF8015` | Derived overlay for hovers, selections, or highlights. |
| `nn-status-error` | `#FF9580` | `#FF958015, #FF958040` | Derived overlay for hovers, selections, or highlights. |
| `nn-status-warning` | `#FFCA80` | `#FFCA8015, #FFCA8030, #FFCA8040` | Derived overlay for hovers, selections, or highlights. |


---

## 3. Accent families & hierarchy

Nocturne Nexus uses three main accent families plus a dedicated success family:

- Primary accent family (brand): `primary-violet`  
  Cool violet/magenta family used for main brand accents, icons, 3D ramps, and emphasis elements.

- Secondary warm accent family: `secondary-warm`  
  Amber/orange/yellow/coral family used for warnings and warm emphasis, not as primary brand color.

- Tertiary cool accent family: `tertiary-cool`  
  Cyan/teal family used very selectively for technical or electric highlights (cursor, search hits, tertiary icon details).

- Success family: `status-success`  
  Green family reserved for success and positive feedback, not general decoration.

Each accent or status color in the registry is tagged with an `accentFamily` where appropriate.

---

## 4. Usage rules

### 4.1 Background stacking

- Base editor / canvas: `nn-bg-editor-core` (`#271E32`)
- Slightly raised surfaces: `nn-bg-elevated` (`#261C31`)
- Sidebars / structural panels: `nn-bg-panel` (`#241B2F`)
- Strong brand-tinted blocks: `nn-bg-accent-block` (`#3E2E50`)

### 4.2 Text & neutral hierarchy

- Primary body text: `nn-fg-primary` (`#D8C5EE`)
- Muted / comments / placeholders: `nn-fg-muted` (`#977DB5`)
- Soft accent labels (inactive tab labels, low-importance text): `nn-fg-accent-soft` (`#B394D6`)
- Rare, strongest emphasis (small doses): `nn-fg-bright` (`#F5ECFF`)
- Structural neutrals for icons & borders: `nn-neutral-light` (`#B0B5C5`), `nn-border-subtle` (`#3C3F46`).

### 4.3 Accent family roles

- Primary-violet (`nn-accent-purple-*`, `nn-accent-magenta*`, `nn-fg-accent-soft`, `nn-3d-purple-*`)  
  - Default choice for icons, brand elements, and key highlights.  
  - Controls most 3D shading for purple-based icons.

- Secondary-warm (`nn-status-warning*`, `nn-status-error*`)  
  - Reserved mainly for warnings, errors, and other warm semantic feedback.  
  - Avoid using warm accents as general UI chrome so that warning vs normal remains clear.

- Tertiary-cool (`nn-accent-cyan-*`, `nn-accent-teal-*`)  
  - Use sparingly for technical or electric details: cursor, search highlight, small accent lines or nodes.  
  - Do not use tertiary-cool accents for large fills or dominant surfaces.

- Status-success (`nn-status-success*`)  
  - Green is reserved for success/positive semantics only.

### 4.4 Hard cap on accents (60–30–10 guidance)

To keep the UI balanced, follow a hard cap on accent usage, inspired by common 60–30–10 color balance guidance in UI design:

- About 60%: background family (`nn-bg-*`) and very dark structural elements.
- About 30%: text (`nn-fg-*`) and neutral/structural lines (`nn-neutral-light`, `nn-border-subtle`).
- At most 10%: all accent families combined (`primary-violet`, `secondary-warm`, `tertiary-cool`, plus `status-success`).  
  - Within that 10%, primary-violet should dominate.  
  - Secondary-warm appears where state/semantics demand it.  
  - Tertiary-cool should be a very small fraction (cursor, search hits, micro-details).

### 4.5 Overlays & interaction states

- Use alpha variants derived from the same base color instead of new arbitrary hex values.
- Selections and highlights should stay within:
  - Background overlays from `nn-bg-*`; or
  - Accent-family overlays (`nn-accent-cyan-primary`, `nn-status-warning`, `nn-status-error`, etc.).
- New overlays must be traceable back to a specific base color in this registry.

---

## 5. Extending the palette

When adding a new color (for themes, icons, wallpaper, or logos):

1. Decide if a new color is really needed. Reuse an existing accent family and derive tints/shades where possible.

2. If it is needed, add a registry entry with:
   - `id`: follow the pattern `nn-<category>-<short-name>`.
   - `hex`: uppercase `#RRGGBB`.
   - `category`: one of `background`, `foreground`, `accent`, `status`.
   - `accentFamily`: one of `primary-violet`, `secondary-warm`, `tertiary-cool`, `status-success`, or omit if not an accent.
   - `intent`: clear reason why this color exists.
   - `alphaVariants`: any known overlay variants.
   - `usageExamples`: VS Code tokens plus any external usages (`icons.*`, `wallpaper.*`, `operaGX.*`).

3. Update downstream assets to match this registry. The palette is the authority; other files conform to it, not the other way around.

---

## 6. Wallpaper color strategy

These guidelines cover the two main wallpaper concepts: Nocturne Nebula and Orbital Syntax.

### 6.1 Nocturne Nebula

Concept: cosmic, atmospheric nebula with soft gradients and clustered light.

Approximate area percentages:

- 70–80%: dark backgrounds and deep purples  
  - Base: `nn-bg-editor-core` (`#271E32`), `nn-bg-panel` (`#241B2F`)  
  - Soft gradients may lean toward `nn-bg-accent-block` (`#3E2E50`).

- 10–15%: primary-violet nebula forms  
  - Use `nn-accent-purple-primary` (`#B399FF`), `nn-accent-purple-glow` (`#A761EC`), `nn-accent-purple-bright` (`#C8A8FF`).

- 5–8%: secondary-warm highlights (stars & edges)  
  - Use `nn-status-warning` (`#FFCA80`) and `nn-status-warning-bright` (`#FFDE9E`).

- At most 3%: tertiary-cool accents  
  - Use `nn-accent-cyan-primary` (`#80FFEA`), `nn-accent-cyan-bright` (`#9AFFF0`), and optional `nn-accent-teal-*` for filaments and tiny spark points.

Structural rules:

- Keep the central UI focal area darker and lower-contrast so icons and text remain legible.
- Push the brightest warm and cool accents toward edges and corners, away from where system UI elements sit.
- If the wallpaper starts to feel overly colorful, reduce warm and tertiary-cool accents before touching the purple base.

### 6.2 Orbital Syntax

Concept: geometric orbits, nodes, and paths representing syntax constellations.

Approximate area percentages:

- 65–75%: structured dark background  
  - Gradient from `nn-bg-editor-core` (`#271E32`) to `nn-bg-panel` (`#241B2F`).

- 15–20%: primary-violet orbital structures  
  - `nn-accent-purple-primary` for main orbit paths.  
  - `nn-accent-purple-glow` and `nn-accent-purple-bright` for select arcs and closer tracks.  
  - `nn-3d-purple-*` tones for 3D-style orbital elements and iconography.

- 5–8%: secondary-warm nodes and joints  
  - `nn-status-warning` / `nn-status-warning-bright` for selected nodes and junctions.  
  - `nn-status-error-soft` for rare critical nodes.

- At most 3%: tertiary-cool signals  
  - `nn-accent-cyan-*` and `nn-accent-teal-*` for minimal accent lines, tiny pulses, or dot signals.

Structural rules:

- Concentrate most orbital activity in a loose ring or cluster off-center, leaving clear space where desktop or app UI will sit.
- Warm nodes should be focal, not dense background noise.
- Cyan and teal accents should appear as very thin segments or micro dots, not broad shapes.

---

## 7. Accessibility & contrast guidelines

Nocturne Nexus follows common accessibility guidance for color contrast based on WCAG criteria.

### 7.1 Text contrast

- For normal text (body copy, code, labels smaller than ~24px):  
  - Target a contrast ratio of at least 4.5:1 between text color and its background.

- For large text (≥ 24px, or ≥ 18.5px bold):  
  - A contrast ratio of at least 3:1 is acceptable.

- For decorative text baked into wallpapers that is not meant to be read as UI, these constraints may be relaxed, but such elements should not appear critical or interactive.

### 7.2 UI components, icons, and focus indicators

- Icons, borders, and essential UI indicators should aim for at least 3:1 contrast against their immediate background.
- Where icons represent critical state (error, warning, success), prefer combinations with 4.5:1 contrast when possible.
- Decorative shapes in wallpapers are exempt but must not be easily confused with functional UI elements.

### 7.3 Practical implications for Nocturne Nexus

- `nn-fg-primary` over `nn-bg-editor-core` and `nn-bg-panel` is the default for legible text.
- When testing new text or icon colors, validate their contrast against `nn-bg-editor-core` and `nn-bg-panel` with a contrast checker.
- If a candidate accent fails contrast but looks good visually, use it only for non-text decorative roles (glows, thin lines) and not for primary labels or critical icons.
