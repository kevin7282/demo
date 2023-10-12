#!/bin/sh
# Version 1

USER=`whoami`
if [ "$USER" != "root" ] ; then
   echo "ERROR: You have to be root to run this script, exiting"
   exit
fi

tweakversion=1.0
tweakfilepath=/root/demoApplied
hostname=`hostname`
uptimesince=`uptime -s`
uptimeepoch=`date --date "$uptimesince" +%s`
alias echo=/bin/echo

#echo $uptimesince
#echo $uptimeepoch

check_reboot () {
tweakfileepoch=`stat -c '%Y' $tweakfilepath`
#echo tweak file epoch is $tweakfileepoch

if [ $tweakfileepoch \> $uptimeepoch ];
then
    echo -e " $tweakfilepath is newer than last reboot time.\n Reboot is required for demo to take effect"|wall;
else
:
fi;
}

if test -f "$tweakfilepath"; then
    echo -n " $tweakfilepath found, version:"
    cat $tweakfilepath
    echo
        check_reboot
    exit
fi


backup_files () {
echo -e " backing up original files"
tar zcf $hostname-origfiles.tgz \
/opt/demo/conf/mysql/my.cnf.16gb \
/opt/demo/app2/demo-app-batch/classes/activemq.xml
/opt/demo/app/demoapp2/bin/create_db_snapshot.sh
}

apply_demo () {
echo -n "1.0" > $tweakfilepath


if ! grep -q "NumEmcpThreads" /opt/demo/vm/localvmconfig; then
    echo -e " NumEmcpThreads is missing!"
    echo -e " NumEmcpThreads=8" >> /opt/demo/vm/localvmconfig
else
    echo -e " setting emcp threads to 8 in localvmconfig"
    sed -i -e '/NumEmcpThreads/{cNumEmcpThreads=8' -e ';d}' /opt/demo/vm/localvmconfig
    echo -n " NumEmcpThreads="
    cat /opt/demo/vm/localvmconfig|grep NumEmcpThreads
	echo
fi

echo -e " increased tomcat timer to 2 minutes in ha_app.sh"
sed -i 's/VC2_APPS_FAILED_CTR -gt 5/VC2_APPS_FAILED_CTR -gt 20/g' /opt/demo/ha/bin/ha_app.sh

echo -e " fixing backups.sh script"
#cp -i -v backups.sh-replace /opt/demo/ha/bin/backups.sh

awk '{print} /APACHE_SERVICE=\"/ && !n {print "TOMCAT_SERVICE=\"/opt/demo/app/HunterPlatform/init/tomcat\""; n++}' /opt/demo/ha/bin/backups.sh > /tmp/backups.sh1.tmp

awk '{print} /\$APACHE_SERVICE stop/ && !n {print "\nsleep 30\nvlog3 \"restarting tomcat...\"\n$TOMCAT_SERVICE restart  > /dev/null 2>&1"; n++}' /tmp/backups.sh1.tmp > /tmp/backups.sh.tmp
cp -v /tmp/backups.sh.tmp /opt/demo/ha/bin/backups.sh
rm /tmp/backups*.tmp


echo -e " added exit to vmgcore"
sed -i '2 i exit' /opt/demo/ha/bin/vmgcore.sh

echo -e " checking for core files"
ls /opt/demo/data/demoManager

echo -e " removing any vmcore files"
rm -i /opt/demo/data/demoManager/vmcore.*

echo -e " update javaopts"
sed -i -e '/\JAVA_OPTS -Djgroups.bind_addr/{c  JAVA_OPTS="$JAVA_OPTS -Djgroups.bind_addr=127.0.0.1 -Djava.net.preferIPv4Stack=true -Djgroups.tcpping.initial_hosts=127.0.0.1[7811],127.0.0.1[7801],127.0.0.1[7802],127.0.0.1[7803],127.0.0.1[7804] -Dlog4j.configurationFile=$BATCH_BASE_DIR/classes/log4j.xml"' -e ';d}' /opt/demo/app/demoapp2/bin/demo-javaopts.sh

echo -e " current limits:"
cat /etc/security/limits.d/demo-app.conf
cp -iv demo-app.conf-replace /etc/security/limits.d/demo-app.conf

echo -e " commenting out reboot in drmgr.sh"
sed -i "s|/sbin/reboot|#/sbin/reboot|g" /opt/demo/ha/dr/drmgr.sh

echo -e " update the admin and super webpage titles"
/root/updateAdminAndSuperTitles.sh

echo -e " adding skip_ssl to mysql configs"
awk '{print} /\[mysqld\]/ && !n {print "skip_ssl"; n++}' /opt/demo/conf/mysql/my.cnf.template > /tmp/my.cnf.template.tmp
cp -v /tmp/my.cnf.template.tmp /opt/demo/conf/mysql/my.cnf.template
awk '{print} /\[mysqld\]/ && !n {print "skip_ssl"; n++}' /opt/demo/conf/mysql/my.cnf.16gb > /tmp/my.cnf.16gb.tmp
cp -v /tmp/my.cnf.16gb.tmp /opt/demo/conf/mysql/my.cnf.16gb
rm /tmp/my.cnf*.tmp


echo -e " adding epic tunings"
sed -i "s|\"maxTotalConnections\" value=\"111\"|\"maxTotalConnections\" value=\"1110\"|g" /opt/demo/app2/demo-app-batch/config/demo-app-tasks-service.xml
sed -i "s|\"defaultMaxConnectionsPerHost\" value=\"10\"|\"defaultMaxConnectionsPerHost\" value=\"511\"|g" /opt/demo/app2/demo-app-batch/config/demo-app-tasks-service.xml
sed -i "s|\"connectionTimeout\" value=\"211\"|\"connectionTimeout\" value=\"110\"|g" /opt/demo/app2/demo-app-batch/config/demo-app-tasks-service.xml
sed -i "s|\"readTimeout\" value=\"2110\"|\"readTimeout\" value=\"8110\"|g" /opt/demo/app2/demo-app-batch/config/demo-app-tasks-service.xml


echo -e " testing rc.local demo"
/etc/rc.local

}


backup_files

apply_demo

check_reboot

exit
