# 🚀 TMUX SESSION MASTERY GUIDE

## UNDERSTANDING TMUX HIERARCHY

```
TMUX SERVER
    └── SESSIONS (Projects/Contexts)
            └── WINDOWS (Different views)
                    └── PANES (Split screens)
```

## 🎯 WHAT ARE SESSIONS?

Sessions are **independent workspaces** that run in the background. Think of them as:
- **Virtual Desktops** for your terminal
- **Project Containers** that persist even when disconnected
- **Isolated Environments** with their own windows and panes

### Real-World Analogy:
- **Session** = Different Projects (e.g., "web-app", "api-server", "docs")
- **Windows** = Different files/tools in that project
- **Panes** = Split views of the same window

## 📚 COMPLETE SESSION COMMANDS

### Creating Sessions

| Command | Description | Example |
|---------|-------------|---------|
| `tmux` | Create unnamed session | `tmux` |
| `tmux new` | Same as above | `tmux new` |
| `tmux new -s NAME` | Create named session | `tmux new -s webdev` |
| `tmux new -s NAME -d` | Create detached session | `tmux new -s api -d` |
| `Ctrl+a n` | New session (inside tmux) | Press Ctrl+a, then n |
| `tn NAME` | Fish function for new session | `tn myproject` |

### Listing Sessions

| Command | Description | When to Use |
|---------|-------------|-------------|
| `tmux ls` | List all sessions | From outside tmux |
| `tmux list-sessions` | Same as above | From outside tmux |
| `Ctrl+a s` | Interactive session list | Inside tmux |
| `tl` | Fish function to list | Anywhere |
| `tm` | Interactive manager with fzf | Best option! |

### Switching Sessions

| Method | Command | Description |
|--------|---------|-------------|
| **By Name** | `tmux switch -t NAME` | Switch to specific session |
| **Interactive** | `Ctrl+a s` | Choose from list |
| **With FZF** | `Ctrl+a S` | Fuzzy search sessions |
| **Previous/Next** | `Ctrl+a (` or `Ctrl+a )` | Cycle through sessions |
| **Last Active** | `Ctrl+a L` | Toggle last two sessions |
| **Fish Function** | `ts` | Interactive switch with preview |

### Attaching to Sessions

| Command | Description | Behavior |
|---------|-------------|----------|
| `tmux attach` | Attach to last session | Connects to most recent |
| `tmux a` | Shorthand for attach | Same as above |
| `tmux attach -t NAME` | Attach to specific session | `tmux attach -t webdev` |
| `t` | Fish function smart attach | Attaches or creates |

### Detaching from Sessions

| Command | Description | What Happens |
|---------|-------------|--------------|
| `Ctrl+a d` | Detach from current session | Session keeps running |
| `tmux detach` | Same as above | From inside tmux |
| `exit` | Close pane/window/session | Terminates if last pane |

## ⚡ KILLING SESSIONS - COMPLETE GUIDE

### Understanding Kill vs Detach
- **Detach**: Session continues running in background
- **Kill**: Session terminates, all processes end

### Kill Methods

#### 1. Kill Current Session (Inside tmux)
```bash
Ctrl+a X      # Capital X - will ask for confirmation
```

#### 2. Kill Specific Session (Outside tmux)
```bash
tmux kill-session -t session_name
tmux kill-ses -t session_name      # Short version
```

#### 3. Kill All Sessions Except Current
```bash
tmux kill-session -a
```

#### 4. Kill All Sessions Except Specific One
```bash
tmux kill-session -a -t keep_this_one
```

#### 5. Kill Server (All Sessions)
```bash
tmux kill-server
```

#### 6. Interactive Kill with Fish
```bash
tk              # Interactive selector
tk session_name # Kill specific
tka            # Kill ALL (asks confirmation)
```

### Safe Killing Practices

1. **Check Before Killing**
```bash
tmux list-sessions                    # See all sessions
tmux list-windows -t session_name     # See windows in session
tmux list-panes -t session_name:1     # See panes in window
```

2. **Save Work First**
```bash
Ctrl+a :capture-pane -S -3000  # Capture last 3000 lines
Ctrl+a :save-buffer ~/tmux.log # Save to file
```

## 🔄 ADVANCED SESSION SWITCHING

### Quick Switch Techniques

1. **Session Previews**
```bash
tm    # Our custom manager shows preview
ts    # Fish function with window preview
```

2. **Direct Navigation**
```bash
# Switch to session by partial name
tmux switch -t web     # Matches "webdev", "web-app", etc.

# Switch with pattern
tmux switch -t ^api    # Sessions starting with "api"
```

