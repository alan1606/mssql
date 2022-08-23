ALTER PROC SELECT_TurnosPaciente(
	@patientId Paciente
)
AS

SET NOCOUNT ON



SELECT * FROM Paciente P 
INNER JOIN TurnoPaciente TP 
ON TP.idPaciente = P.idPaciente
INNER JOIN Turno T 
ON T.idTurno = TP.idTurno
AND TP.idPaciente = P.idPaciente
LEFT JOIN MedicoEspecialidad M
ON M.idMedico = TP.idMedico 
WHERE P.idPaciente = @patientId


EXEC SELECT_TurnosPaciente 11
