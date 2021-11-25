create database LosGrandesAlmacenes
use LosGrandesAlmacenes

create table Maquinas_Registradoras(
piso int,
cod_maquina int,
Constraint pk_kcod_maquina primary key(cod_maquina))

INSERT INTO Maquinas_Registradoras VALUES(1, 1)
INSERT INTO Maquinas_Registradoras VALUES(2, 2)
INSERT INTO Maquinas_Registradoras VALUES(2, 3)
INSERT INTO Maquinas_Registradoras VALUES(3, 4)
INSERT INTO Maquinas_Registradoras VALUES(3, 5)

create table Producto(
nombre_prod varchar(30),
precio int,
cod_prod int,
Constraint pk_kcod_prod primary key(cod_prod))

INSERT INTO Producto VALUES('Tornillo', 20, 10)
INSERT INTO Producto VALUES('Clavo', 10, 11)
INSERT INTO Producto VALUES('Boligoma', 30, 12)
INSERT INTO Producto VALUES('Plasticola', 50, 13)
INSERT INTO Producto VALUES('Liquid Paper', 100, 14)

create table Cajero(
nombre_apellido varchar(50),
cod_cajero int,
Constraint pk_kcod_cajero primary key(cod_cajero))

INSERT INTO Producto VALUES('Jose Argento', 20)
INSERT INTO Producto VALUES('Gabriel Brizuela', 21)
INSERT INTO Producto VALUES('Jose Acosta', 22)
INSERT INTO Producto VALUES('Agustin Mora', 23)
INSERT INTO Producto VALUES('Elian Aristaran', 24)

create table Maquinas_Producto_Cajero(
cod_cajero1 int,
cod_maquina1 int,
cod_producto1 int,
Constraint fk_kcod_cajero1 foreign key(cod_cajero1) references Cajero(cod_cajero),
Constraint fk_kcod_maquina1 foreign key(cod_maquina1) references Maquinas_Registradoras(cod_maquina),
Constraint fk_kcod_producto1 foreign key(cod_producto1) references Producto(cod_prod))