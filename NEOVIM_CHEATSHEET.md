# Neovim Cheatsheet

**Leader Key:** `Space`

## General Keybindings

| Key          | Action                  |
| ------------ | ----------------------- |
| `jk`         | Exit insert mode        |
| `<leader>nh` | Clear search highlights |
| `<leader>+`  | Increment number        |
| `<leader>-`  | Decrement number        |

## Window Management

| Key          | Action                    |
| ------------ | ------------------------- |
| `<leader>sv` | Split window vertically   |
| `<leader>sh` | Split window horizontally |
| `<leader>se` | Make splits equal size    |
| `<leader>sx` | Close current split       |
| `<leader>sm` | Toggle split maximize     |
| `<C-h>`      | Navigate to left window   |
| `<C-j>`      | Navigate to bottom window |
| `<C-k>`      | Navigate to top window    |
| `<C-l>`      | Navigate to right window  |

## Tab Management

| Key          | Action                         |
| ------------ | ------------------------------ |
| `<leader>to` | Open new tab                   |
| `<leader>tx` | Close current tab              |
| `<leader>tn` | Go to next tab                 |
| `<leader>tp` | Go to previous tab             |
| `<leader>tf` | Open current buffer in new tab |

## Terminal (toggleterm)

| Key          | Action                     |
| ------------ | -------------------------- |
| `<C-\>`      | Toggle floating terminal   |
| `<leader>tt` | Toggle floating terminal   |
| `<leader>th` | Toggle horizontal terminal |
| `<leader>tv` | Toggle vertical terminal   |

### Inside Terminal

| Key           | Action                   |
| ------------- | ------------------------ |
| `<Esc>`       | Exit terminal mode       |
| `jk`          | Exit terminal mode       |
| `<C-h/j/k/l>` | Navigate between windows |

## Symbols Outline (Aerial)

| Key          | Action                                           |
| ------------ | ------------------------------------------------ |
| `<leader>a`  | Toggle symbols outline                           |
| `<leader>ao` | Open symbols outline                             |
| `<leader>ac` | Close symbols outline                            |
| `<leader>an` | Next symbol                                      |
| `<leader>ap` | Previous symbol                                  |
| `{` / `}`    | Jump to prev/next symbol (when outline attached) |

**Note:** Shows functions, classes, methods in a sidebar like VSCode's outline.

## Enhanced Navigation (Flash)

| Key         | Action                                    |
| ----------- | ----------------------------------------- |
| `<leader>j` | Flash jump (jump to any visible location) |
| `<leader>J` | Flash Treesitter (jump to code nodes)     |
| `<Ctrl-s>`  | Toggle flash in search (command mode)     |

**Tip:** Press `<leader>j`, type 1-2 chars, then press the highlighted label to jump.

## Reference Highlighting (Illuminate)

**Automatic:** References to the word under cursor are automatically highlighted.

| Key  | Action             |
| ---- | ------------------ |
| `]]` | Next reference     |
| `[[` | Previous reference |

## Color Preview (Colorizer)

**Automatic:** Hex colors, RGB, HSL, and Tailwind colors are shown inline.

| Key          | Action           |
| ------------ | ---------------- |
| `<leader>ct` | Toggle colorizer |

## Project Search & Replace (Spectre)

| Key          | Action                          |
| ------------ | ------------------------------- |
| `<leader>S`  | Toggle Spectre (search/replace) |
| `<leader>sw` | Search current word             |
| `<leader>sw` | Search selection (visual mode)  |
| `<leader>sp` | Search in current file          |

### Inside Spectre

| Key          | Action               |
| ------------ | -------------------- |
| `dd`         | Toggle line          |
| `<CR>`       | Go to file           |
| `<leader>rc` | Replace current line |
| `<leader>R`  | Replace all          |
| `<leader>q`  | Send to quickfix     |
| `ti`         | Toggle ignore case   |
| `th`         | Toggle hidden files  |

## Notifications

| Key          | Action                    |
| ------------ | ------------------------- |
| `<leader>un` | Dismiss all notifications |

**Note:** Better notification popups appear in the top-right corner.

## GitHub Copilot

### Inline Suggestions

