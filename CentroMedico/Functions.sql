SELECT MAX(idPaciente) FROM Paciente;

SELECT apellido, MIN(idPaciente) FROM Paciente GROUP BY apellido;

SELECT SUM(idPaciente) FROM Paciente;

SELECT apellido, SUM(idPaciente) FROM Paciente GROUP BY(apellido);

SELECT AVG(idPaciente) FROM Paciente;

SELECT COUNT(*) FROM Paciente;

SELECT * FROM Turno;

SELECT estado FROM Turno GROUP BY(estado) HAVING COUNT(estado) = 1;