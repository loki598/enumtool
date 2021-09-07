#!/bin/sh

 
#simple tool to make your enum easy


echo " enumtool made by LegendLoki
#####  #     # ######  ####### ######  #     #    #    ####### ####### 
#     #  #   #  #     # #       #     # ##   ##   # #      #    #       
#         # #   #     # #       #     # # # # #  #   #     #    #       
#          #    ######  #####   ######  #  #  # #     #    #    #####   
#          #    #     # #       #   #   #     # #######    #    #       
#     #    #    #     # #       #    #  #     # #     #    #    #       
 #####     #    ######  ####### #     # #     # #     #    #    ####### 

"

echo "input the ip " "if you want to scan a https website please wait till this tool is fully developed";

read  ip

if [$ip=""]
then
 echo usage =192.168.1.1 "if you want to scan a https website please wait till the tool is fully developed";

else

dirb http://$ip | grep http

nikto -host http://$ip |  grep -v Nikto



nmap -sV --script=http-vuln-* $ip | grep -v Nmap | grep -v Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .


fi

