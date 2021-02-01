# SQL assignment

## task
Please write an SQL query:
- Table "users" with columns (id, email, citizenship_country_id)
- Table "countries" with columns (id, name, iso)
- Show all countries with more than 1000 users, sorted by user count. The country with the most users should be at the top.

## notes
- it is really strange that we are using plural names for tables, e.g. "users" or "countries".

## setup
- **start db**. I will use [MariaDB](https://mariadb.com/) in this example, but the query should work with MySQL also (maybe with small updates).
  - you can download and install MariaDB or MySQL on you desktop, but probably the easiest way is to start existing docker image.
  - you should have `docker` and `docker-compose` installed on you machine, run the following command in the root of the project:
    `docker-compose up`
    it will start MariaDB on localhost, port 3306, root password admin. In real project I would create separate user with specific permissions, but for this test demo it is ok.
- **start client**. There are plenty of client to connect to relational database. Some of the has only command line iterface, but in this case it would be easier to use GUI client - for example [DBeaver](https://dbeaver.io/)
- **create test database**. Run `create-db.sql` script. It will drop test_db if it is exist and create the new one.
- **create countries and users tables**. Run script `create-tables.sql`. It will create 2 tables, primary and foreign keys.
- **insert countries**. I will insert only 10 countries for this example. Run script `insert-countries.sql`.
- **insert users**.
  - generate 40000 random users. Script is not perfect and have comments about what should be improved. In real project I would use `mariasql` node module and generate better emails with `faker.js`, eventhough it will be slower.
  - insert 24 hard-coded users, can be used for debug and manualy check. Run script `insert-users.sql`

## query
- run script `query.sql`
  - if you inserted only 24 users - update condition in the script and replace 1000 with smaller value, e.g. 3 or 4.
  - you can verify script result for each country and get number of citizens, e.g.:
  `select count(*) from users where citizenship_country_id = <country id here>;`

## info
  - [iso codes](https://www.wikiwand.com/en/List_of_ISO_3166_country_codes)
  - [random names](http://listofrandomnames.com/index.cfm?generated)
