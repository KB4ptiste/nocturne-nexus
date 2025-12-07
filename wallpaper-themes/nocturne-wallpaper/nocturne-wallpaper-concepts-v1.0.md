# Nocturne Wallpaper Concepts (v1.0)

Goal: Create low-distraction wallpapers that visually match the **Nocturne** VS Code theme using its core palette and contrast profile.

## 1. Core Palette Reference

Background / surfaces (from theme JSON):
- `#271E32` – editor background
- `#241B2F` – sidebars / panels
- `#261C31` – status / selection / line highlight
- `#3E2E50` – selection, hover, structural accents

Accent colors:
- `#D8C5EE` – main foreground
- `#977DB5` – secondary text
- `#B399FF` – purple accent
- `#80FFEA` – cyan accent (functions / badges)
- `#8AFF80` – green accent
- `#FFCA80` – amber accent
- `#FF9580` – coral / error

Design rules:
- Keep the **center** of the wallpaper close to `#271E32` / `#241B2F` so code sits on a stable, dark field.
- Push brighter accents (`#80FFEA`, `#FFCA80`, `#FF9580`) towards edges or as very soft glows, not big solid blocks.
- No pure black, no pure white. Stay inside the palette.

---

## 2. Concept A – “Nocturne Nebula” (Abstract gradient)

Abstract, foggy gradient in Nocturne purples with subtle cyan highlights. No shapes, no text, no “code rain.” Pure ambient background.

**Visual notes**
- Base: radial gradient from `#271E32` (center) to `#241B2F` / `#261C31` (edges).
- Smooth cloudy texture using slightly lighter `#3E2E50` patches.
- Very faint cyan (`#80FFEA`) mist near corners, opacity low (10–20%).
- Optional tiny star-like specks in `#977DB5` with very low density.

**Prompt template (for image generator)**
> 4K desktop wallpaper in deep muted purples (`#271E32`, `#241B2F`, `#261C31`) with a soft radial gradient, subtle cloudy texture using `#3E2E50`, faint cyan haze accents in `#80FFEA` near the edges, no text, no logos, low contrast, designed as background for a dark code editor theme called “Nocturne”, ultra smooth, cinematic lighting, no characters.

Suggested base resolutions:
- 3840×2160 (16:9)
- 2560×1440 (16:9)
- 3440×1440 (ultrawide)

---

## 3. Concept B – “Editor Frame” (Implied layout)

Wallpaper that subtly mirrors the VS Code layout: darker outer frame, softer center rectangle where the editor sits.

**Visual notes**
- Outer vignette: `#241B2F` → `#261C31` around all edges.
- Central soft rectangle (not a hard UI mock): slightly lighter `#271E32` block where the main editor usually sits.
- Thin glow lines using `#3E2E50` hinting at a side bar and top bar, but without icons or text.
- A tiny cyan accent line (`#80FFEA`) along one edge for personality.

**Prompt template**
> Dark, minimal 4K desktop wallpaper inspired by a code editor layout: deep purple background (`#241B2F`, `#261C31`) with a subtle lighter central area in `#271E32` where code would be, faint soft-edged rectangles suggesting panels, thin accent lines in `#3E2E50` and a single tiny cyan highlight in `#80FFEA`, no text, no logos, no visible UI, low contrast and low detail, designed to sit behind a dark theme called “Nocturne”.

---

## 4. Concept C – “Orbital Syntax” (Geometric abstraction)

Use circles and lines as a metaphor for syntax and tokens, using the accent colors in small, controlled amounts.

**Visual notes**
- Background: same `#271E32` base with `#3E2E50` soft gradient.
- A few large, very soft circles in `#261C31` / `#3E2E50`, mostly off-center.
- Thin orbits / lines in `#977DB5` and `#B399FF`, low opacity.
- Small dots along paths in `#80FFEA`, `#FFCA80`, `#8AFF80` as “tokens.”
- Keep geometric elements mainly near the sides / corners, avoid the center third.

**Prompt template**
> Abstract geometric 4K desktop wallpaper with a deep purple background (`#271E32`, `#3E2E50`), large soft circles and arcs in darker purples, thin orbital lines in muted violet (`#977DB5`, `#B399FF`), and tiny accent dots in cyan, amber, and green (`#80FFEA`, `#FFCA80`, `#8AFF80`) clustered near the edges, center kept clean for code, no text, no logos, minimal, dark, and cinematic.

---

## 5. Concept D – “Nocturne Skyline” (Stylized illustration)

Stylized city or fantasy skyline that matches Nocturne, but pushed low to keep most of the background usable.

**Visual notes**
- Top 70–80%: very dark gradient (`#271E32` → `#241B2F`) with a faint glow.
- Bottom 20–30%: silhouette of a city or mountain skyline in `#241B2F` / `#261C31`.
- Windows or lighted areas in `#B399FF`, `#80FFEA`, `#FFCA80` with low density.
- Slight atmospheric haze in `#3E2E50` above the skyline.

**Prompt template**
> Stylized dark purple sci‑fi skyline wallpaper for a programmer, 4K resolution: deep night sky in `#271E32` fading to `#241B2F`, low-contrast city silhouette in `#241B2F` and `#261C31` along the bottom, a few soft glowing windows in `#B399FF`, `#80FFEA`, `#FFCA80`, subtle haze in `#3E2E50`, no characters, no text, most of the upper area kept clean for code editor windows, minimal and atmospheric.

---

## 6. Practical guidelines

- Export as **PNG** or **WEBP** to avoid artifacts, especially in smooth gradients.
- Test in VS Code with:
  - Full-screen editor
  - Split view
  - Full-screen terminal
- Check readability of code and UI icons against the wallpaper. If anything feels too busy, reduce opacity of accents or darken the overall wallpaper by 5–10%.
- Keep the **brightest values** near the edges, not under the text cursor.
