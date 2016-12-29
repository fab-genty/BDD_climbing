DROP TABLE IF EXISTS Discipline CASCADE;
DROP TABLE IF EXISTS Localisation CASCADE;
DROP TABLE IF EXISTS Sponsorise CASCADE;
DROP TABLE IF EXISTS Participe CASCADE;
DROP TABLE IF EXISTS Specialite CASCADE;
DROP TABLE IF EXISTS Athlete CASCADE;
DROP TABLE IF EXISTS Lieu CASCADE;
DROP TABLE IF EXISTS Competition CASCADE;
DROP TABLE IF EXISTS Sponsor CASCADE;


CREATE TABLE Discipline(
    id_discip SERIAL PRIMARY KEY,
    nom_discip char(50)
);

CREATE TABLE Athlete(
    id_mbr SERIAL PRIMARY KEY,
    nom CHAR(50),
    prenom CHAR(50),
    date_naissance INTEGER,
    mbr_ville CHAR(50),
    mbr_pays CHAR(50),
    SEXE CHAR(2)
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
    id_discip INT,
    id_lieu INT,
    cout INT,
    FOREIGN KEY(id_discip) REFERENCES Discipline(id_discip),
    FOREIGN KEY(id_lieu) REFERENCES Lieu(id_lieu)

);

CREATE TABLE Sponsor(
    id_spons SERIAL PRIMARY KEY,
    nom_sponsor char(50),
    budget INT
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
    resulat FLOAT,
    PRIMARY KEY (id_comp, id_mbr),
    FOREIGN KEY (id_comp) REFERENCES Competition(id_comp),
    FOREIGN KEY (id_mbr) REFERENCES Athlete(id_mbr)
);

--CREATE TABLE Specialite (
--    id_mbr INT,
--    id_discip INT,
--    PRIMARY KEY(id_mbr, id_discip),
--    FOREIGN KEY (id_mbr) REFERENCES Athlete(id_mbr),
--    FOREIGN KEY (id_discip) REFERENCES Discipline(id_discip)
--);



--Discipline(id_discip, nom_discip)
insert into Discipline (nom_discip) values('Bloc');
insert into Discipline(nom_discip) values('Difficulte');
insert into Discipline(nom_discip) values('Vitesse');
------------------------------
------------------------------

--WOMEN
--LEAD
insert into Athlete (nom, prenom, date_naissance, mbr_ville, mbr_pays, sexe) values ('GARBRET','Janja',1999,'Smartno','Slovenie','F');
insert into Athlete (nom, prenom, date_naissance, mbr_ville, mbr_pays,  sexe)  values('VERHOEVEN','Anak',2000,'Schriek','Belgique','F');
insert into Athlete (nom, prenom, date_naissance, mbr_ville, mbr_pays,  sexe)  values('KIM','Jain',1988,'Seoul','Coree','F');
insert into Athlete (nom, prenom, date_naissance, mbr_ville, mbr_pays,  sexe)  values('MAGDALENA','Röck',1994,'Landeck','Autriche','F');
insert into Athlete (nom, prenom, date_naissance, mbr_ville, mbr_pays,  sexe)  values('MARKOVIC','Mina',1957,'Paris','France','F');
insert into Athlete (nom, prenom, date_naissance, mbr_ville, mbr_pays,  sexe)  values('ROMAIN','Salomé',1999,'Briancon','France','F');

--BOULDER
insert into Athlete (nom, prenom, date_naissance, mbr_ville, mbr_pays,  sexe)  values(' COXSEY ','Shauna',1993,'London','Angleterre','F');
insert into Athlete (nom, prenom, date_naissance, mbr_ville, mbr_pays,  sexe)  values(' KLINGER ','Petra',1980,'Zurich','Suisse','F');
insert into Athlete (nom, prenom, date_naissance, mbr_ville, mbr_pays,  sexe)  values(' NONAKA ','Miho',1973,'Tokyo','Japon','F');
--speed
insert into Athlete (nom, prenom, date_naissance, mbr_ville, mbr_pays,  sexe)  values(' JAUBERT ','Anouck',1996,'Toulouse','France','F');
insert into Athlete (nom, prenom, date_naissance, mbr_ville, mbr_pays,  sexe)  values(' RETSCHY ','Monica',1991,'München ','Allemagne','F');
insert into Athlete (nom, prenom, date_naissance, mbr_ville, mbr_pays,  sexe)  values(' YIP','Alannah',1993,'Vancouver','Canada','F');

