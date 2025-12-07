# Nocturne Nexus Color Pairing Guide (v1.3)

This guide shows recommended color pairings on the main Nocturne Nexus backgrounds.
Version 1.3 aligns with the updated palette (v1.3), which adds teal accents in the tertiary-cool family
and a 3D purple ramp in the primary-violet family.

Use this as a practical companion to the registry in `nocturne-nexus-palette-v1.3.md`.

---

## 1. Core backgrounds

These are the primary surfaces everything sits on:

- Core editor: `nn-bg-editor-core` = `#271E32`
- Panel / sidebar: `nn-bg-panel` = `#241B2F`
- Accent block / taskbar-like: `nn-bg-accent-block` = `#3E2E50`

---

## 2. Accent families (applied visually)

- **Primary-violet**  
  - Colors (core): `#B399FF`, `#A761EC`, `#C8A8FF`, `#FF80BF`, `#FF99D1`, `#B394D6`  
  - 3D ramp: `#4A3C65` (shadow), `#6D5B98` (mid), `#907ACB` (light), `#DACAFF` (highlight)  
  - Use for: icons, logos, main interactive accents, 3D icon shading, syntax emphasis.

- **Secondary-warm**  
  - Colors: `#FFCA80`, `#FFDE9E`, `#FF9580`, `#FFB3A0`  
  - Use for: warnings, errors, and warm semantic emphasis only.

- **Tertiary-cool**  
  - Colors: cyan (`#80FFEA`, `#9AFFF0`), teal (`#33B9A6`, `#52C7B8`)  
  - Use for: cursor/caret, search highlights, tiny “electric” lines, select nodes in wallpapers.

- **Status-success**  
  - Colors: `#8AFF80`, `#A8FF9A`  
  - Use for: success/positive state only.

If you introduce new accents, assign them to one family and document them in the palette registry.

---

## 3. Pairings for core backgrounds

These tables assume a dark UI and are meant for icons, text, and borders.

### 3.1 Background: Core editor `#271E32` (`nn-bg-editor-core`)

| Element        | Recommended ID               | Hex       | Notes                                      |
|----------------|-----------------------------|-----------|--------------------------------------------|
| Body text      | `nn-fg-primary`             | `#D8C5EE` | Main code / text                           |
| Secondary text | `nn-fg-muted`               | `#977DB5` | Comments, hints                            |
| Icon outline   | `nn-neutral-light`          | `#B0B5C5` | Line icons, thin strokes                   |
| Icon fill      | `nn-accent-purple-primary`  | `#B399FF` | Main glyph fill (primary-violet family)    |
| Accent detail  | `nn-accent-cyan-primary`    | `#80FFEA` | Tiny cool highlights, not whole icons      |
| Borders        | `nn-border-subtle`          | `#3C3F46` | Card, panel, or icon container outlines    |

For 3D icons on this background:

- Shadow face: `nn-3d-purple-shadow` (`#4A3C65`)
- Mid face: `nn-3d-purple-mid` (`#6D5B98`)
- Light face: `nn-3d-purple-light` (`#907ACB`)
- Edge highlight: `nn-3d-purple-highlight` (`#DACAFF`) or `nn-fg-bright` (`#F5ECFF`) in tiny amounts

### 3.2 Background: Panel / sidebar `#241B2F` (`nn-bg-panel`)

| Element        | Recommended ID               | Hex       | Notes                                      |
|----------------|-----------------------------|-----------|--------------------------------------------|
| Body text      | `nn-fg-primary`             | `#D8C5EE` | Main labels / navigation                   |
| Secondary text | `nn-fg-accent-soft`         | `#B394D6` | Inactive labels, low-priority info         |
| Icon outline   | `nn-neutral-light`          | `#B0B5C5` | Readable but not overpowering              |
| Icon fill      | `nn-accent-purple-primary`  | `#B399FF` | Primary sidebar icons                      |
| Accent detail  | `nn-accent-purple-glow`     | `#A761EC` | Inner glow / small highlights              |
| Borders        | `nn-border-subtle`          | `#3C3F46` | Separators, edge lines                     |

