library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity eight_bit_reg is
    generic (
        WIDTH : positive := 16);
    port (
        input  : in  std_logic_vector(WIDTH-1 downto 0);
        enable : in  std_logic;
		  clk    : in  std_logic;
		  rst    : in  std_logic;
        output : out std_logic_vector(WIDTH-1 downto 0));
end eight_bit_reg;


architecture bhv of eight_bit_reg is 

begin 
	process(clk, rst)
	begin
		
		if (rst = '1') then 
			output <= (others => '0');
		elsif (rising_edge(clk)) then 
			if (enable = '1') then 
				output <= input;
			end if;
		end if;
	end process;
end bhv;