create database Banco
use Banco

create table Cuenta(id_cli1 int, id_cta int, saldo money,
constraint pk_kid_cta primary key(id_cta),
constraint fk_kid_cli1 foreign key(id_cli1) references Cliente(id_cli))


create table Cliente (id_cli int, apellido varchar(20), nombre varchar(20),
constraint pk_kid_cli primary key(id_cli))

create table Movimiento (id_cta1 int, id_movimiento int, tipo_mov varchar(20), monto money, fecha datetime, id_cli2 int,
constraint fk_kid_cli2 foreign key(id_cli2) references Cliente(id_cli),
constraint fk_kid_cta1 foreign key(id_cta1) references Cuenta(id_cta))

insert into Cuenta values(1, 11, 0);
insert into Cuenta values(2, 12, 950);
insert into Cuenta values(3, 13, 400000);
insert into Cuenta values(4, 14, 1000000);

insert into Cliente values(1, 'Brizuela', 'Gabriel');
insert into Cliente values(2, 'Mora', 'Agustin');
insert into Cliente values(3, 'Grillo', 'Pepe');
insert into Cliente values(4, 'Figueredo', 'Mauricio');

insert into Movimiento values(11, 1, NULL, 0, '16/09/2021', 1);
insert into Movimiento values(12, 2, 'Plazo fijo', 950, '15/09/2021', 2);
insert into Movimiento values(13, 3, 'Plazo fijo', 400000, '14/09/2021', 3);
insert into Movimiento values(14, 4, 'Cuenta Corriente', 1000000, '13/09/2021', 4);

select * from Cuenta
select * from Cliente
select * from Movimiento

drop table Cuenta
drop table Cliente
drop table Movimiento
