#!/bin/bash

echo "Starting git operations for Collabthon platform..."

cd /Users/rohanmahendrashelar/Documents/gui

echo "Adding all files to git..."
git add .

echo "Checking git status..."
STATUS=$(git status --porcelain)
if [ -z "$STATUS" ]; then
    echo "No changes to commit. Repository is up to date."
else
    echo "Files to be committed:"
    echo "$STATUS"
    
    echo "Creating commit..."
    git commit -m "Complete Collabthon platform with backend and frontend
    
    - Complete backend with FastAPI, MySQL, authentication, and Google services
    - Full-featured frontend with responsive design and dark/light mode
    - Admin panel and user management system
    - Google OAuth and reCAPTCHA integration
    - Project listing with square card layout
    - Subscription plans and payment integration foundation
    - Comprehensive documentation and testing"
    
    echo "Setting upstream and pushing to GitHub..."
    git push -u origin main --force
    
    if [ $? -eq 0 ]; then
        echo "Successfully pushed Collabthon platform to GitHub!"
    else
        echo "Error occurred during git push"
        exit 1
    fi
fi