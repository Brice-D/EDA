LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity test_bench is
end test_bench;

Architecture tb of test_bench is
	component Mehrheitsentscheider
		Port (x, y, z: in std_logic;
						f: out std_logic);
	END component;
	
SIGNAL sig_x, sig_y, sig_z, sig_f : std_logic; 
	Begin
		DUT: Mehrheitsentscheider
			port map(x  => sig_x,
						y  => sig_y,
						z  => sig_z,
						f  => sig_f);
 
sig_z <= '0' AFTER 0ns,   '1' AFTER 20ns,   '0' AFTER 40ns, '1' 	AFTER 60ns, '0' AFTER 80ns,
			'1' AFTER 100ns, '0' AFTER 120ns, '1' AFTER 140ns;
			 
sig_y <= '0' AFTER 0ns, '1' AFTER 40ns, '0' AFTER 80ns, '1' AFTER 120ns; 
					
sig_x <= '0' AFTER 0ns, '1' AFTER 80ns;

end tb;