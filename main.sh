#!/bin/bash

# Session token (for educational purposes only)
SESSION_TOKEN="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"

# Function to decode token parts
decode_token() {
    local token="$1"
    # Split the token into parts
    IFS='.' read -r -a parts <<< "$token"
    
    echo "Token Parts:"
    echo "1. Prefix: ${parts[0]}"
    echo "2. Middle: ${parts[1]}"
    echo "3. Signature: ${parts[2]}"
    echo
    
    # Try to decode each part
    echo "Decoded Parts:"
    for part in "${parts[@]}"; do
        echo -n "$part" | base64 -d 2>/dev/null || echo "Unable to decode"
        echo
    done
}

# Main function
main() {
    echo "=== Token Analysis Demo ==="
    echo
    
    echo "Full Token: $SESSION_TOKEN"
    echo
    
    decode_token "$SESSION_TOKEN"
}

# Check if jq is installed
if ! command -v jq &> /dev/null; then
    echo "Error: jq is required but not installed. Please install it first."
    echo "On macOS: brew install jq"
    echo "On Ubuntu/Debian: sudo apt-get install jq"
    exit 1
fi

# Run main function
main 