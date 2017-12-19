apt-get update
apt-get -y install git
apt-get -y install apache2
sudo mkdir /vagrant/proyecto_freelancer
cd /vagrant/proyecto_freelancer
git clone https://gitlab.com/Alberola/freelancer-16-17
sudo rm -rf /var/www/html
sudo ln -s /vagrant/proyecto_freelancer/ /var/www/html

sudo a2dissite 000-default.conf

sudo rm -rf /etc/apache2/sites-available/

sudo ln -s /vagrant/config /etc/apache2/sites-available

sudo a2ensite sitio1

sudo /etc/init.d/apache2 restart
