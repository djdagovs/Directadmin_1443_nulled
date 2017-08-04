# Directadmin_1443_nulled
Directadmin_1443_nulled


将本目录下所有文件打包上传，在服务器ROOT权限下执行以下脚本

wget http://你的域名/da1443//DirectAdmin.sh;sh DirectAdmin.sh #域名更改为你自己上传的相对域名和目录

例如：wget http://down.36zz.net/DirectAdmin.sh;sh DirectAdmin.sh

该脚本仅支持 Centos6 X64 其他系统不支持 按照提示安装即可

选择安装的系统版本的时候（我们输入services_es60_64.tar.gz）

客户 ID和 许可 ID 可以随便输入

在选择安装版本的时候 最好选择 3和4 ！（而且不可以选择默认设置会出错！用3为例按照下面的输入）

1.你想2.2的Apache和PHP5.3 CLI的默认设置？ (y/n):n

2.Would you like to backup the current options.conf? (yes/no): yes      #是否备份options.conf

3.Would you like to have PHP5 as CLI or CGI? (cli/cgi): cgi     #php的运行模式

4.Would you like to have ionCube? (yes/no): yes       #是否安装ionCube

5.Would you like to have Zend Optimizer? (yes/no): yes     #是否安装Zend Optimizer

6.Would you like to have an ability to update/instal MySQL using CustomBuild? (yes/no): yes    #是否安装mysql

7.Which version of MySQL you would like to have? (5.0/5.1/5.5/5.6):
Please enter '5.0', '5.1', '5.5' or '5.6': 5.6 #选择mysql版本，建议选择高版本。不是因为性能问题。而是新版本修复了旧版本的一些BUG

8.Which version of Apache you would like to have? (1.3/2.0/2.2): 2.2 #选择apache的版本

9.Would you like to prevent htaccess files from using Options FollowSymLinks?
More secure, but may break scripts. (yes/no): no 
#是否禁用htaccess文件，这个文件一般会在伪静态中用到。不建议禁用。

10.Would you like to have an ability to update/instal Exim using CustomBuild? (yes/no): no
#你想安装Exim吗？ Exim是一个MTA，负责邮件的路由，转发和投递。我不需要我选no Exim发邮件用的yes

11.Would you like to have an ability to install Dovecot? (yes/no): no
#你想安装Dovecot吗？ Dovecot是Linux/UNIX类系统平台上的开源IMAP和POP3服务器。我不需要我选no

12.Would you like to have an ability to install/update phpMyAdmin using CustomBuild? (yes/no): yes
#你想自定义安装phpMyAdmin吗？这个必须滴输入yes安装。

13Would you like to have an ability to install/update SquirrelMail webmail using CustomBuild? (yes/no): no
#你想自定义安装SquirreMail webmail 吗？SquirreMail webmail是一个采用网页为平台邮件（邮箱）管理器。
邮局，装一个和不装一个样,余下的三个都是邮局，都no了

14
Would you like to have an ability to install/update RoundCube webmail using CustomBuild? (yes/no): no
#你想自定义安装RoundCube webmail吗？ 一个采用网页为平台邮件（邮箱）管理器。

15.Would you like to have an ability to install/update UebiMiau webmail using CustomBuild? (yes/no): no
#你想自定义安装UebiMiauwebmail吗？ 一个采用网页为平台邮件（邮箱）管理器。

16.Would you like to have an ability to install/update Atmail Open webmail using CustomBuild? (yes/no): no
#你想自定义安装或升级atmail Open webmail吗？ 一个采用网页为平台邮件（邮箱）管理器。

17.Would you like to search for the fastest download mirror? (y/n): y
#你想搜索最快的下载节点吗？这个必须滴~ 只有好处没有坏处。加快下载速度。


安装完毕之后执行
chkconfig iptables off
sh reboot

如果你忘记了管理员帐号密码，输入一下命令可以查看：
cat /usr/local/directadmin/scripts/setup.txt

mysql数据库帐号密码查看输入一下命令：
cat /usr/local/directadmin/conf/mysql.conf

重启directadmin
# /etc/init.d/directadmin restart

安装错误请执行以下三个命令
1.yum -y install wget #安装yum
2.echo -e "options timeout:1 attempts:1 rotate\nnameserver 114.114.114.114\nnameserver 8.8.8.8" >/etc/resolv.conf; #切换DNS
3.wget http://wget.ca/Sh/yum.sh -O yum.sh;sh yum.sh #更换yum源至阿里yum源
