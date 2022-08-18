use CentroMedico;

SELECT * FROM Paciente;

SELECT idPaciente, nombre, apellido FROM Paciente;

INSERT INTO Paciente VALUES('Gilberto', 'Alarcon', '2000-10-22', 'Agua Fría 23', 'MEX', '', '', '');

INSERT INTO Paciente(nombre, apellido, fNacimiento, domicilio, idPais) VALUES('Gilberto', 'Alarcon', '2000-10-22', 'Agua Fría 23', 'MEX');


SELECT * FROM Paciente WHERE apellido = 'Alarcon';

DELETE FROM Paciente WHERE idPaciente in(8, 9);


UPDATE Paciente SET email = 'mauri.ar3@gmail.com' WHERE idPaciente = 1;