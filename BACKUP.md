# MySQL Back Up & Restore

Back Up

    $ mysqldump -u drypot -p db-name > db-name-0000.sql

Restore

    $ mysql -u drypot -p db-name < db-name-0000.sql
