sudo yum update -y
sudo amazon-linux-extras install java-openjdk11 -y
sudo dnf install java-17-amazon-corretto -y
java -version
# Add the Jenkins repo
sudo tee /etc/yum.repos.d/jenkins.repo > /dev/null <<EOF
[jenkins]
name=Jenkins-stable
baseurl=https://pkg.jenkins.io/redhat-stable
gpgcheck=1
gpgkey=https://pkg.jenkins.io/redhat-stable/jenkins.io.key
EOF

# Import the GPG key
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
# Install Jenkins
sudo dnf install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
git clone https://github.com/Harsha1409-githu/my-sample-repo.git
sudo dnf install git -y
git --version
git clone https://github.com/Harsha1409-githu/my-sample-repo.git
cd my-sample-repo
echo "# My Sample Repo" > README.md
git add README.md
git commit -m "Initial commit with README"
git push origin main
git add README.md
git commit -m "Initial commit with README"
git push origin main
[main (root-commit) 5e66310] Initial commit with README
 Committer: EC2 Default User <ec2-user@ip-172-31-3-221.ec2.internal>
exit
jenkins-plugin-cli --plugins git:5.7.0
