#! /bin/bash
#Launch an instance with 9000 and t2.medium
cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.6.50800.zip
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.9.8.100196.zip

unzip sonarqube-8.9.6.50800.zip
sudo yum install java-17-amazon-corretto -y
useradd sonar
chown -R sonar:sonar sonarqube-8.9.6.50800 
chmod 777 -R sonarqube-8.9.6.50800
su - sonar
cd /opt/sonarqube-8.9.6.50800
cd /bin/linux-x86-64
./sonar.sh start
