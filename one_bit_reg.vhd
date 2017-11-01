library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity one_bit_reg is
    port (
        input  : in  std_logic;
        enable : in  std_logic;
		  clk    : in  std_logic;
		  rst    : in  std_logic;
        output : out std_logic);
end one_bit_reg;


architecture bhv of one_bit_reg is 

begin 
	process(clk, rst)
	begin
		
		if (rst = '1') then 
			output <= '0';
		elsif (rising_edge(clk)) then 
			if (enable = '1') then 
				output <= input;
			end if;
		end if;
	end process;
end bhv;