create database LosInvestigadores
use LosInvestigadores

create table Facultad(
nombre_facu varchar(50),
cod_facultad int,
Constraint pk_kcod_facultad primary key(cod_facultad))

create table Investigadores(
nombre_apellido varchar(30),
DNI_investig int,
cod_facultad1 int,
Constraint pk_kDNI_investig primary key(DNI_investig),
Constraint fk_kcod_facultad1 foreign key(cod_facultad1) references Facultad(cod_facultad))

create table Equipo(
nombre_equipo varchar(50),
num_serie int,
cod_facultad2 int,
Constraint pk_knum_serie primary key(num_serie),
Constraint fk_kcod_facultad2 foreign key(cod_facultad2) references Facultad(cod_facultad))

create table Investigadores_Equipo(
comienzo datetime,
fin datetime,
DNI_investig1 int,
num_serie1 int,
Constraint fk_DNI_investig1 foreign key(DNI_investig1) references Investigadores(DNI_investig),
Constraint fk_num_serie1 foreign key(num_serie1) references Equipo(num_serie))