#!/bin/zsh

# Install Homebrew
if command -v brew &>/dev/null; then
    echo "Homebrew is already installed!"
    install_brew-apps
else
    echo "Homebrew is not installed. Installing now..."
    # Install Homebrew using curl
    if ! command -v curl &>/dev/null; then
        echo "curl is not installed. Please install curl and try again."
        exit 1
    fi
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    # Verify the installation
    if command -v brew &>/dev/null; then
        echo "Homebrew installed successfully."
        install_apps
        echo "Proceeding with the next process..."
    else
        echo "Error: Homebrew installation failed."
        exit 1
    fi
fi

# Install Visual Studio Code extensions
if command -v code &>/dev/null; then
    echo "Visual Studio Code is already installed!"
    install_vsc-extensions
else
    echo "Visual Studio Code is not installed. Please install Visual Studio Code and try again."
    exit 1
    if ! command -v code &>/dev/null; then
        echo "Visual Studio Code is not installed. Please install Visual Studio Code and try again."
        exit 1
    fi

fi