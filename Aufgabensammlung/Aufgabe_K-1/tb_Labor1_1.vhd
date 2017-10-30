LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity test_bench is
end test_bench;

architecture tb of test_bench is
	component Labor1_1 
		port( v, x, z, y : in std_logic;
				f1, f2  : out std_logic);
	end component;

Signal sig_v, sig_x, sig_z, sig_y, sig_f1, sig_f2 : std_logic;
	Begin 
	DUT: Labor1_1
		port map(v => sig_v,
					x => sig_x,
					z => sig_z,
					y => sig_y,
					f1 => sig_f1,
					f2 => sig_f2);
					
sig_v <= '0' AFTER 0ns, '1' AFTER 10ns, '0' AFTER 20ns, '1' AFTER 30ns, '0' AFTER 40ns,
	  '1' AFTER 50ns, '0' AFTER 60ns, '1' AFTER 70ns, '0' AFTER 80ns,
     '1' AFTER 90ns, '0' AFTER 100ns,'1' AFTER 110ns,'0' AFTER 120ns, 
	  '1' AFTER 130ns,'0' AFTER 140ns,'1' AFTER 150ns;
			 
sig_z <= '0' AFTER 0ns, '1' AFTER 20ns, '0' AFTER 40ns, '1' AFTER 60ns, '0' AFTER 80ns,
	  '1' AFTER 100ns, '0' AFTER 120ns, '1' AFTER 140ns;
			 
sig_y <= '0' AFTER 0ns, '1' AFTER 40ns, '0' AFTER 80ns, '1' AFTER 120ns; 
					
sig_x <=  '0' AFTER 0ns, '1' AFTER 80ns;

end tb;
					  				  
	