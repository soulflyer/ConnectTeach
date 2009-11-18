#! /bin/bash
echo "*****************************************"
echo "Stop the mongrel server before continuing"
echo "*****************************************"
echo ""
echo "The following files will be deleted by this script:"
ls soulflyer-ConnectTeach*
echo "Hit ctrl C now if this is a problem"
read -e INPUT
rm soulflyer-ConnectTeach*
wget http://github.com/soulflyer/ConnectTeach/tarball/master
gunzip soulflyer-ConnectTeach*.tar.gz
tar xvf soulflyer-ConnectTeach*.tar
rm soulflyer-ConnectTeach*.tar
rm -r ~/public_html/connectteach
cp soulflyer-ConnectTeach*/doc/update_connectteach.sh ~/
chmod a+x ~/update_connectteach.sh
mv soulflyer-ConnectTeach* ~/public_html/connectteach
echo "Now restarting the server"
/usr/local/bin/ruby /usr/local/bin/mongrel_rails start -p 12002 -d -e production -P log/mongrel.pid