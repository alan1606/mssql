CREATE TRIGGER CreatedPatient ON Paciente
AFTER INSERT 
AS

IF (SELECT idPais FROM inserted) = 'MEX'
	INSERT INTO PacienteLog(idPaciente, idPais, fechaAlta)
		SELECT i.idPaciente, i.idPais, GETDATE() FROM inserted i



SELECT * FROM PacienteLog