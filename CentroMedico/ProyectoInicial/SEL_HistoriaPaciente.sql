ALTER PROC SEL_HistoriaPaciente(
	@patientId Paciente
)
AS
BEGIN
/*
	select * from historia

	select * from paciente

	select * from historiaPaciente

	select * from MedicoEspecialidad

	select * from Medico

	insert into historia values(GETDATE(), 'Trae covid')
	insert into historia values(GETDATE(), 'Trae cirrosis')

	insert into historiaPaciente values(1, 11, 1)
	insert into historiaPaciente values(2, 11, 2)
*/


	SET NOCOUNT ON
	
	IF EXISTS(
		SELECT * FROM Paciente P
		INNER JOIN HistoriaPaciente HP
		ON HP.idPaciente = P.idPaciente
		INNER JOIN Historia H
		ON H.idHistoria = HP.idHistoria
		INNER JOIN Medico M
		ON  M.idMedico = HP.idMedico
		LEFT JOIN MedicoEspecialidad ME 
		ON ME.idMedico = M.idMedico
		WHERE P.idPaciente = @patientId
	)
	SELECT * FROM Paciente P
	INNER JOIN HistoriaPaciente HP
	ON HP.idPaciente = P.idPaciente
	INNER JOIN Historia H
	ON H.idHistoria = HP.idHistoria
	INNER JOIN Medico M
	ON  M.idMedico = HP.idMedico
	LEFT JOIN MedicoEspecialidad ME 
	ON ME.idMedico = M.idMedico
	WHERE P.idPaciente = @patientId
	
	ELSE
		SELECT 0 AS resultado

END


EXEC SEL_HistoriaPaciente 11