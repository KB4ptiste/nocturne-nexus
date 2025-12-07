# Nocturne Nexus Figma Color Kit (v1.3)

This document describes how to build a reusable Figma kit for the **Nocturne Nexus** color system (palette v1.3). It includes:

- Page & frame structure
- Color styles and naming
- Swatch layout
- Usage examples (UI, 3D icons, wallpapers)
- Accessibility guidance

Use this as a blueprint to construct the actual Figma file.

---

## 1. Figma file structure

Create a new Figma design file named:

> **Nocturne Nexus – Color Kit v1.3**

Set up these pages:

1. **01 – Palette / Swatches**  
   All color swatches, grouped by role.

2. **02 – UI Usage**  
   Example layouts for editor, sidebar, taskbar, and icon usage.

3. **03 – Wallpaper Guidance**  
   Mini-comps showing Nocturne Nebula and Orbital Syntax strategies.

4. **04 – Accessibility**  
   Contrast examples and notes.

---

## 2. Core color styles

In Figma, define Local Color Styles for every palette color. Use this naming pattern:

> `NN / <Category> / <TokenName>`

Where:
- `NN` = Nocturne Nexus
- `<Category>` = `Bg`, `Fg`, `Neutral`, `Accent`, `Status`, `3D`
- `<TokenName>` = short readable name based on the token

### 2.1 Backgrounds

Create these color styles:

- **NN / Bg / Panel**  
  - Token: `nn-bg-panel`  
  - Hex: `#241B2F`

- **NN / Bg / Elevated**  
  - Token: `nn-bg-elevated`  
  - Hex: `#261C31`

- **NN / Bg / Editor Core**  
  - Token: `nn-bg-editor-core`  
  - Hex: `#271E32`

- **NN / Bg / Accent Block**  
  - Token: `nn-bg-accent-block`  
  - Hex: `#3E2E50`

- **NN / Bg / Scrollbar Track**  
  - Token: `nn-bg-scrollbar-track`  
  - Hex: `#49345E`

### 2.2 Foreground & neutrals

- **NN / Fg / Primary**  
  - Token: `nn-fg-primary`  
  - Hex: `#D8C5EE`

- **NN / Fg / Muted**  
  - Token: `nn-fg-muted`  
  - Hex: `#977DB5`

- **NN / Fg / Accent Soft**  
  - Token: `nn-fg-accent-soft`  
  - Hex: `#B394D6`

- **NN / Fg / Bright**  
  - Token: `nn-fg-bright`  
  - Hex: `#F5ECFF`

- **NN / Neutral / Light Stroke**  
  - Token: `nn-neutral-light`  
  - Hex: `#B0B5C5`

- **NN / Neutral / Border Subtle**  
  - Token: `nn-border-subtle`  
  - Hex: `#3C3F46`

### 2.3 Primary-violet accents

- **NN / Accent / Purple Primary**  
  - Token: `nn-accent-purple-primary`  
  - Hex: `#B399FF`

- **NN / Accent / Purple Glow**  
  - Token: `nn-accent-purple-glow`  
  - Hex: `#A761EC`

- **NN / Accent / Purple Bright**  
  - Token: `nn-accent-purple-bright`  
  - Hex: `#C8A8FF`

- **NN / Accent / Magenta**  
  - Token: `nn-accent-magenta`  
  - Hex: `#FF80BF`

- **NN / Accent / Magenta Bright**  
  - Token: `nn-accent-magenta-bright`  
  - Hex: `#FF99D1`

### 2.4 Tertiary-cool accents (cyan + teal)

- **NN / Accent / Cyan Primary**  
  - Token: `nn-accent-cyan-primary`  
  - Hex: `#80FFEA`

- **NN / Accent / Cyan Bright**  
  - Token: `nn-accent-cyan-bright`  
  - Hex: `#9AFFF0`

- **NN / Accent / Teal Primary**  
  - Token: `nn-accent-teal-primary`  
  - Hex: `#33B9A6`

- **NN / Accent / Teal Soft**  
  - Token: `nn-accent-teal-soft`  
  - Hex: `#52C7B8`

### 2.5 Status colors (warm + success)

- **NN / Status / Warning**  
  - Token: `nn-status-warning`  
  - Hex: `#FFCA80`

- **NN / Status / Warning Bright**  
  - Token: `nn-status-warning-bright`  
  - Hex: `#FFDE9E`

