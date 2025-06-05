curl -Lo kops https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
chmod +x kops
sudo mv kops /usr/local/bin/kops
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
kops create cluster --name praveen.k8s.local --zones us-east-1a,us-east-1b,us-east-1c --master-count=1 --master-size t2.medium --master-volume-size 30 --node-count=2 --node-size t2.micro --node-volume-size 30 
