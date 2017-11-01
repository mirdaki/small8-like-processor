-- Matthew Booe
-- Lab 2 Decoder

library ieee;
use ieee.std_logic_1164.all;

entity decoder7seg is
	port (
		input : in std_logic_vector(3 downto 0);
		output : out std_logic_vector(6 downto 0));
end decoder7seg; 



architecture decoder of decoder7seg is
begin
  process(input)
  begin
    output <= "1111111";
	 if (input = "0000") then 
		output <= "0000001";
	elsif (input = "0001") then 
		output <= "1001111";
	elsif (input = "0010") then 
		output <= "0010010";
	elsif (input = "0011") then 
		output <= "0000110";
	elsif (input = "0100") then 
		output <= "1001100";
	elsif (input = "0101") then 
		output <= "0100100";
	elsif (input = "0110") then 
		output <= "0100000";
	elsif (input = "0111") then 
		output <= "0001111";
	elsif (input = "1000") then 
		output <= "0000000";
	elsif (input = "1001") then 
		output <= "0001100";
	elsif (input = "1010") then 
		output <= "0001000";
	elsif (input = "1011") then 
		output <= "1100000";
	elsif (input = "1100") then 
		output <= "0110001";
	elsif (input = "1101") then 
		output <= "1000010";
	elsif (input = "1110") then 
		output <= "0110000";
	elsif (input = "1111") then 
		output <= "0111000";
	end if;
  end process;
end decoder;
