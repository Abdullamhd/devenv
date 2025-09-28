# NvChad Keybindings Reference

Complete keybinding reference for NvChad with custom mappings.

## 🎯 Leader Key: `Space`

The leader key is `Space` - most commands start with pressing Space.

## 📁 File Management

| Keybinding | Action | Description |
|------------|--------|-------------|
| `Space ff` | Find files | Fuzzy file finder (Telescope) |
| `Space fw` | Live grep | Search text in all files |
| `Space fb` | Browse buffers | List open buffers |
| `Space fh` | Help tags | Search help documentation |
| `Space fo` | Recent files | Recently opened files |
| `Space fz` | Current buffer fuzzy | Search in current file |
| `Space fm` | Format file | Format current buffer |
| `Ctrl+n` | Toggle NvimTree | File explorer sidebar |
| `Space e` | Focus NvimTree | Focus file explorer |

## 📝 Buffer Management

| Keybinding | Action | Description |
|------------|--------|-------------|
| `Tab` | Next buffer | Cycle to next buffer |
| `Shift+Tab` | Previous buffer | Cycle to previous buffer |
| `Space x` | Close buffer | Close current buffer |
| `Space b` | New buffer | Create new buffer |
| `Ctrl+s` | Save file | Save current buffer |

## 🔍 LSP & Code Intelligence

| Keybinding | Action | Description |
|------------|--------|-------------|
| `gd` | Go to definition | Jump to symbol definition |
| `gr` | Go to references | Find all references |
| `gi` | Go to implementation | Jump to implementation |
| `gt` | Go to type definition | Jump to type definition |
| `K` | Hover | Show hover documentation |
| `Space ca` | Code actions | Show available code actions |
| `Space ra` | Rename | Rename symbol |
| `Space D` | Type definition | Go to type definition |
| `Space lf` | LSP finder | Find symbols/references |
| `Space q` | Diagnostics list | Show all diagnostics |
| `[d` | Previous diagnostic | Jump to previous error/warning |
| `]d` | Next diagnostic | Jump to next error/warning |
| `Space d` | Show diagnostic | Show diagnostic under cursor |

## ✂️ Editing

| Keybinding | Action | Description |
|------------|--------|-------------|
| `Space /` | Comment toggle | Toggle line comment |
| `gcc` | Comment line | Comment current line |
| `gc` (visual) | Comment selection | Comment selected lines |
| `Space cc` | Pick color | Color picker |
| `Ctrl+a` | Increment number | Increase number under cursor |
| `Ctrl+x` | Decrement number | Decrease number under cursor |

## 🎨 UI & Windows

| Keybinding | Action | Description |
|------------|--------|-------------|
| `Space th` | Change theme | Theme picker |
| `Space n` | Toggle line numbers | Cycle line number modes |
| `Space rn` | Toggle relative numbers | Toggle relative line numbers |
| `Ctrl+h/j/k/l` | Navigate windows | Move between splits |
| `Space sv` | Split vertical | Create vertical split |
| `Space sh` | Split horizontal | Create horizontal split |

## 🔤 Git Integration

| Keybinding | Action | Description |
|------------|--------|-------------|
| `Space cm` | Git commits | Browse commits (Telescope) |
| `Space gt` | Git status | Show git status (Telescope) |
| `Space gd` | Git diff | Show git diff |
| `]c` | Next hunk | Jump to next git change |
| `[c` | Previous hunk | Jump to previous git change |
| `Space rh` | Reset hunk | Undo git changes in hunk |
| `Space ph` | Preview hunk | Preview git changes |
| `Space gb` | Blame line | Show git blame for line |

## 💻 Terminal

| Keybinding | Action | Description |
|------------|--------|-------------|
| `Space h` | Horizontal term | Open horizontal terminal |
| `Space v` | Vertical term | Open vertical terminal |
| `Alt+h` | Toggle horizontal term | Toggle horizontal terminal |
| `Alt+v` | Toggle vertical term | Toggle vertical terminal |
| `Alt+i` | Toggle floating term | Toggle floating terminal |
| `Ctrl+x` | Exit terminal mode | Exit terminal insert mode |

## 🎯 Custom Mappings

| Keybinding | Action | Description |
|------------|--------|-------------|
| `;` | Command mode | Enter command mode (custom) |
| `jk` | Escape | Exit insert mode (custom) |
| `Space m` | Toggle mouse | Enable/disable mouse (custom) |
| `Space r` | Reveal in tree | Show current file in tree (custom) |
| `Space c` | Show TS captures | Show treesitter info (custom) |

## 🚀 Telescope (Fuzzy Finder)

While in Telescope:

