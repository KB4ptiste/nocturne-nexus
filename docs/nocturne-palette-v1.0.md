# Nocturne Theme · Color Palette (v2.1.0)

This document describes the core color palette used by the **Nocturne** VS Code theme and how each color is applied in the UI and syntax highlighting.

Use this as the single source of truth when extending the theme to terminals, Chroma / RGB setups, or web UIs.

---
## 1. Core Background & Surface Palette

### `#271E32` · Deep Editor Base
- **Used for**: `editor.background`, `terminal.background`, `editorGutter.background`
- **Role**: Primary canvas for code and terminal output. Everything else sits on top of this plane.

### `#241B2F` · Primary Surface
- **Used for**: `sideBar.background`, `activityBar.background`, `panel.background`, `titleBar.activeBackground`, `tab.activeBackground`, `tab.inactiveBackground`, `editorWhitespace.foreground`, `editorIndentGuide.background`, `list.inactiveSelectionBackground`, `input.background`, `peekViewEditor.background`
- **Role**: Default chrome surface. Panels and sidebars live here, slightly lighter than the editor base.

### `#261C31` · Elevated Surface / Focus Blocks
- **Used for**: `panel.border`, `editor.inactiveSelectionBackground`, `editor.lineHighlightBackground`, `statusBar.background`, `statusBar.noFolderBackground`, `list.activeSelectionBackground`, `list.focusBackground`, `diffEditor.diagonalFill`, `editor.foldBackground` (with alpha), some list focus states.
- **Role**: Subtle elevation and focus. Used for selections, focused items, and folds without resorting to bright accents.

### `#3E2E50` · Framing & Hover Surfaces
- **Used for**: `titleBar.inactiveBackground`, `tab.border`, `list.hoverBackground`, `dropdown.background`, `editor.selectionBackground`, `editor.selectionHighlightBackground`, `terminal.selectionBackground`
- **Role**: Mid-tone structural purple. Frames active content and marks selections/hover states.

### `#49345E` with Alpha · Scrollbar Track
- **Used for**:  
  - `scrollbarSlider.background`: `#49345E99`  
  - `scrollbarSlider.hoverBackground`: `#49345ECC`  
  - `scrollbarSlider.activeBackground`: `#49345EFF`
- **Role**: Scrollbar thumb states. The alpha ramp expresses idle → hover → active without changing hue.

---
## 2. Text & UI Foreground Palette

### `#D8C5EE` · Primary Text
- **Used for**: `editor.foreground`, `sideBar.foreground`, `activityBar.foreground`, `titleBar.activeForeground`, `tab.activeForeground`, `editorLineNumber.activeForeground`, `editorCursor.foreground`, `statusBar.foreground`, `list.activeSelectionForeground`, `input.foreground`, `dropdown.foreground`, most default code tokens (`Variables`, `Operators & Punctuation`, `parameter` semantic token), `terminal.foreground`, `terminal.ansiWhite`
- **Role**: Main ink color. High-contrast but soft, used for most text and default code.

### `#977DB5` · Secondary / Muted Text
- **Used for**: `titleBar.inactiveForeground`, `editorLineNumber.foreground`, `editorIndentGuide.activeBackground`, `input.placeholderForeground`, comments token color.
- **Role**: Metadata and commentary. Indicates secondary information: comments, line numbers, placeholders.

### `#B394D6` · Tertiary Text
- **Used for**: `tab.inactiveForeground`
- **Role**: Slightly warmer lavender for non-active tabs. Visible, but clearly de-emphasized.

---
## 3. Purple Accent & Structural Palette

### `#B399FF` · Structural Accent Lavender
- **Used for**: `button.background`, token colors for **JSON property names / object keys**, **classes**, **types**, **enums**, **constants**, **headings`; semantic tokens: `property`, `variable.readonly`, `enumMember`, `class`, `interface`, `typeParameter`; `terminal.ansiBlue`.
- **Role**: Structural and type system color. Represents “shape” and “definition” in your code and UI.

### `#A761EC` · Active Tab Accent
- **Used for**: `tab.activeBorderTop`
- **Role**: Thin highlight on the active tab. Indicates focus without repainting the whole tab.

---
## 4. Syntax Accent Palette (Non‑Purple)

### `#80FFEA` · Cyan · Functions & Actions
- **Used for**: token colors for **functions & methods**, **links**; semantic tokens: `function`, `method`, `namespace`; UI: `badge.background`, `activityBarBadge.background`, `editorInfo.foreground`, `terminalCursor.foreground`, `terminal.ansiCyan`.
- **Role**: “Active / callable / navigational” color. Functions, clickable links, and informational hints.

### `#8AFF80` · Green · Values & Insertions
- **Used for**: **strings** token color, semantic `string`, `diffEditor.insertedTextBackground` (alpha), `editorGutter.addedBackground`, `terminal.ansiGreen`.
- **Role**: New content, values, and non-destructive changes.

### `#FFCA80` · Amber · Numbers & Warnings
- **Used for**: **numbers & booleans** token color, semantic `number` and `boolean`, `statusBar.debuggingBackground`, `editorWarning.foreground`, `editorGutter.modifiedBackground`, `diffEditor.removedTextBackground` alpha base, `terminal.ansiYellow`.
- **Role**: Numeric values and “attention needed” states such as warnings and debugging.

