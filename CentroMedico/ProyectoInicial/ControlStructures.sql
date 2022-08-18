/**	IF, ELSE	**/

DECLARE @patientId int;
DECLARE @turnId int;

SET @patientId = 10;

IF (@patientId = 10)
	BEGIN

		SET @turnId = 20;
		SELECT * FROM Paciente WHERE idPaciente = @patientId

	END
ELSE 
	BEGIN
		PRINT('No');
	END


IF EXISTS(SELECT * FROM Paciente WHERE idPaciente = @patientId)
	PRINT('EXISTS');









/**			WHILE	**/
DECLARE @i int = 0;

WHILE (@i <= 10)
	BEGIN
		PRINT(@i);
		SET @i += 1;
	END








/**		CASE		**/
DECLARE @val int;
DECLARE @res CHAR(10) = '';
SET @val = 30;

set @res = (CASE 
				 WHEN @val = 10 THEN 'ROJO'
				 WHEN @val = 20 THEN 'VERDE'
				 WHEN @val = 30 THEN 'MORADO'
			END);

PRINT(@res);


SELECT *, (CASE 
				WHEN estado = 1 THEN 'VERDE'
				WHEN estado = 2 THEN 'ROJO'
				WHEN estado = 1 THEN 'AZUL'
				ELSE 'GRIS'
			END) AS Color
FROM Turno 







/***			TRY-CATCH			**/

BEGIN TRY

	DECLARE @str int  = 'texto';

END TRY
BEGIN CATCH
	PRINT('ERROR');
END CATCH