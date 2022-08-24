DECLARE @date char(12)
DECLARE @path varchar(250)
DECLARE @name varchar(20)

SET @date = CONVERT(char(8),GETDATE(), 112) + REPLACE(CONVERT(char(5),GETDATE(), 108), ':', '')
SET @path = 'D:\BackupDatabaseCourse\CentroMedico' + @date + '.bak'
set @name = 'CentroMedico' + @date

BACKUP DATABASE CentroMedico
TO DISK = @path
WITH NO_COMPRESSION, NAME=@name