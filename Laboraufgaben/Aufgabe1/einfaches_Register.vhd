library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity einfaches_Register is 
	generic(Addrbreite : natural := 4);
	
	port(	CLK , CLR, LD : in std_logic;
			D : in std_logic_vector(Addrbreite - 1 downto 0);
			Q : out std_logic
	);
end einfaches_Register ;


architecture E_register of einfaches_Register is

signal Qi : std_logic_vector(Addrbreite -1 downto 0):= (others => '0');
signal Qo : std_logic:= '0';

begin
	E_r: process (CLK ,CLR)
	begin
		if (CLR = '1') then Qi <= "0000"; Qo <= '0';	
		elsif(rising_edge(CLK) and (LD = '1')) then Qi <= D;
		elsif(rising_edge(CLK) and (LD = '0'))
			then Qi <= '0' & Qi(Addrbreite - 1 downto 1);  
	   	elsif(falling_edge(CLK) and LD = '0')
		   then Qo <= Qi(0);
		end if ;
	end process E_r;
	Q <= Qo;
end E_register;