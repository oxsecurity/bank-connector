#!/bin/bash

# SendGrid API token (for educational purposes only)
SENDGRID_TOKEN="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"

# Function to analyze SendGrid token
analyze_sendgrid_token() {
    local token="$1"
    # Split the token into parts
    IFS='.' read -r -a parts <<< "$token"
    
    echo "SendGrid Token Structure:"
    echo "1. Prefix (SG): ${parts[0]}"
    echo "2. API Key ID: ${parts[1]}"
    echo "3. API Key Secret: ${parts[2]}"
    echo
    
    echo "Token Analysis:"
    echo "- The 'SG' prefix indicates this is a SendGrid API token"
    echo "- The middle part is the API Key ID"
    echo "- The last part is the API Key Secret"
    echo "- This token follows SendGrid's v3 API token format"
}

# Main function
main() {
    echo "=== SendGrid Token Analysis ==="
    echo
    
    echo "Full Token: $SENDGRID_TOKEN"
    echo
    
    analyze_sendgrid_token "$SENDGRID_TOKEN"
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