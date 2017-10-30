LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
entity Labor1_1 IS 
	port( v, x, z, y : in std_logic;
				f1, f2  : out std_logic);
end Labor1_1;

Architecture VH of Labor1_1 Is
	Begin
	f1 <= ( not v or z or not x) and ( z or y) and (not z or not y or v); --KMF
	f2 <= (not y and z) or (not x and y and v) or (z and v) or (y and not z and not v); -- DMF
end VH; 



