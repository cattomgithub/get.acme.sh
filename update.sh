#!/bin/bash

# For local PC! #

cd public || exit

proxychains wget https://github.com/acmesh-official/acme.sh/archive/master.tar.gz

git add . && git commit -a -m "Update master.tar.gz"

proxychains git push