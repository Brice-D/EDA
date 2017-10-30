LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Mehrheitsentscheider IS
	PORT( x : IN std_logic ;
			y : IN std_logic ;
			z : IN std_logic ;
			f : OUT std_logic); 	
END Mehrheitsentscheider;

ARCHITECTURE behave OF Mehrheitsentscheider IS
	BEGIN
		f <= (x and z) or (y and z) or (x and y);
END behave; 
