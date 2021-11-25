create database PiezasYProveedores
use PiezasYProveedores

create table Piezas(
nom_pieza varchar(30),
cod_pieza int,
Constraint pk_kcod_pieza primary key(cod_pieza))

INSERT INTO Piezas VALUES('Tornillo', 1)
INSERT INTO Piezas VALUES('Clavo', 2)
INSERT INTO Piezas VALUES('Arandela', 3)
INSERT INTO Piezas VALUES('Bugia', 4)
INSERT INTO Piezas VALUES('Rueda Dentada', 5)

create table Proveedor(
nom_proveedor varchar(30),
id_proveedor int,
Constraint pk_kid_proveedor primary key(id_proveedor))

INSERT INTO Proveedor VALUES('Amazon', 1)
INSERT INTO Proveedor VALUES('Mercado Libre', 2)
INSERT INTO Proveedor VALUES('Tornillitos Smith', 3)
INSERT INTO Proveedor VALUES('Ferreteria MIguelito', 4)
INSERT INTO Proveedor VALUES('Ferreteria Don Juan', 5)

create table Piezas_Proveedor(
precio int,
id_proveedor1 int,
cod_piezas1 int,
Constraint fk_kid_proveedor1 foreign key(id_proveedor1) references Proveedor(id_proveedor),
Constraint fk_kcod_piezas1 foreign key(cod_piezas1) references Piezas(cod_pieza))

INSERT INTO Piezas_Proveedor VALUES(100, 4, 5)
INSERT INTO Piezas_Proveedor VALUES(50, 3, 1)
INSERT INTO Piezas_Proveedor VALUES(75, 5, 3)
INSERT INTO Piezas_Proveedor VALUES(150, 2, 2)
INSERT INTO Piezas_Proveedor VALUES(200, 1, 4)

Select nom_pieza from Piezas
Select * from Piezas_Proveedor
Select nom_proveedor from Piezas_Proveedor INNER JOIN Proveedor ON Piezas_Proveedor.id_proveedor1 = Proveedor.id_proveedor where cod_piezas1=1