/*2. Write a function with checks given string is palindrome or not. Call the functions from different pl blocks.*/

SET SERVEROUTPUT ON

CREATE OR REPLACE FUNCTION PAL(NO IN NUMBER)
RETURN number
IS

temp number:=0;
n number   :=0;
rem number :=0;
m number   :=0;

BEGIN
	n:=&n;
	m:=n;
	while(n>0)	
		loop
			rem:=MOD(n,10);
			temp:=temp*10+rem;
			n:=trunc(n/10);

		end loop;
	
	if(m=temp) then

	return 1;

	else
	
	return 0;
	
	end if;
	end;
	/	