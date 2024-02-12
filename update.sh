#!/bin/bash

cd /root/get.acme.sh/public/master || exit

wget -N https://raw.githubusercontent.com/cattomgithub/acme.sh/master/acme.sh

cd /root/get.acme.sh/public/ || exit

wget -N https://github.com/acmesh-official/acme.sh/archive/master.tar.gz

cd /root/get.acme.sh || exit

git add . && git commit -a -m "Update from source"

git push
