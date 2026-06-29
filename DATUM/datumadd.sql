select date_format Datumsformat, date_first "Erster Wochentag", 
language Sitzungssprache 
from sys.dm_exec_sessions 
where session_id = @@spid;