- **NN / Status / Error**  
  - Token: `nn-status-error`  
  - Hex: `#FF9580`

- **NN / Status / Error Soft**  
  - Token: `nn-status-error-soft`  
  - Hex: `#FFB3A0`

- **NN / Status / Success**  
  - Token: `nn-status-success`  
  - Hex: `#8AFF80`

- **NN / Status / Success Bright**  
  - Token: `nn-status-success-bright`  
  - Hex: `#A8FF9A`

### 2.6 3D purple ramp

- **NN / 3D / Purple Shadow**  
  - Token: `nn-3d-purple-shadow`  
  - Hex: `#4A3C65`

- **NN / 3D / Purple Mid**  
  - Token: `nn-3d-purple-mid`  
  - Hex: `#6D5B98`

- **NN / 3D / Purple Light**  
  - Token: `nn-3d-purple-light`  
  - Hex: `#907ACB`

- **NN / 3D / Purple Highlight**  
  - Token: `nn-3d-purple-highlight`  
  - Hex: `#DACAFF`

---

## 3. Page 01 – Palette / Swatches

Create one main frame per group, with auto layout enabled. Swatches should be consistent and easy to scan.

### 3.1 Frame setup

**3.1.1 Create the page-level frame**

For each Figma page (`01 – Palette / Swatches`, `02 – UI Usage`, etc.):

1. Press `F` to activate the Frame tool.
2. In the right sidebar, under the **Desktop** presets, click a frame like **Desktop 1440×900**. Figma will place that frame on the canvas.
3. Rename the frame in the Layers panel to match the page content, for example:
   - `01 – Palette / Swatches`
   - `02 – UI Usage`
   - `03 – Wallpaper Guidance`
   - `04 – Accessibility`
4. Use this frame as the container for all content on that page so everything stays organized and can be exported if needed.

**3.1.2 Create swatch group frames inside the page frame**

For each group (Backgrounds, Foreground & Neutrals, Primary-violet, Tertiary-cool, Status, 3D Ramp):

- Inside the page-level frame, create a new frame:
  - With the Frame tool still active, click-drag inside the page frame to draw a custom frame roughly 1200 px wide and tall enough to fit your swatches (you can resize later).
  - In the right sidebar, turn on **Auto layout → Horizontal**, set **Spacing** = 16 and **Padding** = 24.
  - Name the frame: `Bg – Core`, `Fg – Text & Neutrals`, `Accent – Primary Violet`, etc.

**3.1.3 Build the swatch components**

- Inside each group frame:

  1. Draw a `96 × 96` rectangle with 8 px corner radius.
  2. Apply the correct Color Style (e.g. `NN / Bg / Editor Core`).
  3. Below the rectangle, add two text layers:
     - Line 1: Token ID (e.g. `nn-bg-editor-core`)
     - Line 2: Hex value (e.g. `#271E32`)
  4. Select the rectangle and both text layers and create a **Component**:
     - Name it `Swatch / <Category> / <TokenID>` (e.g. `Swatch / Bg / nn-bg-editor-core`).
  5. Duplicate the component instance inside the same frame and swap the Color Style + labels for each additional token in that group.

**3.1.4 Intent notes beside each frame (optional but recommended)**

To add short text notes describing intent:

- Create a small text label to the left or above each group frame.
- Use phrases that summarize the role of the colors in that frame. For example:
  - For `Bg – Core`: "Editor & structural backgrounds"
  - For `Fg – Text & Neutrals`: "Primary text and UI neutrals"
  - For `Accent – Primary Violet`: "Brand & main icon accents"
  - For `Accent – Tertiary Cool (Cyan & Teal)`: "Tertiary accents – very small use only"
  - For `Status – Warm & Success`: "Warnings, errors, and success states"
  - For `3D – Purple Ramp`: "3D shading ramp for purple icons"

These intents come directly from the palette’s roles (background, foreground, accent, status, 3D) and help you remember what each group is for.

### 3.2 Sections on Page 01

Recommended order of frames:

1. `Bg – Core`  
   - Shows: `nn-bg-editor-core`, `nn-bg-elevated`, `nn-bg-panel`, `nn-bg-accent-block`, `nn-bg-scrollbar-track`.

2. `Fg – Text & Neutrals`  
   - Shows: `nn-fg-primary`, `nn-fg-muted`, `nn-fg-accent-soft`, `nn-fg-bright`, `nn-neutral-light`, `nn-border-subtle`.

