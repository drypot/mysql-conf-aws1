#!/bin/bash
args=(
  --name mariadb
  --user 1001:1001
  -p 3306:3306
  --mount type=bind,source=/data/mysql/conf.d,target=/etc/mysql/conf.d
  --mount type=bind,source=/data/mysql/data,target=/var/lib/mysql
  --mount type=bind,source=/data/mysql/backup,target=/backup
  -e MYSQL_ROOT_PASSWORD=
  -e MYSQL_ALLOW_EMPTY_PASSWORD=yes
  -it --rm
#  -d
  mariadb
)
docker run "${args[@]}"