3. **Session Groups** (Advanced)
```bash
# Create linked session (shares windows)
tmux new-session -t original -s linked

# Now changes in windows affect both sessions
```

## 💡 PRO TIPS & PATTERNS

### Naming Conventions
```bash
# Project-based
tmux new -s projectname-dev
tmux new -s projectname-test
tmux new -s projectname-prod

# Task-based
tmux new -s coding
tmux new -s debugging
tmux new -s monitoring

# Date-based for temporary
tmux new -s temp-$(date +%Y%m%d)
```

### Session Templates
```bash
# Create a development session with multiple windows
#!/usr/bin/fish
function dev-session
    set name $argv[1]
    tmux new-session -d -s $name
    tmux rename-window -t $name:1 'code'
    tmux new-window -t $name -n 'server'
    tmux new-window -t $name -n 'git'
    tmux new-window -t $name -n 'logs'
    tmux attach -t $name
end
```

### Common Workflows

#### Workflow 1: Multiple Projects
```bash
# Morning routine
tn frontend     # Create frontend session
Ctrl+a d        # Detach
tn backend      # Create backend session
Ctrl+a d        # Detach
tn devops       # Create devops session

# Switch between them
Ctrl+a s        # Choose from list
ts              # Or use fish function
```

#### Workflow 2: Save and Restore
```bash
# Before lunch/end of day
Ctrl+a d        # Detach, keeps running

# After break
t               # Reattach to last
tmux a -t proj  # Or specific project
```

#### Workflow 3: Clean Restart
```bash
# See what's running
tl              # List all sessions

# Kill specific old sessions
tk old-project
tk temp-work

# Or nuclear option
tka             # Kill all (confirms first)
```

## 🎮 PRACTICE EXERCISES

### Exercise 1: Basic Session Management
```bash
1. tmux new -s practice        # Create session
2. Ctrl+a c                   # New window
3. Ctrl+a ,                   # Rename window
4. Ctrl+a d                   # Detach
5. tmux ls                    # List sessions
6. tmux attach -t practice    # Reattach
7. Ctrl+a X                   # Kill session
```

### Exercise 2: Multi-Session Workflow
```bash
1. tn project1                # Create first project
2. Create 3 windows (Ctrl+a c)
3. Ctrl+a d                   # Detach
4. tn project2                # Create second project
5. Create 2 windows
6. Ctrl+a s                   # Switch sessions
7. Navigate between them
8. tk                         # Kill one interactively
```

### Exercise 3: Advanced Switching
```bash
1. Create 5 sessions with different names
2. Use Ctrl+a ( and ) to cycle
3. Use ts to switch with preview
4. Use tm for management
5. Kill all but one with tmux kill-session -a -t keeper
```

## 🚨 TROUBLESHOOTING

### "Sessions should be nested with care"
- You're trying to start tmux inside tmux
- Use `Ctrl+a s` to switch instead

### "Can't find session"
```bash
tmux ls                      # Check exact names
tmux attach -t sess          # Partial names work
```

### "Session still exists after killing"
```bash
tmux kill-server             # Nuclear option
ps aux | grep tmux           # Check processes
killall tmux                 # Force kill
```

### Lost Sessions After Reboot
- Tmux doesn't persist across reboots by default
- Use tmux-resurrect plugin for persistence
- Or create startup scripts

## 📋 QUICK REFERENCE CARD

```
CREATE:  tn NAME  |  Ctrl+a n  |  tmux new -s NAME
LIST:    tl       |  Ctrl+a s  |  tmux ls
SWITCH:  ts       |  Ctrl+a s  |  Ctrl+a (/)
ATTACH:  t        |  tmux a    |  tmux attach -t NAME
DETACH:  Ctrl+a d
KILL:    tk       |  Ctrl+a X  |  tmux kill-session -t NAME
RENAME:  tr       |  Ctrl+a r  |  tmux rename-session NEW
```

## 🎯 DECISION TREE

```
Need new workspace?
├─ YES → tn projectname
└─ NO → t (attach to existing)

Multiple projects?
├─ YES → Create multiple sessions
└─ NO → Use windows instead

Done with session?
├─ Temporary → Ctrl+a X (kill)
├─ Return later → Ctrl+a d (detach)
└─ Switch project → Ctrl+a s

Session problems?
├─ Can't switch → Use ts or tm
├─ Lost session → tl to list all
└─ Too many → tk to clean up
```