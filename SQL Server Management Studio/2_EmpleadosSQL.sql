create database Empleados
use Empleados

create table Departamento(
nom_dep varchar(30),
cod_dep int,
presupuesto money,
Constraint pk_kcod_dep primary key(cod_dep))

INSERT INTO Departamento VALUES('Hotel Panamericano', 77, 50000)
INSERT INTO Departamento VALUES('Hotel Transilvania', 37, 425000)
INSERT INTO Departamento VALUES('Hotel Lepark', 13, 175000)
INSERT INTO Departamento VALUES('Hotel Morrison', 14, 250000)
INSERT INTO Departamento VALUES('Hotel Zoom', 15, 100000)

create table Empleado(
nom_emp varchar(15),
ape_emp varchar(15),
DNI int,
cod_dep1 int,
Constraint pk_kDNI primary key(DNI),
Constraint fk_kcod_dep1 foreign key(cod_dep1) references Departamento(cod_dep))

INSERT INTO Empleado VALUES('Jorge', 'Villareal', 60518613, 77)
INSERT INTO Empleado VALUES('Maria', 'Gonzales', 62418613, 77)
INSERT INTO Empleado VALUES('Alfredo', 'Rojas', 63548623, 37)
INSERT INTO Empleado VALUES('Jose', 'Gonzales', 64515623, 14)
INSERT INTO Empleado VALUES('Joel', 'Perez', 65758673, 14)

Select * from Empleado where cod_dep1=14
Select * from Empleado where cod_dep1=37 or cod_dep1=77
Select SUM(presupuesto) from Departamento
Select nom_emp, ape_emp, DNI, nom_dep, cod_dep, presupuesto from Empleado INNER JOIN Departamento ON Empleado.cod_dep1 = Departamento.cod_dep
