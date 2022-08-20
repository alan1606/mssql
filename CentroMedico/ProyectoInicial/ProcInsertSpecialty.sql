
ALTER PROCEDURE INSERT_SPECIALTY(
	@name varchar(30)
)
AS

SET NOCOUNT ON

------------------------------------------------------------------------------------------------
IF NOT EXISTS(SELECT TOP 1 idEspecialidad FROM Especialidad WHERE especialidad = @name)
BEGIN
	INSERT INTO Especialidad(especialidad) VALUES(@name)
	PRINT('Specialty inserted')
END

-------------------------------------------------------------------------------------------------
ELSE
BEGIN
	PRINT('Specialty already exists')
	RETURN
END