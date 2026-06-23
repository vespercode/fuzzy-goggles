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


