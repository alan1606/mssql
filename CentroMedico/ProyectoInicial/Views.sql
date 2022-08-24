ALTER VIEW PendientPatientsAndTurns AS

SELECT P.idPaciente, P.nombre, P.apellido, T.idTurno, T.estado	
	FROM Paciente P
	INNER JOIN TurnoPaciente Tp
	ON TP.idPaciente = P.idPaciente
	INNER JOIN Turno T
	ON T.idTurno = TP.idTurno
WHERE ISNULL(T.estado, 0) = 0

GO

SELECT * FROM PendientPatientsAndTurns

SELECT * FROM TestView