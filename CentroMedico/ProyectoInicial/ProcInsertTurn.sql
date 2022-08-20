--use CentroMedico select * from Turno select * from TurnoPaciente
/*
	estado 0 = pendiente
	estado 1 = realizado
	estado 2 = cancelado
*/


ALTER PROCEDURE INSERT_TURN(
	@fechaTurno char(14), --yyyymmdd hh:mm
	@idPaciente Paciente,
	@idMedico Medico,
	@observacion Observacion
)
AS

SET NOCOUNT ON

IF NOT EXISTS(SELECT TOP 1 idTurno FROM Turno WHERE fechaTurno = @fechaTurno)		------------------------------------------------------------------------------------------INSERT NEW TURN
BEGIN
	INSERT INTO Turno(fechaTurno, estado, observacion)
	VALUES(@fechaTurno, 0, @observacion)

	DECLARE @auxIdTurno Turno;
	SET @auxIdTurno = @@IDENTITY --GET LAST IDENTITY ID INSERTED

	INSERT INTO TurnoPaciente(idTurno, idPaciente, idMedico)
	VALUES(@auxIdTurno, @idPaciente, @idMedico)

	PRINT('The turn has been successfully inserted')
	RETURN
END-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ELSE /* Patient alredy exists	*/
BEGIN
	PRINT('Turn alredy exists')
	RETURN
END-----------------------------------------------------