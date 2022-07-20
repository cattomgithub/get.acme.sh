#!/bin/bash

# For local PC! #

#记录重试次数
Retry_Count=0

cd public || exit

proxychains wget https://raw.githubusercontent.com/acmesh-official/acme.sh/master/acme.sh

proxychains wget https://github.com/acmesh-official/acme.sh/archive/master.tar.gz

git add . && git commit -a -m "Update from source"

while ((Retry_Count <= 5)); do
    if ! proxychains git push; then
        echo "Pull Succeed!"
        break
    else
        echo "Pull Failed!Retry it!"
        ((Retry_Count++)) || true
        if ((Retry_Count == 5)); then
            echo "We have retried five times!It's time to give up."
            exit 1
        fi
    fi
done
