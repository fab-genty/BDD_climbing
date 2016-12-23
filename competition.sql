DROP TABLE IF EXISTS Localisation;
DROP TABLE IF EXISTS Sponsorise;
DROP TABLE IF EXISTS Participe;
DROP TABLE IF EXISTS Specialite;
DROP TABLE IF EXISTS Athlete;
DROP TABLE IF EXISTS Discipline;
DROP TABLE IF EXISTS Lieu;
DROP TABLE IF EXISTS Competition;
DROP TABLE IF EXISTS Sponsor;

CREATE TABLE Athlete(
    id_mbr SERIAL PRIMARY KEY,
    nom CHAR(50),
    prenom CHAR(50),
    date_naissance DATE,
    mbr_ville CHAR(50),
    mbr_pays CHAR(50),
    telephone INTEGER,
    SEXE BOOLEAN
);

--CREATE TABLE Specialite(
--    id_spec SERIAL PRIMARY KEY,
--    Specialite char(50),
--);

CREATE TABLE Lieu(
    id_lieu SERIAL PRIMARY KEY,
    ville char(50),
    pays char(50),
    nb_voie INTEGER
);

CREATE TABLE Competition(
    id_comp SERIAL PRIMARY KEY,
    nom_comp char(100),
    date_comp DATE,
    nb_place INT,
    cout INT
);

CREATE TABLE Sponsor(
    id_spons SERIAL PRIMARY KEY,
    nom_sponsor char(50),
    budget INT
);

CREATE TABLE Discipline(
    id_discip SERIAL PRIMARY KEY,
    nom_discip char(50)
);

CREATE TABLE Localisation(
    id_lieu INT,
    id_comp INT,
    PRIMARY KEY(id_lieu, id_comp),
    FOREIGN KEY(id_lieu) REFERENCES Lieu(id_lieu),
    FOREIGN KEY(id_comp) REFERENCES Competition(id_comp)

);


CREATE TABLE Sponsorise(
    id_comp INT,
    id_spons INT,
    budget INT,
    PRIMARY KEY(id_comp, id_spons),
    FOREIGN KEY (id_comp) REFERENCES Competition(id_comp),
    FOREIGN KEY (id_spons) REFERENCES Sponsor(id_spons)
);

CREATE TABLE Participe(
    id_comp INT,
    id_mbr INT,
    id_discip INT,
    resulat INT,
    PRIMARY KEY (id_comp, id_mbr, id_discip),
    FOREIGN KEY (id_comp) REFERENCES Competition(id_comp),
    FOREIGN KEY (id_mbr) REFERENCES Athlete(id_mbr),
    FOREIGN KEY (id_discip) REFERENCES Discipline(id_discip)
);

CREATE TABLE Specialite (
    id_mbr INT,
    id_discip INT,
    PRIMARY KEY(id_mbr, id_discip),
    FOREIGN KEY (id_mbr) REFERENCES Athlete(id_mbr),
    FOREIGN KEY (id_discip) REFERENCES Discipline(id_discip)
);
