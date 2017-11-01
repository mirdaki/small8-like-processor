-- Matthew Booe

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.sixteen_busses.all;


entity sixteen_bus is
	--generic (
	--	WIDTH : positive := 10
	--);

	port (
		input  : in  sixteen_bus_input(11 downto 0);
		sel    : in  integer range 0 to 11;
		--sel    : in  std_logic_vector(log2ceilz(WIDTH)-1 downto 0); --log2ceilnz() calculates the needed bits to encode x symbols in binary
		output : out std_logic_vector(15 downto 0)
	);
end sixteen_bus;


architecture BHV of sixteen_bus is
begin

	output <= input(11 - sel);

end BHV;
