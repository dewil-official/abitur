/*
	HIER:
	EIGENE ÜBUNG, mit FREMDSCHLÜSSELN und JOINS
*/


# DATABASE SELECTION
DROP DATABASE IF EXISTS Hollywood;
CREATE DATABASE Hollywood;
USE Hollywood;

# TABLE CREATION
CREATE TABLE Filme (
    f_nr INT(4) NOT NULL AUTO_INCREMENT,
    f_name VARCHAR(30),
    f_erscheinungsjahr INT(4),
    f_regisseur VARCHAR(20),
    PRIMARY KEY(f_nr)
) ENGINE = INNODB;

CREATE TABLE Regisseure (
    r_nr INT(4) NOT NULL AUTO_INCREMENT,
    r_name VARCHAR(30),
    r_geburtsjahr INT(4),
    PRIMARY KEY(r_nr)
) ENGINE = INNODB;

# FILME EINFÜGEN # All three variants are valid!
INSERT INTO Filme (f_nr, f_name, f_erscheinungsjahr, f_regisseur) VALUES (NULL, 'Interstellar', 2014, 'Christopher Nolan');
INSERT INTO Filme VALUES (NULL, 'Iron Man', 2008, 'Jon Favreau');
INSERT INTO Filme (f_name, f_erscheinungsjahr, f_regisseur) VALUES ('Baby Driver', 2017, 'Edgar Wright');

# Ein paar mehr Filme (Alles für die Stats!)
INSERT INTO Filme VALUES	(NULL, 'Captain Marvel', 2019, 'Anna Boden'),
				(NULL, 'Der Pate', 1972, 'Francis Ford Coppola'),
				(NULL, 'Apocalypse Now', 1979, 'Francis Ford Coppola');

# REGISSEURE EINFÜGEN
INSERT INTO Regisseure VALUES 	(NULL, 'Christopher Nolan', 1970),
				(NULL, 'Jon Favreau', 1966),
				(NULL, 'Edgar Wright', 1974),
				(NULL, 'Anna Boden', 1976),
				(NULL, 'Francis Ford Coppola', 1939);

# OUTPUT DATA
SELECT * FROM Regisseure;

ALTER TABLE Filme CHANGE f_regisseur f_regisseur INT(4);
UPDATE Filme SET f_regisseur=1 WHERE f_name='Interstellar';
UPDATE Filme SET f_regisseur=2 WHERE f_name='Iron Man';
UPDATE Filme SET f_regisseur=3 WHERE f_name='Baby Driver';
UPDATE Filme SET f_regisseur=4 WHERE f_name='Captain Marvel';
UPDATE Filme SET f_regisseur=5 WHERE f_name='Der Pate';
UPDATE Filme SET f_regisseur=5 WHERE f_name='Apocalypse Now';

# OUTPUT DATA (Again)
SELECT * FROM Filme;#

# OUTPUT Where-Joined Data:
SELECT f_name, r_name FROM Filme, Regisseure WHERE f_regisseur=r_nr;

# OUTPUT Inner-Joined Data:
SELECT f_name, r_name FROM Filme INNER JOIN Regisseure ON Filme.f_regisseur=Regisseure.r_nr;