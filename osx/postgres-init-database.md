## Note

`%` sign means shell commands, `>` sign means sql commands (use after connecting to database).

## Init empty schema with 

`% initdb /usr/local/var/postgres`

## Create desired database 

`% createdb my_db_name`

## Connect to just created database

`% psql my_db_name`

## Create user with password

`% createuser -P my_user_name`

## Grant rights for jsut created user to database

`> GRANT ALL PRIVILEGES ON database my_db_name TO my_user_name;`
