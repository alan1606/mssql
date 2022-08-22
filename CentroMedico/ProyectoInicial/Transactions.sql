
SELECT * FROM Paciente

BEGIN TRANSACTION		--The table locks until commit or rollback
	UPDATE Paciente SET telefono = 444 WHERE apellido = 'Alarcon'

	if @@ROWCOUNT = 1
		COMMIT TRANSACTION
	else
		ROLLBACK TRANSACTION



SELECT * FROM Turno

BEGIN TRAN
	DELETE FROM Turno WHERE estado = 1

	if @@ROWCOUNT = 1
		COMMIT TRAN
	ELSE
		ROLLBACK TRAN