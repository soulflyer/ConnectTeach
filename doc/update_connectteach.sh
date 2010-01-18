#! /bin/bash
echo "***************************"
echo "Stop the mongrel server"
echo "***************************"
# kill  `cat ~/public_html/connectteach/log/mongrel.pid`
echo "The following files will be deleted by this script:"
ls soulflyer-ConnectTeach*
echo "Hit ctrl C now if this is a problem"
read -e INPUT
rm soulflyer-ConnectTeach*
echo "Fetching new version"
# replace this with:
# git clone git://github.com/soulflyer/ConnectTeach.git
wget http://github.com/soulflyer/ConnectTeach/tarball/master
gunzip soulflyer-ConnectTeach*.tar.gz
tar xvf soulflyer-ConnectTeach*.tar
rm soulflyer-ConnectTeach*.tar
echo "Deleting old version and installing new"
rm -r ~/public_html/connectteach
cp soulflyer-ConnectTeach*/doc/update_connectteach.sh ~/
chmod a+x ~/update_connectteach.sh
mv soulflyer-ConnectTeach* ~/public_html/connectteach
echo "restoring links to tutor and newsitem images"
cd ~/public_html/connectteach/public/images/
rm -r newsitems
rm -r tutors
rm -r flavours
rm -r pictures
ln -s ~/public_html/connectteach_images/newsitems newsitems
ln -s ~/public_html/connectteach_images/tutors tutors
ln -s ~/public_html/connectteach_images/flavours flavours
ln -s ~/public_html/connectteach_images/pictures pictures
echo "Now restart the server"
# cd ~/public_html/connectteach
# /usr/bin/ruby /usr/bin/mongrel_rails start -p 12002 -d -e production -P log/mongrel.pid
echo "*****************************************************************************"
echo "Now go to http://connectteach.com and check the bloody thing is still working"
echo "Did you add a migration? If so go to public_html/connectteach and run:"
echo "rake db:migrate RAILS_ENV=production"
echo "*****************************************************************************"
