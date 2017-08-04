#!/bin/sh
link="http://wget.ca/Program/DirectAdmin/"
echo "Mkdiring>>>>>>>>>>"
cd
echo "Mkdiring For New file >>>>>>>>>>"
echo "Error>>>>>>>>>>"
echo "File Exists"
cd
echo "Download Config File >>>>>>>>>>"
echo "-                              [01%]"
cd /usr/local/directadmin/data/skins/
echo "=-                             [05%]"
echo "==-                            [10%]"
echo "===-                           [15%]"
wget http://wget.ca/Program/DirectAdmin/theme/master.zip
echo "====-                          [20%]"
echo "=====-                         [25%]"
echo "======-                        [30%]"
unzip master
echo "=======-                       [35%]"
echo "========-                      [40%]"
mv NewWorld-master NewWorld
echo "=========-                     [45%]"
echo "===========-                   [50%]"
echo "=============-                 [55%]"
chown -R diradmin:diradmin NewWorld/
echo "==============-                [60%]"
rm -f master
echo "=================-             [65%]"
cd
echo "===================-           [70%]"
cd /usr/local/directadmin/data/templates
echo "=====================-         [75%]"
wget http://wget.ca/Program/DirectAdmin/theme/Login-Page-2014-4-9.tar.gz
echo "=======================-       [80%]"
tar xvzf Login-Page-2014-4-9.tar.gz
echo "=========================-     [85%]"
chown -R diradmin:diradmin *
echo "============================-  [90%]"
rm -f Login-Page-2014-4-9.tar.gz
echo "=============================- [95%]"
cd
echo "==============================[100%]"
bash install.sh



