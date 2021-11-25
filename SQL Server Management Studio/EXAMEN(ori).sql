Create database EXAMEN
Use EXAMEN

create table Empresa(
cod_emp int,
nombre varchar(20),
direccion varchar(30),
telefono int,
paginaweb varchar(30),
Constraint pk_kCod_emp primary key(cod_emp))

INSERT INTO Empresa VALUES(1, 'Colorem', 'Jose C Paz', 60518613, 'Colorem.com')
INSERT INTO Empresa VALUES(2, 'Amazon', 'Mardel', 62418613, 'Amazon.com')
INSERT INTO Empresa VALUES(3, 'Freddo', 'La rioja', 63548623, 'Freddo.com')
INSERT INTO Empresa VALUES(4, 'Linux', 'Cordoba', 64515623, 'Linux.com')
INSERT INTO Empresa VALUES(5, 'Json', 'Mendoza', 65758673, 'Json.com')

-------------------------------------------------------------------------------------

create table Clientes(
id_cli int,
nom_cli varchar(20),
ape_cli varchar(20),
phone int,
cod_emp1 int,
Constraint fk_kcod_dep1 foreign key(cod_emp1) references Empresa(cod_emp))

INSERT INTO Clientes VALUES(10, 'Pepe', 'Mujica', 11111, 1)
INSERT INTO Clientes VALUES(20, 'Alberto', 'Fernandez', 22222, 2)
INSERT INTO Clientes VALUES(30, 'Domingo', 'Peron', 33333, 3)
INSERT INTO Clientes VALUES(40, 'Cristina', 'Kirchner', 44444, 4)
INSERT INTO Clientes VALUES(50, 'Jesus', 'Nazaret', 55555, 5)

------------------------------------------------------------------------------------------

create table Empleado(
cod_emple varchar(15),
nom_emp varchar(15),
ape_emp varchar(15),
direccion varchar(30),
tel int,
mail varchar(20),
cargo varchar(20),
salario_hora money,
cod_emp2 int,
horas_trabajadas int
Constraint pk_kCod_emple primary key(cod_emple),
Constraint fk_kcod_emp2 foreign key(cod_emp2) references Empresa(cod_emp))

INSERT INTO Empleado VALUES(1, 'Jorge', 'Villareal', 'Alvear', 12345, 'jorge@gmail.com', 'logistica', $100, 1, 8)
INSERT INTO Empleado VALUES(2, 'Maria', 'Gonzales', 'Sarmiento', 54321, 'Maria@gmail.com', 'logistica', $100, 2, 8)
INSERT INTO Empleado VALUES(3, 'Alfredo', 'Rojas', 'Belgrano', 12354, 'Alf@gmail.com', 'mecanica', $50, 3, 8)
INSERT INTO Empleado VALUES(4, 'Jose', 'Gonzales', 'Balvanera', 45123, 'Jose@gmail.com', 'logistica', $100, 4, 8)
INSERT INTO Empleado VALUES(5, 'Joel', 'Perez', 'San Cristobal', 32154, 'Joel@gmail.com', 'aerodinamica', $200, 5, 8)

drop table Empleado
select * from empleado