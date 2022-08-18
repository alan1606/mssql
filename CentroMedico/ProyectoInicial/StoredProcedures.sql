//**	Creating first store procedure	(or alter)**/

use CentroMedico
GO

ALTER PROC [dbo].[SP_show_patient] (
	@patientId int
)
AS
	SELECT * FROM Paciente WHERE idPaciente = @patientId

GO

--				EXECUTION
EXEC SP_show_patient 1;


/**		Example for variables and ISNULL sentence	**/
DECLARE @order CHAR(1) ;
	--SET @order = 'D';

	DECLARE	@value CHAR(1);

	SET @value = ISNULL(@order, 'Z');

	print @value;