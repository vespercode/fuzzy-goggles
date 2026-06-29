Bitte erstellen Sie eine Liste aller Interpreten und deren Titel


select * from interpret;
select * from titel;
select * from genre;

select top 0 * from interpret;
select top 0 * from titel;

select * from interpret;
select * from titel;

select * from interpret
JOIN titel on 

select i.name, titel.titel
from interpret i
join titel on titel.interpret_id = i.i_id;


--Welche Titel fallen alle unter das Genre Klassik?


select * from interpret;
select * from titel;
select * from genre;

select titel.titel, genre.genre
from titel
join genre on titel.genre_id = genre.g_id
where genre.genre = 'Klassik';


-- 3. Bitte uberprufen Sie, ob 'Miles Davis'
-- am 01.07.2027 gebucht werden kann

select * from interpret;
select * from titel;
select * from genre;
select top 1 * from in_ver;
select * from in_ver;


