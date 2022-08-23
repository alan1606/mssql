ALTER PROC UPD_Turno(
	@turnId Turno,
	@status tinyint,
	@observation Observacion
)
AS 
SET NOCOUNT ON

/*
	select * from Turno
	select * from TurnoPaciente

*/

IF EXISTS(SELECT idTurno FROM Turno WHERE idTurno = @turnId)
	UPDATE Turno SET estado = @status, observacion = @observation WHERE idTurno = @turnId
ELSE
	SELECT 0 AS resultado


EXEC UPD_Turno 5,2, 'Se canceló'