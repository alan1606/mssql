--use CentroMedico; describe Paciente

CREATE PROCEDURE INSERT_PATIENT(
	@dni varchar(20),
	@nombre varchar(50),
	@apellido varchar(50), 
	@fNacimiento varchar(8),
	@domicilio varchar(50),
	@idPais char(3), 
	@telefono varchar(20)='',
	@email varchar(30),
	@observacion varchar(1000) = ''
)
AS

IF NOT EXISTS(SELECT idPaciente FROM Paciente WHERE dni = @dni)		------------------------------------------------------------------------------------------INSERT NEW PATIENT
BEGIN
	INSERT INTO Paciente(dni, nombre, apellido, fNacimiento, domicilio, idPais, telefono, email, observacion)
	VALUES(@dni, @nombre, @apellido, @fNacimiento, @domicilio, @idPais, @telefono, @email, @observacion)

	PRINT('The patient has been successfully inserted')
	RETURN
END-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ELSE /* Patient alredy exists	*/
BEGIN
	PRINT('Patient alredy exists')
	RETURN
END-----------------------------------------------------