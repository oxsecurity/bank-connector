# GitHub Token Validation Script

A simple bash script to demonstrate GitHub token format validation.

## Overview

This script provides a basic demonstration of GitHub token format validation. It checks if a token follows the standard GitHub token format (starting with 'ghp_' or 'github_pat_').

## Features

- Validates GitHub token format
- Provides clear visual feedback on token validity
- Demonstrates basic token handling best practices

## Usage

1. Make the script executable:
   ```bash
   chmod +x connector/main.sh
   ```

2. Run the script:
   ```bash
   ./connector/main.sh
   ```

## Security Note

⚠️ **IMPORTANT**: This script is for educational purposes only. In production environments:

- Never store GitHub tokens in scripts or version control
- Use environment variables or secure secret management systems
- Follow GitHub's security best practices for token management
- Rotate tokens regularly
- Use the principle of least privilege when creating tokens

## Requirements

- Bash shell
- No additional dependencies required

## License

This project is for educational purposes only. 