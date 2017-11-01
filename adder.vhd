-- Matthew Booe

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity adder is 
	port (
		pc_in  : in  std_logic_vector(15 downto 0);
		num_in : in  std_logic_vector(7 downto 0);
		output : out std_logic_vector(15 downto 0)
	);
end adder;


architecture BHV of adder is
begin

--	process(pc_in, num_in)
--	begin 
	
		output <= std_logic_vector(unsigned(pc_in) + unsigned(num_in));
		
--	end process;
end BHV;
