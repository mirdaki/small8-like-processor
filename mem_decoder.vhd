-- Matthew Booe

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.eight_busses.all;
use work.sixteen_busses.all;

entity mem_decoder is
    port (
        address    : in  std_logic_vector(15 downto 0);
        write_en   : in  std_logic;
		  read_en    : in  std_logic;
        enable     : out std_logic
		  );
		  
end mem_decoder;


architecture BHV of mem_decoder is
begin

	process(address, write_en, read_en)
	begin 
	
		--if (address < "000000111111111" and write_en = '1' and read_en = '0') then 
		if (address < "0000000011111111" and write_en = '1' and read_en = '0') then 
			enable <= '1';
		else 
			enable <= '0';
		end if;
		
	end process;

end BHV;