mkdir -p /node/logs

cd /node

sudo apt update 
sudo apt install supervisor
sudo apt install git openjdk-8-jdk -y
wget https://raw.githubusercontent.com/liangxq777/node/refs/heads/main/main_net_config.conf
wget https://github.com/tronprotocol/java-tron/releases/download/GreatVoyage-v4.7.6/FullNode.jar
wget https://github.com/tronprotocol/java-tron/releases/download/GreatVoyage-v4.7.6/Toolkit.jar
wget https://raw.githubusercontent.com/liangxq777/node/refs/heads/main/tron_daemon.conf

mv tron_daemon.conf /etc/supervisor/conf.d/

sudo supervisorctl reread & sudo supervisorctl update
