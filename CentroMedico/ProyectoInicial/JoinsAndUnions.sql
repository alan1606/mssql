/***		INNER JOIN		**/
SELECT * FROM Paciente
SELECT * FROM TurnoPaciente
SELECT * FROM Turno

SELECT * FROM Paciente pac
INNER JOIN TurnoPaciente turnoPac
ON turnoPac.idPaciente = pac.idPaciente			----Make sure connection is made by primary key
												----First field must be immediate table by conection join
												----Use table alias

/**		LEFT JOIN		**/
SELECT * FROM Paciente pac
LEFT JOIN TurnoPaciente turnoPac
ON turnoPac.idPaciente = pac.idPaciente




/**		RIGHT JOIN		**/
SELECT * FROM Paciente pac
RIGHT JOIN TurnoPaciente turnoPac
ON turnoPac.idPaciente = pac.idPaciente

---------------------------------------------------------------------------------------------------------------
/****		Union		****/					-------Same number of fields
SELECT * FROM Turno WHERE estado = 0
UNION											----DELETE REPEATED
SELECT * FROM Turno WHERE estado = 2




/****		UNIONALL				**/
SELECT * FROM Turno						---- DONT DELETE REPEATED
UNION ALL
SELECT * FROM Turno 
