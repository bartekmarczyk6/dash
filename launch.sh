#!/bin/bash

# Get the directory of this script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"

# The executable is in the bin subdirectory
EXECUTABLE_PATH="$SCRIPT_DIR/bin/dash"

if [ -f "$EXECUTABLE_PATH" ]; then
    echo "Launching Dash..."
    cd "$SCRIPT_DIR" && "$EXECUTABLE_PATH"
else
    echo "Error: Dash executable not found at $EXECUTABLE_PATH"
    echo "Please run the install-x86.sh script first."
    exit 1
fi
