# Read the list of CLI tools from cli-tools.txt
cli_tools=$(cat data/cli-tools.txt)

# Function to install apps using Homebrew
install_apps() {
    # Read the list of apps from apps.txt
    mac-apps=$(cat data/mac-apps.txt)

    echo "Starting installation of apps..."

    for app in "${apps[@]}"; do
        echo "Installing $app..."
        brew install --cask "$app"
    done

    echo "All apps have been installed."
}

# Check if brew is installed
if command -v brew &>/dev/null; then
    echo "Homebrew is already installed!"
    install_brew
    install_apps
    echo "Proceeding with the next process..."
else
    echo "Homebrew is not installed. Installing now..."
    # Install Homebrew using curl
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
    # Verify the installation
    if command -v brew &>/dev/null; then
        echo "Homebrew installed successfully."
        # Add your next process here
        echo "Proceeding with the next process..."
    else
        echo "Failed to install Homebrew. Exiting."
        exit 1
    fi
fi