3. `Accent – Primary Violet`  
   - Shows: `nn-accent-purple-primary`, `nn-accent-purple-glow`, `nn-accent-purple-bright`, `nn-accent-magenta`, `nn-accent-magenta-bright`.

4. `Accent – Tertiary Cool (Cyan & Teal)`  
   - Shows: `nn-accent-cyan-primary`, `nn-accent-cyan-bright`, `nn-accent-teal-primary`, `nn-accent-teal-soft`.

5. `Status – Warm & Success`  
   - Shows: `nn-status-warning`, `nn-status-warning-bright`, `nn-status-error`, `nn-status-error-soft`, `nn-status-success`, `nn-status-success-bright`.

6. `3D – Purple Ramp`  
   - Shows: `nn-3d-purple-shadow`, `nn-3d-purple-mid`, `nn-3d-purple-light`, `nn-3d-purple-highlight`.

Optional: add short text notes beside each frame describing intent (e.g. "Primary text on dark", "Tertiary accents – very small use only").

---

## 4. Page 02 – UI Usage

This page demonstrates **how to use** the palette in context.

Create three main frames:

1. **Editor Layout Sample**
2. **Sidebar Layout Sample**
3. **Taskbar / Accent Block Sample**
4. **Icon & 3D Sample** (optional but recommended)

### 4.1 Editor Layout Sample

**4.1.1 Create the frame**

1. On page `02 – UI Usage`, press `F` to activate the Frame tool.
2. In the right sidebar, choose a **Desktop 1440×900** preset, or drag out a custom frame roughly 1440 × 900 inside the page-level frame.
3. Rename the frame to `Sample – Editor`.

**4.1.2 Build the editor layout**

- Set the frame’s background fill to `NN / Bg / Editor Core` (`#271E32`).
- Inside the frame, draw:
  - A main code column (a large rectangle or text block) to represent the editor.
  - A gutter on the left for line numbers.

Apply colors:

- Code text: `NN / Fg / Primary`.
- Comments: `NN / Fg / Muted`.
- Line numbers / minor labels: `NN / Fg / Accent Soft`.
- Selection/active line: use a lighter overlay derived from `nn-bg-elevated` (for example, a semi-transparent rectangle on the current line).
- Accent elements (cursor, search highlight): `NN / Accent / Cyan Primary` or `NN / Accent / Teal Primary` in very small regions (a single caret or a small highlight block).

**4.1.3 Add annotations and when to use which labels**

Create small text labels (10–12 px) with arrows or leader lines pointing at specific regions:

- Place **"Primary text vs editor background"** pointing at a line of normal code text over the `NN / Bg / Editor Core` background. Use this label any time you are demonstrating the main readable text plus its background.

- Place **"Muted comments"** pointing at a line styled with `NN / Fg / Muted`. Use this label wherever you show secondary, non-essential text that should sit behind primary content.

- Place **"Tertiary-cool accent (cursor/search) – keep area small"** pointing at your cursor or search highlight colored with cyan/teal. Use this label whenever a tiny detail uses `NN / Accent / Cyan*` or `NN / Accent / Teal*`. The point is to remind you that tertiary-cool accents should remain small and not turn into large blocks.

Rule of thumb: look at which token is used in a region, then choose the annotation that describes that token’s role (primary text, muted text, or tertiary accent).

### 4.2 Sidebar Layout Sample

**4.2.1 Create the frame**

1. On page `02 – UI Usage`, press `F`.
2. Draw a frame inside the page-level frame, roughly 400 × 800, or use a Desktop preset and then resize down.
3. Rename the frame to `Sample – Sidebar`.

**4.2.2 Build the sidebar layout**

- Background: `NN / Bg / Panel` (`#241B2F`).
- Add a vertical list of labels to mimic navigation.

Apply colors:

- Main labels: `NN / Fg / Primary`.
- Inactive labels: `NN / Fg / Accent Soft`.
- Icons:
  - Outline: `NN / Neutral / Light Stroke`.
  - Fill: `NN / Accent / Purple Primary`.

**4.2.3 Add annotations and when to use them**

Add small text labels near the sidebar:

- **"Inactive labels use soft accent text"** → point this at items using `NN / Fg / Accent Soft`. Use this label whenever you style a label with that token to show it’s secondary or inactive.

