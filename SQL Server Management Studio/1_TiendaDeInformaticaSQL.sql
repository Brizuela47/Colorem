create database TiendaDeInformatica
use TiendaDeInformatica

create table Fabricante(
nom_fabricante varchar(30),
cod_fabricante int,
Constraint pk_kcod_fabricante primary key(cod_fabricante))

INSERT INTO Fabricante VALUES('StarkIndustries', 1)
INSERT INTO Fabricante VALUES('StarLabs', 2)
INSERT INTO Fabricante VALUES('MercadoLibre', 3)
INSERT INTO Fabricante VALUES('Amazon', 4)
INSERT INTO Fabricante VALUES('Wish', 5)


create table Producto(
nom_prod varchar(15),
precio money,
cod_producto int,
cod_fabricante1 int,
Constraint pk_kcod_producto primary key(cod_producto),
Constraint fk_kcod_fabricante1 foreign key(cod_fabricante1) references Fabricante(cod_fabricante))

INSERT INTO Producto VALUES('Escudo', 210, 10, 1)
INSERT INTO Producto VALUES('Espada', 250, 20, 2)
INSERT INTO Producto VALUES('Celular', 80, 30, 3)
INSERT INTO Producto VALUES('Alexa', 600, 40, 4)
INSERT INTO Producto VALUES('Cargador', 110, 50, 5)

Select AVG(precio) from Producto
Select AVG(precio) from Producto where cod_fabricante1 = 1
Select nom_prod, precio from Producto where precio >= 180 ORDER BY precio DESC
Select nom_prod, precio from Producto where precio >= 180 ORDER BY nom_prod ASC
Select nom_prod, precio, nom_fabricante from Producto INNER JOIN Fabricante ON Fabricante.cod_fabricante = Producto.cod_fabricante1