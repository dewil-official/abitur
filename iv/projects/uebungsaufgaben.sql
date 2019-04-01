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

# FILME EINFÜGEN # All three variants are valid!
INSERT INTO Filme (f_nr, f_name, f_erscheinungsjahr, f_regisseur) VALUES (NULL, 'Interstellar', 2014, 'Christopher Nolan');
INSERT INTO Filme VALUES (NULL, 'Iron Man', 2008, 'Jon Favreau');
INSERT INTO Filme (f_name, f_erscheinungsjahr, f_regisseur) VALUES ('Baby Driver', 2017, 'Edgar Wright');

/*
	AB HIER:
	AUFGABEN AUS iv/lehrerdocs/uebungsaufgaben.pdf
*/

# DATABASE SELECTION
DROP DATABASE IF EXISTS Schule;
CREATE DATABASE Schule;
USE Schule;

# AUFG. 1: Lehrertabelle
CREATE TABLE Lehrer (
    l_nr INT(4) NOT NULL AUTO_INCREMENT,
    l_vorname VARCHAR(16),
    l_name VARCHAR(20),
    l_str VARCHAR(20),
    l_plz INT(5),
    l_ort VARCHAR(20),
    l_aufgabe VARCHAR(20),
    l_geburtsdatum DATE,
    PRIMARY KEY(l_nr)
) ENGINE = INNODB;

# AUFG. 2: Daten einfügen
INSERT INTO Lehrer VALUES	(75, 'Herbert', 'Scheck', 'Breiter Weg 18', 31787, 'Hameln', 'Fachlehrer', '1960-10-30'),
				(50, 'Marianne', 'Müller', 'Breslauer Allee 20', 31787, 'Hameln', 'Schulleiterin', '1955-01-11');

# AUFG. 3: Erweiterung einer Spalte
ALTER TABLE Lehrer ADD l_dienstjahre INT(3); # Eig. würden 2 INT-Stellen reichen, aber Groni ist die Ausnahme!


SELECT * FROM Lehrer;

