SELECT * FROM Paciente WHERE apellido = 'Alarcon';

SELECT TOP 2 * from Paciente;

SELECT TOP 1 * FROM Turno ORDER BY fechaTurno DESC;

SELECT * FROM Paciente ORDER BY fNacimiento DESC; 

SELECT DISTINCT idPais, apellido from Paciente;

SELECT idPais, COUNT(idPais) as Cantidad FROM Paciente GROUP BY idPais;