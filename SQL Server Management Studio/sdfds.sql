create database Estudio
use Estudio

CREATE TABLE Persona (nombre VARCHAR(20), apellido varchar(20), edad int)

INSERT INTO Persona VALUES ('pepe', 'mujica', 45)
INSERT INTO Persona VALUES ('jose', 'acosra', 18)
INSERT INTO Persona VALUES ('gaby', 'brizuela', 20)
INSERT INTO Persona VALUES ('agustin', 'mora', 10)

Select * from Persona

create trigger Tr_Personas_insert
on Persona for insert
as
print 'hubo un cambio en la tabla'

INSERT INTO Persona VALUES ('agustin', 'morita', 10)

delete from Persona where apellido='morita'

create trigger Tr_Personas_delete
on Persona for delete
as
print 'se elimino algo en la tabla'


