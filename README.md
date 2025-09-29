# 🚀 DevEnv - Daily Shortcuts Reference

Quick access to most-used shortcuts for Python/JavaScript development with Tmux + Neovim.

## 🔥 Most Used Daily (80% of your time)

### File & Buffer Navigation
| Key | Action |
|-----|--------|
| `Space ff` | Find files |
| `Space fw` | Search text in all files |
| `Space fb` | Switch buffers |
| `Tab` | Next buffer |
| `Shift+Tab` | Previous buffer |
| `Ctrl+s` | Save file |
| `Ctrl+n` | File tree toggle |
| `;` | Command mode |

### Code Navigation (Python/JS)
| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gr` | Find all references |
| `K` | Show docs/type info |
| `[d` | Previous error |
| `]d` | Next error |
| `Space ca` | Quick fix/Code actions |
| `Space fm` | Format file |
| `Space ra` | Rename symbol |

### Vim Motions - Edit/Move/Copy
| Category | Motion | Action |
|----------|--------|--------|
| **Change** | `ciw` | Change word |
| | `ci(` / `ci{` / `ci[` | Change inside parens/braces/brackets |
| | `ci"` / `ci'` / `ci`` | Change inside quotes |
| | `cw` | Change to word end |
| | `caw` | Change word + space |
| | `cap` | Change paragraph |
| **Copy** | `yy` or `Y` | Copy line |
| | `yiw` | Copy word |
| | `yap` | Copy paragraph |
| | `y$` | Copy to end of line |
| | `"+y` | Copy to clipboard |
| **Paste** | `p` | Paste after cursor |
| | `P` | Paste before cursor |
| | `"+p` | Paste from clipboard |
| **Delete** | `dd` | Delete line |
| | `diw` | Delete word |
| | `daw` | Delete word + space |
| | `d$` or `D` | Delete to end of line |
| | `x` | Delete character |
| **Move Lines** | `ddp` | Move line down |
| | `ddkP` | Move line up |
| | `V:m +1` | Visual move down |
| | `V:m -2` | Visual move up |
| **Swap** | `dawwP` | Swap words |
| | `xp` | Swap characters |
| | `ddp` | Swap lines down |
| **Navigate** | `w` / `b` | Word forward/back |
| | `e` | End of word |
| | `0` / `$` | Line start/end |
| | `gg` / `G` | File start/end |
| | `{` / `}` | Paragraph up/down |
| | `%` | Matching bracket |
| | `f` + char | Find character forward |
| | `F` + char | Find character backward |
| | `Ctrl+d/u` | Half page down/up |
| **Lines** | `J` | Join lines |
| | `o` / `O` | New line below/above |
| | `>>` / `<<` | Indent/unindent |
| **Visual** | `v` | Visual mode |
| | `V` | Visual line mode |
| | `Ctrl+v` | Visual block mode |
| | `gv` | Reselect last visual |
| | `viw` | Select word |
| | `vap` | Select paragraph |
| **Undo/Redo** | `u` | Undo |
| | `Ctrl+r` | Redo |
| **Search** | `/text` | Search forward |
| | `?text` | Search backward |
| | `n` / `N` | Next/previous match |
| | `*` / `#` | Search word under cursor |
| **Insert** | `I` | Insert at line start |
| | `A` | Append at line end |
| | `a` | Append after cursor |
| | `i` | Insert before cursor |
| **Other** | `.` | Repeat last change |
| | `~` | Toggle case |

### Tmux - Session/Window/Pane
| Category | Key | Action |
|----------|-----|--------|
| **Session** | `t` | Attach/create session |
| | `tn name` | New named session |
| | `Ctrl+b d` | Detach (keep running) |
| | `Ctrl+b s` | List/switch sessions |
| | `Ctrl+b $` | Rename session |
| **Window** | `Ctrl+b c` | New window |
| | `Ctrl+b 0-9` | Jump to window |
| | `Ctrl+b n/p` | Next/prev window |
| | `Ctrl+b l` | Last window toggle |
| | `Ctrl+b w` | List windows |
| | `Ctrl+b ,` | Rename window |
| **Pane** | `Ctrl+b %` | Split horizontal |
| | `Ctrl+b "` | Split vertical |
| | `Ctrl+b z` | **Zoom toggle** |
| | `Ctrl+b arrows` | Navigate panes |
| | `Ctrl+b o` | Cycle panes |
| | `Ctrl+b q` | Show numbers |
| | `Ctrl+b x` | Kill pane |

### NvimTree - File Explorer
| Category | Key | Action |
|----------|-----|--------|
| **Window Nav** | `Ctrl+n` | Toggle NvimTree |
| | `Ctrl+h` | Move to left (NvimTree) |
| | `Ctrl+l` | Move to right (file) |
| | `Ctrl+j` | Move to window below |
| | `Ctrl+k` | Move to window above |
| **Navigate** | `j/k` | Move down/up |
| | `Enter` or `o` | Open file/folder |
| | `<BS>` | Close folder/go parent |
| | `P` | Jump to parent folder |
| | `/` | Search in tree |
| | `H` | Toggle hidden files |
| | `R` | Refresh tree |
| **Files** | `a` | Create file/folder |
| | `d` | Delete file |
| | `r` | Rename file |
| | `x` | Cut file |
| | `c` | Copy file |
| | `p` | Paste file |
| **Open Modes** | `Enter` | Open file |
| | `Tab` | Preview (no switch) |
| | `Ctrl+v` | Open in vsplit |
| | `Ctrl+x` | Open in hsplit |
| | `Ctrl+t` | Open in new tab |
| **Copy Paths** | `y` | Copy filename |
| | `Y` | Copy relative path |
| | `gy` | Copy absolute path |
| **Folders** | `o` | Open folder |
| | `O` | Open recursively |
| | `<BS>` | Close folder |
| | `E` | Expand all |
| | `W` | Collapse all |
| **Other** | `?` | Show help |
| | `q` | Close tree |
| | `I` | Toggle gitignore |

## ⚡ Frequent Use (15% of your time)

### LSP & Refactoring
| Key | Action |
|-----|--------|
| `Space /` or `gcc` | Toggle comment |
| `gc` (visual) | Comment selection |
| `Space d` | Show diagnostic detail |
| `gi` | Go to implementation |
| `gt` | Go to type definition |
| `Space q` | List all diagnostics |

### Buffer & Split Management
| Key | Action |
|-----|--------|
| `Space x` | Close buffer |
| `Space sv` | Vertical split |
| `Space sh` | Horizontal split |

### Quick Vim Recipes
```vim
# Change class name
/ClassName → ciw → NewName

# Fix function params
f( → ci( → new, params

# Add self. to multiple lines
I → self. → Esc → j. → j.

# Rename all occurrences
/oldName → cw → newName → n.

# Change string content
ci' or ci" or ci`
```

## 📌 Occasional Use (5% of your time)

### Git Operations
| Key | Action |
|-----|--------|
| `Space gt` | Git status |
| `]c` / `[c` | Next/prev git change |
| `Space gb` | Git blame line |

### Terminal
| Key | Action |
|-----|--------|
| `Alt+i` | Floating terminal |
| `Space h` | Horizontal terminal |

### Telescope (in picker)
| Key | Action |
|-----|--------|
| `Ctrl+j/k` | Navigate results |
| `Enter` | Open selection |
| `Ctrl+v` | Open in split |
| `Esc` | Close |

## 💡 Speed Tips

### Session Workflow
```bash
t                  # Start working
tn backend         # New project session
Ctrl+b d          # Take a break
t                  # Resume where you left
```

### Quick Navigation Pattern
```vim
Space ff → file.py     # Find file
Space fw → search_term # Find in project
gd → definition        # Jump to code
K → see docs          # Check info
Space ca → fix        # Apply quick fix
```

### Multi-Edit Pattern
```vim
/pattern           # Search
ciw → new         # Change
n.                # Next & repeat
n.                # Keep going
```

## 🎯 Most Important to Remember

1. **Navigation**: `Space ff` (files), `Space fw` (search), `gd` (definition)
2. **Editing**: `ciw` (change word), `ci(` (change params), `.` (repeat)
3. **Tmux**: `Ctrl+b z` (zoom), `Ctrl+b d` (detach), `t` (reattach)
4. **Save/Format**: `Ctrl+s` (save), `Space fm` (format)
5. **Errors**: `[d` / `]d` (navigate), `Space ca` (fix)

---
**Full documentation**: [nvchad_setup/KEYBINDINGS.md](nvchad_setup/KEYBINDINGS.md) | **Setup**: [README.md.full_backup](README.md.full_backup)