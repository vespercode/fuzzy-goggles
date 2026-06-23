select * from mein_test1


delete from mein_test1 where vorname = 'Fred';

delete from mein_test1 where nummer is null;

insert into mein_test1 (vorname) VALUES ('Jenny'), ('Johny');


delete from mein_test1 where nummer is not NULL;

--DELETE mein_test1;

DROP TABLE mein_test1;

DROP TABLE mein_test8;


CREATE TABLE mein_test6 (nummer INT, vorname VARCHAR(10));

INSERT INTO mein_test1 VALUES
(1, 'Karl'), 
(2, 'Klara');

sp_rename 'mein_test1', 'mein_test6';

-- MySQL, PostgreSQL;
-- alter table mein_test6 rename to neu_name;

--strg  k c
--strg  k u


CREATE TABLE mein_test6 (nummer INT, vorname VARCHAR(10));

insert into mein_test6 (vorname) VALUES ('Jenny'), ('Johny');


SELECT column_name, data_type, CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'mein_test1';


select * from mein_test6

select * from mein_test1

CREATE TABLE mein_test1 (nummer INT, vorname VARCHAR(10));

--DELETE mein_test1;

CREATE TABLE mein_test1 (
id INT IDENTITY(1,1) PRIMARY KEY,	-- COMMENTAR
vorname VARCHAR(20)
);

SELECT name FROM sys.key_constraints;

CREATE TABLE mein_test8 (
id INT IDENTITY(1, vorname VARCHAR(10));

CREATE TABLE mein_test10 (
id INT IDENTITY(1,1),
vorname VARCHAR(20),
nachname VARCHAR(20),
email VARCHAR(100),
CONSTRAINT PK_test8_id Primary key (id),
CONSTRAINT UQ_test8_email UNIQUE (email),
CONSTRAINT UQ_test8_vname_nname UNIQUE (vorname, nachname)
);


SELECT name FROM sys.key_constraints;

CREATE TABLE mein_test8 (
id INT IDENTITY(1,1),
vorname VARCHAR(20),
nachname VARCHAR(20),
email VARCHAR(100),
CONSTRAINT PK_test8_id PRIMARY KEY (id),
CONSTRAINT UQ_test8_email UNIQUE (email),
CONSTRAINT UQ_test8_vname_nname UNIQUE (vorname, nachname)
I

);


create table mein_test2 (
id INT IDENTITY(1,1),
vorname VARCHAR(20),
nachname VARCHAR(20),
email VARCHAR(100),
CONSTRAINT PK_test2 PRIMARY KEY (id),
CONSTRAINT UQ_test2_email UNIQUE (email),
CONSTRAINT UQ_test2_name UNIQUE (vorname, nachname)
);
 

SELECT * FROM sys.foreign_keys;

