create database PeliculasYSalas
use PeliculasYSalas

create table Peliculas(
nom_peli varchar(30),
calificacion_edad int,
cod_peli int,
Constraint pk_kcod_peli primary key(cod_peli))

INSERT INTO Peliculas VALUES('Star Wars', 13, 1)
INSERT INTO Peliculas VALUES('Avengers:End Game', 13, 2)
INSERT INTO Peliculas VALUES('Los juegos del hambre', 16, 3)
INSERT INTO Peliculas VALUES('In Silence', 16, 4)
INSERT INTO Peliculas VALUES('Avatar', 13, 5)

create table Salas(
nom_salas varchar(15),
cod_sala int,
codigo_peli1 int,
Constraint pk_kcod_sala primary key(cod_sala),
Constraint fk_kcod_peli1 foreign key(codigo_peli1) references Peliculas(cod_peli))

INSERT INTO Salas VALUES('Sala Hoyts', 10, 1)
INSERT INTO Salas VALUES('Sala Palermo', 11, 2)
INSERT INTO Salas VALUES('Sala Movie', 12, NULL)
INSERT INTO Salas VALUES('Sala Cine', 13, 4)
INSERT INTO Salas VALUES('Sala Argenta', 14, NULL)

Select * from Salas INNER JOIN Peliculas ON Salas.codigo_peli1 = Peliculas.cod_peli