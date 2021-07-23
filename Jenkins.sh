# Download Jenkins
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Install Jenkins
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

# upgrade the cach
yum upgrade

# install java
yum install jenkins java-1.8.0-openjdk-devel -y

# Enabel, start, and check Jenkins service
systemctl daemon-reload
systemctl start jenkins
systemctl status jenkins

# Access Jenkins
http://<IP>:8080

# Git the password
cat /var/lib/jenkins/secrets/initialAdminPassword

# Setup Jenkins
Manage Jenkins
Manage Plugins
Available
GitHub Integration Plugin
Restart Jenkins

# Create a freestyle job
New Item
Freestyle project
GitHub project:
Project url >> 
Git:
Repo url >> 
GitHub hook trigger for GITScm poling

Setup your GitHub Repo
Settings
Webhooks
Payload URL >> /github-webhook/
Content type >> Application/json
