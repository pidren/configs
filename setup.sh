#/usr/bin/env bash

args=$1

if [[ $1 == "all" ]]; then
  echo "Install godeb"
  (cd /tmp && wget https://godeb.s3.amazonaws.com/godeb-amd64.tar.gz && tar -xzf godeb-amd64.tar.gz)
  (cd /tmp && ./godeb install $(./godeb list | head -n 1 ))
fi
