#!/bin/sh
#Just add the ips oh your linux boxes you would like to check ssh telnet 
# Make as many as you want :
#By shachar@hotmail.com
#Edit <hostname or ip>
#Edit <EMAIL>
#Edot <Name> for description on what is tested

echo "Starting telneting <Name> & <Name> servers for ssh"

nc -z -w5 <HOSTNAME OR IP> 22 command>>file.tmp
nc -z -w5 <HOSTNAME OR IP> 22 command>>file.tmp
nc -z -w5 <HOSTNAME OR IP> 22 command>>file.tmp
nc -z -w5 <HOSTNAME OR IP> 22 command>>file.tmp
nc -z -w5 <HOSTNAME OR IP> 22 command>>file.tmp
nc -z -w5 <HOSTNAME OR IP> 22 command>>file.tmp



echo "Generating reports"
if [ -s file.tmp ]
then
mailx -s "<Name> & <Name> - Testing Telnet  5 Sec Timeout - Total 19 Servers " <EMAIL>  <file.tmp
fi
rm file.tmp
echo "Done, sent report."


~
~
