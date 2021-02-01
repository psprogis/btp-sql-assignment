# SQL assignment

## task
Please write an SQL query:
  - Table "users" with columns (id, email, citizenship_country_id)
  - Table "countries" with columns (id, name, iso)
  - Show all countries with more than 1000 users, sorted by user count. The country with the most users should be at the top.

## notes
  - it is really strange that we are using plural name for tables, e.g. "users" or "countries".

## setup
  - start db. I will use [MariaDB](https://mariadb.com/) in this example, but the query should work in MySql also (maybe with small updates.)
    - you can download and install MariaDB or MySQL on you desktop, but probably the easiest way is to start db in docker image.
    - you should have docker and docker-compose installed on you machine, run the following command in the root of the project:
    `docker-compose up`
    it will start MariaDB on localhost, port 3306, root password admin. In real project I would create separate user with specific permissions, but for this test demo it is ok.
  - start client. There are plenty of client to connect to relational database. Some of the has only command line iterface, but in this case it would be easier to use GUI client - for example [DBeaver](https://dbeaver.io/)
  - create test database. Run `create-db.sql` script. It will drop test_db if it is exist and create the new one.
  - create countries and users tables. Run script `create-tables.sql`. It will create 2 tables, primary and foreign keys.
  - insert countries. I will insert only 10 countries for this example. Run script `insert-countries.sql`.
  - insert users.
    - TBD: generate 1000 users (sql script or node.js)
    - insert 24 hard-coded users, run script `insert-user`


## info
  - [iso codes](https://www.wikiwand.com/en/List_of_ISO_3166_country_codes)