3D icons can use the same ramp as above; dial down highlight coverage so the sidebar does not become visual noise.

### 3.3 Background: Accent block / taskbar `#3E2E50` (`nn-bg-accent-block`)

| Element        | Recommended ID               | Hex       | Notes                                      |
|----------------|-----------------------------|-----------|--------------------------------------------|
| Body text      | `nn-fg-primary`             | `#D8C5EE` | Good contrast over `#3E2E50`               |
| Secondary text | `nn-fg-muted`               | `#977DB5` | Less prominent labels                      |
| Icon outline   | `nn-neutral-light`          | `#B0B5C5` | Clear line icons on the taskbar            |
| Icon fill      | `nn-accent-purple-primary`  | `#B399FF` | Main symbol color                          |
| Accent detail  | `nn-fg-bright`              | `#F5ECFF` | Tiny specular highlights / 3D shine        |
| Borders        | `nn-border-subtle`          | `#3C3F46` | Optional, for separating taskbar segments  |

3D ramp on accent blocks:

- Use `nn-3d-purple-mid` and `nn-3d-purple-light` for most faces.
- Reserve `nn-3d-purple-highlight` and `nn-fg-bright` for very small edges and glints only.

---

## 4. Quick decision rules

### 4.1 Surfaces

- Editor-like area → `nn-bg-editor-core` (`#271E32`)
- Sidebars & panels → `nn-bg-panel` (`#241B2F`)
- Taskbar / strong block → `nn-bg-accent-block` (`#3E2E50`)

### 4.2 Text

- Default: `nn-fg-primary` for anything that needs to be read.
- Secondary or less important: `nn-fg-muted` or `nn-fg-accent-soft`.
- Avoid using accent colors for long text; they are for emphasis, not body copy.

### 4.3 Icons

On dark backgrounds:

- Outline / strokes → `nn-neutral-light` (`#B0B5C5`)
- Main fill → `nn-accent-purple-primary` (`#B399FF`)
- 3D shading → `nn-3d-purple-*` ramp for faces, `nn-3d-purple-highlight` / `nn-fg-bright` for highlights.
- Tiny technical accents → cyan/teal from the tertiary-cool family.

### 4.4 Borders

- Default border/divider on dark surfaces → `nn-border-subtle` (`#3C3F46`)
- Use colored borders from `status-*` only when borders communicate state (error, warning, success).

---

## 5. Hard cap on accents (practical application)

To keep the interface balanced, apply a hard cap on how much visible area accents occupy,
following the 60–30–10 guidance from the palette registry:

- Roughly 60%: backgrounds (`nn-bg-*`) and very dark structural elements.
- Roughly 30%: text and structural neutrals (`nn-fg-*`, `nn-neutral-light`, `nn-border-subtle`).
- At most 10%: accents (all accent families combined).

Within that 10%:

- Primary-violet is the main accent family and should be most of the accent share.
- Secondary-warm is used for stateful feedback (warnings, errors) and should not flood the UI.
- Tertiary-cool (cyan/teal) stays in very small doses: cursor, search hits, micro-details, select nodes in wallpapers.

If a mockup starts to feel too colorful, remove tertiary-cool elements first, then reduce warm accents,
before touching the purple base.

---

## 6. When you are unsure what to pick

1. If it is a surface → choose the nearest `nn-bg-*` based on depth (flat vs elevated vs accent block).
2. If it is text → use `nn-fg-primary`; downgrade to `nn-fg-muted` or `nn-fg-accent-soft` for secondary content.
3. If it is an icon → outline = `nn-neutral-light`, fill = `nn-accent-purple-primary`, shading = `nn-3d-purple-*`.
4. If it is semantic (error/warn/success) → pick from `nn-status-error*`, `nn-status-warning*`, `nn-status-success*`.
5. If you reach for cyan or teal on large shapes → stop; those belong in tertiary-cool and should stay small.

When new colors are introduced for icons, wallpapers, or themes, test them against these pairings.
If a new color repeatedly fights these combinations, it likely does not belong in Nocturne Nexus.
