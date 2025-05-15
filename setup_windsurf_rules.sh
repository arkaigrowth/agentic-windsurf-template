#!/bin/bash

# setup_windsurf_rules.sh
# This script creates or updates the global_rules.md file in the Codeium folder
# Works on macOS, Linux, and Windows (with Git Bash or WSL)
# Author: Alex Kamysz
# Date: May 14, 2025

# Print colored messages
print_green() {
    echo -e "\033[0;32m$1\033[0m"
}

print_yellow() {
    echo -e "\033[0;33m$1\033[0m"
}

print_red() {
    echo -e "\033[0;31m$1\033[0m"
}

# Detect operating system
detect_os() {
    case "$(uname -s)" in
        Darwin*)    echo "macos" ;;
        Linux*)     echo "linux" ;;
        CYGWIN*|MINGW*|MSYS*) echo "windows" ;;
        *)          echo "unknown" ;;
    esac
}

# Get user home directory in a cross-platform way
get_home_dir() {
    OS=$(detect_os)
    if [ "$OS" = "windows" ]; then
        # On Windows with Git Bash
        echo "$USERPROFILE" | sed 's/\\/\//g'
    else
        # macOS and Linux
        echo "$HOME"
    fi
}

# Main function
main() {
    # Get home directory
    HOME_DIR=$(get_home_dir)
    
    if [ -z "$HOME_DIR" ]; then
        print_red "ERROR: Could not determine home directory!"
        exit 1
    fi
    
    print_green "Home directory: $HOME_DIR"
    
    # Construct path to Codeium directory
    CODEIUM_DIR="$HOME_DIR/.codeium/windsurf/memories"
    GLOBAL_RULES_FILE="$CODEIUM_DIR/global_rules.md"
    
    print_green "Creating directory structure if it doesn't exist..."
    
    # Create directory if it doesn't exist
    mkdir -p "$CODEIUM_DIR"
    
    if [ ! -d "$CODEIUM_DIR" ]; then
        print_red "ERROR: Failed to create directory: $CODEIUM_DIR"
        exit 1
    fi
    
    # Check if global_rules.md already exists
    if [ -f "$GLOBAL_RULES_FILE" ]; then
        print_yellow "global_rules.md already exists. Backing up original file..."
        BACKUP_FILE="${GLOBAL_RULES_FILE}.backup.$(date +%Y%m%d%H%M%S)"
        cp "$GLOBAL_RULES_FILE" "$BACKUP_FILE"
        print_green "Original file backed up to: $BACKUP_FILE"
        
        # Check if Agent Workspace Setup already exists in the file
        if grep -q "Agent Workspace Setup" "$GLOBAL_RULES_FILE"; then
            print_yellow "Agent Workspace Setup already exists in global_rules.md"
            echo ""
            print_yellow "Do you want to update it anyway? (y/n)"
            read -r RESPONSE
            if [ "$RESPONSE" != "y" ]; then
                print_green "Keeping original file. Exiting..."
                exit 0
            fi
        fi
    else
        print_green "Creating new global_rules.md file..."
    fi
    
    # Determine the template path
    TEMPLATE_DIR="$HOME_DIR/Documents/Templates/my_windsurf_project"
    echo ""
    print_yellow "Where would you like to store your template repository?"
    print_yellow "Default: $TEMPLATE_DIR"
    print_yellow "Press Enter to use the default, or type a new path:"
    read -r CUSTOM_TEMPLATE_DIR
    
    if [ -n "$CUSTOM_TEMPLATE_DIR" ]; then
        TEMPLATE_DIR="$CUSTOM_TEMPLATE_DIR"
    fi
    
    print_green "Template directory set to: $TEMPLATE_DIR"
    
    # Create or update the global_rules.md file
    TEMP_FILE=$(mktemp)
    
    # If file exists, copy its contents to temp file first
    if [ -f "$GLOBAL_RULES_FILE" ]; then
        cp "$GLOBAL_RULES_FILE" "$TEMP_FILE"
        
        # Remove any existing Agent Workspace Setup section if it exists
        sed -i.bak '/# ---------- Agent Workspace Setup/,/----------/d' "$TEMP_FILE"
    fi
    
    # Add the Agent Workspace Setup section
    cat << EOF >> "$TEMP_FILE"
# ---------- Agent Workspace Setup ---------------------------------
name: "Agent Workspace Setup"
description: "Copies template folders from your windsurf project to the current workspace"
version: "1.0.0"
author: "Alex Kamysz"

triggers:
  commands:
    - "copy-agent-template"
    - "setup-agent-workspace"
    - "init-agent-project"
    - "prep-agent-env"
  fuzzy_match: true
  fuzzy_threshold: 0.7

actions:
  copy_templates:
    type: "file_operation"
    operation: "copy"
    source:
      base_path: "$TEMPLATE_DIR"
      directories:
        - ".ai_docs"
        - ".windsurf"
        - "specs"
    destination:
      type: "current_workspace"
    confirm: true
    confirm_message: "Copy template folders to current workspace?"
# ---------- End Agent Workspace Setup -------------------------------

EOF

    # Move the temp file to the final location
    mv "$TEMP_FILE" "$GLOBAL_RULES_FILE"
    
    print_green "Success! global_rules.md has been created/updated at: $GLOBAL_RULES_FILE"
    print_green ""
    print_green "To use this template in any workspace, just type one of these commands in Windsurf Cascade:"
    print_green "- copy-agent-template"
    print_green "- setup-agent-workspace"
    print_green "- init-agent-project"
    print_green "- prep-agent-env"
    print_green ""
    print_yellow "IMPORTANT: Make sure to copy your template files to: $TEMPLATE_DIR"
    print_yellow "Run the following commands to create this directory and copy your files:"
    print_yellow "mkdir -p \"$TEMPLATE_DIR\""
    print_yellow "cp -r .ai_docs .windsurf specs \"$TEMPLATE_DIR\""
}

# Run the main function
main
