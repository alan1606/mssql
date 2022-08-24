DECLARE @turns TABLE(id int IDENTITY(1,1), turnId Turno, patientId Paciente)

DECLARE @patientId Paciente
SET @patientId = 11


INSERT INTO @turns(turnId, patientId)
SELECT TP.idTurno, P.idPaciente FROM Paciente P
INNER JOIN TurnoPaciente TP
ON TP.idPaciente = P.idPaciente


DECLARE @i int = 1
DECLARE @tableLenght int = (select count(*) FROM @turns)

WHILE @i <= @tableLenght
BEGIN
	
	IF (SELECT patientId FROM @turns WHERE id = @i) <> @patientId
		DELETE FROM @turns WHERE id = @i

	SET @i = @i+1
END


SELECT * FROM Paciente P
INNER JOIN @turns T
ON T.patientId = P.idPaciente