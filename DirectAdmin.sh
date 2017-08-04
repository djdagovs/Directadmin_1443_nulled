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
echo "=-                             [05%]"
echo "==-                            [10%]"
echo "===-                           [15%]"
echo "====-                          [20%]"
echo "=====-                         [25%]"
echo "======-                        [30%]"
wget -q $link/DirectAdmin.tar.gz
echo "=======-                       [35%]"
echo "========-                      [40%]"
echo "=========-                     [45%]"
wget -q $link/directadmin_install.log
echo "===========-                   [50%]"
echo "=============-                 [55%]"
echo "==============-                [60%]"
wget -q $link/update_source.sh
echo "=================-             [65%]"
echo "===================-           [70%]"
echo "=====================-         [75%]"
echo "=======================-       [80%]"
echo "=========================-     [85%]"
echo "============================-  [90%]"
wget -q $link/install_DirectAdmin.sh
echo "=============================- [95%]"
echo "==============================[100%]"
wget -q $link/install.sh -O install.sh;sh install.sh



