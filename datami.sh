#!/bin/bash
#Importando Local do path
source path.txt &> /dev/null

DIR1=/data/data/com.termux/files/usr/bin/
FILE1=datami
DIR=/data/app/tv.ip.edusp-1/
DIR3=$path
FILE=base.apk
FILE2=path.txt

path5 ()
{
if [ -e "$FILE2" ] ; then
menu 
else
echo -e -e "┏━━━━[INFORME ONDE ESTA O ARQUIVO]"
echo -e -e "┃"
echo -e -ne "┗━━➤ "
        read -r path
echo "path="$path" " >> path.txt
clear
fi
}

if [ -e "$DIR3" ] ; then
menu
else
path5
fi

menu ()
{
clear
if [ -e "$DIR$FILE" ] ; then
am start -a android.intent.action.DELETE -d package:tv.ip.edusp &> /dev/null
sleep 3
am start -a android.intent.action.INSTALL_PACKAGE -d file://$path &> /dev/null
sleep 3
am start --user 0 -n tv.ip.edusp/mod.datami.problems.SplashActivity &> /dev/null
sleep 3
exit
exit
else
clear
am start -a android.intent.action.INSTALL_PACKAGE -d file://$path &> /dev/null
sleep 5
am start --user 0 -n tv.ip.edusp/mod.datami.problems.SplashActivity &> /dev/null
exit
fi
}





menu




