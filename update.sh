#!/bin/bash

# For local PC! #

cd public || exit

proxychains wget https://raw.githubusercontent.com/acmesh-official/acme.sh/master/acme.sh

proxychains wget https://github.com/acmesh-official/acme.sh/archive/master.tar.gz

git add . && git commit -a -m "Update from source"

proxychains git push