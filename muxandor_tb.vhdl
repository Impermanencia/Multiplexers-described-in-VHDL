library ieee;
use ieee.std_logic_1164.all;

entity muxandor_tb is
end muxandor_tb;

architecture mux of muxandor_tb is 
   component mux_0
   port (i0, i1, i2, i3 : in bit;
         s0, s1         : in bit;
         ot             : out bit);
   end component;
   signal i0, i1, i2, i3, s0, s1, ot : bit;

begin
   
   muxx : mux_0 port map (i0 => i0, i1 => i1,
                            i2 => i2, i3 => i3,
                            s0 => s0, s1 => s1,
                            ot           => ot);
    process begin
        s1 <= '0';
        s0 <= '0';
        i0 <= '1';
        i1 <= '0';
        i2 <= '0';
        i3 <= '0';
        wait for 1 ns;
        s1 <= '0';
        s0 <= '1';
        i0 <= '0';
        i1 <= '1';
        i2 <= '0';
        i3 <= '0';
        wait for 1 ns;
        s1 <= '1';
        s0 <= '0';
        i0 <= '0';
        i1 <= '0';
        i2 <= '1';
        i3 <= '0';
        
        wait for 1 ns;
        s1 <= '1';
        s0 <= '1';
        i0 <= '0';
        i1 <= '0';
        i2 <= '0';
        i3 <= '1';
        wait for 1 ns;
                
        wait;
     
    end process;
end mux;                     
