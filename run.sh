#!/usr/bin/env bash

# Generate random text (8 random alphanumeric characters)
# Using a more portable method that works across different systems
RANDOM_TEXT=$(LC_ALL=C tr -dc 'a-zA-Z0-9' < /dev/urandom | head -c 8)

# Append the random text to random.txt
echo "$RANDOM_TEXT" >> random.txt

# Add all files to git staging
git add .

# Commit with the specified message
git commit -m "chore: add random text '$RANDOM_TEXT' to random.txt file"

# Push to remote
git push

echo "Successfully added random text '$RANDOM_TEXT' to random.txt and pushed to origin main"