---------------------------------------
---------------------------------------
--MEN

--athlete(id_mbr, nom, prenom, date_naissance, mbr_ville, mbr_pays, sexe)
-- LEAD
INSERT INTO Athlete (nom, prenom, date_naissance, mbr_ville, mbr_pays,  sexe)  values ('SKOFIC','Damian',1994,'Radovljica','Slovenie','M');
INSERT INTO Athlete (nom, prenom, date_naissance, mbr_ville, mbr_pays,  sexe)  values ('SCHUBERT','Jakob',1990,'Innsbruck','Autriche','M');
INSERT INTO Athlete (nom, prenom, date_naissance, mbr_ville, mbr_pays,  sexe)  values ('DESGRANGES','Romain',1982,'Sainte-Colombe','France','M');
INSERT INTO Athlete (nom, prenom, date_naissance, mbr_ville, mbr_pays,  sexe)  values ('GHISOLFI','Stefano',1993,'Turin','Italie','M');
INSERT INTO Athlete (nom, prenom, date_naissance, mbr_ville, mbr_pays,  sexe)  values ('SUPPER','Gautier',1990,'Colmar','France','M');
INSERT INTO Athlete (nom, prenom, date_naissance, mbr_ville, mbr_pays,  sexe)  values ('MCCOLL','Sean',1987,'North-Vancouver','Canada','M');

-- BOULDER
INSERT INTO Athlete (nom, prenom, date_naissance, mbr_ville, mbr_pays,  sexe)  values ('NARASAKI','Tomoa',1996,'Utunomiya','Japon','M');
INSERT INTO Athlete (nom, prenom, date_naissance, mbr_ville, mbr_pays,  sexe)  values ('FUJII','Kokoro',1992,'Hamamatsu','Japon','M');
INSERT INTO Athlete (nom, prenom, date_naissance, mbr_ville, mbr_pays,  sexe)  values ('RUBTSOV','Alexey',1988,'Moscow','Russie','M');
INSERT INTO Athlete (nom, prenom, date_naissance, mbr_ville, mbr_pays,  sexe)  values ('CHON','Jongwon',1996,'Seoul','Coree','M');

-- speed
INSERT INTO Athlete (nom, prenom, date_naissance, mbr_ville, mbr_pays,  sexe)  values ('DZIENSKI','Marcin',1993,'Tarnow','Pologne','M');
INSERT INTO Athlete (nom, prenom, date_naissance, mbr_ville, mbr_pays,  sexe)  values ('KOKORIN','Stanislav',1990,'Tyumen','Russie','M');
INSERT INTO Athlete (nom, prenom, date_naissance, mbr_ville, mbr_pays,  sexe)  values ('MAWEM','Bassa',1984,'Nancy','France','M');
INSERT INTO Athlete (nom, prenom, date_naissance, mbr_ville, mbr_pays,  sexe)  values ('ALIPOURSHENAZANDIFAR','Reza',1994,'Tehran','Iran','M');

--Lieu(id_lieu, ville, pays, nb_voie)
-- LEAD and SPEED

insert into lieu (ville, pays, nb_voie) values ('Kranj','Slovenie',17); -- 1
insert into lieu (ville, pays, nb_voie)  values ('Xiamen','Chine',17); -- 2
insert into lieu (ville, pays, nb_voie)  values ('Paris','France',20); -- 3
insert into lieu (ville, pays, nb_voie)  values ('Arco','Italie',25); -- 4
 -- BOULDER
insert into lieu (ville, pays, nb_voie)  values ('Munich','Allemagne',30); -- 5
insert into lieu (ville, pays, nb_voie)  values ('Vail','USA',15); -- 6
insert into lieu (ville, pays, nb_voie)  values ('Mumbai','Inde',28); -- 7
insert into lieu (ville, pays, nb_voie)  values ('Meiringen','Suisse',28); --8

-- LEAD and SPEED AND BOULDER
insert into lieu (ville, pays, nb_voie)  values ('Rome','Italie',34);--9

