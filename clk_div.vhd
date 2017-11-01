-- Matthew Booe
-- Lab 5 (Probably)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity clk_div is
    generic(clk_in_freq  : natural;
            clk_out_freq : natural);
    port (
        clk_in  : in  std_logic;
        clk_out : out std_logic;
        rst     : in  std_logic);
end clk_div;


architecture SEQ of clk_div is

	signal clk_en : std_logic;
	signal count : integer range 0 to clk_in_freq/clk_out_freq;
	
begin
    process(clk_in, rst)
    begin
        if (rst = '1') then
            clk_en <= '0';
				count <= 0;
        elsif (rising_edge(clk_in)) then
            if (count = (clk_in_freq/clk_out_freq) - 1) then
                count <= 0;
					 clk_en <= '1';
            else
                count <= count + 1;
					 clk_en <= '0';
            end if;
        end if;
    end process;

    clk_out <= clk_en;
end SEQ;