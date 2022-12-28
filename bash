#!/bin/bash

# Make the screenshots folder if it doesn't exist
mkdir -p ~/Desktop/screenshots

# Find all files on the desktop with names that start with "Screen Shot"
for file in ~/Desktop/Screen\ Shot*; do
  # Move each file to the screenshots folder
  mv "$file" ~/Desktop/screenshots
done
