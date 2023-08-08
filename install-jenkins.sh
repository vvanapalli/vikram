#/bib/bash

#first we need to update yum

sudo yum update -y

#Need to install java before we install jenkins

sudo yum install java-1.8.0-amazon-corretto

sudo yum install java-1.8.0-amazon-corretto-devel

# we need to get the jenkins package

sudo wget -O /etc/yum.repos.d/jenkins.repo

sudo rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key

sudo yum install jenkins -y

# we should enable the jenkis

sudo  systemctl start jenkins 
sudo systemctl enable jenkins

# Wait for Jenkins to start
echo "Waiting for Jenkins to start..."
sleep 10

exit
