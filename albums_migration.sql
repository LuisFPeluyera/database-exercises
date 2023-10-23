# recreate my albums table
# switch to db first
use codeup_test_db;

drop table if exists albums;

CREATE TABLE albums (
                        id INT(4) UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(50) DEFAULT 'NONE',
                        name  VARCHAR(50) NOT NULL,
                        release_date INT UNSIGNED NOT NULL,
                        sales decimal(3,1) NOT NULL,
                        genre CHAR(50) NOT NULL,
                        PRIMARY KEY (id)
);
