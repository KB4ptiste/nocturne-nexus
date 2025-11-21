# Nocturne Design System · Color Roles (v1.0)

This table maps Nocturne’s core colors to reusable roles across environments:
- VS Code
- Terminals
- Chroma / RGB (keyboard, mouse, etc.)
- Web UI / apps

Use the **Role** as the primary reference. Hex values should stay consistent across platforms.

| Role                         | Hex       | VS Code Usage (examples)                                                | Terminal Usage                                      | Chroma / RGB Usage                          | Web UI Usage                                           |
|-----------------------------|-----------|--------------------------------------------------------------------------|-----------------------------------------------------|---------------------------------------------|--------------------------------------------------------|
| Base / Canvas               | `#271E32` | `editor.background`, `terminal.background`, `editorGutter.background`   | Default background                                  | Base underglow / low-intensity wash         | Page background, app shell background                  |
| Primary Surface             | `#241B2F` | `sideBar.background`, `activityBar.background`, `panel.background`      | N/A                                                 | Secondary zones, side areas                 | Sidebars, cards, secondary panels                      |
| Elevated Surface            | `#261C31` | `statusBar.background`, line highlight, list selection                  | N/A                                                 | Focused keys / active zones                 | Active list rows, chips, subtle highlight blocks       |
| Frame / Hover Surface       | `#3E2E50` | selection, hover, dropdown, `editor.selectionBackground`                | selection background                                | Hover effect color, hover waves             | Button hover, menu hover, selected tiles               |
| Scroll / Subtle Rail        | `#49345E` | scrollbar sliders (with alpha)                                          | N/A                                                 | Soft ambient strips / accent lines          | Scrollbar track/thumbs, dividers                       |
| Primary Text                | `#D8C5EE` | `editor.foreground`, primary text, cursor, `terminal.foreground`        | Default foreground, `ansiWhite`                     | Label text on devices (if shown)            | Body text, main labels                                 |
| Muted Text / Meta           | `#977DB5` | comments, line numbers, placeholders                                    | N/A                                                 | Low-priority legends / side labels          | Secondary text, help text, descriptions                |
| Tertiary Text               | `#B394D6` | inactive tab foreground                                                  | N/A                                                 | Subdued info lighting                      | Muted tab labels, tertiary captions                    |
| Structural Accent           | `#B399FF` | types, classes, constants, JSON keys, headings, buttons                  | `ansiBlue`                                          | Static “structure” layer, logo accents      | Headings, borders, keylines, primary CTAs              |
| Active Tab Accent           | `#A761EC` | `tab.activeBorderTop`                                                   | N/A                                                 | Thin highlight strips                       | Active tab underline / focus ring                      |
| Function / Action Accent    | `#80FFEA` | functions, methods, links, info, badges                                 | cursor, `ansiCyan`                                  | Pulse color for active/trigger keys         | Links, action icons, info banners                      |
| Value / Success Accent      | `#8AFF80` | strings, inserted diff, added gutter lines                              | `ansiGreen`                                         | Confirm / success wave, active WASD etc.    | Success state, positive badges, toggles                |
| Warning / Numeric Accent    | `#FFCA80` | numbers, booleans, warnings, debugging status, modified gutter lines    | `ansiYellow`                                        | Pre-warning or “armed” color                | Warning banners, indicators, numeric highlights        |
| Error / Destructive Accent  | `#FF9580` | errors, invalid, removed diff, deleted gutter lines                     | `ansiRed`                                           | Error pulse, dangerous/forbidden keys       | Error messages, destructive buttons, critical alerts   |
| Keyword / Control Accent    | `#FF80BF` | keywords, storage                                                       | `ansiMagenta`                                       | Mode toggle color, animation edge           | Emphasis tags, special labels                          |
| Info Accent                 | `#80FFEA` | `editorInfo.foreground`, links                                          | N/A                                                 | Notification hints, mild attention          | Info banners, helper links                             |
| Badge / Notification Accent | `#80FFEA` | `badge.background`, `activityBarBadge.background`                       | N/A                                                 | Notification keys, status LEDs              | Notification dots, badges, counters                    |
| Status Debug Background     | `#FFCA80` | `statusBar.debuggingBackground`                                         | N/A                                                 | Debug mode global wash                       | Debug banners, special app modes                       |
| Button / Badge Text         | `#241B2F` | `button.foreground`, badge text                                         | N/A                                                 | Text or icon on bright keycaps              | Text on bright buttons or pills                        |

## Usage Guidelines

1. **Pick by role, not by hex.** Decide what the element *is* (base surface, action, warning, error, etc.) and then use the matching color.
2. **Keep purples for structure, neons for meaning.** Purples define surfaces and structure. Cyan/green/amber/coral carry semantics (action, value, warning, error).
3. **Reserve coral for real problems.** Use `#FF9580` only for destructive actions, serious errors, or “this is gone” states.
4. **Use amber for “pay attention” but not panic.** `#FFCA80` is perfect for warnings, experimental modes, or “changed but not broken”.
5. **Keep green aligned to “added / OK / safe.”** Strings, additions, positive confirmations all live in the same value color.

