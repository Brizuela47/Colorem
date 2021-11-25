create database Biblioteca
use Biblioteca

create table Libros(Titulo varchar(40), Autor varchar(40), Editorial varchar(40), Precio money, Stock int, Cod_libro int, Tot_ventas int)

create table Ventas(Cod_venta int, Fecha_venta datetime, Cod_libro int, Precio money, Cant_vendida int)

insert into Libros values('Martín Fierro','Jose Hernandez','Imprenta de la Pampa', 1000, 10, 10, 15);
insert into Libros values('El principito','Antoine de Saint-Exupéry','Salamandra', 1500, 70, 20, 9);
insert into Libros values('La metamorfosis','Franz Kafka','Kurt Wolff Verlag', 100, 3, 30, 5);
insert into Libros values('Sherlock Holmes','Sir Arthur Conan Doyle','Editorial Claridad', 300, 1, 40, 24);
insert into Libros values('Las aventuras de Enola Holmes','Nancy Springer','Penguin Group', 400, 109, 50, 70);
insert into Libros values('Harry Potter','J. K. Rowling','Bloomsbury Publishing', 700, 100, 60, 12);
insert into Libros values('El alquimista','Paulo Coelho','Penguin Random House', 350, 70, 70, 14);

insert into Ventas values(01,'20/08/2021', 10, 1000, 15);
insert into Ventas values(02,'19/08/2021', 20, 1500, 9);
insert into Ventas values(03,'18/08/2021', 30, 100, 5);
insert into Ventas values(04,'17/08/2021', 40, 300, 24);
insert into Ventas values(05,'16/08/2021', 50, 400, 70);
insert into Ventas values(06,'15/08/2021', 60, 700, 12);
insert into Ventas values(07,'14/08/2021', 70, 350, 14);

Select * from Libros
Select * from Ventas

DROP TABLE IF EXISTS Libros