### `#FF9580` · Coral · Errors & Deletions
- **Used for**: **error / invalid** token color, `editorError.foreground`, `editorGutter.deletedBackground`, `diffEditor.removedTextBackground` (alpha), `terminal.ansiRed`.
- **Role**: Hard failure and deletions. Anything broken or removed.

### `#FF80BF` · Pink · Keywords & Control Flow
- **Used for**: **keywords & storage** token color (`keyword`, `keyword.control`, `storage.type`, `storage.modifier`), `terminal.ansiMagenta`.
- **Role**: Language grammar and control flow: declarations, branching, storage types.

---
## 5. Code Structure & Variable Palette

### `#D8C5EE` · Variables & Operators
- **Used for**: token colors for **variables**, **operators & punctuation**; semantic `parameter`.
- **Role**: Default code ink for variable names and operators.

### `#B399FF` · Types, Classes, Interfaces, Constants
- **Used for**: **classes, types, enums**, **constants**, **headings**, semantic `class`, `interface`, `enumMember`, `typeParameter`, `variable.readonly`.
- **Role**: Groups all type-related concepts into a single recognizable color family.

### `#80FFEA` · Functions, Methods & Namespaces
- **Used for**: **functions & methods** token color; semantic `function`, `method`, `namespace`.
- **Role**: Callable entities, namespaced modules, and links between parts of the codebase.

### `#8AFF80` · Strings
- **Used for**: `string`, `string.quoted.*`.
- **Role**: Textual / literal data. Especially helpful in JSON, configs, and logs.

### `#FFCA80` · Numbers & Booleans
- **Used for**: `constant.numeric`, `constant.language.boolean`, `constant.language.null`.
- **Role**: Numeric and boolean literals stand out from identifiers and strings.

---
## 6. Diff & Git Gutter Palette

### `#8AFF8015` · Inserted Text Background
- **Used for**: `diffEditor.insertedTextBackground`
- **Role**: Low-alpha fill under added lines. Aligns with the string/green semantics.

### `#FF958015` · Removed Text Background
- **Used for**: `diffEditor.removedTextBackground`
- **Role**: Low-alpha fill under removed lines, tied to the error/deletion color.

### `#8AFF80` · Added Lines Gutter
- **Used for**: `editorGutter.addedBackground`
- **Role**: Gutter markers for inserted lines.

### `#FFCA80` · Modified Lines Gutter
- **Used for**: `editorGutter.modifiedBackground`
- **Role**: Gutter markers for changed-but-not-removed lines.

### `#FF9580` · Deleted Lines Gutter
- **Used for**: `editorGutter.deletedBackground`
- **Role**: Strong gutter markers for deleted lines.

---
## 7. Status, Buttons & Badge Palette

### `#261C31` · Status Bar Base
- **Used for**: `statusBar.background`, `statusBar.noFolderBackground`
- **Role**: Ground plane for status information.

### `#FFCA80` · Debugging Status
- **Used for**: `statusBar.debuggingBackground`
- **Role**: High-visibility debugging state.

### `#B399FF` · Primary Button Background
- **Used for**: `button.background`
- **Role**: Primary call-to-action background.

### `#241B2F` · Button / Badge Text
- **Used for**: `button.foreground`, `badge.foreground`, `activityBarBadge.foreground`
- **Role**: Dark ink on bright accent backgrounds.

### `#80FFEA` · Badges & Activity Indicators
- **Used for**: `badge.background`, `activityBarBadge.background`
- **Role**: Small, attention-grabbing UI atoms.

---
## 8. Lists, Inputs & Dropdowns

### `#261C31` · List Focus & Selection
- **Used for**: `list.activeSelectionBackground`, `list.focusBackground`
- **Role**: Active/focused row indication in lists and trees.

### `#3E2E50` · List Hover & Dropdown Background
- **Used for**: `list.hoverBackground`, `dropdown.background`
- **Role**: Hover state and dropdown body tone, consistent with structural purple.

### `#977DB5` · Input Placeholder
- **Used for**: `input.placeholderForeground`
- **Role**: Non-committed guidance text.

---
## 9. Diagnostics & Info Palette

### `#FF9580` · Errors / Invalid
- **Used for**: `editorError.foreground`, error token scopes.
- **Role**: Immediate “this is wrong” feedback.

### `#FFCA80` · Warnings
- **Used for**: `editorWarning.foreground`, warning token scopes.
- **Role**: Warning-level issues that are not fatal errors.

### `#80FFEA` · Info
- **Used for**: `editorInfo.foreground`
- **Role**: Informational hints and annotations.

---
## 10. Links & Headings

### `#80FFEA` · Links
- **Used for**: `markup.underline.link`, `markup.link`, with underline.
- **Role**: Clickable references and URLs.

### `#B399FF` · Headings
- **Used for**: `markup.heading`, `markup.heading.markdown`
- **Role**: Section headers in markdown/markup, cohesive with the structural lavender family.
