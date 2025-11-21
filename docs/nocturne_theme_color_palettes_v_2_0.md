# Nocturne Theme · Color Palettes (v2.0.0)

This document groups every color used in the Nocturne theme into palettes, with labels and descriptions of how each color is used in the theme.

---
## 1. Core Background & Surface Palette

### #271E32 · Deep Editor Base
- **Used for**: `editor.background`, `editor.foreground`
- **Role**: Main editor canvas. Creates the darkest plane, making all higher layers and neon accents feel grounded.

### #241B2F · Primary Surface
- **Used for**: `sideBar.background`, `activityBar.background`, `panel.background`, `titleBar.activeBackground`, `tab.activeBackground`, `tab.inactiveBackground`, `editor.inactiveSelectionBackground`, `editorWhitespace.foreground`, `editorIndentGuide.background`, `list.inactiveSelectionBackground`, `input.background`, `statusBar.debuggingForeground`, `button.foreground`, `badge.foreground`, `activityBarBadge.foreground`
- **Role**: Default "chrome" surface. Most UI panels sit on this level. Slightly lighter than the editor base so the content area is visually separated.

### #261C31 · Elevated Surface / Focus Blocks
- **Used for**: `panel.border`, `editor.selectionBackground`, `editor.lineHighlightBackground`, `statusBar.background`, `statusBar.noFolderBackground`, `list.activeSelectionBackground`, `list.focusBackground`, `diffEditor.diagonalFill`
- **Role**: One step up from the main surfaces. Used for selection areas, status bar, and focused list items to show focus and context without loud color.

### #3E2E50 · Framing & Hover Surfaces
- **Used for**: `titleBar.inactiveBackground`, `tab.border`, `list.hoverBackground`, `dropdown.background`
- **Role**: Mid-tone purple used for inactive or hovering chrome elements. Frames active content without competing with syntax colors.

### #49345E (with alpha) · Scrollbar Track
- **Used for**: `scrollbarSlider.background` (`#49345E99`), `scrollbarSlider.hoverBackground` (`#49345ECC`), `scrollbarSlider.activeBackground` (`#49345EFF`)
- **Role**: Subtle vertical motion and interaction feedback. The alpha ramp (99 → CC → FF) expresses idle → hover → active states.

---
## 2. Text & UI Foreground Palette

### #D8C5EE · Primary Text
- **Used for**: `sideBar.foreground`, `activityBar.foreground`, `titleBar.activeForeground`, `tab.activeForeground`, `editorLineNumber.activeForeground`, `editorCursor.foreground`, `statusBar.foreground`, `list.activeSelectionForeground`, `input.foreground`, `dropdown.foreground`, `activityBarBadge.foreground`
- **Role**: Main light-ink color. High contrast on the dark purples, used wherever text must be readable without being neon.

### #977DB5 · Secondary / Muted Text
- **Used for**: `titleBar.inactiveForeground`, `tab.inactiveForeground`, `editorLineNumber.foreground`, `editorIndentGuide.activeBackground`, `input.placeholderForeground`, comments token color
- **Role**: Soft lavender used for metadata: comments, placeholders, inactive titles, line numbers, and active indent guides.

### #B394D6 · Tertiary Text
- **Used for**: `tab.inactiveForeground`
- **Role**: Slightly warmer, softer lavender for unfocused tabs. Signals "still there but not active" without feeling disabled.

---
## 3. Purple Accent & Structural Palette

### #B399FF · Structural Accent Lavender
- **Used for**: `button.background`, and token colors for `JSON Property Names / Object Keys`, `Classes, Types, Enums`, `Constants`, `Headings`; semantic tokens: `property`, `variable.readonly`, `enumMember`, `class`, `interface`, `typeParameter`
- **Role**: Core structural accent. Marks types, keys, constants, headings, and buttons. Reads as "definition" or "shape" of data.

### #A761EC · Active Tab Accent
- **Used for**: `tab.activeBorderTop`
- **Role**: Thin, bright accent bar on the active tab. Keeps focus visible without repainting the whole tab.

---
## 4. Syntax Accent Palette (Non‑Purple)

These are the high-chroma accents that make the code readable at a glance.

### #80FFEA · Cyan · Functions & Actions
- **Used for**: token colors for `Functions & Methods`, `Links`; semantic tokens: `function`, `method`, `namespace`; UI: `badge.background`, `activityBarBadge.background`, `editorInfo.foreground`
- **Role**: Action & navigational color. Indicates things you can call, click, or that direct flow.

### #8AFF80 · Green · Values & Insertions
- **Used for**: `Strings` token color, `diffEditor.insertedTextBackground` (with alpha `#8AFF8015`), `editorGutter.addedBackground`
- **Role**: Safe / new / value color. Strings and inserted lines use this to signal additive, non-destructive change.

### #FFCA80 · Amber · Numbers & Warnings
- **Used for**: `Numbers & Booleans` token color, `Changed` token color, semantic tokens: `number`, `boolean`; UI: `statusBar.debuggingBackground`, `editorWarning.foreground`, `editorGutter.modifiedBackground`, `diffEditor.removedTextBackground` alpha base
- **Role**: Neutral-to-warm highlight for numeric data, booleans, and "pay attention" states like warnings and debugging.

