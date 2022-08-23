CREATE FUNCTION glue(
	@lastname varchar(50),
	@name varchar(50)
) 
RETURNS VARCHAR(100) 
	AS
BEGIN
	DECLARE @res varchar(100)
	SET @res = CONCAT(@lastname, ' ', @name)
	RETURN @res 
END



CREATE FUNCTION getCountry(
	@patId Paciente
)
RETURNS varchar(50)
AS
BEGIN
	DECLARE @country varchar(50)

	SET @country = (SELECT P.pais FROM Paciente PA
	INNER JOIN Pais P
	ON P.idPais = PA.idPais
	WHERE PA.idPaciente = @patId)

	RETURN @country
END


SELECT dbo.glue('AGUIRRE', 'ALAN')

SELECT dbo.getCountry(11)