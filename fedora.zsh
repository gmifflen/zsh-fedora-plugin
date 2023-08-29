# Fedora Plugin for Oh My Zsh
# Author: GMifflen
# GitHub: https://github.com/gmifflen/zsh-fedora-plugin

# === Package Management ===
# Install packages
alias dnfin='sudo dnf install'

# Remove packages
alias dnfrm='sudo dnf remove'

# Reinstall packages
alias dnfre='sudo dnf reinstall'

# Downgrade packages
alias dnfdg='sudo dnf downgrade'

# === Querying Packages ===
# Search for packages
alias dnfse='dnf search'

# Display package information
alias dnfif='dnf info'

# List packages
alias dnfls='dnf list'

# List installed packages
alias dnflsi='dnf list --installed'

# List available packages
alias dnflsav='dnf list --available'

# List all packages
alias dnflsal='dnf list --all'

# === Update Management ===
# Check for package updates
alias dnfupd='dnf check-update'

# Upgrade packages
alias dnfupg='sudo dnf upgrade'

# Minimal upgrade
alias dnfmin='sudo dnf upgrade-minimal'

# Display update information
alias dnfupif='dnf updateinfo'

# Function for full system update, upgrade, and clean
dnf_full_upgrade() {
  echo "This will perform the following actions:"
  echo "  1. Check for package updates"
  echo "  2. Upgrade packages"
  echo "  3. Clean DNF cache"
  
  read -q "response?Do you want to proceed? (y/N) "
  echo # Move to a new line
  
  if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
    echo "Checking for updates..."
    sudo dnf check-update
    echo "Upgrading packages..."
    sudo dnf upgrade
    echo "Cleaning cache..."
    sudo dnf clean all
  else
    echo "Operation cancelled."
  fi
}

# === Repository Management ===
# Show repository information
alias dnfrepif='dnf repoinfo'

# List configured repositories
alias dnfrepls='dnf repolist'

# Query repository information
alias dnfrq='dnf repoquery'

# === Utility ===
# Clean DNF cache
alias dnfcln='dnf clean'

# Show DNF history
alias dnfhist='dnf history'

# Open DNF shell
alias dnfsh='sudo dnf shell'
