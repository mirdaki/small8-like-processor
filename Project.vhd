-- Matthew Booe

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gen_bus is
	generic (
		WIDTH : positive := 8
	);

	port (
		input1   : in  std_logic_vector(WIDTH-1 downto 0);
		input2   : in  std_logic_vector(WIDTH-1 downto 0);
		sel      : in  std_logic_vector(5 downto 0);
		c_in     : in  std_logic;
		v_in     : in  std_logic;
		z_in     : in  std_logic;
		s_in     : in  std_logic;
		output   : out std_logic_vector(WIDTH-1 downto 0);
		c_out    : out std_logic;
		v_out    : out std_logic;
		z_out    : out std_logic;
		s_out    : out std_logic
	);
end gen_bus;
