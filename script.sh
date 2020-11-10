export DEBIAN_FRONTEND=noninteractive
sudo apt update && sudo apt install --no-install-recommends nginx \
    php \
    php-cli \
    php-fpm \
    php-json \
    php-mysql \
    php-zip \
    php-mbstring \
    php-curl \
    php-xml \
    php-bcmath \
    mysql-server \
    composer  \
    net-tools -y    

sudo mysql -u root -e "SELECT user,authentication_string,plugin,host FROM mysql.user;"
sudo mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password'; FLUSH PRIVILEGES;"