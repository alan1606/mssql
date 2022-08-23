alter PROC UPD_Pat(
	@patId Paciente,
	@dni varchar(20),
	@name varchar(50),
	@lastName varchar(50),
	@home varchar(50),
	@tel varchar(20),
	@email varchar(30),
	@observation Observacion
)
AS
SET NOCOUNT ON
/*
	select * from Paciente


*/

IF EXISTS(SELECT idPaciente FROM Paciente WHERE idPaciente = @patId)
BEGIN
	IF @dni != '' and NOT EXISTS(SELECT idPaciente FROM Paciente WHERE idPaciente = @patId and dni = @dni)
		UPDATE Paciente SET dni = @dni WHERE idPaciente = @patId

	IF @name != '' and NOT EXISTS(SELECT idPaciente FROM Paciente WHERE idPaciente = @patId and nombre = @name)
		UPDATE Paciente SET nombre = @name WHERE idPaciente = @patId

	IF @lastName != '' and NOT EXISTS(SELECT idPaciente FROM Paciente WHERE idPaciente = @patId and apellido = @lastName)
		UPDATE Paciente SET apellido = @lastName WHERE idPaciente = @patId

	IF @home != '' and NOT EXISTS(SELECT idPaciente FROM Paciente WHERE idPaciente = @patId and domicilio = @home)
		UPDATE Paciente SET nombre = @home WHERE idPaciente = @patId

	IF @tel != '' and NOT EXISTS(SELECT idPaciente FROM Paciente WHERE idPaciente = @patId and telefono = @tel)
		UPDATE Paciente SET telefono = @tel WHERE idPaciente = @patId

	IF @email != '' and NOT EXISTS(SELECT idPaciente FROM Paciente WHERE idPaciente = @patId and email = @email)
		UPDATE Paciente SET email = @email WHERE idPaciente = @patId

	IF @observation != '' and NOT EXISTS(SELECT idPaciente FROM Paciente WHERE idPaciente = @patId and observacion = @observation)
		UPDATE Paciente SET observacion = @observation WHERE idPaciente = @patId

END
ELSE
	SELECT 0 AS result


EXEC UPD_Pat 1,'' , 'ALAN', 'AGUIRRE R', 'LA CUESTA 63', 6271065661, 'alan@outlook.com', 'updated'

-- ID, DNI, NAME, LASTNAME, HOME, TEL, EMAIL, OBSERVATION
-- SELECT * FROM PACIENTE