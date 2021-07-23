# Install git 
yum install git-all

# Check git version
git --version

# Initialize Git
git init

# Configure Git
git config --global user.name "GitHub username"
git config --global user.email "GitHub email"
git config --list

# Check files status
git status

# Add files
git add <file name>
git add .

# commit files
git commit -m "commit note"

# check the logs
git log
git log --oneline
git show <commit ID>
git ls-files
