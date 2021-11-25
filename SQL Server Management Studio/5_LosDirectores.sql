create database LosDirectores
use LosDirectores

create table Despacho(
capacidad int,
num_desp int,
Constraint pk_knum_desp primary key(num_desp))

INSERT INTO Despacho VALUES(100, 1)
INSERT INTO Despacho VALUES(150, 2)
INSERT INTO Despacho VALUES(200, 3)
INSERT INTO Despacho VALUES(250, 4)
INSERT INTO Despacho VALUES(300, 5)

create table Director(
nom_apelli varchar(50),
DNI int,
DNI_jefe int,
num_desp1 int,
Constraint pk_kDNI primary key(DNI),
Constraint fk_knum_desp1 foreign key(num_desp1) references Despacho(num_desp))

INSERT INTO Director VALUES('Gabriel Brizuela', 41234567, 51234567, 1)
INSERT INTO Director VALUES('Danilo Bautista', 42123456, 521223456, 2)
INSERT INTO Director VALUES('Jose Acosta', 43123456, 53123456, 3)
INSERT INTO Director VALUES('Agustin Mora', 44123456, 54123456, 4)
INSERT INTO Director VALUES('Maria Silva', 45123456, 55123456, 5)

Select nom_apelli, capacidad from Director INNER JOIN Despacho ON Director.num_desp1 = Despacho.num_desp