- **"Icons default to primary-violet family"** → point this at any icon filled with `NN / Accent / Purple Primary` (or other primary-violet accents). Use this label wherever icons are using the primary-violet accent family rather than warm or tertiary colors.

### 4.3 Taskbar / Accent Block Sample

**4.3.1 Create the frame**

1. On page `02 – UI Usage`, press `F`.
2. Draw a wide, short frame (for example 1440 × 200) inside the page-level frame.
3. Rename the frame to `Sample – Taskbar`.

**4.3.2 Build the taskbar**

- Background: `NN / Bg / Accent Block` (`#3E2E50`).
- Add app slots as rectangles or text groups arranged horizontally.

Apply colors:

- App names / text: `NN / Fg / Primary`.
- Secondary labels: `NN / Fg / Muted`.
- Icons:
  - Fill: `NN / Accent / Purple Primary`.
  - Highlights: `NN / Fg / Bright` in small specular spots (tiny edges or dots, not big areas).
- Borders between items: `NN / Neutral / Border Subtle`.

**4.3.3 Add the 60–30–10 note**

Add a small text block aligned to the right or below the taskbar frame with something like:

> 60–30–10 balance  
> ~60% background (`nn-bg-accent-block`)  
> ~30% text & neutrals (`nn-fg-*`, `nn-neutral-*`)  
> ≤10% accents (`nn-accent-*`, `nn-status-*`)

Place this note next to the taskbar sample, since that frame clearly shows the balance between background, text, and accents.

### 4.4 Icon & 3D Sample

**4.4.1 Create the frame**

1. On page `02 – UI Usage`, press `F`.
2. Draw a small frame (for example 400 × 400) inside the page-level frame.
3. Rename the frame to `Sample – 3D Icon`.

**4.4.2 Build a simple 3D tile**

One easy way to fake a 3D tile in Figma:

1. Draw a square (for example 120 × 120) with the Rectangle tool.
2. Rotate it 45° so it becomes a diamond.
3. Duplicate it:
   - Move one copy slightly up.
   - Move one copy slightly down.
4. Use the Vector Edit or Pen tool to connect edges so you end up with three separate shapes:
   - A **top face** (upper diamond).
   - A **left face**.
   - A **right face**.
5. Group the three faces.

You now have a basic 3D tile with three visible faces.

**4.4.3 Apply the 3D purple ramp**

Assume a light source coming from the top-right:

- **Shadow face** (furthest from the light, usually the bottom-left or underside) → `NN / 3D / Purple Shadow` (`#4A3C65`).
- **Mid face** (main face toward the viewer) → `NN / 3D / Purple Mid` (`#6D5B98`).
- **Light face** (closest to the light, usually the top-right face) → `NN / 3D / Purple Light` (`#907ACB`).
- **Edge highlight / specular** (thin line or small shape on the brightest edge) → `NN / 3D / Purple Highlight` (`#DACAFF`) or `NN / Fg / Bright`.

If you are unsure which face should be shadow vs mid vs light:

- The face you imagine facing away from the light = **Shadow**.
- The face facing toward the light = **Light**.
- The remaining face = **Mid**.

**4.4.4 Label each face**

Add small text labels next to the tile:

- "Shadow – `nn-3d-purple-shadow`"
- "Mid – `nn-3d-purple-mid`"
- "Light – `nn-3d-purple-light`"
- "Highlight – `nn-3d-purple-highlight`"

So you always know which ramp step you used where.

---

## 5. Page 03 – Wallpaper Guidance

This page holds **mini compositions** explaining how to balance colors for wallpapers.

Create two frames:

1. `Wallpaper – Nocturne Nebula (Mini)`
2. `Wallpaper – Orbital Syntax (Mini)`

### 5.1 Nocturne Nebula mini-comp

Frame: `Wallpaper – Nocturne Nebula (Mini)`:

- Base background gradient from `NN / Bg / Editor Core` to `NN / Bg / Panel`.
- Large soft shapes (nebula clouds): primary-violet accents
  - `NN / Accent / Purple Primary`
  - `NN / Accent / Purple Glow`
  - `NN / Accent / Purple Bright`
- Star clusters and rim light: secondary-warm
  - `NN / Status / Warning`
  - `NN / Status / Warning Bright`
- Tiny filaments / spark points: tertiary-cool
  - `NN / Accent / Cyan Primary`
  - `NN / Accent / Teal Soft`

