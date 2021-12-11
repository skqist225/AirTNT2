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

# TOMCAT 
cd /tmp
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.56/bin/apache-tomcat-9.0.56.tar.gz

tar -xf apache-tomcat-9.0.56.tar.gz
sudo mv apache-tomcat-9.0.56 /opt/tomcat/
sudo ln -s /opt/tomcat/apache-tomcat-9.0.56 /opt/tomcat/latest
sudo chown -R tomcat: /opt/tomcat
sudo sh -c 'chmod +x /opt/tomcat/latest/bin/*.sh'

rm -rf /etc/systemd/system/tomcat.service
cat <<EOT>> /etc/systemd/system/tomcat.service
[Unit]
Description=Tomcat 9 servlet container
After=network.target

[Service]
Type=forking
User=tomcat
Group=tomcat

Environment="JAVA_HOME=/usr/lib/jvm/jre"
Environment="JAVA_OPTS=-Djava.security.egd=file:///dev/urandom"

Environment="CATALINA_BASE=/opt/tomcat/latest"
Environment="CATALINA_HOME=/opt/tomcat/latest"
Environment="CATALINA_PID=/opt/tomcat/latest/temp/tomcat.pid"
Environment="CATALINA_OPTS=-Xms512M -Xmx1024M -server -XX:+UseParallelGC"

ExecStart=/opt/tomcat/latest/bin/startup.sh
ExecStop=/opt/tomcat/latest/bin/shutdown.sh

[Install]
WantedBy=multi-user.target
EOT

sudo systemctl daemon-reload
sudo systemctl start tomcat
sudo systemctl enable tomcat
sudo firewall-cmd --zone=public --permanent --add-port=8080/tcp
sudo firewall-cmd –reload

# MAVEN
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
rm -rf /opt/tomcat/latest/webapps/ROOT*
cp /tmp/AirTNT2/AirTNT/target/AirTNT-0.0.1-SNAPSHOT.war /opt/tomcat/latest/webapps/ROOT.war
systemctl start tomcat
sleep 10
cp /tmp/AirTNT2/AirTNT/src/main/resources/application.properties /opt/tomcat/latest/webapps/ROOT/WEB-INF/classes/application.properties
systemctl restart tomcat