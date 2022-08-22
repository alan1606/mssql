/*****		LEFT AND RIGHT			**/
DECLARE @s1 varchar(20)
SET @s1 = '          ramIro           '
PRINT LEFT(@s1, 2)
PRINT RIGHT(@s1, 2)



/*		LEN				*/
PRINT LEN(@s1)
PRINT LEFT(@s1, LEN(@s1) -1 )





/****		LOWER & UPPER		**/
PRINT LOWER(@s1)
PRINT UPPER(@s1)
PRINT UPPER( LEFT(@s1, 1) ) + LOWER( RIGHT( @s1, LEN(@s1)-1) )




/*		REPLACE			*/
SELECT REPLACE(@s1, 'I', 'i') 





/**		REPLICATE		**/
PRINT REPLICATE('1', 10)




/**		LTRIM & RTRIM		**/
SELECT RTRIM(LTRIM(@s1))





/***	CONCAT		***/
SELECT LTRIM( RTRIM(    CONCAT('          ', RTRIM(LTRIM(@s1)), ' ', 'otra variable', '                ')  )    )





/***		GETDATE & GETUTCDATE		**/
SELECT GETDATE()
SELECT GETUTCDATE()




/***		DATEADD			**/
SELECT DATEADD(DAY, 2, GETDATE())
SELECT DATEADD(HOUR, 3, GETDATE()) AS TRESHORASMAS
SELECT DATEADD(MONTH, 1, GETDATE()) AS plusMonth



/**		DATEDIFF			**/
SELECT DATEDIFF(YEAR, GETDATE(), '20990120')
SELECT DATEDIFF(MONTH, GETDATE(), '20990120')
SELECT DATEDIFF(HOUR, GETDATE(), GETUTCDATE())




/**		DATEPART		**/
SELECT DATEPART(YEAR, GETDATE())
SELECT CONCAT( DATEPART(YEAR, GETDATE()), DATEPART(MM, GETDATE())  , DATEPART(DD, GETDATE()))
SELECT DATEPART(DW, GETDATE())





/**		ISDATE   **/
select ISDATE( CONCAT( DATEPART(YEAR, GETDATE()), DATEPART(MM, GETDATE())  , DATEPART(DD, GETDATE()))) AS isDate
select ISDATE(GETDATE()) AS todayIsDate

if ISDATE('20220808') = 1
	select 'is Date'
else
	select 'is Not Date'





/**			CAST & CONVERT		**/
DECLARE @num MONEY
SET @num = 500.40

SELECT CAST(@num as int) as moneyAsInt


SELECT CONVERT(int, @num) as convertMoney



------------------------------------------------DATE CONVERTING
DECLARE @myDate datetime
SET @myDate = GETDATE()

SELECT CONVERT(char(8), @myDate, 112) as convertMoney				---112 equals yyyymmdd