ALTER PROC SEL_EspecialidadesMedicas
AS
SET NOCOUNT ON

IF EXISTS(SELECT * FROM Especialidad)
	SELECT * FROM Especialidad

ELSE
	SELECT 0 AS resultado

EXEC SEL_EspecialidadesMedicas