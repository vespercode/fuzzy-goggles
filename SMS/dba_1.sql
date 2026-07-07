create login boris with password = 'Bildung81';

use dba1;

create user boris_dba_1 for login boris;

create table table1 (id int);

insert into table1 values (1), (2);

select * from table1;

execute as login = 'boris'
select USER_NAME();
select SYSTEM_USER;
revert;

use dba1;

grant select on table1 to boris_dba_1;
select * from table1;

grant insert on table1 to boris_dba_1;
insert into table1 values (3);

grant delete on table1 to boris_dba_1;
delete table1;

revoke delete on table1 to boris_dba_1;

revoke select on table1 to boris_dba_1;

insert into table1 values (23);

revoke insert on table1 to boris_dba_1;

 


select * from table1;
insert into table1 values (33);
delete from table1;

-- Rolle Datareader


alter role db_datareader add member boris_dba_1;

execute as login = 'boris';
select USER_NAME();
select SYSTEM_USER;
revert

execute as login = 'boris';
select USER_NAME();
select SYSTEM_USER;




revert;


use dba1;

select * from table1;

insert into table1 values (55); -- nicht erlaubt

use musiker_db; -- nicht erlaubt


create user boris_dba_1 for login boris;
create user boris_musiker_db for login boris;

alter role db_datareader add member boris_dba_1;
alter role db_datareader add member boris_musiker_db;


drop user boris_dba_1;


select * from interpret;
insert into interpret (name) values ('Elvis Pristley');


revert;

--- DATAWRITER

use dba1;
alter role db_datawriter add member boris_dba_1;

execute as login = 'boris';
select USER_NAME();
select SYSTEM_USER;

use musiker_db;
use dba1;

insert into table1 values (42);
select * from table1;
revert;

--- Rolle Entziehen

alter role db_datareader drop member boris_dba_1;

execute as login = 'boris';
select USER_NAME();
select SYSTEM_USER;





select * from table1;
insert into table1 values (43);

revert;

alter role db_datareader add member boris_dba_1;

select * from table1;
delete 

select dbp.name  from sys.database_role_members dbm
join sys.database_principals dbp on dbp.principal_id = dbm.role_principal_id

use musiker_db;
alter role db_datawriter drop member boris_musiker_db;

execute as login = 'boris';
select USER_NAME();
select SYSTEM_USER;

select * from interpret;
insert into interpret (name) values ('Elvis Pristley');

use dba1;
revert;

--- Dene Benutzer löschen
drop user boris_musiker_db;

drop login boris;

create login boris with password = 'Bildung81';

execute as login = 'boris';
select USER_NAME();
select SYSTEM_USER;

create user boris_dba_1 for login boris;
create user boris_musiker_db for login boris;

alter role db_datareader add member boris_dba_1;
alter role db_datareader add member boris_musiker_db;

SELECT
session_id,
login_name,
host_name,
program_name,
status
FROM sys.dm_exec_sessions
WHERE Login_name = 'boris' ;


revert;
kill 65; -- session_id

drop login boris;




