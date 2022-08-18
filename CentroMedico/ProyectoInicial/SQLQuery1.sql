/***	Example for using subquery	**/

use CentroMedico
GO

ALTER PROC [dbo].[SP_show_patient] (
	@patientId int
)
AS
	SELECT *, (SELECT ps.pais from Pais ps WHERE pa.idPais = ps.idPais) as descPais FROM Paciente pa WHERE idPaciente = @patientId

GO