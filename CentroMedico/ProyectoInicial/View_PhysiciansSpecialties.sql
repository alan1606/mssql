ALTER VIEW VIEW_PhysiciansSpecialties AS

SELECT M.idMedico, M.nombre, M.apellido, ES.idEspecialidad, ES.especialidad, ME.descripcion
FROM Medico M
INNER JOIN MedicoEspecialidad ME
ON ME.idMedico = M.idMedico
INNER JOIN Especialidad ES
ON ES.idEspecialidad = ME.idEspecialidad


GO 

SELECT * FROM VIEW_PhysiciansSpecialties

SELECT * FROM Especialidad

insert into Especialidad values('cardio')