# logging in to mysql
mysql -u USERNAME -p

# enter "help" or "/?" for list of all commands

# select current user
SELECT current_user;

# display all users and host
SELECT user, host FROM mysql.user;

######################################################### USERS

# creating user
# if the IDENTIFIED BY part is not added, the user has no password
CREATE USER 'billy'@'localhost' IDENTIFIED BY 'billysSecretP@ass123';

# granting access to users
# granting all access to everything to a user
#The second portion (ON *.*) is how we control what databases and tables the privileges applies to
GRANT ALL ON *.* TO 'billy'@'localhost';

# granting SELECT only on all
GRANT SELECT ON *.* TO 'read_only'@'localhost';

# granting SELECT, INSERT, UPDATE, DELETE to a specific table on a specific database
GRANT SELECT, INSERT, UPDATE, DELETE ON sally_db.sallys_table TO 'sally'@'localhost';

# granting CREATE, ALTER, INSERT, DROP to all tables on a specific database
GRANT CREATE, ALTER, INSERT, DROP ON office_db.* TO 'office_user'@'localhost';

# assigning GRANT permissions by adding "WITH GRANT OPTION" at the end
GRANT ALL ON *.* TO 'billy'@'localhost' WITH GRANT OPTION;

# display current privileges
SHOW GRANTS for 'username'@'hostname';

# dropping user
DROP USER 'sally'@'localhost';

######################################################### DATABASES

# create a db
CREATE DATABASE database_name;

CREATE DATABASE IF NOT EXISTS database_name;

# display all dbs
SHOW DATABASES;

# selecting a db
USE database_name;

# referring to other dbs
#At times it may be necessary to refer to a table or object in a separate database. Or, if you have just connected to a MySQL server, you may not have any database selected
database_name.table_name

# show current db
#If the MySQL server responds with NULL as the database name, most likely you do not have any database selected.
SELECT database();

# inspecting a Database
# you can actually find out the query used to create a database with the SHOW CREATE query:
SHOW CREATE DATABASE database_name;

# deleting a db
DROP DATABASE database_name;

#Just like with creating a database, trying to delete a database that does not already exist can create errors. To avoid this problem when trying to drop a database in a script we use IF EXISTS
DROP DATABASE IF EXISTS database_name;

######################################################### TABLES

# TODO  INSERT HERE DATA TYPES AND PARAMETERS

# creating a table

CREATE TABLE table_name (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        author_first_name VARCHAR(50),
                        author_last_name  VARCHAR(100) NOT NULL,
                        content TEXT NOT NULL,
                        PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS table_name (
                                         id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                                         author_first_name VARCHAR(50),
                                         author_last_name  VARCHAR(100) NOT NULL,
                                         content TEXT NOT NULL,
                                         PRIMARY KEY (id)
);


# show all tables
SHOW TABLES;

# describing a specific table
# The command to show the structure of a table is DESCRIBE.
DESCRIBE table_name;

# display the original command used to create a table by using SHOW CREATE TABLE.
SHOW CREATE TABLE table_name\G;

# dropping table
DROP TABLE table_name;

DROP TABLE IF EXISTS table_name;

######################################################### RUNNING SCRIPT
# running a script
mysql -u USERNAME -p -t < filename.sql

######################################################### BASIC STATEMENTS

# the commands to add new rows to a table is INSERT.
INSERT INTO table_name (field1, field2, ...)
VALUES ('value1', 'value2', ...);

# example
INSERT INTO table_name (author_first_name, author_last_name, content)
VALUES ('Douglas', 'Adams', 'I love deadlines. I love the whooshing noise they make as they go by.');

# inserting more than one record
INSERT INTO table_name (author_first_name, author_last_name, content)
VALUES ('Douglas', 'Adams',    'Time is an illusion. Lunchtime doubly so.'),
       ('Mark',    'Twain',    'Clothes make the man. Naked people have little or no influence on society.'),
       ('Kurt',    'Vonnegut', 'The universe is a big place, perhaps the biggest.');

# command to select
SELECT column1, column2, ... FROM table_name;
SELECT author_last_name, content FROM table_name;

# selecting all columns from a db table
SELECT * FROM table_name;

# WHERE allows you to specify a condition that must be true for a given row to be displayed
SELECT column1, column2, ...
FROM table_name
WHERE column_name = 'value';

# SQL uses just a single = and not the double == we have used before
SELECT * FROM table_name WHERE author_last_name = 'Adams';

SELECT * FROM table_name WHERE id = 5;

# operators
#=	Equal
#!= or <>	Not equal
#<	Less than
#>	Greater than
#<=	Less than or equal to
#>=	Greater than or equal to
#BETWEEN value1 AND value2	Greater than or equal to value1 and less than or equal to value2

# miscellaneous output
SELECT 'I am output!' AS 'Info';

# update The command to modify existing data in a table is UPDATE. Unlike INSERT, update only works with existing records; it will not add new rows to any table.

UPDATE table_name
SET column1 = 'value1', column2 = 'value2', ...
WHERE columnA = 'valueA';

# example
UPDATE table_name
SET author_first_name = 'Samuel', author_last_name = 'Clemens'
WHERE id = 4;


# delete To remove records from a table, we use the DELETE statement. The basic syntax for delete rows:
DELETE FROM table_name WHERE column_name = 'value';
DELETE FROM table_name WHERE id = 3;

# The safest way to write a DELETE statement is to write a SELECT statement first. Use that query to narrow down your condition and make sure you know what is about to be removed
-- First:
SELECT * FROM quotes WHERE id = 3;
-- Convert to:
DELETE FROM quotes WHERE id = 3;

#Sometimes you do not want to just remove a handful of records, but all the records from a table. For that, SQL also has a TRUNCATE command
TRUNCATE table_name;

# Understand how to combine WHERE clauses with AND and OR to create more complex queries











































