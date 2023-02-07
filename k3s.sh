!#bin/bash
sudo apt update && sudo apt upgrade -y
curl -sfL https://get.k3s.io | sh -
sleep 60s
sudo k3s kubectl get nod