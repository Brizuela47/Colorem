create database LosInvestigadores
use LosInvestigadores

create table Facultad(
nombre_facu varchar(50),
cod_facultad int,
Constraint pk_kcod_Facultad primary key(cod_facultad))

INSERT INTO Facultad VALUES('Saavedra', 1)
INSERT INTO Facultad VALUES('UTN', 2)
INSERT INTO Facultad VALUES('UBA', 3)
INSERT INTO Facultad VALUES('Sarmiento', 4)
INSERT INTO Facultad VALUES('San Martin', 5)

create table Investigadores(
nombre_apellido varchar(30),
DNI_investig int,
cod_facultad1 int,
Constraint pk_kcod_investig primary key(DNI_investig),
Constraint fk_kcod_facultad1 foreign key(cod_facultad1) references Facultad(cod_facultad))

INSERT INTO Investigadores VALUES('Gabriel Brizuela', 45821222, 2)
INSERT INTO Investigadores VALUES('Jose Acosta', 45821223, 5)
INSERT INTO Investigadores VALUES('Agustin Mora', 45821242, 1)
INSERT INTO Investigadores VALUES('Nicolas Diaz', 45821422, 3)
INSERT INTO Investigadores VALUES('Thiago Moreira', 45842242, 4)

create table Equipo(
nombre_equipo varchar(50),
num_serie int,
cod_facultad2 int,
Constraint pk_knum_serie primary key(num_serie),
Constraint fk_kcod_facultad2 foreign key(cod_facultad2) references Facultad(cod_facultad))

INSERT INTO Equipo VALUES('Equipo Amigos47', 0001, 1)
INSERT INTO Equipo VALUES('Equipo Flash', 0002, 2)
INSERT INTO Equipo VALUES('Equipo Super', 0003, 3)
INSERT INTO Equipo VALUES('Equipo Power', 0004, 4)
INSERT INTO Equipo VALUES('Equipo Maceta', 0005, 5)

create table Investigadores_Equipo(
comienzo datetime,
fin datetime,
DNI_investig1 int,
num_serie1 int,
Constraint fk_kDNI_investig1 foreign key(DNI_investig1) references Investigadores(DNI_investig),
Constraint fk_knum_serie1 foreign key(num_serie1) references Equipo(num_serie))