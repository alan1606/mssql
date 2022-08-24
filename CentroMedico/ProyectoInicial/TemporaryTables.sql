/**			Memory			**/
DECLARE @myTable TABLE(id int identity(1,1), country varchar(50))

insert into @myTable VALUES
('MEXICO'),
('PERU'),
('CHILE'),
('COLOMBIA'),
('ARGENTINA'),
('ECUADOR'),
('ESPAÑA')

SELECT * FROM @myTable









/**			Physical				*/
CREATE TABLE #myTable(id int identity(1,1), name varchar(50), lastname varchar(50))

insert into #myTable VALUES
('ALEJANDRO','MAGNO'),
('LUCIO','SENECA'),
('JORDAN','PETERSON')

SELECT * FROM #myTable

DROP TABLE #myTable