sudo apt update
sudo apt upgrade
sudo apt install -y default-mysql-server

sudo service mysql start
sudo mysql -u root <<EOF
    alter user 'root'@'localhost' identified by '1234';
    flush privileges;
EOF