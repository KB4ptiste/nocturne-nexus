# Aurora Nexus Color Palette – Source of Truth (v1.0)

Light-mode sibling of **Nocturne Nexus (v1.3)**. Same accent families, inverted structure:

- Parent theme: Nocturne Nexus (dark)
- New theme: Aurora Nexus (light)
- Theme type: `light`
- Brand accents: reuse Nocturne’s purple / magenta / warm / cyan / teal sets
- Change scope: backgrounds, neutrals, and text colors are redesigned for light UI

This file focuses on defining Aurora’s **backgrounds + neutrals** and mapping them conceptually
to Nocturne’s existing tokens. Accents and status colors are inherited by reference.

---

## 1. Core backgrounds (Aurora)

These are the main light surfaces. They mirror Nocturne’s background roles but flipped to light.

| Aurora ID          | Hex       | Name                               | Nocturne analogue              | Notes |
|--------------------|-----------|------------------------------------|--------------------------------|-------|
| `an-bg-surface`    | `#F5ECFF` | Core surface / editor background   | `nn-bg-editor-core` `#271E32`  | Main canvas and large surfaces. Very light lavender, derived from Nocturne’s bright text. |
| `an-bg-elevated`   | `#ECE2FF` | Elevated surface / cards           | `nn-bg-elevated` `#261C31`     | Cards, lists, slightly raised panels over core surface. |
| `an-bg-panel`      | `#E4D8FB` | Panel / sidebar background         | `nn-bg-panel` `#241B2F`        | Sidebars, navigation, tool panes. Slightly darker / cooler. |
| `an-bg-accent-block` | `#D7C6F7` | Accent block / branded surface   | `nn-bg-accent-block` `#3E2E50` | Strongly tinted ribbons, headers, chips; not for whole pages. |
| `an-bg-scrollbar-track` | `#CCBAF0` | Scrollbar track / rails       | `nn-bg-scrollbar-track` `#49345E` | Scrollbar rails, thin rails and tracks. |

Practical balance target for UI mockups:

- ~60% `an-bg-*` surfaces
- ~30% text & dark neutrals
- ≤10% vivid accents (purple / magenta / warm / cyan / teal)

---

## 2. Text & neutrals (Aurora)

For Aurora, we reuse Nocturne’s dark purples as **ink** on light lavender backgrounds.

| Aurora ID          | Hex       | Name                   | Source / rationale                                 |
|--------------------|-----------|------------------------|----------------------------------------------------|
| `an-fg-primary`    | `#241B2F` | Primary text           | Reuses Nocturne panel background; strong dark ink. |
| `an-fg-muted`      | `#4A3C65` | Muted / secondary text | Derived from Nocturne 3D shadow tone.              |
| `an-fg-accent-soft`| `#6D5B98` | Soft accent labels     | Derived from Nocturne 3D mid tone.                 |
| `an-fg-soft`       | `#907ACB` | Very soft labels       | Derived from Nocturne 3D light tone.               |
| `an-fg-invert`     | `#FFFFFF` | On-dark inverse text   | For rare dark chips or badges on light theme.      |

Neutrals / borders:

| Aurora ID             | Hex       | Name                 | Notes |
|-----------------------|-----------|----------------------|-------|
| `an-border-subtle`    | `#C6B7E5` | Subtle border        | Card outlines, separators, non-critical dividers. |
| `an-neutral-light`    | `#D9CFF0` | Light neutral stroke | Icon outlines, generic chrome on very light bg. |
| `an-neutral-strong`   | `#5A476F` | Strong neutral       | For small icons/text that need more contrast. |

Usage rules:

- Default text on `an-bg-surface` / `an-bg-panel` → `an-fg-primary`.
- Secondary labels, comments, hints → `an-fg-muted`.
- Inactive tabs, soft labels → `an-fg-accent-soft` or `an-fg-soft`.
- Borders default to `an-border-subtle`. Only use `an-neutral-strong` for high-contrast separators or icon strokes.

---

## 3. Accent & status colors (inherit from Nocturne)

Aurora Nexus reuses Nocturne Nexus accent and status colors **unchanged** for v1.0
to keep brand identity consistent across light and dark.

### 3.1 Primary-violet family (unchanged)

| ID                          | Hex       | Role summary |
|-----------------------------|-----------|--------------|
| `an-accent-purple-primary`  | `#B399FF` | Core brand purple for icons, buttons, key accents. |
| `an-accent-purple-glow`     | `#A761EC` | High-energy purple for active states, glows. |
| `an-accent-purple-bright`   | `#C8A8FF` | Bright highlights, selection outlines, focus rings. |
| `an-accent-magenta`         | `#FF80BF` | Magenta for keywords / strong emphasis. |
| `an-accent-magenta-bright`  | `#FF99D1` | Ultra-vivid magenta highlights / ANSI bright magenta. |

