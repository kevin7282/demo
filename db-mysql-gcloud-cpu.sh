#!/bin/bash
host=127.0.0.1
passwd=strongpassword
db=pdns
user=pdns
# mysql -h 127.0.0.1 -u pdns -P 3307 -p
sqlin="mysql -u $user -p$passwd -h $host -P 3307 $db"

get_hosts () {
        $sqlin -N -B -e "select id, name, SUBSTRING_INDEX(name,'.',1) from records where inet_aton() and name not like '%my.sample.com'"
}

get_hosts > jumpbox-hosts-fromPDNS

## gcp get powerdns records
#!/bin/bash
array=(
eu.demo.com
meet001.demo.com
my.demo.com
web.com
web.io
demo.com
demodev.com
demostaging.com
demo.com
webdev.io
webstaging.io
)

#for project in webproduction webstaging webopsdev webgeneral websandbox webqa-191718 webrnd-dev
cat /dev/null > websql
for project in webproduction webstaging webopsdev webgeneral
do
    gcloud compute instances list --project $project --format='csv(INTERNAL_IP, NAME, Labels.domain)'  | awk -F, 'gsub("-",".",$3)' OFS=, > $project
    sleep 2
    # delete the header
    sed -i '1d' $project
    # delete s4b and my multiple interfaces
    sed -i '/gcp-s4b-edge1/d' $project
    sed -i '/my/d' $project
    sed -i '/\"/d' $project
    # sed -i 's/-/./g'

    # form insert database lines
    awk -F, '$3!=""{print "INSERT INTO records (domain_id,name,type,content) VALUES (domain_id_value,""'\''" $2"."$3 "'\''", ",\047A\047,""'\''" $1 "'\''" ", 3600, 0);"}'  $project >> websql
    #awk -F, '{print "INSERT INTO records (domain_id,name,type,content) VALUES (domain_id_value,""'\''" $2 "'\''", ",\047A\047,""'\''" $1 "'\''" ", 3600, 0);"}' $project >> $project

done

for domain in "${array[@]}"
do
    grep $domain websql > ./hostsnow/$domain-sql
    echo "INSERT INTO records (domain_id,name,type,content) VALUES (domain_id_value, '$domain', 'SOA', 'a.misconfigured.powerdns.server hostmaster.$domain 1 2800 3600 604800 3600', '3600', '0');" >> ./hostsnow/$domain-sql  
    echo "INSERT INTO domainmetadata (domain_id, kind, ) VALUES (domain_id_value, 'SOA-EDIT-API', 'DEFAULT');" >> ./hostsnow/$domain-sql
    # remove the domains after insert to keep unique record
    grep -F -v $domain websql > websql.tmp && mv websql.tmp websql
    sleep 1
    ##sed -i '/$domain/d' websql
    echo "Generated records for $domain"
done

    # Special treat for s4b
    cat <<EOF > s4b
INSERT INTO records (domain_id,name,type,content) VALUES (domain_id_value, 'gcp-s4b-edge1.demo.com', 'A', '2.160.0.12', 3600, 0);
INSERT INTO records (domain_id,name,type,content) VALUES (domain_id_value, 'gcp-s4b-edge1.demo.com', 'A', '2.160.16.9', 3600, 0);
EOF
    cat s4b >> ./hostsnow/demo.com-sql

    # handle tata 3 interfaces
    echo "Special treat for tata"
    cat <<EOF > tata
INSERT INTO records (domain_id,name,type,content) VALUES (domain_id_value, 'demo001-api.gcp.com', 'A', '2.169.32.122', 3600, 0);
INSERT INTO records (domain_id,name,type,content) VALUES (domain_id_value, 'demo001-api.gcp.com', 'A', '2.169.40.4', 3600, 0);
INSERT INTO records (domain_id,name,type,content) VALUES (domain_id_value, 'demo001-api.gcp.com', 'A', '2.169.44.4', 3600, 0);
INSERT INTO records (domain_id,name,type,content) VALUES (domain_id_value, 'my.demo.com', 'SOA', 'a.misconfigured.powerdns.server hostmaster.my.demo.com 1 2800 3600 604800 3600', '3600', '0');
INSERT INTO domainmetadata (domain_id, kind, ) VALUES (domain_id_value, 'SOA-EDIT-API', 'DEFAULT');
EOF
    cat tata > ./hostsnow/demo.com-sql
