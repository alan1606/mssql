ALTER FUNCTION listCounrtries()
RETURNS @countries TABLE(countryId char(3), county varchar(50))
AS
BEGIN
	insert into @countries values('ESP', 'Espa�a'),
								 ('MEX', 'Mexico'),
								 ('CHI', 'Chile'),
								 ('PER', 'Per�'),
								 ('ARG', 'Argentina')
	RETURN 
END

GO

ALTER FUNCTION listCountriesInserted()
RETURNS  @countries TABLE(countryId char(3), county varchar(50))
AS
BEGIN
	INSERT INTO @countries 
	SELECT * FROM Pais

	RETURN
END

GO

select * from dbo.listCounrtries()
select * from dbo.listCountriesInserted()