### #FF9580 · Coral · Errors & Deletions
- **Used for**: `Error / Invalid` token color, `editorError.foreground`, `editorGutter.deletedBackground`, `diffEditor.removedTextBackground` (`#FF958015`)
- **Role**: Explicit problem color. Anything broken, removed, or invalid leans on this.

### #FF80BF · Pink · Keywords & Control Flow
- **Used for**: `Keywords & Storage` token color (e.g., `if`, `for`, `class`, `return`)
- **Role**: Highlights the language grammar itself: control flow, declarations, and storage types.

---
## 5. Code Structure & Variable Palette

### #D8C5EE · Variables & Operators
- **Used for**: token colors for `Variables`, `Operators & Punctuation`; semantic tokens: `parameter`
- **Role**: Default code ink. Keeps variable names and operators readable without pulling focus from structural or diagnostic colors.

### #B399FF · Types, Classes, Interfaces
- **Used for**: token colors for `Classes, Types, Enums`, `Constants`, `Headings`; semantic tokens: `class`, `interface`, `enumMember`, `typeParameter`, `variable.readonly`
- **Role**: Groups all type-related concepts into a single mental color family.

### #80FFEA · Functions, Methods & Namespaces
- **Used for**: `Functions & Methods` token color; semantic tokens: `function`, `method`, `namespace`
- **Role**: Separates callable things and namespaces from values and types.

### #8AFF80 · Strings
- **Used for**: `Strings` token color, semantic `string`
- **Role**: Makes string literals visually distinct, especially in dense JSON/config files.

### #FFCA80 · Numbers & Booleans
- **Used for**: `Numbers & Booleans` token color, semantic `number`, `boolean`
- **Role**: Pulls numeric values out of surrounding code so they can be sanity‑checked quickly.

---
## 6. Diff & Git Gutter Palette

### #8AFF8015 · Inserted Text Background
- **Used for**: `diffEditor.insertedTextBackground`
- **Role**: Very low‑alpha fill under added lines. References the green string color without overwhelming the code.

### #FF958015 · Removed Text Background
- **Used for**: `diffEditor.removedTextBackground`
- **Role**: Low‑alpha red/orange fill for removed lines. Ties into the error/deletion color.

### #8AFF80 · Added Lines Gutter
- **Used for**: `editorGutter.addedBackground`
- **Role**: Strong green markers at the gutter for new lines.

### #FFCA80 · Modified Lines Gutter
- **Used for**: `editorGutter.modifiedBackground`
- **Role**: Amber marker for changed lines that are not outright added/removed.

### #FF9580 · Deleted Lines Gutter
- **Used for**: `editorGutter.deletedBackground`
- **Role**: Strong signal on removed lines, consistent with the global error color.

---
## 7. Status, Buttons & Badge Palette

### #261C31 · Status Bar Base
- **Used for**: `statusBar.background`, `statusBar.noFolderBackground`
- **Role**: Slightly elevated base for global status information.

### #FFCA80 · Debugging Status
- **Used for**: `statusBar.debuggingBackground`
- **Role**: High‑visibility state indicating active debugging.

### #B399FF · Primary Button Background
- **Used for**: `button.background`
- **Role**: Main call‑to‑action background, in the same family as structural accents.

### #241B2F · Button / Badge Text
- **Used for**: `button.foreground`, `badge.foreground`, `activityBarBadge.foreground`
- **Role**: Dark text over bright accent backgrounds, inverting the usual scheme.

### #80FFEA · Badges & Activity Dot
- **Used for**: `badge.background`, `activityBarBadge.background`
- **Role**: Loud notification color. Used where small shapes need to attract attention.

---
## 8. Lists, Inputs & Dropdowns

### #261C31 · List Focus & Selection
- **Used for**: `list.activeSelectionBackground`, `list.focusBackground`
- **Role**: Indicates the currently focused or selected row without clashing with syntax colors.

### #3E2E50 · List Hover & Dropdown Background
- **Used for**: `list.hoverBackground`, `dropdown.background`
- **Role**: Intermediate hover state and dropdown body tone, staying consistent with the structural purple band.

### #977DB5 · Input Placeholder
- **Used for**: `input.placeholderForeground`
- **Role**: Indicates non‑committed text/instructions with a softer lavender.

---
## 9. Diagnostics & Info Palette

### #FF9580 · Errors / Invalid
- **Used for**: `editorError.foreground`, error token scopes
- **Role**: Immediate "this is wrong" feedback.

### #FFCA80 · Warnings
- **Used for**: `editorWarning.foreground`, warning token scopes
- **Role**: Soft warning, less aggressive than full error.

### #80FFEA · Info
- **Used for**: `editorInfo.foreground`
- **Role**: Informational hints and non‑critical messages.

---
## 10. Links & Headings

### #80FFEA · Links
- **Used for**: `Links` token color (with underline)
- **Role**: Clickable text and references.

### #B399FF · Headings
- **Used for**: `Headings` token color
- **Role**: Section headers in markdown and markup, keeping them within the structural lavender family.

