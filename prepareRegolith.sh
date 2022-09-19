#!/bin/sh
version=`cat /version`
wget https://github.com/Bedrock-OSS/regolith/releases/download/$(echo $version)/regolith_$(echo $version)_Linux_x86_64.tar.gz
tar -xzf regolith_$(echo $version)_Linux_x86_64.tar.gz
mv regolith /usr/local/bin
rm regolith_$(echo $version)_Linux_x86_64.tar.gz
chmod +x /usr/local/bin/regolith