LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY f_g IS
	PORT( x , y , z : IN std_logic ;
				 f , g : OUT std_logic ) ;
END f_g ;

ARCHITECTURE behave OF f_g IS
	BEGIN
	g <= (not x) and z;
	f <= (x and z) or (y);
END behave ;