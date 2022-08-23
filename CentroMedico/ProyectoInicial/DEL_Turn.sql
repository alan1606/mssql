ALTER PROC DEL_Turn(
	@turnId Turno
)
AS
SET NOCOUNT ON
IF EXISTS(SELECT idTurno FROM Turno WHERE idTurno = @turnId)
BEGIN
	IF EXISTS(SELECT * FROM TurnoPaciente WHERE idTurno = @turnId)
		DELETE FROM TurnoPaciente WHERE idTurno = @turnId

	DELETE FROM Turno WHERE idTurno = @turnId
END
ELSE
	SELECT 0 AS result


/*
	SELECT * FROM TURNO
	SELECT * FROM TURNOPACIENTE
*/
EXEC DEL_Turn 2