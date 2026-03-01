# AGENTS Instructions

This repository is a small Neovim configuration with lazy.nvim.

## Repository layout
- `init.lua`: Core options, plugin bootstrap entrypoint, and global keymaps.
- `lua/packagemanager.lua`: lazy.nvim bootstrap logic and leader key setup.
- `lua/plugins.lua`: Plugin specification list consumed by lazy.nvim.
- `lazy-lock.json`: Version-pinned plugin lockfile, kept in sync with `lua/plugins.lua` changes.

## Editing guidance
- Keep Lua style in this repo consistent with existing 2-space indentation and simple table-based plugin specs.
- Prefer minimal, targeted edits.
- Avoid broad refactors unless requested; this config is intentionally lightweight.

## Plugin changes
- Add/remove/adjust plugins in `lua/plugins.lua`.
- For plugin changes, treat `lazy-lock.json` as source-of-truth for pinned versions when lockfile is committed.
- Preserve existing plugin patterns:
  - `return { { ... }, { ... } }`
  - Explicit plugin declarations with `dependencies` as needed.
- New plugins should include lazy-loading or startup intent (`lazy`, `priority`, etc.) consistent with existing entries.

## Neovim behavior conventions
- Tabs should remain 2-space equivalents via the existing `tabstop/shiftwidth/softtabstop = 2` + `expandtab`.
- Keep startup deterministic and minimal in `init.lua`; prefer adding new option blocks there over spreading config elsewhere.
- Keep `mapleader` in `lua/packagemanager.lua` unless re-architecting startup flow.

## Safety checks (manual)
- Do not remove `lazy.nvim` bootstrap code unless replacing plugin manager setup completely.
- When adjusting startup-critical lines, ensure `require('packagemanager')` still runs before `require("lazy").setup(...)`.
- If adding keymaps, follow the existing style (`vim.keymap.set` in `init.lua`).

## Suggested follow-up
- If plugin behavior diverges from desired default, add small, explicit settings near plugin declaration in `lua/plugins.lua`.
