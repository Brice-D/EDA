library ieee;
use ieee.std_logic_1164.all;

entity Labor1_1 is
	port (v, x, y, z: in std_logic; 
	      f: out std_logic);
end Labor1_1;

architecture behav of Labor1_1 is
begin
		f <= (not v or z or not x) and (z or y) and (not z or not y or v);
end behav;
