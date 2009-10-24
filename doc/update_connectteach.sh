#! /bin/bash
echo "Stop the mongrel server before continuing"
echo ""
echo "The following files will be deleted by this script:"
ls soulflyer-ConnectTeach*.tar
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
echo "Now restart the server"
