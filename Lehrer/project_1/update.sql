select * from mein_test_6;

UPDATE mein_test_6 SET nummer=0 WHERE nummer = 2;

UPDATE mein_test_6 SET nummer = -123 WHERE nummer = 1;

CREATE TABLE mein_test_9 (
id INT IDENTITY(1,1) PRIMARY KEY,   --CONSTRAINTS
vorname VARCHAR(20)
);

insert into mein_test_9 values 
('Kermit'), ('Piggieee'), ('Gonzo'),
(null), ('null'), ('Riz-zo'), ('Waldorf'), ('Waldorf');

select * from mein_test_9;

UPDATE mein_test_9 SET id = 123 WHERE id = 1; -- Funktioniert micht!

UPDATE mein_test_9 SET vorname = 'Null' WHERE vorname is NULL;

UPDATE mein_test_9 SET vorname = 'JJJ' WHERE vorname = 'Null';


select * from mein_test4;

update mein_test4 set vorname = 'Hans' where id=20;

insert into mein_test4 values (1, 'Lukas'), (4, 'Anna');

insert into mein_test4 values (25, null);

insert into mein_test4 values (3, 'Lukas'), (2, 'null'), (-4, Null), (25, null);

delete from mein_test4 where vorname is null or vorname  'null';


I
update mein_test4 set vorname = 'Hans' where id=20;

insert into mein_test4 values (1, 'Lukas'), (4, 'Anna');
insert into mein_test4 values (3, 'Lukas'), (2, 'null'), (-4, Null), (25, null);

delete from mein_test4 where id != 42;

delete from mein_test4 where vorname <> 'Anna';


delete mein_test4

select * from mein_test4;


truncate table mein_

drop table mein_test4 


... akutow (82))* X
select * from mein_test3;

drop table mein_test8

update mein_test4 set vorname = 'Hans' where id=20;

insert into mein_test4 values (1, 'Lukas'), (4, 'Anna');

insert into mein_test4 values (25, null), (2, 'null');

insert into mein_test4 values (3, 'Lukas'), (2, 'null'), (-4, Null), (25, null);


select *