CREATE TABLE mein_test1 (nummer INT, vorname VARCHAR(10));

INSERT INTO mein_test1 VALUES
(1, 'Karl'), 
(2, 'Klara');

SELECT * FROM mein_test1;

SELECT vorname FROM mein_test1;

SELECT nummer FROM mein_test1;

INSERT INTO mein_test1 (vorname) VALUES ('Jenny'), ('Johnny');

INSERT INTO mein_test1 (vorname, nummer) VALUES
('Fred', 24);

CREATE TABLE mein_test3 (
nummer int IDENTITY(1,1), 
vorname VARCHAR(10)
);

INSERT INTO mein_test3 VALUES
('Karl'), 
('Klara');

SELECT * FROM mein_test3;

CREATE TABLE mein_test4 (
id INT IDENTITY(100,2) PRIMARY KEY,
vorname VARCHAR(10)
);

INSERT into mein_test4 values
('Kermit'), ('Piggie'), ('Gonzo'),
(null), ('null'), ('Riz-zo'), ('Waldorf'), ('Waldorf');


SELECT * FROM mein_test4;
select vorname from mein_test4;

select id Id, vorname VorrrrName from mein_test4;

DELETE FROM mein_test4 where id=108;
DELETE FROM mein_test4 where vorname is null;
DELETE FROM mein_test4 where vorname='Waldorf';

DELETE FROM mein_test4;

DBCC CHECKIDENT ('mein_test4');

DBCC CHECKIDENT ('mein_test4', RESEED, 117);

SELECT * FROM mein_test4;

create table mein_test5 (
id int Primary Key,
vorname varchar(10)
);

select * from mein_test5;

INSERT INTO mein_test5 VALUES
(3, 'Karl2'), 
(20, 'Klara3');