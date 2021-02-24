ls -lrt
sh /Users/praneethchowdary/Downloads/apache-tomcat-8.5.63/bin/shutdown.sh
rm -rf /Users/praneethchowdary/Downloads/apache-tomcat-8.5.63/webapps/*.war
cp target/*.war /Users/praneethchowdary/Downloads/apache-tomcat-8.5.63/webapps
cd /Users/praneethchowdary/Downloads/apache-tomcat-8.5.63/bin
sh startup.sh