# replaced with usc-replay
sed -i 's/usc.replay/usc-replay/g' ./hostsnow/usc.replay.demo.com-sql

scp hostsnow/*-sql 2.191.64.2:/home/kxue/hosts
# Then run it on pdns server pdns-sql.sh

## deploy with shell script
#!/bin/bash

PR=`basename $0`
USAGE="Usage: ${PR} [ -e server name ] [ -f file name] [ -v version] "

while getopts e:E:f:F:v:V: c
do
    case $c in
        e | E) SERVER=$OPTARG
        	echo "Server: ${SERVER}"
        	;;
        f | F) FILENAME=$OPTARG
        	echo "File name: ${FILENAME}"
        	;;
        v | V) VERSION=$OPTARG
        	echo "Version: ${VERSION}"
        	;;   
        \?) echo "${USAGE}"
            exit 1;;
    esac
done
DEPLOY_BASE_DIR=`pwd`
RELEASE_VERSION=cmproject_${VERSION}
PACKAGe=${DEPLOY_BASE_DIR}/$RELEASE_VERSION

echo "Server: ${SERVER}"
echo "File name: ${FILENAME}"
echo "Version: ${VERSION}"

## package name, the tar file
PKG_NAME=${FILENAME}

# check the package file
if [[ ! -e "$DEPLOY_BASE_DIR/${PKG_NAME}" ]];
then
    echo "`date`: No package file"
    exit 1
fi

## make sure the archive directory exists
if [ ! -d $DEPLOY_BASE_DIR/archive ];
then
    mkdir $DEPLOY_BASE_DIR/archive
fi

# If the same version exists, archive the existing package folder, then re-deploy it again
if [ -d $PACKAGe ];
then
    cd ${DEPLOY_BASE_DIR}
    tar -cvf ${DEPLOY_BASE_DIR}/archive/${RELEASE_VERSION}_`date +"%Y%m%d%H%M%S"`.tz ${DEPLOY_BASE_DIR}/${RELEASE_VERSION}
    \rm -r ${DEPLOY_BASE_DIR}/${RELEASE_VERSION}
    echo "`date`: archived ${RELEASE_VERSION}"
else
    mkdir ${PACKAGe}
fi

# Send cpu usage to email
#!/bin/bash
cpuuse=$(cat /proc/loadavg | awk '{print $1}')

if [ "$cpuuse" > 80 ]; then
SUBJECT="ATTENTION: CPU Load Is High on $(hostname) at $(date)"
MESSAGE="/tmp/Mail.out"
TO="demo@gmail.com"

  echo "CPU Current Usage is: $cpuuse%" >> $MESSAGE
  echo "" >> $MESSAGE
  echo "+------------------------------------------------------------------+" >> $MESSAGE
  echo "Top CPU Process Using top command" >> $MESSAGE
  echo "+------------------------------------------------------------------+" >> $MESSAGE
  echo "$(top -bn1 | head -20)" >> $MESSAGE
  echo "" >> $MESSAGE
  echo "+------------------------------------------------------------------+" >> $MESSAGE
  echo "Top CPU Process Using ps command" >> $MESSAGE
  echo "+------------------------------------------------------------------+" >> $MESSAGE
  echo "$(ps -eo pcpu,pid,user,args | sort -k 1 -r | head -10)" >> $MESSAGE
  mail -s "$SUBJECT" "$TO" < $MESSAGE
  rm /tmp/Mail.out
  fi
## find sed
Test pls > /dev/null 2>&1
grep -rni 
find . -name *.go | xargs sed '/s/docker/dogecker/g'
find . -name *.go | xargs sed -i .bak '/s/docker/dogecker/g'
git clearn -xf
ag 


find /etc/nginx -name '*.conf' | xargs grep -i log

for domain in "${array[@]}"

if [[ "$STR" == *"$domain"* ]]; then
  echo "It's there."
fi
do
    echo $domain
    if [[ $domain == 'demo.io' ]]; then
    echo 'You are demo.io'
    else
    echo 'You are...OK'
    fi
done
