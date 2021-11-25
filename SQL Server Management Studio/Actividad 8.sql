create database Actividad_8_Ej_1
use Actividad_8_Ej_1

create table Personas(nombre varchar(20), edad int)

insert into Personas values('Gabriel',17);
insert into Personas values('Mauricio',21);
insert into Personas values('Ismael',23);
insert into Personas values('Lionel',15);
insert into Personas values('Jose',33);
insert into Personas values('Ronaldo',44);
insert into Personas values('Alfredo',15);
insert into Personas values('Pepe',10);

DELETE from Personas WHERE edad=21

Select * from Personas