# Fedora Plugin for Oh My Zsh
# Author: GMifflen
# GitHub: https://github.com/gmifflen/zsh-fedora-plugin

# define colors
green=$(tput setaf 2)
cyan=$(tput setaf 6)
yellow=$(tput setaf 3)
red=$(tput setaf 1)
reset=$(tput sgr0)

# detect if dnf5 is available
dnfprog="dnf"
command -v dnf5 > /dev/null && dnfprog="dnf5"

# === Package Management ===
alias dnfin="echo \"${green}Installing package...${reset}\" && sudo ${dnfprog} install || echo \"${red}Failed to install package.${reset}\""

alias dnfrm="echo \"${green}Removing package...${reset}\" && sudo ${dnfprog} remove || echo \"${red}Failed to remove package.${reset}\""

alias dnfre="echo \"${green}Reinstalling package...${reset}\" && sudo ${dnfprog} reinstall || echo \"${red}Failed to reinstall package.${reset}\""

alias dnfdg="echo \"${green}Downgrading package...${reset}\" && sudo ${dnfprog} downgrade || echo \"${red}Failed to downgrade package.${reset}\""

# === Querying Packages ===
alias dnfse="echo \"${green}Searching for packages...${reset}\" && ${dnfprog} search || echo \"${red}Failed to search for packages.${reset}\""

alias dnfif="echo \"${green}Showing package info...${reset}\" && ${dnfprog} info || echo \"${red}Failed to retrieve package info.${reset}\""

alias dnfls="echo \"${green}Listing packages...${reset}\" && ${dnfprog} list || echo \"${red}Failed to list packages.${reset}\""

alias dnflsal="echo \"${green}Listing all packages...${reset}\" && ${dnfprog} list --all || echo \"${red}Failed to list all packages.${reset}\""

alias dnflsav="echo \"${green}Listing available packages...${reset}\" && ${dnfprog} list --available || echo \"${red}Failed to list available packages.${reset}\""

alias dnflsi="echo \"${green}Listing installed packages...${reset}\" && ${dnfprog} list --installed || echo \"${red}Failed to list installed packages.${reset}\""

# === Update Management ===
## handle `check-upgrade` vs `check-update`
if [[ ${dnfprog} == "dnf5" ]]; then
  alias dnfupd="echo \"${green}Checking for updates...${reset}\" && ${dnfprog} check-upgrade || echo \"${red}Failed to check for updates.${reset}\""
else
  alias dnfupd="echo \"${green}Checking for updates...${reset}\" && ${dnfprog} check-update || echo \"${red}Failed to check for updates.${reset}\""
fi

alias dnfupg="echo \"${green}Upgrading system...${reset}\" && sudo ${dnfprog} upgrade || echo \"${red}Failed to upgrade system.${reset}\""

alias dnfmin="echo \"${green}Performing minimal upgrade...${reset}\" && sudo ${dnfprog} upgrade-minimal || echo \"${red}Failed to perform minimal upgrade.${reset}\""

alias dnfupif="echo \"${green}Showing update info...${reset}\" && ${dnfprog} updateinfo || echo \"${red}Failed to show update info.${reset}\""

# === Repository Management ===
alias dnfrepif="echo \"${green}Showing repo info...${reset}\" && ${dnfprog} repoinfo || echo \"${red}Failed to retrieve repo info.${reset}\""

alias dnfrepls="echo \"${green}Listing repos...${reset}\" && ${dnfprog} repolist || echo \"${red}Failed to list repos.${reset}\""

alias dnfrq="echo \"${green}Querying repo...${reset}\" && ${dnfprog} repoquery || echo \"${red}Failed to query repo.${reset}\""

# === Utility ===
alias dnfcln="echo \"${green}Cleaning DNF cache...${reset}\" && ${dnfprog} clean all || echo \"${red}Failed to clean DNF cache.${reset}\""

alias dnfhist="echo \"${green}Showing DNF history...${reset}\" && ${dnfprog} history || echo \"${red}Failed to show DNF history.${reset}\""

alias dnfsh="echo \"${green}Starting DNF shell...${reset}\" && sudo ${dnfprog} shell || echo \"${red}Failed to start DNF shell.${reset}\""




dnf_full_upgrade() {
  echo "${cyan}This will perform the following actions:${reset}"
  echo "${green}  1. Check for package updates${reset}"
  echo "${green}  2. Upgrade packages${reset}"
  echo "${green}  3. Clean DNF cache${reset}"

  while true; do
    read -q "response?${yellow}Do you want to proceed? (y/N): ${reset}"
    echo
    case "$response" in
      [yY]|[yY][eE][sS])
        echo "${cyan}Proceeding with full upgrade...${reset}"
        break
        ;;
      [nN]|[nN][oO]|'')
        echo "${red}Operation cancelled.${reset}"
        return 1
        ;;
      *)
        echo "${yellow}Invalid response. Please enter y (yes) or n (no).${reset}"
        ;;
    esac
  done

  # handle `check-upgrade` vs `check-update`
  if [[ ${dnfprog} == "dnf5" ]]; then
    echo "${cyan}Checking for upgrades...${reset}"
    if sudo ${dnfprog} check-upgrade; then
      echo "${green}Upgrade check successful.${reset}"
    else
      echo "${red}Failed to check for upgrades.${reset}"
      return 1
    fi
  else
    echo "${cyan}Checking for updates...${reset}"
    if sudo ${dnfprog} check-update; then
      echo "${green}Update check successful.${reset}"
    else
      echo "${red}Failed to check for updates.${reset}"
      return 1
    fi
  fi

  # upgrade
  echo "${cyan}Upgrading packages...${reset}"
  if sudo ${dnfprog} upgrade -y; then
    echo "${green}Packages upgraded successfully.${reset}"
  else
    echo "${red}Failed to upgrade packages.${reset}"
    return 1
  fi

  # clean cache
  echo "${cyan}Cleaning cache...${reset}"
  if sudo ${dnfprog} clean all; then
    echo "${green}Cache cleaned successfully.${reset}"
  else
    echo "${red}Failed to clean cache.${reset}"
    return 1
  fi

  echo "${green}Full upgrade completed successfully.${reset}"
}