--SPEED AND BOULDER
insert into lieu (ville, pays, nb_voie)  values ('Chongqing','Chine',34);--10
insert into lieu (ville, pays, nb_voie)  values ('Nanjing','Chine',45);--11


-- date AAAA-MM-JJ
--id_discip |                     nom_discip
-----------+----------------------------------------------------
--        1 | Bloc
--        2 | Difficulte
--        3 | Vitesse
-- Competition(id_comp, nom_comp,date_comp, id_discip, id_lieu , nb_places, cout)

INSERT INTO Competition (nom_comp,date_comp, id_discip, id_lieu , cout) VALUES ('Kranj WC','2016-11-26',2,1,35657); -- 1
INSERT INTO Competition (nom_comp,date_comp, id_discip, id_lieu , cout) VALUES ('Xiamen WC','2016-10-22',2,2,45057);-- 2
INSERT INTO Competition (nom_comp,date_comp, id_discip, id_lieu , cout) VALUES ('Paris WCD','2016-09-14',2,3,127000);-- 3
INSERT INTO Competition (nom_comp,date_comp, id_discip, id_lieu , cout) VALUES ('Arco WC','2016-09-14',2,4,42786);-- 4

INSERT INTO Competition (nom_comp,date_comp, id_discip, id_lieu , cout) VALUES ('Xiamen WC','2016-10-22',3,2,4057);-- 5
INSERT INTO Competition (nom_comp,date_comp, id_discip, id_lieu , cout) VALUES ('Paris WCV','2016-09-14',3,3,17000);--6
INSERT INTO Competition (nom_comp,date_comp, id_discip, id_lieu , cout) VALUES ('Arco WC','2016-08-26',3,4,4286);-- 7

INSERT INTO Competition (nom_comp,date_comp, id_discip, id_lieu , cout) VALUES ('Paris WCB','2016-09-14',1,4,34286);-- 8
INSERT INTO Competition (nom_comp,date_comp, id_discip, id_lieu , cout) VALUES ('Munich WC','2016-08-12',1,5,53765);-- 9
INSERT INTO Competition (nom_comp,date_comp, id_discip, id_lieu , cout) VALUES ('Vail WC','2016-06-10',1,6,43295);-- 10
INSERT INTO Competition (nom_comp,date_comp, id_discip, id_lieu , cout) VALUES ('Mumbai WC','2016-05-14',1,7,23295);-- 11

--A VENIR
INSERT INTO Competition (nom_comp,date_comp, id_discip, id_lieu , cout) VALUES ('European Championship','2017-05-30',1,9,NULL);-- 12
INSERT INTO Competition (nom_comp,date_comp, id_discip, id_lieu , cout) VALUES ('European Championship','2017-05-30',2,9,NULL);-- 13
INSERT INTO Competition (nom_comp,date_comp, id_discip, id_lieu , cout) VALUES ('European Championship','2017-05-30',3,9,NULL);-- 14
INSERT INTO Competition (nom_comp,date_comp, id_discip, id_lieu , cout) VALUES ('IFSC Climbing Worldcup','2017-04-07',1,8,NULL);-- 15
INSERT INTO Competition (nom_comp,date_comp, id_discip, id_lieu , cout) VALUES ('IFSC Climbing Worldcup','2017-04-07',1,8,NULL);-- 16

INSERT INTO Competition (nom_comp,date_comp, id_discip, id_lieu , cout) VALUES ('WC Climbing Worldcup','2017-11-22',1,10,NULL);-- 17
INSERT INTO Competition (nom_comp,date_comp, id_discip, id_lieu , cout) VALUES ('WC Climbing Worldcup','2017-11-22',2,10,NULL);-- 18

INSERT INTO Competition (nom_comp,date_comp, id_discip, id_lieu , cout) VALUES ('Climbing CHINAcup','2017-09-15',1,11,NULL);-- 19
INSERT INTO Competition (nom_comp,date_comp, id_discip, id_lieu , cout) VALUES ('Climbing CHINAcup','2017-09-15',1,11,NULL);-- 20



insert into Sponsor(nom_sponsor,budget) values ('Red Bull',50000); -- 1
insert into Sponsor(nom_sponsor,budget) values ('Salomon',1000000); -- 2
insert into Sponsor(nom_sponsor,budget) values ('Petzl',10000); --3

