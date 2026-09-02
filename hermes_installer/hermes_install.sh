#!/usr/bin/env bash

# 1. Define formatting variables first
BOLD='\033[1m'
CYAN='\033[0;36m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color
clear
echo
echo
echo -e "${BOLD}${CYAN}   === Welcome to the Hermes installation script! ===${NC}"
echo
echo -e "${BOLD}${GREEN}This script will guide you through the installation process.${NC}"
echo
echo -e "${BOLD}${YELLOW}Would you like to continue? Press y or n and then Enter.${NC}"
read -r response

if [[ "$response" =~ ^[Yy]$ ]]; then
    clear
    echo -e "${BOLD}${GREEN}Continuing with installation...${NC}"
else
    clear
    echo -e "${BOLD}${RED}Installation aborted by user.${NC}"
    exit 1
fi

echo -e "${BOLD}${GREEN}Installing Hermes agent...${NC}"

# 2. FIXED: Fetch the installer, save it, move it, and execute it properly
mkdir -p ~/.hermes
curl -fsSL https://hermes-agent.nousresearch.com/install.sh -o ~/.hermes/install.sh
chmod +x ~/.hermes/install.sh
cd ~/.hermes && ./install.sh

echo -e "${BOLD}${GREEN}Hermes agent installed.${NC}"
echo -e "${BOLD}${YELLOW}Do you want to configure the Hermes agent now? (y/n)${NC}"
read -r config_response

if [[ "$config_response" =~ ^[Yy]$ ]]; then
    echo -e "${BOLD}${GREEN}Configuring Hermes agent...${NC}"
    gnome-terminal -- bash -c "hermes setup && exit"
    echo -e "${BOLD}${GREEN}Hermes agent configuration window opened.${NC}"
else
    echo -e "${BOLD}${YELLOW}You can configure the Hermes agent later by running 'hermes setup'.${NC}"
fi

echo -e "${BOLD}${GREEN}Installation complete. Thank you for installing Hermes! Would you like to start the Hermes agent now? (y/n)${NC}"
read -r start_response

if [[ "$start_response" =~ ^[Yy]$ ]]; then
    echo -e "${BOLD}${GREEN}Starting Hermes agent...${NC}"
    gnome-terminal -- bash -c "hermes start && exit"
    echo -e "${BOLD}${GREEN}Hermes agent started.${NC}"
else
    echo -e "${BOLD}${YELLOW}You can start the Hermes agent later by running 'hermes start'.${NC}"
fi
