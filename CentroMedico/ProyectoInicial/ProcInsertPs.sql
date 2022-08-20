--use CentroMedico 


ALTER PROCEDURE INSERT_PHYSICIAN(
	@name varchar(50),
	@lastname varchar(50),
	@idSpeciality int,
	@descSpecialty varchar(30)
)
AS

SET NOCOUNT ON

IF NOT EXISTS(SELECT TOP 1 idMedico FROM Medico WHERE nombre = @name and apellido = @lastname)		------------------------------------------------------------------------------------------INSERT NEW
BEGIN
	INSERT INTO Medico(nombre, apellido)
	VALUES(@name, @lastname)

	DECLARE @auxIdPhy int;
	SET @auxIdPhy = @@IDENTITY --GET LAST IDENTITY ID INSERTED

	INSERT INTO MedicoEspecialidad(idMedico, idEspecialidad, descripcion)
	VALUES(@auxIdPhy, @idSpeciality, @descSpecialty)

	PRINT('The physician has been successfully inserted')
	RETURN
END-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ELSE /* 	*/
BEGIN
	PRINT('Physician alredy exists')
	RETURN
END-----------------------------------------------------