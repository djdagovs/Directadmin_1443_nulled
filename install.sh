﻿#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
clear;
cd /root
rm -f /root/GG
echo "Loading...."
clear
echo "+-----------------------------------------------------------------------+"
echo "|                        DirectAdmin1.44.3破解版                        |"
echo "+-----------------------------------------------------------------------+"
echo "|              DirectAdmin破解版一键安装脚本+皮肤安装脚本               |"
echo "|                    VPS评审 VPSPS.COM 交流群 5491951。                 |"
echo "|             请低调使用，切勿做出违背DA利益的行为，脚本只供测试。      |"
echo "+-----------------------------------------------------------------------+"
echo "|                            请依次输入 1.2.3                           |"
echo "+-----------------------------------------------------------------------+"
echo -n -e "请输入[\033[34m VPSPS.COM\033[0m ]：" 
read PASSWD
readkey=$PASSWD
if [[ ${readkey%%\ *} == VPSPS.COM ]]
then
   echo 验证成功,记住官网哦!
   sleep 0.7
   else
   echo **，看着都输入不对 你说你？
   exit 0;
fi
clear
echo "+-----------------------------------------------------------------------+"
echo "|                        DirectAdmin1.44.3破解版                        |"
echo "+-----------------------------------------------------------------------+"
echo "|              DirectAdmin破解版一键安装脚本+皮肤安装脚本               |"
echo "|                    VPS评审 VPSPS.COM 交流群 5491951。                 |"
echo "|             请低调使用，切勿做出违背DA利益的行为，脚本只供测试。      |"
echo "+-----------------------------------------------------------------------+"
echo "|                            请依次输入 1.2.3                           |"
echo "+-----------------------------------------------------------------------+"
echo "1.  安装依赖库"
echo "2.  执行配置脚本"
echo "3.  执行安装脚本"
echo "4.  安装NewWorld模板"
read no
case "$no" in
    '1' )
        yum install openssl098e glibc.i686 libstdc++.i686 -y;yum install gcc;ln -s /usr/lib/libssl.so /usr/lib/libssl.so.6;ln -s /usr/lib/libcrypto.so /usr/lib/libcrypto.so.6;yum install wget gcc gcc-c++ flex bison make bind bind-libs bind-utils openssl openssl-devel perl quota libaio libcom_err-devel libcurl-devel gd zlib-devel zip unzip libcap-devel cronie bzip2 db4-devel cyrus-sasl-devel perl-ExtUtils-Embed autoconf automake libtool which -y;sh install.sh ;;
	'2' )
        chmod 755 update_source.sh;./update_source.sh;sh install.sh ;;
	'3' )
        chmod 755 install_DirectAdmin.sh;./install_DirectAdmin.sh 2>&1|tee directadmin_install.log ;;
	'4' )
        wget http://wget.ca/Program/DirectAdmin/theme.sh;sh theme.sh ;;
    *)
        echo "输入错误"

esac
