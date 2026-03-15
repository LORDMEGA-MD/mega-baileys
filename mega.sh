#!/bin/bash

echo "===== MEGA BAILEYS UPLOADER ====="

cd /home/container || exit

echo "Extracting archive..."
tar -xzf mega-baileys.tar.gz

echo "Initializing git..."
git init

echo "Setting git identity..."
git config --global user.name "LORDMEGA-MD"
git config --global user.email "LORDMEGA-MD@users.noreply.github.com"

echo "Adding remote repository..."
git remote remove origin 2>/dev/null
git remote add origin https://github.com/LORDMEGA-MD/mega-baileys.git

echo "Adding all files (including node_modules)..."
git add -A

echo "Committing files..."
git commit -m "Upload mega-baileys full source"

echo "Setting main branch..."
git branch -M main

echo "Now enter your GitHub token when prompted."

git push https://LORDMEGA-MD@github.com/LORDMEGA-MD/mega-baileys.git main --force

echo "Upload finished!"