ALTER FUNCTION FNC_DateAsString(
	@date datetime
)
RETURNS varchar(60) AS
BEGIN
	
	DECLARE @day varchar(20)
	DECLARE @month varchar(20)
	DECLARE @stringDate varchar(50)

	SET @day = (CASE 
						 WHEN DATEPART(dw, @date) = 1 THEN 'Domingo ' + convert( char(2), DATEPART(dd, @date) ) 
						 WHEN DATEPART(dw, @date) = 2 THEN 'Lunes ' + convert( char(2), DATEPART(dd, @date) ) 
						 WHEN DATEPART(dw, @date) = 3 THEN 'Martes ' + convert( char(2), DATEPART(dd, @date) ) 
						 WHEN DATEPART(dw, @date) = 4 THEN 'Miercoles ' + convert( char(2), DATEPART(dd, @date) ) 
						 WHEN DATEPART(dw, @date) = 5 THEN 'Jueves ' + convert( char(2), DATEPART(dd, @date) ) 
						 WHEN DATEPART(dw, @date) = 6 THEN 'Viernes ' + convert( char(2), DATEPART(dd, @date) ) 
						 WHEN DATEPART(dw, @date) = 7 THEN 'Sabado ' + convert( char(2), DATEPART(dd, @date) ) 
				END)



	SET @month = (CASE
						 WHEN DATEPART(mm, @date) = 1 THEN 'Enero' 
						 WHEN DATEPART(mm, @date) = 2 THEN 'Febrero' 
						 WHEN DATEPART(mm, @date) = 3 THEN 'Marzo' 
						 WHEN DATEPART(mm, @date) = 4 THEN 'Abril' 
						 WHEN DATEPART(mm, @date) = 5 THEN 'Mayo' 
						 WHEN DATEPART(mm, @date) = 6 THEN 'Junio' 
						 WHEN DATEPART(mm, @date) = 7 THEN 'Julio' 
						 WHEN DATEPART(mm, @date) = 8 THEN 'Agosto' 
						 WHEN DATEPART(mm, @date) = 9 THEN 'Septiembre' 
						 WHEN DATEPART(mm, @date) = 10 THEN 'Octubre' 
						 WHEN DATEPART(mm, @date) = 11 THEN 'Noviembre' 
						 WHEN DATEPART(mm, @date) = 12 THEN 'Diciembre' 
				  END)


	SET @stringDate = @day + ' de ' + @month + ' de ' + CONVERT(char(4), DATEPART(YYYY, @date)) 


	return @stringDate
END

GO

PRINT dbo.FNC_DateAsString(GETDATE())