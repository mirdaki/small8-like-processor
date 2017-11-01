-- Matthew Booe

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.eight_busses.all;


entity three_to_one_mux is -- 8-Bit wide 
	port (
		input  : in  eight_bus_input(2 downto 0);
		sel    : in  integer range 0 to 2;
		output : out std_logic_vector(7 downto 0)
	);
end three_to_one_mux;


architecture BHV of three_to_one_mux is
begin

	output <= input(2 - sel);

end BHV;
