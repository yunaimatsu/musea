#!/bin/bash

install_vsc-extensions() {
    echo "Installing Visual Studio Code extensions..."
}

# Define the file name containing the extensions
EXTENSIONS_FILE="vsc-extensions.txt"

# Check if the file exists
if [ ! -f "$EXTENSIONS_FILE" ]; then
    echo "Error: File '$EXTENSIONS_FILE' not found."
    exit 1
fi

# Read the list of extensions from the file
echo "Installing VS Code extensions from '$EXTENSIONS_FILE'..."
while IFS= read -r extension || [ -n "$extension" ]; do
    if [ -n "$extension" ]; then
        echo "Installing extension: $extension"
        code --install-extension "$extension"
    fi
done < "$EXTENSIONS_FILE"

echo "All extensions installed successfully!"