Usage adjustments for light mode:

- Use purple/magenta mainly for icons, indicators, outlines, and short labels.
- Avoid large flat fills of `#B399FF` on `an-bg-surface`; use `an-bg-accent-block` instead if you need a tinted panel.

### 3.2 Tertiary-cool family (unchanged)

| ID                          | Hex       | Role summary |
|-----------------------------|-----------|--------------|
| `an-accent-cyan-primary`    | `#80FFEA` | Cursor, search highlight, technical pulses. |
| `an-accent-cyan-bright`     | `#9AFFF0` | Bright cyan for rare ANSI bright cyan / strong pulses. |
| `an-accent-teal-primary`    | `#33B9A6` | Teal for high-contrast lines and orbital segments. |
| `an-accent-teal-soft`       | `#52C7B8` | Softer teal glows and subtle cool highlights. |

Usage adjustments:

- Keep cyan/teal very small in area (carets, selection stripes, thin lines).
- Avoid using them as button fills on light backgrounds; they get visually loud fast.

### 3.3 Status & semantic family (unchanged)

| ID                          | Hex       | Role summary |
|-----------------------------|-----------|--------------|
| `an-status-success`         | `#8AFF80` | Success / added / passing. |
| `an-status-success-bright`  | `#A8FF9A` | Strong success, ANSI bright green. |
| `an-status-warning`         | `#FFCA80` | Warnings, changed code, soft alerts. |
| `an-status-warning-bright`  | `#FFDE9E` | Strong warnings, ANSI bright yellow. |
| `an-status-error`           | `#FF9580` | Errors, removed code, failure states. |
| `an-status-error-soft`      | `#FFB3A0` | Softer error backgrounds, subtle error hints. |

Usage adjustments:

- On Aurora’s light backgrounds, use these mostly for **icons, borders, and small badges**, not giant fields.
- For error/warning backgrounds, lower opacity (e.g. 10–20%) to avoid overwhelming the light base.

---

## 4. Mapping from Nocturne → Aurora

High-level conceptual map so your tokens/design system stay coherent:

- Nocturne `nn-bg-editor-core` → Aurora `an-bg-surface`
- Nocturne `nn-bg-panel` → Aurora `an-bg-panel`
- Nocturne `nn-bg-elevated` → Aurora `an-bg-elevated`
- Nocturne `nn-bg-accent-block` → Aurora `an-bg-accent-block`
- Nocturne `nn-bg-scrollbar-track` → Aurora `an-bg-scrollbar-track`

- Nocturne `nn-fg-primary` → Aurora `an-fg-primary` (role), but now `an-fg-primary` is dark ink (`#241B2F`).
- Nocturne 3D ramp (`nn-3d-purple-shadow/mid/light`) → Aurora text neutrals (`an-fg-muted`, `an-fg-accent-soft`, `an-fg-soft`).

- Nocturne accent sets and status sets → Aurora accent & status sets 1:1 (same hex, same semantic roles).

This gives you:

- One **brand accent language** across both themes.
- Two **structural shells**: dark (Nocturne) and light (Aurora), swappable without rewriting every accent.

---

## 5. Implementation notes

### 5.1 Token naming

Recommended pattern for Aurora Nexus tokens:

- Machine IDs: `an-<category>-<name>` (e.g. `an-bg-surface`, `an-fg-primary`).
- Figma styles: `AN / Bg / Surface`, `AN / Fg / Primary`, mirroring Nocturne’s `NN / ...` structure.

### 5.2 Contrast sanity checks

- Validate `an-fg-primary` on `an-bg-surface` and `an-bg-panel` with a contrast checker.
- For small accent text (e.g. purple labels), ensure contrast ≥ 4.5:1 against the specific background.
- If `#B399FF` or other accents fail as body text, restrict them to short labels / icons and keep body text in `an-fg-primary` / `an-fg-muted`.

### 5.3 Future refinements

v1.0 keeps all accents identical to Nocturne. If you later want stricter contrast or a slightly calmer light theme:

- Darken `an-accent-purple-primary` a bit for better readability on `an-bg-surface`.
- Slightly desaturate warm and tertiary-cool accents if they feel too loud on large areas.
- Add alpha variants (8-digit hex) for hover/selection backgrounds derived from `an-bg-*` and status colors.

