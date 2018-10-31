! /bin/sh
#to run as a cron script save to /etc/cron.hourly(weekly etc..set correct email
currentIp=$(curl ipinfo.io/ip)
oldIp="$(tail /home/dada/Programming/myip/currentIp.csv)"
#echo currentIp $currentIp oldIp $oldIp
    if [ "$currentIp" != "$oldIp" ];
        then 
            echo $currentIp > /home/dada/Programming/myip/currentIp.csv
            echo "$currentIp,$(date)" >> /home/dada/Programming/myip/historyIp.csv
            printf "Subject: ADDRESS CHANGE\n\n $currentIp" | ssmtp xxxx@gmail.com
        else
            echo 'no change'
            
    fi 