Add a vertical text block on the side of the frame indicating approximate area ratios:

- 70–80% backgrounds & deep purples
- 10–15% primary-violet
- 5–8% warm accents
- ≤3% cyan/teal accents

**How to estimate these ratios**

- Mentally divide the frame into about 10 equal slices of visual area.
- Ensure that:
  - Most of those slices (around 7–8) are clearly dominated by dark backgrounds and deep purple clouds.
  - Violet nebula forms occupy roughly 1–1.5 slices total.
  - Warm accents and tertiary-cool details share the remaining slices and stay obviously smaller than the background mass.

You do not need exact math. If the bright accents start to feel like they are fighting the background, you have gone past the 10–15% / 5–8% guidance. Reduce accent sizes until the dark base clearly dominates.

### 5.2 Orbital Syntax mini-comp

Frame: `Wallpaper – Orbital Syntax (Mini)`:

- Base: dark gradient from `NN / Bg / Editor Core` to `NN / Bg / Panel`.
- Orbits (lines): primary-violet
  - `NN / Accent / Purple Primary` as main lines.
  - `NN / Accent / Purple Glow` and `NN / Accent / Purple Bright` for select orbits.
- Nodes / joints: warm status colors
  - `NN / Status / Warning`, `NN / Status / Warning Bright`, a few `NN / Status / Error Soft` nodes.
- Signal pulses: tertiary-cool
  - `NN / Accent / Cyan Primary`, `NN / Accent / Teal Primary` in tiny, thin segments.

Add a small text block to the right of the frame with notes:

- "Keep orbit cluster off-center to leave UI-safe zones"
- "Warm nodes are focal, tertiary-cool is used only as small signals"

**How to know when these notes apply**

- Use the "off-center cluster" note when you have intentionally concentrated most orbits and nodes in one area (for example, lower-left) and left a calmer region where real UI will sit (for example, center or upper-right).
- Use the "warm nodes are focal" note when warm status colors (`nn-status-warning*`, `nn-status-error-soft`) mark the main nodes, while cyan/teal (`nn-accent-cyan*`, `nn-accent-teal*`) are restricted to thin lines or tiny dots.

---

## 6. Page 04 – Accessibility

This page demonstrates contrast behavior and records the basic rules.

### 6.1 Contrast samples

Create a grid of samples with rectangles and text labels:

- Row 1: `nn-bg-editor-core` as background, then:
  - Text: `nn-fg-primary` – label "Pass ≥ 4.5:1"
  - Text: `nn-fg-muted` – label "Use for secondary text only"
  - Text: `nn-fg-accent-soft` – label "Decorative/secondary labels"

- Row 2: `nn-bg-panel` with the same foregrounds.

- Row 3: `nn-bg-accent-block` and `nn-fg-primary` / `nn-fg-muted`.

- Row 4: show icons or borders using `nn-neutral-light` and `nn-border-subtle` on dark backgrounds, labelled "UI icons / lines – aim ≥ 3:1".

### 6.2 Rules text block

Add a text frame summarizing:

- Normal text should target **≥ 4.5:1** contrast vs background.
- Large text and icons should target **≥ 3:1**.
- Decorative wallpaper-only elements can ignore strict ratios but must not impersonate UI.
- Use `nn-fg-primary` as default text over dark backgrounds.

---

## 7. How to bring this kit into Figma

There are two ways to wire this kit into Figma:

- **Option A:** manual setup (no plugins).
- **Option B:** use Tokens Studio with the JSON tokens and optionally keep them synced with Git.

### 7.1 Option A – manual setup (no plugins)

1. **Create the Figma file**  
   - Open Figma and create a new design file named `Nocturne Nexus – Color Kit v1.3`.  
   - Add pages: `01 – Palette / Swatches`, `02 – UI Usage`, `03 – Wallpaper Guidance`, `04 – Accessibility`.

2. **Create color styles**  
   - On any page, draw a rectangle.  
   - In the right sidebar (Fill section), click the style icon next to "Fill" and choose **Local styles → Color styles → +**.  
   - Enter the style name and hex values listed in section 2 of this document.  
   - Repeat until every palette color is a Figma Color Style.

3. **Build swatches (Page 01)**  
   - On `01 – Palette / Swatches`, create frames for each group as described in section 3.1.  
   - Draw `96 × 96` swatch rectangles, apply the Color Styles, add text labels, and convert each swatch into a Component.  
   - Use Auto layout + "Tidy Up" to keep everything aligned.

