# Nocturne Theme · Review & Suggested Tweaks (v1.0)

This document summarizes issues and improvement opportunities found in the `Nocturne` VS Code theme (v2.0.0), and suggests specific changes.

## 1. Critical Issue

### 1.1 `editor.foreground` matches the background

Current config:

```jsonc
"editor.background": "#271E32",
"editor.foreground": "#271E32"
```

**Problem:** The foreground is identical to the background. Any token or UI element that falls back to `editor.foreground` will be effectively invisible or extremely low contrast.

**Suggested fix:** Set `editor.foreground` to your primary text color:

```jsonc
"editor.foreground": "#D8C5EE"
```

This aligns the implementation with how you conceptually use `#D8C5EE` (primary ink) across the theme.

---

## 2. High‑Impact UX / Readability Tweaks

### 2.1 Selection contrast is extremely low

Current relevant colors:

```jsonc
"editor.background": "#271E32",
"editor.selectionBackground": "#261C31",
"editor.inactiveSelectionBackground": "#241B2F"
```

These are all very close in luminance, so selections are barely visible.

**Suggested direction:**

- Keep the selection color in the same purple family but push it further from the background in value or saturation.
- Example:

```jsonc
"editor.selectionBackground": "#3E2E50",
"editor.inactiveSelectionBackground": "#261C31",
"editor.selectionHighlightBackground": "#3E2E5080"
```

This gives:
- Stronger block selection.
- Softer highlight for secondary matches (`selectionHighlightBackground`).

### 2.2 Missing minimap theming

The theme defines no `minimap.*` colors, so the minimap inherits defaults that may not match the Nocturne palette.

**Suggested additions:**

```jsonc
"minimap.background": "#271E32",
"minimap.selectionHighlight": "#3E2E5080",
"minimap.errorHighlight": "#FF958040",
"minimap.warningHighlight": "#FFCA8040",
"minimap.findMatchHighlight": "#80FFEA60"
```

This keeps the minimap low-noise but consistent with your accents (coral for errors, amber for warnings, cyan for matches).

### 2.3 Terminal is not themed

No `terminal.*` colors are defined, so the integrated terminal uses defaults that may clash with your purples.

**Suggested base terminal mapping:**

```jsonc
"terminal.background": "#271E32",
"terminal.foreground": "#D8C5EE",
"terminalCursor.foreground": "#80FFEA",
"terminal.selectionBackground": "#3E2E5080",
```

**Suggested ANSI palette (aligned to your syntax colors):**

```jsonc
"terminal.ansiBlack":   "#241B2F",
"terminal.ansiRed":     "#FF9580",
"terminal.ansiGreen":   "#8AFF80",
"terminal.ansiYellow":  "#FFCA80",
"terminal.ansiBlue":    "#B399FF",
"terminal.ansiMagenta": "#FF80BF",
"terminal.ansiCyan":    "#80FFEA",
"terminal.ansiWhite":   "#D8C5EE",

"terminal.ansiBrightBlack":   "#3E2E50",
"terminal.ansiBrightRed":     "#FFB3A0",
"terminal.ansiBrightGreen":   "#A8FF9A",
"terminal.ansiBrightYellow":  "#FFDE9E",
"terminal.ansiBrightBlue":    "#C8A8FF",
"terminal.ansiBrightMagenta": "#FF99D1",
"terminal.ansiBrightCyan":    "#9AFFF0",
"terminal.ansiBrightWhite":   "#F5ECFF"
```

You can tweak the exact bright variants, but this gives a coherent map from your existing palette.

### 2.4 Find / hover / word highlight feedback

Right now there are no explicit colors for:

- `editor.findMatchBackground`
- `editor.findMatchHighlightBackground`
- `editor.findRangeHighlightBackground`
- `editor.hoverHighlightBackground`
- `editor.wordHighlightBackground`
- `editor.wordHighlightStrongBackground`

These fall back to whatever base theme VS Code uses, which may not sit well on your purple base.

**Suggested mapping using existing accents:**

```jsonc
"editor.findMatchBackground":            "#80FFEA40",
"editor.findMatchHighlightBackground":   "#80FFEA25",
"editor.findRangeHighlightBackground":   "#80FFEA15",
"editor.hoverHighlightBackground":       "#3E2E5040",
"editor.wordHighlightBackground":        "#FFCA8015",
"editor.wordHighlightStrongBackground":  "#FFCA8030"
```

Cyan = “navigation / match”, amber = “context / usage”.

### 2.5 Bracket matching & folding

You currently don’t define:

- `editorBracketMatch.background`
- `editorBracketMatch.border`
- `editor.foldBackground`

**Suggested minimal set:**

```jsonc
"editorBracketMatch.background": "#3E2E5040",
"editorBracketMatch.border":     "#80FFEA80",
"editor.foldBackground":         "#261C3180"
```

Keeps bracket pairing readable without turning the code into a rainbow.

---

## 3. Optional, Nice‑to‑Have Additions

These are not “broken,” but they would make the theme feel more complete:

1. **Gutter background**
   ```jsonc
   "editorGutter.background": "#271E32"
   ```
   Locks the gutter into the same plane as the editor instead of whatever default the user inherits.

2. **Peek view theming**
   ```jsonc
   "peekView.border":           "#3E2E50",
   "peekViewEditor.background": "#241B2F"
   ```

3. **Overview ruler**
   If you want, you can echo your diff/git colors into the overview ruler, using the same green/amber/coral set.

---

## 4. Summary

High-level verdict:

- The **color story is strong**: purples as structure, neon accents for semantics, and diagnostics mapped cleanly to coral/amber/green.
- The **big technical flaw** is `editor.foreground` matching the background; fix that first.
- Next, address **selection contrast**, **minimap**, **terminal**, and **search/hover/word highlights** for a more “finished” feel.
- Everything under “Optional” can be layered on later without disrupting your current vibe.