| Keybinding | Action |
|------------|--------|
| `Ctrl+j/k` | Navigate results |
| `Ctrl+n/p` | Navigate results (alt) |
| `Enter` | Open selection |
| `Ctrl+x` | Open horizontal split |
| `Ctrl+v` | Open vertical split |
| `Ctrl+t` | Open in new tab |
| `Ctrl+u` | Preview scroll up |
| `Ctrl+d` | Preview scroll down |
| `Esc` | Close Telescope |
| `Tab` | Toggle selection |
| `Ctrl+q` | Send to quickfix |

## 📋 NvimTree (File Explorer)

While in NvimTree:

| Keybinding | Action |
|------------|--------|
| `Enter` | Open file/folder |
| `o` | Open file/folder |
| `Tab` | Preview file |
| `a` | Create new file |
| `d` | Delete file |
| `r` | Rename file |
| `x` | Cut file |
| `c` | Copy file |
| `p` | Paste file |
| `y` | Copy name |
| `Y` | Copy relative path |
| `gy` | Copy absolute path |
| `H` | Toggle hidden files |
| `R` | Refresh tree |
| `?` | Show help |
| `q` | Close tree |

## 🎮 Visual Mode

| Keybinding | Action | Description |
|------------|--------|-------------|
| `>` | Indent right | Increase indentation |
| `<` | Indent left | Decrease indentation |
| `Space /` | Comment | Comment selection |
| `J` | Move down | Move selection down |
| `K` | Move up | Move selection up |

## ⚡ Vim Motion Recipes (Quick Refactoring)

Common code transformations in seconds using Vim motions:

### 1. Change Class/Function Name
```vim
/BadClass    # Search for name
ciw          # Change inner word
NewName      # Type replacement
```

### 2. Fix Function Parameters
```vim
f(           # Find opening paren
ci(          # Change inside parentheses
param1, param2  # Type new params
```

### 3. Add Prefix to Multiple Lines
```vim
I            # Insert at line start
self.        # Type prefix
<Esc>j.      # Next line, repeat (.)
j.           # Keep repeating with j.
```

### 4. Rename Method/Variable
```vim
/oldName     # Search
cw           # Change word
newName      # Type new name
n.           # Next occurrence, repeat
```

### 5. Fix String Content
```vim
ci'          # Change inside single quotes
ci"          # Change inside double quotes
ci`          # Change inside backticks
f"i          # Find quote, insert before
```

### Quick Motion Combinations
| Motion | Action | Use Case |
|--------|--------|----------|
| `ciw` | Change inner word | Rename variables |
| `ci(` | Change inside parens | Fix parameters |
| `ci{` | Change inside braces | Replace block content |
| `ci[` | Change inside brackets | Fix arrays |
| `ci"` | Change inside quotes | Edit strings |
| `viw` | Select inner word | Quick selection |
| `f` + char | Find character | Jump to specific char |
| `.` | Repeat last change | Apply same edit multiple times |
| `n` | Next search match | Jump through occurrences |
| `I` | Insert at line start | Add prefixes |
| `A` | Append at line end | Add suffixes |

## 🔧 Utility

| Keybinding | Action | Description |
|------------|--------|-------------|
| `Space ch` | Cheatsheet | Show NvChad cheatsheet |
| `Space ud` | Update NvChad | Update NvChad |
| `Space uu` | Update plugins | Update all plugins |
| `Space ma` | Find marks | List all marks |
| `Space wK` | Which key | Show all keybindings |
| `Space wk` | Which key (current) | Show keybindings for current mode |

## 💡 Navigation Tips

1. **Quick File Switch**: Use `Space ff` for files, `Space fb` for buffers
2. **Search Everything**: `Space fw` searches text across all files
3. **Quick Save**: `Ctrl+s` saves without leaving insert mode
4. **Window Navigation**: Hold `Ctrl` and use `hjkl` to move between splits
5. **Multiple Cursors**: Use visual block mode (`Ctrl+v`) for column edits

## ⚙️ Configuration Files

- **Keymaps**: `~/.config/nvim/lua/mappings.lua`
- **Custom Config**: `~/.config/nvim/lua/custom/`
- **Plugin Config**: `~/.config/nvim/lua/plugins/`

## 🎓 Learning Resources

1. **In Nvim**: `:Tutor` - Interactive vim tutorial
2. **Cheatsheet**: `Space ch` - NvChad cheatsheet
3. **Help**: `:h keyword` - Search help docs
4. **Which Key**: `Space wk` - See available keybindings

## 📝 Notes

- Most keybindings are mnemonic (f=find, b=buffer, g=goto, etc.)
- Leader key (Space) must be pressed before the command
- Some commands work in specific modes (Normal/Visual/Insert)
- Custom mappings can override defaults - check `mappings.lua`

## Author

Configuration by Abdullah Abdulwahab