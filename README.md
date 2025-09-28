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

### Vim Motions - Quick Edits
| Motion | Action | Example |
|--------|--------|---------|
| `ciw` | Change word | Rename variable |
| `ci(` | Change in parens | Fix parameters |
| `ci"` | Change in quotes | Edit string |
| `ci{` | Change in braces | Replace block |
| `f` + char | Jump to character | `f(` jump to paren |
| `.` | Repeat last change | Apply same edit |
| `n` | Next search match | Jump to next |
| `I` | Insert at line start | Add prefix |
| `A` | Append at line end | Add suffix |
| `/text` | Search forward | Find in file |
| `cw` | Change to word end | Quick rename |
| `viw` | Select word | Quick selection |

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

### Window & Split Management
| Key | Action |
|-----|--------|
| `Ctrl+h/j/k/l` | Navigate splits |
| `Space x` | Close buffer |

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

### File Tree (when focused)
| Key | Action |
|-----|--------|
| `a` | Create file |
| `d` | Delete |
| `r` | Rename |
| `x` | Cut |
| `p` | Paste |

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