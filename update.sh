#!/bin/bash

# For local PC! #

cd /home/cattom/get.acme.sh/public/master || exit

proxychains wget -N https://raw.githubusercontent.com/cattomgithub/acme.sh/master/acme.sh

cd /home/cattom/get.acme.sh/public/ || exit

proxychains wget -N https://github.com/acmesh-official/acme.sh/archive/master.tar.gz

git add . && git commit -a -m "Update from source"

proxychains git push