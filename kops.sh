#vim .bashrc
#export PATH=$PATH:/usr/local/bin/
#source .bashrc


#! /bin/bash
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
wget https://github.com/kubernetes/kops/releases/download/v1.25.0/kops-linux-amd64
chmod +x kops-linux-amd64 kubectl
mv kubectl /usr/local/bin/kubectl
mv kops-linux-amd64 /usr/local/bin/kops

export KOPS_STATE_STORE=s3://praveen63.k8s
kops create cluster --name praveen.k8s.local --zones us-east-1a,us-east-1b,us-east-1c --master-count=1 --master-size t2.medium --master-volume-size 30 --node-count=2 --node-size t2.micro --node-volume-size 20 
kops update cluster --name praveen.k8s.local --yes --admin
