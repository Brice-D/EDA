LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Labor1_1 IS
	PORT (v, x, y, z: IN std_logic; 
	      f: OUT std_logic);
END Labor1_1;

ARCHITECTURE behav OF Labor1_1 IS
	begin
		f <= (not v or z or not x) and (z or y) and (not z or not y or v);
END behav;
