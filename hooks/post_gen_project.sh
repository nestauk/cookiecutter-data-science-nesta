#!/bin/bash 

# Create git repo
git init

# Setup empty master and dev
git checkout -b master
git commit --allow-empty -m "Initial commit."
git checkout -b dev

# Add cookiecutter on new branch
git checkout -b 0_setup_cookiecutter  # Issue numbers don't start at zero so this won't conflict
git add .
git commit -am "Setup Nesta Data Science cookiecutter"

# Setup git hooks
make git
