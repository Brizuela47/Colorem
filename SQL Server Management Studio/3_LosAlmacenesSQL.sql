create database LosAlmacenes
use LosAlmacenes

create table Almacen(
lugar varchar(30),
capacidad int,
cod_almac int,
Constraint pk_kcod_almac primary key(cod_almac))

INSERT INTO Almacen VALUES('LaFerrere', 150, 1)
INSERT INTO Almacen VALUES('Balvanera', 250, 2)
INSERT INTO Almacen VALUES('Boedo', 300, 3)
INSERT INTO Almacen VALUES('San Cristobal', 125, 4)
INSERT INTO Almacen VALUES('Paque Patricios', 225, 5)

create table Cajas(
contenido varchar(15),
valor int,
num_referen int,
cod_almac1 int,
Constraint pk_knum_referen primary key(num_referen),
Constraint fk_kcod_almac1 foreign key(cod_almac1) references Almacen(cod_almac))

INSERT INTO Cajas VALUES('Papel', 100, 10, 1)
INSERT INTO Cajas VALUES('Agua', 250, 11, 2)
INSERT INTO Cajas VALUES('Alimentos', 300, 13, 3)
INSERT INTO Cajas VALUES('Papel', 100, 14, 4)
INSERT INTO Cajas VALUES('Papel', 100, 15, 5)

Select SUM(valor) from Cajas
Select num_referen, lugar from Cajas INNER JOIN Almacen ON Cajas.cod_almac1 = Almacen.cod_almac