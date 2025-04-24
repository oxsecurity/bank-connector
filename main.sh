#!/bin/bash

# GitHub token (for educational purposes only)
GITHUB_TOKEN="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"

# Function to make GitHub API request
make_github_request() {
    local token="$1"
    local endpoint="$2"
    curl -s -H "Authorization: token $token" \
         -H "Accept: application/vnd.github.v3+json" \
         "https://api.github.com$endpoint"
}

# Main function
main() {
    echo "=== GitHub API Demo ==="
    echo
    
    # Test the token with a simple GitHub API request
    echo "Making API request to get authenticated user info..."
    response=$(make_github_request "$GITHUB_TOKEN" "/user")
    
    if [ $? -eq 0 ]; then
        echo "API request successful!"
        echo "User info:"
        echo "$response" | jq -r '.login, .name, .email'
    else
        echo "API request failed!"
        exit 1
    fi
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