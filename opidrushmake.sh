#!/bin/bash

clear
echo "###################################################"
echo "## Opi Drush Make Script"
echo "###################################################"
echo ""

echo "## Site"
read -p "Install folder : " folder
read -p "Site name : " sitename
read -p "Site mail : " sitemail
read -p "Site language (fr, en) : " lang
read -p "Profile (minimal, standard, opifullprofile) : " siteprofile

echo ""
echo "## Database"
read -p "Host (localhost): " dbhost
read -p "User : " dbuser
read -p "Pass : " dbpass
read -p "Port : " dbport
read -p "Name : " dbname
read -p "Prefix : " dbprefix

echo ""
echo "## Admin"
read -p "Admin login : " adminlogin
read -p "Admin pass : " adminpass
read -p "Admin mail : " adminmail
echo ""


echo "Processing drush make ..."
echo ""


drush make https://raw.github.com/opi/opiDrushMake/master/opidrushmake.make $folder  --translations=$lang --force-complete --prepare-install

#~ Go to folder, chmod "site/default" ...
cd $folder && chmod -R 777 sites/default/files && mkdir sites/files && chmod -R 777 sites/files && chmod 777 sites/default/settings.php

echo "Done."
echo ""
echo "Processing drush site-install ..."
echo ""

drush site-install -y $siteprofile --db-url="mysql://$dbuser:$dbpass@$dbhost:$dbport/$dbname" --db-prefix="$dbprefix" --locale="$lang" --account-name="$adminlogin" --account-pass="$adminpass" --account-mail="$adminmail" --site-name="$sitename" --site-mail="$sitemail"
  
#~ (--sites-subdir=SITE_FOLDER)

echo "Done."
