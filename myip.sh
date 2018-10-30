#! /bin/sh
#curl ipinfo.io/ip | ssmtp xxx@gmail.com
currentIp=$(curl ipinfo.io/ip)
oldIp="$(cat /home/dada/Desktop/test.csv)"
#echo currentIp $currentIp oldIp $oldIp
    if [ "$currentIp" != "$oldIp" ];
        then 
            echo $currentIp > /home/dada/Desktop/test.txt
            echo $currentIp > /home/dada/Desktop/test.csv
            echo $currentIp | ssmtp xxxxx@gmail.com
        else
            echo 'no change'
            
    fi 