insert into Sponsorise(id_comp, id_spons,budget) values(1,1,12981);
insert into Sponsorise(id_comp, id_spons,budget) values(2,2,15678);
insert into Sponsorise(id_comp, id_spons,budget) values(3,3,67546);
insert into Sponsorise(id_comp, id_spons,budget) values(4,1,12343);
insert into Sponsorise(id_comp, id_spons,budget) values(5,2,2789);
insert into Sponsorise(id_comp, id_spons,budget) values(6,3,2067);
insert into Sponsorise(id_comp, id_spons,budget) values(7,1,878);
insert into Sponsorise(id_comp, id_spons,budget) values(8,1,14568);
insert into Sponsorise(id_comp, id_spons,budget) values(9,2,30876);
insert into Sponsorise(id_comp, id_spons,budget) values(10,3,2095);
insert into Sponsorise(id_comp, id_spons,budget) values(11,1,7809);


--LEAD

INSERT INTO Participe(id_comp,id_mbr,resulat) values(1,1,69.6);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(2,1,24.79);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(3,1,50.05);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(4,1,44.55);

INSERT INTO Participe(id_comp,id_mbr,resulat) values(1,2,56.55);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(2,2,43.55);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(3,2,72.8);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(4,2,64.8);

INSERT INTO Participe(id_comp,id_mbr,resulat) values(1,3,37.41);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(2,3,34.17);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(3,3,46.41);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(4,3,81);

INSERT INTO Participe(id_comp,id_mbr,resulat) values(1,4,47.85);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(2,4,67);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(3,4,39.13);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(4,4,29.97);

INSERT INTO Participe(id_comp,id_mbr,resulat) values(1,5,22.62);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(2,5,36.85);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(3,5,59.15);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(4,5,7.29);

INSERT INTO Participe(id_comp,id_mbr,resulat) values(1,6,32.19);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(2,6,22.78);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(3,6,42.77);


--SPEED

INSERT INTO Participe(id_comp,id_mbr,resulat) values(5,23,18.20);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(6,23,83);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(7,23,63);

INSERT INTO Participe(id_comp,id_mbr,resulat) values(5,24,70);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(6,24,39.01);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(7,24,21.42);

INSERT INTO Participe(id_comp,id_mbr,resulat) values(5,25,56);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(6,25,45.65);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(7,25,40.95);

INSERT INTO Participe(id_comp,id_mbr,resulat) values(5,26,28);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(6,26,66.4);

INSERT INTO Participe(id_comp,id_mbr,resulat) values(5,10,60);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(6,10,66.43);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(7,10,13);

INSERT INTO Participe(id_comp,id_mbr,resulat) values(5,11,45);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(6,11,23.3);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(7,11,33.14);


INSERT INTO Participe(id_comp,id_mbr,resulat) values(5,12,75);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(6,12,21);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(7,12,12.14);







--BOULDER

INSERT INTO Participe(id_comp,id_mbr,resulat) values(8,19,95);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(9,19,88);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(10,19,56);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(11,19,44.8);

INSERT INTO Participe(id_comp,id_mbr,resulat) values(8,20,25.65);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(9,20,35.2);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(10,20,70);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(11,20,56);

INSERT INTO Participe(id_comp,id_mbr,resulat) values(8,21,40.85);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(9,21,57.2);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(10,21,45.5);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(11,21,36.4);

INSERT INTO Participe(id_comp,id_mbr,resulat) values(8,22,35.15);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(9,22,70.40);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(10,22,18.20);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(11,22,30.80);

INSERT INTO Participe(id_comp,id_mbr,resulat) values(8,18,22.8);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(10,18,32.9);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(11,18,19.04);

INSERT INTO Participe(id_comp,id_mbr,resulat) values(9,7,55);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(10,7,57);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(11,7,24);

INSERT INTO Participe(id_comp,id_mbr,resulat) values(8,8,76);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(9,8,6.21);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(10,8,31);

INSERT INTO Participe(id_comp,id_mbr,resulat) values(8,9,60.80);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(9,9,69);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(10,9,36.72);
INSERT INTO Participe(id_comp,id_mbr,resulat) values(11,9,65.00);
