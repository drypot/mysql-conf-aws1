#!/bin/bash
args=(
  --name mysql
  --publish 3306:3306
  --mount type=bind,source=/data/mysql/mysql-conf-aws1/conf.d,target=/etc/mysql/conf.d
  --mount type=bind,source=/data/mysql/mysql,target=/var/lib/mysql
  --mount type=bind,source=/data/mysql/backup,target=/backup
  --env MYSQL_ROOT_PASSWORD=
  --env MYSQL_ALLOW_EMPTY_PASSWORD=yes
  --restart unless-stopped
  --detach
#  ----interactive --tty
#  --rm
  groonga/mroonga:mysql8023_mroonga1100
)
docker run "${args[@]}"

