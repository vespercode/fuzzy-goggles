INSERT INTO Abteilung (Abteilungsname)
VALUES 
('IT'),
('Personal'),
('Buchhaltung'),
('Vertrieb');

INSERT INTO Arbeitszeitmodell (Modellname, Wochenstunden)
VALUES
('Vollzeit', 40.0),
('Teilzeit', 20.0),
('Gleitzeit', 38.5),
('Minijob', 10.0);

INSERT INTO Mitarbeiter 
(Vorname, Nachname, Geburtsdatum, Familienstand, AbteilungID, ArbeitszeitmodellID)
VALUES
('Max', 'Müller', '1990-05-12', 'ledig', 1, 1),
('Anna', 'Schmidt', '1988-11-03', 'verheiratet', 2, 3),
('Peter', 'Weber', '1995-02-20', 'ledig', 3, 2),
('Laura', 'Fischer', '1992-07-15', 'geschieden', 4, 1);