#!/bin/bash

if  [   "$page"  ==  "web1"  ]
then
	cp -rvf  /data/app1/*   /var/www/html/
	httpd  -DFOREGROUND
elif    [  "$page" ==  "web2"   ]
then
	cp  -vrf  /data/app2/*   /var/www/html/
	httpd  -DFOREGROUND
else 
	echo  "THis is default page"   >/var/www/html/index.html
	httpd -DFOREGROUND
fi 
