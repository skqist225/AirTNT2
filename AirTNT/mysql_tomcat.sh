#!/bin/bash
DATABASE_PASS='123456'
sudo yum update -y
sudo yum install epel-release -y
sudo yum install git zip unzip -y
sudo yum install mariadb-server -y

# starting & enabling mariadb-server
sudo systemctl start mariadb
sudo systemctl enable mariadb
cd /tmp/
git clone https://github.com/skqist225/AirTNT2.git
#restore the dump file for the application
sudo mysqladmin -u root password "$DATABASE_PASS"
sudo mysql -u root -p"$DATABASE_PASS" -e "UPDATE mysql.user SET Password=PASSWORD('$DATABASE_PASS') WHERE User='root'"
sudo mysql -u root -p"$DATABASE_PASS" -e "DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1')"
sudo mysql -u root -p"$DATABASE_PASS" -e "DELETE FROM mysql.user WHERE User=''"
sudo mysql -u root -p"$DATABASE_PASS" -e "DELETE FROM mysql.db WHERE Db='test' OR Db='test\_%'"
sudo mysql -u root -p"$DATABASE_PASS" -e "FLUSH PRIVILEGES"
sudo mysql -u root -p"$DATABASE_PASS" -e "create database airtnt"
sudo mysql -u root -p"$DATABASE_PASS" -e "grant all privileges on airtnt.* TO 'root'@'localhost' identified by '123456'"
sudo mysql -u root -p"$DATABASE_PASS" -e "grant all privileges on airtnt.* TO 'root'@'%' identified by '123456'"
sudo mysql -u root -p"$DATABASE_PASS" airtnt < /tmp/AirTNT2/AirTNT/airtnt.sql
sudo mysql -u root -p"$DATABASE_PASS" -e "FLUSH PRIVILEGES"

# Restart mariadb-server
sudo systemctl restart mariadb

#starting the firewall and allowing the mariadb to access from port no. 3306
sudo systemctl start firewalld
sudo systemctl enable firewalld
sudo firewall-cmd --get-active-zones
sudo firewall-cmd --zone=public --add-port=3306/tcp --permanent
sudo firewall-cmd --reload
sudo systemctl restart mariadb

TOMURL="http://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz"
sudo -i
yum install java-1.8.0-openjdk -y
yum install git wget -y
cd /tmp/
wget $TOMURL -O tomcatbin.tar.gz
EXTOUT=`tar xzvf tomcatbin.tar.gz`
TOMDIR=`echo $EXTOUT | cut -d '/' -f1`
useradd --shell /sbin/nologin tomcat
rsync -avzh /tmp/$TOMDIR/ /usr/local/tomcat8/
chown -R tomcat.tomcat /usr/local/tomcat8

rm -rf /etc/systemd/system/tomcat.service

cat <<EOT>> /etc/systemd/system/tomcat.service
[Unit]
Description=Tomcat
After=network.target

[Service]
User=tomcat
Group=tomcat
WorkingDirectory=/usr/local/tomcat8

Environment=JRE_HOME=/usr/lib/jvm/jre
Environment=JAVA_HOME=/usr/lib/jvm/jre
Environment=CATALINA_PID=/var/tomcat/%i/run/tomcat.pid
Environment=CATALINA_HOME=/usr/local/tomcat8
Environment=CATALINE_BASE=/usr/local/tomcat8

ExecStart=/usr/local/tomcat8/bin/catalina.sh run
ExecStop=/usr/local/tomcat8/bin/shutdown.sh

RestartSec=10
Restart=always

[Install]
WantedBy=multi-user.target
EOT

wget https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz -P /tmp
sudo tar xf /tmp/apache-maven-3.6.3-bin.tar.gz -C /opt
sudo ln -s /opt/apache-maven-3.6.3 /opt/maven
sudo yum install nano telnet
cat <<EOT>> /etc/profile.d/maven.sh
    export M2_HOME=/opt/maven
    export MAVEN_HOME=/opt/maven
    export PATH=${M2_HOME}/bin:${PATH}
EOT
sudo chmod +x /etc/profile.d/maven.sh
source /etc/profile.d/maven.sh

systemctl daemon-reload
systemctl start tomcat
systemctl enable tomcat

cd /tmp/AirTNT2/AirTNT/
mvn install
systemctl stop tomcat
sleep 30
rm -rf /opt/tomcat/apache-tomcat-9.0.56/webapps/ROOT*
cp /tmp/AirTNT2/AirTNT/target/AirTNT-0.0.1-SNAPSHOT.war /opt/tomcat/apache-tomcat-9.0.56/webapps/ROOT.war
systemctl start tomcat
sleep 30
cp /tmp/AirTNT2/AirTNT/src/main/resources/application.properties /opt/tomcat/apache-tomcat-9.0.56/webapps/ROOT/WEB-INF/classes/application.properties
systemctl restart tomcat