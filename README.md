# MySQL Conf

AWS 서버의 mysql.conf.

## 디비 백업

    $ cd /data/mysql/mysql-conf-aws1
    $ bin/d-shell.sh 
    $ mysqldump -u drypot -p raysoda > /backup/xxx.sql

    필요하면 sudo 넣는다.

    다른 디비들도 다 백업한다.
