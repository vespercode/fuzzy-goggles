CREATE TABLE genre (
Genre_id int IDENTITY(1,1) PRIMARY KEY,
genre VARCHAR(30)
);

CREATE TABLE interpret (
interpret_id INT IDENTITY(1,1) PRIMARY KEY,
name VARCHAR(200)
);

CREATE TABLE TITEL   (
titel_id INT IDENTITY(1,1) PRIMARY KEY,
Titel VARCHAR(200),
interpret_id INT,
Genre_id INT,
FOREIGN KEY (interpret_id) REFERENCES interpret(interpret_id),
FOREIGN KEY (Genre_id) REFERENCES genre(Genre_id),
);


CREATE TABLE Veranstaltungsort (
v_id INT IDENTITY(1,1) PRIMARY KEY,
ort_name VARCHAR(200)
);


CREATE TABLE in_ver   (
interpret_id INT,
v_id INT NOT NULL,
datum_von DATE,
datum_bis DATE,
FOREIGN KEY (interpret_id) REFERENCES interpret(interpret_id),
CONSTRAINT pk_in_ver PRIMARY KEY (interpret_id, datum_von, datum_bis)
);

drop TABLE in_ver;
drop TABLE Veranstaltungsort;
drop TABLE interpret;
drop TABLE genre;
drop TABLE TITEL;


select * from titel;
select * from interpret;
select * from in_ver;
select * from Veranstaltungsort;

INSERT into Veranstaltungsort VALUES
('Nuernberg'),
('Fuerth'),
('Elan-gen'),
('Dortmund'),
('Vegas'),
('Nuernberg');


UPDATE Veranstaltungsort SET ort_name='Erlangen' WHERE v_id=3;

UPDATE Veranstaltungsort SET ort_name='Erlangen' WHERE ort_name='Elan-gen';

INSERT INTO in_ver (interpret_id, v_id, datum_von, datum_bis) VALUES
(1, 1, '2026-03-10', '2026-03-11'),
(1, 3, '2026-07-05', '2026-07-07'),
(1, 2, '2027-06-01', '2027-06-01'),
(2, 5, '2026-09-12', '2026-09-13'),
(2, 2, '2027-02-14', '2027-02-15'),
(3, 1, '2026-05-20', '2026-05-21'),
(3, 1, '2027-03-08', '2027-03-08'),
(3, 4, '2027-08-25', '2027-08-26'),
(4, 3, '2026-11-11', '2026-11-12'),
(4, 5, '2027-06-01', '2027-06-02'),
(4, 5, '2026-06-15', '2026-06-16'),
(4, 1, '2027-12-01', '2027-12-02'),
(5, 2, '2026-04-30', '2026-05-01'),
(5, 3, '2027-07-04', '2027-07-06'),
(5, 3, '2026-12-10', '2026-12-10'),
(6, 4, '2026-08-01', '2026-08-02'),
(6, 1, '2026-03-14', '2026-03-15'),
(6, 2, '2026-10-10', '2026-10-10'),
(6, 5, '2027-04-04', '2027-04-04'),
(7, 5, '2026-06-12', '2026-06-12'),
(7, 5, '2027-03-03', '2027-03-04'),
(8, 1, '2026-01-01', '2026-01-02'),
(8, 1, '2027-01-15', '2027-01-16'),
(8, 3, '2026-07-07', '2026-07-07'),
(8, 2, '2026-09-21', '2026-09-22'),
(8, 4, '2027-09-01', '2027-09-01'),
(9, 3, '2026-10-05', '2026-10-06'),
(9, 2, '2027-05-20', '2027-05-21'),
(9, 4, '2027-08-30', '2027-08-31'),
(9, 1, '2026-06-01', '2026-06-01'),
(9, 5, '2026-03-03', '2026-03-03'),
(10, 1, '2026-02-22', '2026-02-22'),
(10, 3, '2027-03-10', '2027-03-11'),
(10, 4, '2026-05-05', '2026-05-06'),
(10, 2, '2026-12-12', '2026-12-13'),
(10, 2, '2027-10-10', '2027-10-11'),
(3, 5, '2026-07-10', '2026-07-11'),
(4, 2, '2027-04-01', '2027-04-01'),
(6, 3, '2026-11-01', '2026-11-01'),
(1, 4, '2026-10-01', '2026-10-01'),
(2, 3, '2026-04-04', '2026-04-04'),
(5, 4, '2026-05-18', '2026-05-18'),
(7, 1, '2026-07-14', '2026-07-14'),
(8, 5, '2027-11-15', '2027-11-16'),
(3, 2, '2027-07-01', '2027-07-01'),
(6, 1, '2027-12-31', '2027-12-31'),
(9, 1, '2027-06-20', '2027-06-21'),
(10, 5, '2027-01-01', '2027-01-02'),
(4, 1, '2026-08-08', '2026-08-08'),
(2, 1, '2026-03-03', '2026-03-04'),
(1, 2, '2027-05-05', '2027-05-05');