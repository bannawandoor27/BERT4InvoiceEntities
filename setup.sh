#!/bin/bash

# Define project name
PROJECT_NAME="BERT4InvoiceEntities"

# Assume current directory is the project base
echo "Setting up project structure in the current directory as $PROJECT_NAME..."

# Create directory structure
mkdir -p data/{raw,processed} notebooks src/{data,models,utils} tests

# Create initial files
touch .gitignore
touch requirements.txt
touch LICENSE
echo "# $PROJECT_NAME" > README.md
echo "__init__.py placeholder" > src/__init__.py
echo "__init__.py placeholder" > src/data/__init__.py
echo "__init__.py placeholder" > src/models/__init__.py
echo "__init__.py placeholder" > src/utils/__init__.py
echo "__init__.py placeholder" > tests/__init__.py
touch src/data/preprocess.py
touch src/models/train_model.py
touch src/models/predict_model.py
touch src/utils/utilities.py
touch tests/test_preprocess.py
echo "python-version placeholder" > .python-version
echo "Dockerfile placeholder" > Dockerfile
echo "config.ini placeholder" > config.ini

# Set permissions to allow all users to read, write, and execute
chmod -R 777 ./*

# Create a basic .gitignore file
cat <<EOF > .gitignore
__pycache__/
*.pyc
*.pyo
*.pyd
.Python
build/
develop-eggs/
dist/
downloads/
eggs/
.eggs/
lib/
lib64/
parts/
sdist/
var/
wheels/
pip-wheel-metadata/
share/python-wheels/
*.egg-info/
.installed.cfg
*.egg
MANIFEST
*.sqlite

# Jupyter Notebook
.ipynb_checkpoints

# Environments
.env
.venv
env/
venv/
ENV/
env.bak/
venv.bak/

# Spyder project settings
.spyderproject
.spyproject

# PyCharm
.idea/
*.iws
*.iml
*.ipr

# VS Code
.vscode/
EOF

# Inform user of completion
echo "Project setup completed successfully in the current directory."