| Key     | Action                      |
| ------- | --------------------------- |
| `<M-l>` | Accept suggestion (Alt+l)   |
| `<M-]>` | Next suggestion (Alt+])     |
| `<M-[>` | Previous suggestion (Alt+[) |
| `<C-]>` | Dismiss suggestion          |

### Copilot Panel

| Key      | Action                         |
| -------- | ------------------------------ |
| `<M-CR>` | Open Copilot panel (Alt+Enter) |
| `[[`     | Jump to previous suggestion    |
| `]]`     | Jump to next suggestion        |
| `<CR>`   | Accept suggestion              |
| `gr`     | Refresh suggestions            |

**Note:** Copilot also appears in the completion menu with the icon.

## File Explorer (nvim-tree)

| Key          | Action                 |
| ------------ | ---------------------- |
| `<leader>ee` | Toggle file explorer   |
| `<leader>ef` | Toggle on current file |
| `<leader>ec` | Collapse file explorer |
| `<leader>er` | Refresh file explorer  |

### Inside nvim-tree

| Key     | Action                    |
| ------- | ------------------------- |
| `a`     | Create new file/directory |
| `d`     | Delete file/directory     |
| `r`     | Rename file/directory     |
| `x`     | Cut file/directory        |
| `c`     | Copy file/directory       |
| `p`     | Paste file/directory      |
| `y`     | Copy name                 |
| `Y`     | Copy relative path        |
| `gy`    | Copy absolute path        |
| `<CR>`  | Open file                 |
| `o`     | Open file                 |
| `<Tab>` | Preview file              |
| `I`     | Toggle hidden files       |
| `H`     | Toggle dotfiles           |
| `R`     | Refresh                   |

## Telescope (Fuzzy Finder)

| Key          | Action                      |
| ------------ | --------------------------- |
| `<leader>ff` | Find files                  |
| `<leader>fr` | Recent files                |
| `<leader>fs` | Live grep (search in files) |
| `<leader>fc` | Grep string under cursor    |
| `<leader>ft` | Find todos                  |

### Inside Telescope

| Key               | Action                 |
| ----------------- | ---------------------- |
| `<C-k>` / `<C-j>` | Move selection up/down |
| `<C-q>`           | Send to quickfix list  |
| `<CR>`            | Open selected file     |

## LSP (Language Server Protocol)

| Key          | Action                                  |
| ------------ | --------------------------------------- |
| `gd`         | Go to definition                        |
| `gD`         | Go to declaration                       |
| `gi`         | Go to implementation                    |
| `gt`         | Go to type definition                   |
| `gR`         | Show references                         |
| `K`          | Hover documentation                     |
| `<leader>ca` | Code actions (auto-import, quick fixes) |
| `<leader>rn` | Rename symbol                           |
| `<leader>d`  | Show line diagnostics                   |
| `<leader>D`  | Show buffer diagnostics                 |
| `[d`         | Go to previous diagnostic               |
| `]d`         | Go to next diagnostic                   |
| `<leader>rs` | Restart LSP                             |

## Completion (nvim-cmp)

### In Insert Mode

| Key         | Action              |
| ----------- | ------------------- |
| `<C-k>`     | Previous suggestion |
| `<C-j>`     | Next suggestion     |
| `<C-Space>` | Trigger completion  |
| `<C-e>`     | Abort completion    |
| `<CR>`      | Confirm selection   |
| `<C-b>`     | Scroll docs up      |
| `<C-f>`     | Scroll docs down    |

## Commenting (Comment.nvim)

| Key           | Action                                      |
| ------------- | ------------------------------------------- |
| `gcc`         | Toggle line comment                         |
| `gc` + motion | Toggle comment (e.g., `gcap` for paragraph) |
| `gbc`         | Toggle block comment                        |
| `gb` + motion | Toggle block comment with motion            |

### In Visual Mode

| Key  | Action                             |
| ---- | ---------------------------------- |
| `gc` | Toggle comment for selection       |
| `gb` | Toggle block comment for selection |

## Substitution (substitute.nvim)

| Key          | Action                    |
| ------------ | ------------------------- |
| `s` + motion | Substitute with motion    |
| `ss`         | Substitute line           |
| `S`          | Substitute to end of line |

## Surround (nvim-surround)

| Key                  | Action                                                    |
| -------------------- | --------------------------------------------------------- |
| `ys` + motion + char | Add surround (e.g., `ysiw"` to surround word with quotes) |
| `ds` + char          | Delete surround (e.g., `ds"` to remove quotes)            |
| `cs` + old + new     | Change surround (e.g., `cs"'` to change " to ')           |

### In Visual Mode

| Key        | Action             |
| ---------- | ------------------ |
| `S` + char | Surround selection |

## Git (gitsigns)

| Key          | Action            |
| ------------ | ----------------- |
| `]h`         | Next hunk         |
| `[h`         | Previous hunk     |
| `<leader>hs` | Stage hunk        |
| `<leader>hr` | Reset hunk        |
| `<leader>hS` | Stage buffer      |
| `<leader>hu` | Undo stage hunk   |
| `<leader>hR` | Reset buffer      |
| `<leader>hp` | Preview hunk      |
| `<leader>hb` | Blame line        |
| `<leader>tb` | Toggle line blame |
| `<leader>hd` | Diff this         |
| `<leader>hD` | Diff this ~       |
| `<leader>td` | Toggle deleted    |

## LazyGit

| Key          | Action       |
| ------------ | ------------ |
| `<leader>lg` | Open LazyGit |

## Git Diff Viewer (Diffview)

| Key          | Action                   |
| ------------ | ------------------------ |
| `<leader>gd` | Open Diffview            |
| `<leader>gc` | Close Diffview           |
| `<leader>gh` | File history (all files) |
| `<leader>gf` | Current file history     |

**Tip:** Better side-by-side diffs than standard git diff.

## Trouble (Diagnostics)

| Key          | Action                |
| ------------ | --------------------- |
| `<leader>xw` | Workspace diagnostics |
| `<leader>xd` | Document diagnostics  |
| `<leader>xq` | Quickfix list         |
| `<leader>xt` | Todos in Trouble      |

## Todo Comments

| Key  | Action                |
| ---- | --------------------- |
| `]t` | Next todo comment     |
| `[t` | Previous todo comment |

## Formatting (conform.nvim)

| Key          | Action            |
| ------------ | ----------------- |
| `<leader>mp` | Format file/range |

**Note:** Auto-format on save is enabled by default.

## Session Management (auto-session)

| Key          | Action          |
| ------------ | --------------- |
| `<leader>wr` | Restore session |
| `<leader>ws` | Save session    |

## Treesitter

### In Normal Mode

| Key         | Action                     |
| ----------- | -------------------------- |
| `<C-Space>` | Init incremental selection |

### In Visual Mode (after init)

| Key         | Action           |
| ----------- | ---------------- |
| `<C-Space>` | Expand selection |
| `<BS>`      | Shrink selection |

## Debugging (nvim-dap)

| Key          | Action                     |
| ------------ | -------------------------- |
| `<leader>db` | Toggle breakpoint          |
| `<leader>dB` | Set conditional breakpoint |
| `<leader>dc` | Continue / Start debugging |
| `<leader>dC` | Run to cursor              |
| `<leader>di` | Step into                  |
| `<leader>do` | Step over                  |
| `<leader>dO` | Step out                   |
| `<leader>dr` | Toggle REPL                |
| `<leader>dl` | Run last                   |
| `<leader>dt` | Terminate                  |
| `<leader>du` | Toggle DAP UI              |
| `<leader>dh` | Hover (show value)         |
| `<leader>dp` | Preview                    |

**Supported Languages:** Python, JavaScript/TypeScript, C/C++

**Tip:** Set breakpoint with `<leader>db`, then start debugging with `<leader>dc`.

## Jupyter Cells (Molten)

### Setup
| Key          | Action              |
| ------------ | ------------------- |
| `<leader>mi` | Initialize kernel   |
| `<leader>mx` | Interrupt kernel    |
| `<leader>mr` | Restart kernel      |

### Execute Code
| Key          | Action                      |
| ------------ | --------------------------- |
| `<leader>me` | Evaluate operator           |
| `<leader>ml` | Evaluate line               |
| `<leader>mc` | Re-evaluate cell            |
| `<leader>me` | Evaluate selection (visual) |

### Navigation
| Key  | Action            |
| ---- | ----------------- |
| `]c` | Next cell         |
| `[c` | Previous cell     |

### Output Management
| Key          | Action              |
| ------------ | ------------------- |
| `<leader>mo` | Show output         |
| `<leader>mh` | Hide output         |
| `<leader>md` | Delete cell         |
| `<leader>mI` | Import output       |
| `<leader>mE` | Export output       |

**How to use:**
1. Open a Python file or notebook
2. Define cells using `# %%` comments (Jupyter-style)
3. Initialize kernel: `<leader>mi` and select kernel (e.g., `python3`)
4. Execute cells with `<leader>ml` or visual select and `<leader>me`
5. View output inline or in a separate window

**Example Python file with cells:**
```python
# %%
import numpy as np
import matplotlib.pyplot as plt

# %%
x = np.linspace(0, 10, 100)
y = np.sin(x)

# %%
plt.plot(x, y)
plt.show()
```

## Breadcrumbs

**Automatic:** File path and current symbol context shown in winbar (top of window).

## Theme

| Key          | Action              |
| ------------ | ------------------- |
| `<leader>bg` | Toggle transparency |

## Built-in Vim Commands

| Command        | Action                          |
| -------------- | ------------------------------- |
| `:Mason`       | Open Mason (LSP/tool installer) |
| `:Lazy`        | Open Lazy (plugin manager)      |
| `:LspInfo`     | Show LSP info                   |
| `:LspRestart`  | Restart LSP servers             |
| `:checkhealth` | Run health check                |

## Useful Vim Motions

| Motion           | Action                                    |
| ---------------- | ----------------------------------------- |
| `w` / `b`        | Next/previous word                        |
| `e`              | End of word                               |
| `0` / `$`        | Start/end of line                         |
| `gg` / `G`       | Top/bottom of file                        |
| `{` / `}`        | Previous/next paragraph                   |
| `%`              | Jump to matching bracket                  |
| `f` + char       | Find character forward                    |
| `F` + char       | Find character backward                   |
| `t` / `T` + char | Till character forward/backward           |
| `;` / `,`        | Repeat last f/F/t/T forward/backward      |
| `*` / `#`        | Search word under cursor forward/backward |
| `ciw`            | Change inner word                         |
| `diw`            | Delete inner word                         |
| `ci"`            | Change inside quotes                      |
| `di(`            | Delete inside parentheses                 |
| `va{`            | Visual select around braces               |

## Language Servers Installed

- **ts_ls** - TypeScript/JavaScript
- **pyright** - Python
- **clangd** - C/C++
- **lua_ls** - Lua
- **html** - HTML
- **cssls** - CSS
- **tailwindcss** - Tailwind CSS
- **jsonls** - JSON
- **yamlls** - YAML
- **dockerls** - Docker
- **sqlls** - SQL
- **svelte** - Svelte
- **graphql** - GraphQL
- **emmet_ls** - Emmet
- **prismals** - Prisma

## Formatters Installed

- **prettier** - JS/TS/React/Svelte/CSS/HTML/JSON/YAML/Markdown
- **stylua** - Lua
- **black** - Python
- **isort** - Python imports

## Debuggers Installed

- **debugpy** - Python debugger
- **codelldb** - C/C++ debugger
- **node-debug2-adapter** - JavaScript/TypeScript debugger

## Tips

### Code Intelligence

1. **Auto-import:** Place cursor on undefined variable → `<leader>ca` → Select "Add import"
2. **Rename across files:** Place cursor on symbol → `<leader>rn` → Type new name
3. **View documentation:** Hover over function/variable → Press `K`
4. **Quick fix errors:** Place cursor on error → `<leader>ca` → Select fix

### Navigation

5. **Search in project:** `<leader>fs` → Type search term
6. **Jump to any location:** `<leader>j` → Type 1-2 chars → Press label
7. **View code structure:** `<leader>a` → See all symbols/functions
8. **Jump back:** `<C-o>` (after jumping to definition)
9. **Jump forward:** `<C-i>`

### Search & Replace

10. **Project-wide replace:** `<leader>S` → Enter search term → Enter replace → `<leader>R`
11. **Search word under cursor:** `<leader>sw`

### Git

12. **Stage hunks:** `<leader>hs` to stage, `<leader>hr` to reset
13. **View diffs:** `<leader>gd` for full diff view, `<leader>hp` for quick preview
14. **File history:** `<leader>gf` to see all changes to current file

### Debugging

15. **Start debugging:** Set breakpoint (`<leader>db`), then `<leader>dc` to start
16. **Step through code:** `<leader>di` (into), `<leader>do` (over), `<leader>dO` (out)

### Productivity

17. **Color preview:** Hex/RGB colors show automatically, toggle with `<leader>ct`
18. **Multiple cursors:** Use Copilot or visual block mode (`<C-v>`)
19. **Terminal inside vim:** `<C-\>` for floating, `<leader>th` for split
20. **Dismiss notifications:** `<leader>un` to clear all
