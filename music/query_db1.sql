select name, titel from titel
join interpret on interpret_id = i_id

select name as Band, titel as Song from titel
join interpret on interpret_id = i_id


select name Band, titel Song from titel
join interpret on interpret_id = i_id

select name Band, titel Song, genre Genre
from interpret join titel
on i_id = interpret_id
join genre
on g_id = genre_id

select interpret.name Band, titel.titel Song, genre.genre Genre
from interpret join titel
on interpret.i_id = titel.interpret_id
join genre
on genre.g_id = titel.genre_id




select interpret.name Band, titel.titel Song, genre.genre Genre
from interpret join titel
on interpret.i_id = titel.interpret_id
join genre
on genre.g_id = titel.genre_id


select i.name Band, t.titel Song, g.genre Genre
from interpret i join titel t
on i.i_id = t.interpret_id
join genre as g
on g.g_id = t.genre_id;


select i.name , t.titel Song, g.genre Genre
from interpret i
join titel t on t.interpret_id = i.i_id
join genre g on g.g_id = t.genre_id
where g.genre = 'Rock' or g.genre = 'Raggae'

select i.name , t.titel Song, g.genre Genre
from interpret i
join titel t on t.interpret_id = i.i_id
join genre g on g.g_id = t.genre_id
where g.genre in ('Rock', 'Raggae')

--Alternativ:
--where g.genre = 'Rock' or g.genre = 'Raggae'


select i.name Band, t.titel Song, g.genre Genre
from interpret i join titel t
on t.interpret_id = i.i_id
join genre g on g.g_id = t.genre_id
where g.genre in ('Rock', 'Pop')


select i.name Band, t.titel Song, g.genre Genre
from interpret i join titel t
on t.interpret_id = i.i_id
join genre g on g.g_id = t.genre_id
where g.genre in ('Rock', 'Pop')
order by t.titel  DESC



select i.name Band, t.titel Song, g.genre Genre
from interpret i, genre g, titel t
where 
join titel t
on t.interpret_id = i.i_id
join genre g on g.g_id = t.genre_id
where g.genre in ('Rock', 'Pop')
order by t.titel  DESC


select i.name Band, t.titel Song, g.genre Genre
from interpret i join titel t
on t.interpret_id = i.i_id
--where i.i_id = t.interpret_id and g.g_id = t.genre_id
join genre g on g.g_id = t.genre_id
where g.genre in ('Rock', 'Pop')
order by t.titel  DESC

select i.name Band, t.titel Song, g.genre Genre
from interpret i, genre g, titel t
where i.i_id = t.interpret_id and g.g_id = t.genre_id
and g.genre = 'Rock'


select distinct i.name Band, t.titel Song, g.genre Genre
from interpret i, genre g, titel t
where i.i_id = t.interpret_id and g.g_id = t.genre_id
and g.genre = 'Rock'


on t.interpret_id = i.i_id
join genre g on g.g_id = t.genre_id
where g.genre in ('Rock', 'Pop')
order by t.titel  DESC


select i.name Band, t.titel Song, g.genre Genre
from interpret i, genre g, titel t
where i.i_id = t.interpret_id and g.g_id = t.genre_id
and (g.genre = 'Rock' or g.genre = 'Pop')

--2+3*4 = (2+3)*4

select i.name Band, t.titel Song, g.genre Genre
from interpret i, genre g, titel t
where i.i_id = t.interpret_id and g.g_id = t.genre_id
and g.genre = 'Rock' or g.genre = 'Pop'


select i.name Band, t.titel Song, g.genre Genre
from interpret i, genre g, titel t
where (i.i_id = t.interpret_id) and (g.g_id = t.genre_id)
and (g.genre = 'Rock' or g.genre = 'Pop');


select i.name , t.titel Song, g.genre Genre
from interpret i
join titel t on t.interpret_id = i.i_id
join genre g on g.g_id = t.genre_id
where g.genre = 'Rock' or g.genre = 'Raggae'


select i.name Band, t.titel Song, g.genre Genre
from interpret i join titel t
on t.interpret_id = i.i_id
--where i.i_id = t.interpret_id and g.g_id = t.genre_id
join genre g on g.g_id = t.genre_id
where g.genre in ('Rock', 'Pop')
order by t.titel  DESC

select i. name Band, t.titel Song, g.genre Genre
from interpret i
join titel t on t.interpret_id = i.i_id
join genre g on g.g_id = t.genre_id
where g.genre in ('Rock', 'Reggae', 'Klassik')
-- Alternativ:
-- where g.genre = 'Rock' or g.genre = 'Reggae'
order by t.titel

select i.name, ort.ort_name
from interpret i
join in_ver iv on iv.i_nr=i.i_id
join veranstaltungsort ort on ort.v_id = iv.v_nr




select distinct i. name, g.genre
from interpret i
join titel t on t.interpret_id = i.i_id
join genre g on g.g_id = t.genre_id

select * from genre


select distinct i. name, g.genre
from interpret i
join titel t on t.interpret_id = i.i_id
join genre g on g.g_id = t.genre_id

select * from genre
select * from titel where titel.titel = 'Numb'

update titel set titel.genre_id = 8 where titel.titel = 'Numb'

select titel, interpret. name, genre.genre from titel
join interpret on titel.interpret_id = interpret.i_id
join genre on titel.genre_id = genre.g_id

select * from titel

select distinct i.name, g.genre
from interpret i
join titel t on t.interpret_id = i.i_id
join genre g on g.g_id = t.genre_id
order by g.genre


