#!/bin/sh
sudo apt-get update
sudo apt-get -y install python3-pip git curl vim
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple py-solc-x web3

# 这个命令一定要在有网的环境里执行
python3 -c 'import solcx; solcx.install_solc("0.6.12")'


# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin







git clone https://github.com/chainflag/solidity-ctf-template
cd solidity-ctf-template
sudo docker compose pull
sudo docker compose up -d
# 到这里之后就可以运行deploy.py本地测试部署合约了。
