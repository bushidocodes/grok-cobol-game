# WasteCutter: The COBOL Bureaucracy Slayer

You are a heroic (or villainous) waste slayer in the swamp of government spending. Cut waste, manage approval, dodge scandals, and try not to trigger an angry mob (or AOC's wrath).

## How to Play
```bash
cobc -x -o hello hello.cbl
./hello
```

Full-screen TUI. Choices matter. Approval is everything. Zero approval? Game over with style.

## Install GNUCobol + Make (Cheeky Edition)

### macOS (The "It Just Works" Lie)
1. Install Homebrew if you haven't (the only sane package manager):
   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```
2. Then:
   ```bash
   brew install gnucobol make
   ```
   Now you're fancy. Go cut some pork.

### Linux (Ubuntu/Debian - The Adult Choice)
```bash
sudo apt update
sudo apt install gnucobol make
```
   Done. You're now a real developer. Unlike those Windows peasants.

### Windows (The Suffering Path)
**Option 1 (Recommended):** Install WSL2 + Ubuntu (Microsoft finally did one thing right).
1. Enable WSL in PowerShell (admin):
   ```powershell
   wsl --install
   ```
2. Reboot, then in Ubuntu terminal:
   ```bash
   sudo apt update && sudo apt install gnucobol make
   ```

**Option 2 (Masochism):** Use MSYS2/MinGW.
- Download from msys2.org, install, then `pacman -S mingw-w64-x86_64-gnucobol make`.
- Good luck. We won't judge... much.

**Option 3:** Just install Linux. Seriously.

## Why?
Because nothing says "cutting government waste" like writing a full TUI game in 2026 COBOL. Enjoy the irony. Now go make some cuts (and try not to get canceled).

Made with love, spite, and too much free time. Contributions welcome (but keep the AOC jokes tasteful... or don't).