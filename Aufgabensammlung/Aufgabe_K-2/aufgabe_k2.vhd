library ieee;
use ieee.std_logic_1164.all;

entity parity is
	port(
		x, y, z, v : in std_logic;
		f : out std_logic
	);
end parity;

architecture even_par of parity is

signal s_xorout1: std_logic := '0';
signal s_xorout2: std_logic := '0';

begin
	s_xorout1 <= (not(x and y)) and (x or y);
	s_xorout2 <= (not(z and v)) and (z or v);

	f <= (not(s_xorout1 and s_xorout2)) and (s_xorout1 or s_xorout2);
end even_par;
