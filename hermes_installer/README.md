# Hermes Agent Installer

A beautifully formatted Bash script to automate the installation, configuration, and execution of the **Hermes Agent** on Linux systems. It features interactive prompts, full ANSI color styling, and handles configuration steps in separate terminal windows.

## Features
* 🎨 **Styled CLI UI** – Clear, color-coded prompts using ANSI escape codes.
* 📦 **Automated Directory Management** – Safely downloads and isolates installation scripts under `~/.hermes/`.
* 🪟 **Multi-Window Integration** – Launches setup wizard and runner configurations in a new `gnome-terminal` instance to keep your working shell clean.
* 🛡️ **Safety Checks** – Includes prompt validation and graceful user-aborted exit routines.

## Prerequisites
Before running this installer, ensure you have the following dependencies available on your machine:
* `curl` – To safely fetch the official installation package.
* `bash` – Version 4.0 or higher.
* `gnome-terminal` – Used for launching interactive sub-processes (standard on Ubuntu, Debian, and Fedora desktops).

## Installation

To add this installer directly to your system or prepare it for a repository workspace, use the following sequence:

1. **Clone your repository** (or navigate to your working directory):
   ```bash
   cd /path/to/your/repo
   ```

2. **Make the script executable**:
   ```bash
   chmod +x install_hermes.sh
   ```

## Usage

Simply run the script directly from your terminal console:

```bash
./install_hermes.sh
```

### Script Execution Flow
1. **Welcome Screen:** Asks for validation to proceed.
2. **Core Setup:** Downloads the script from the official source, saves it to `~/.hermes/install.sh`, fixes execution permissions, and runs the baseline installation.
3. **Configuration Window:** Spawns a secondary `gnome-terminal` running `hermes setup` so you can securely enter API parameters without obstructing the main terminal history.
4. **Daemon Launch:** Offers to spin up the agent workspace immediately (`hermes start`).

## Repository Structure
```text
├── README.md
└── install_hermes.sh     # The core installer script
```

## License

MIT License

Copyright (c) 2026

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.