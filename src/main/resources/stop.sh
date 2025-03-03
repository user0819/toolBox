#!/bin/sh
Appname=toolBox

if [ -z "$Appname" ];
then
echo -e "\033[0;31m 未输入应用名 \033[0m"
exit 1
fi

PID=`ps -ef |grep $Appname|grep -v grep|awk '{print $2}'`
function query()
{
PID=`ps -ef |grep $Appname|grep -v grep|awk '{print $2}'`
}

if [ x"$PID" != x"" ]; then
kill -9 $PID
echo "$Appname (pid:$PID) exiting..."
while [ x"$PID" != x"" ]
do
sleep 1
query
done 
echo "$Appname exited."
else
echo "$Appname already stopped."
fi
