DECLARE @n1 decimal(9,2) = 20;
DECLARE @n2 decimal(9,2) = 30;
DECLARE @res decimal(9,2);


SET @res = @n1 + @n2;

PRINT(@res);

/**

	+
	-
	*
	/
	%

**/




DECLARE @s1 varchar(10) = 'Hello';
DECLARE @s2 varchar(10) = 'World';
DECLARE @resS varchar(20);

SET @resS = @s1 + ' '+ @s2;
--SET @resS = CONCAT(@s1, ' ', @s2);

PRINT(@resS);






DECLARE @num1 int = 309;
DECLARE @num2 int = 63;

IF(@num1 <> @num2)
	PRINT('NUM1 GREATER');
ELSE
	PRINT('NUM2 GREATER');

/*

	<
	> 
	<=
	>=
	<>

*/

SET @s1 = 'hi';
SET @s2 = 'hi';

IF(@s1 <> @s2)
	PRINT('Strings are diferent');
ELSE
	PRINT('Same String');