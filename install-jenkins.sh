#/bib/bash

#first we need to update yum

sudo yum update -y

#Need to install java before we install jenkins

curl -LO https://corretto.aws/downloads/latest/amazon-corretto-11-x64-linux-jdk.tar.gz

mkdir /usr/java/

tar -xvzf amazon-corretto-11-x64-linux-jdk.tar.gz -C /usr/java/

cd /usr/java/

# we need to get the jenkins package

curl -OL https://get.jenkins.io/war/2.417/jenkins.war

java -jar jenkins.war 

sudo yum install jenkins -y

# we should enable the jenkis

sudo  systemctl start jenkins 
sudo systemctl enable jenkins

# Wait for Jenkins to start
echo "Waiting for Jenkins to start..."
sleep 10

exit
