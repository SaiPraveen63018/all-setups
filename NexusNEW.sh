sudo yum install java-17-amazon-corretto -y
cd /opt/
wget https://download.sonatype.com/nexus/3/nexus-3.79.1-04-linux-x86_64.tar.gz
tar -zxvf nexus-3.79.1-04-linux-x86_64.tar.gz
useradd nexus
chown -R nexus:nexus nexus-3.79.1-04 sonatype-work
cd nexus-3.79.1-04/bin/
sudo echo "run_as_user="nexus"" > /opt/nexus-3.79.1-04/bin/
su - nexus
cd /opt/
cd nexus-3.79.1-04/bin/
./nexus start
