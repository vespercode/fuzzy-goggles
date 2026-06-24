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

