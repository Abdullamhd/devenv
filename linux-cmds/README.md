# Linux Commands Reference

Useful Linux commands for system administration and troubleshooting.

## Network Diagnostics

### mtr - Network route diagnostic tool
```bash
mtr google.com
```
**Description**: Combines ping and traceroute functionality to show network path and packet loss in real-time.

**Usage**:
- Shows each hop between you and destination
- Displays packet loss percentage
- Updates statistics in real-time
- Press `q` to quit

**Options**:
```bash
mtr -r google.com     # Report mode (run for 10 cycles then exit)
mtr -c 100 google.com # Run for 100 cycles
mtr -n google.com     # No DNS resolution (faster)
```