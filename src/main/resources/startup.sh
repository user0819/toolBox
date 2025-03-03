#!/bin/sh
Appname=toolBox

if [ -z "$Appname" ];
then
echo -e "\033[0;31m 未输入应用名 \033[0m"
exit 1
fi

PID=`ps -ef |grep $Appname|grep -v grep|awk '{print $2}'`
if [ x"$PID" != x"" ]; then
echo "$Appname is running..."
else
nohup java -jar -Xms256m -Xmx256m -Xmn256m -Xss1024K -XX:PermSize=128m toolBox-1.0.0.jar >/dev/null 2>&1 &
		echo "Start $Appname success..."
fi 
