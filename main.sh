#!/bin/bash

# GitHub token (for educational purposes only)
GITHUB_TOKEN="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"

PASSWORD="somekindofpassword_hKEJS86JEcrVa6Hn2dZK"

# Function to validate GitHub token format
validate_github_token() {
    local token="$1"
    # GitHub tokens typically start with 'ghp_' or 'github_pat_'
    if [[ "$token" =~ ^(ghp_|github_pat_).* ]]; then
        return 0
    else
        return 1
    fi
}

# Main function
main() {
    echo "=== GitHub Token Demo ==="
    echo
    
    echo "GitHub Token: $GITHUB_TOKEN"
    echo
    
    echo "Token Validation:"
    if validate_github_token "$GITHUB_TOKEN"; then
        echo "✅ Token format is valid"
    else
        echo "❌ Token format is invalid"
    fi
    
    echo
    echo "Note: This is a demonstration script. Never share or commit your actual GitHub tokens."

    echo "Password is: $PASSWORD"
}

# Run main function
main 
