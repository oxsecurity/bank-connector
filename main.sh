#!/bin/bash

# JWT token (for educational purposes only)
JWT_TOKEN="eyJhbGciOiJIUzI1NiJ9.eyJSb2xlIjoiQWRtaW4iLCJJc3N1ZXIiOiJJc3N1ZXIiLCJVc2VybmFtZSI6Ik9YIiwiZXhwIjoxNzc3MDMxNjUzLCJpYXQiOjE3NDU0OTU2NTN9.MyDNCUpKOSF2eUql3VvsPhmLjLWX8QHOaqvncKv4UrU"

# Function to decode JWT token
decode_jwt() {
    local token="$1"
    # Split the token into parts
    IFS='.' read -r -a parts <<< "$token"
    
    # Decode the payload (second part)
    echo "${parts[1]}" | base64 -d 2>/dev/null
}

# Main function
main() {
    echo "=== JWT Token Demo ==="
    echo
    
    echo "JWT Token: $JWT_TOKEN"
    echo
    
    echo "Decoded Payload:"
    decode_jwt "$JWT_TOKEN" | jq .
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