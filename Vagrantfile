Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-20.04"
  config.vm.provision "shell", path: "./script.sh"
  config.vm.network "private_network", ip: "172.16.0.12"
  
  config.vm.provision "file", source: "./default", destination: "/tmp/default"
  config.vm.provision "shell", inline: "mv /tmp/default /etc/nginx/sites-available/default"

  config.vm.provision "file", source: "./index.php", destination: "/tmp/index.php"
  config.vm.provision "shell", inline: "mv /tmp/index.php /var/www/html/index.php"
end