4. **Create usage frames (Page 02)**  
   - Recreate the sample editor, sidebar, taskbar, and 3D icon layouts using only the Color Styles.  
   - Add annotations using a small, consistent text style as described in section 4.

5. **Create wallpaper mini-comps (Page 03)**  
   - Build small abstract compositions (Nebula and Orbital) using the rules in section 5.  
   - Do not polish them as full wallpapers; they are guidelines only.

6. **Add accessibility examples (Page 04)**  
   - Create text-on-background samples with labels documenting which combinations are safe for normal text and which are secondary-only.

7. **Publish as a library (optional but recommended)**  
   - In Figma, go to **Assets → Library** and publish the file as a team library.  
   - Other files can then use the `NN / ...` color styles and swatch components without re-creating them.

### 7.2 Option B – using Tokens Studio with the JSON tokens

If you want Figma to stay aligned with the JSON tokens used in your code and other tools, use the Tokens Studio plugin.

**7.2.1 Import the Nocturne tokens**

1. Install **Tokens Studio for Figma** from the Figma plugin directory.
2. Open the `Nocturne Nexus – Color Kit v1.3` file.
3. Run **Plugins → Tokens Studio**.
4. In Tokens Studio, create a new token set (for example `nocturne-nexus`).
5. Switch that set to **JSON view**.
6. Open `nocturne-nexus-tokens-v1.3.json` in a text editor and copy its contents.
7. Paste the JSON into the token set’s JSON view and save.
8. Ensure the token set is **Enabled**, not set as "Source only". Enabled sets are used to create styles/variables.

You should now see tokens like `color.nn-bg-editor-core`, `color.nn-accent-purple-primary`, etc. in the plugin.

**7.2.2 Create Figma color styles from tokens**

1. In Tokens Studio, go to the section that lets you export or create Figma Styles/Variables.  
2. Choose to create **Color styles** from your color tokens.  
3. Run the export. The plugin will create Figma Color Styles based on the tokens.
4. In Figma’s right sidebar, under **Local styles → Color**, you should now see styles corresponding to your Nocturne tokens.

After this, use these Color Styles for all fills/strokes in the kit, instead of typing hex values manually.

**7.2.3 What "Apply to page" actually does**

- "Apply to page" in Tokens Studio does **not** create new styles.  
- It only updates layers that are already bound to tokens or variables.  
- If you have not yet created styles from tokens, or you have not attached tokens to any layers, "Apply to page" will appear to do nothing.

Use "Create Styles" / "Export to Figma" to generate styles first. After components and frames are bound to those tokens, you can use "Apply to page" or similar actions to update everything when the tokens change.

### 7.3 Optional – keep Tokens Studio in sync with Git

If you already store Nocturne files in Git and want a single source of truth for tokens across design and code, set up Git sync.

**7.3.1 When Git sync is worth it**

Use Git sync if:

- You keep your themes or design system in a Git repository.
- You want token changes to go through commit history and code review.
- You want any designer or developer to be able to pull the same token JSON into Figma or code.

You can skip Git sync if you only work inside Figma and do not want extra process.

**7.3.2 Basic Git sync setup with Tokens Studio**

1. Add `nocturne-nexus-tokens-v1.3.json` to your Git repository (for example, the same repo that holds your VS Code theme and other Nocturne assets).
2. In Figma, open Tokens Studio and go to **Settings → Sync providers**.
3. Add a new sync provider and choose your Git provider (for example GitHub).  
4. Connect to your repository and configure the folder/path where the token JSON lives.
5. In Tokens Studio, use **Pull changes** to load token updates from Git into Figma, or **Push changes** to commit updated tokens from Figma back to the repository.
6. When you push, add a clear commit message (for example, "Update Nocturne Nexus v1.3 teal accents"), and create a pull request if your team uses PRs.

Once Git sync is configured:

- The JSON file in your repo becomes the canonical source of truth.  
- Tokens Studio keeps the Figma token set aligned with that file via Push/Pull.  
- Other tools (VS Code theme, icon generation scripts, etc.) can all read from the same JSON.

Once this file is built and wired up, it becomes the visual and token reference for Nocturne Nexus. All themes, icons, and wallpapers should match the tokens and usage patterns defined here.

