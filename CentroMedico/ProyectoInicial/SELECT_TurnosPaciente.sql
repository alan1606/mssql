ALTER PROC SELECT_TurnosPaciente(
	@patientId Paciente
)
AS

SET NOCOUNT ON


IF EXISTS(
	SELECT * FROM Paciente P 
	INNER JOIN TurnoPaciente TP 
	ON TP.idPaciente = P.idPaciente
	INNER JOIN Turno T 
	ON T.idTurno = TP.idTurno
	LEFT JOIN MedicoEspecialidad M
	ON M.idMedico = TP.idMedico 
	WHERE P.idPaciente = @patientId
)
SELECT * FROM Paciente P 
INNER JOIN TurnoPaciente TP 
ON TP.idPaciente = P.idPaciente
INNER JOIN Turno T 
ON T.idTurno = TP.idTurno
LEFT JOIN MedicoEspecialidad M
ON M.idMedico = TP.idMedico 
WHERE P.idPaciente = @patientId

ELSE 
	SELECT 0 AS resultado



EXEC SELECT_TurnosPaciente 11
