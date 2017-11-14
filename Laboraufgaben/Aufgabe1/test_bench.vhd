library ieee;
use ieee.std_logic_1164.all;

entity test_bench is
    generic(Addrbreite : natural := 4); 
end test_bench;

architecture t_b of test_bench is
    
component einfaches_Register
    port(	CLK , CLR, LD : in std_logic;
            D : in std_logic_vector(Addrbreite - 1 downto 0);
            Q : out std_logic
    );
end component;

signal sig_clk, sig_clr, sig_ld, sig_q: std_logic; 
signal sig_d : std_logic_vector(Addrbreite -1 downto 0) := (others => '0');

begin
    DUT: einfaches_Register	
        port map(	CLK => sig_clk,
                    CLR => sig_clr,
                    LD  => sig_ld,
                    D   => sig_d,
                    Q   => sig_q
        );
            
    sig_clk <=  '0' after   0ns, '1' after  10ns, '0' after  20ns, '1' after  30ns, '0' after  40ns, '1' after  50ns,
                '0' after  60ns, '1' after  70ns, '0' after  80ns, '1' after  90ns,	'0' after 100ns, '1' after 110ns,
                '0' after 120ns, '1' after 130ns, '1' after 140ns, '1' after 150ns,	'0' after 160ns, '1' after 170ns;
    sig_clr <=  '1' after   0ns, '0' after   4ns;		
    sig_ld 	<=  '0' after   0ns, '1' after   5ns, '0' after  15ns;

    sig_d   <=  "0000" after 0ns, "1011" after 5ns, "0000" after 20ns;
end t_b;