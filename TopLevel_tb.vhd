-- Matthew Booe

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity TopLevel_tb is
end TopLevel_tb;

architecture TB of TopLevel_tb is
	
		-- Signals modified or read 
		signal clk     :  std_logic := '0';
		signal rst     :  std_logic;
		signal switch  :  std_logic_vector(9 downto 0);
		signal button  :  std_logic_vector(2 downto 0);
		signal led0    :  std_logic_vector(6 downto 0);
		signal led0_dp :  std_logic;
		signal led1    :  std_logic_vector(6 downto 0);
		signal led1_dp :  std_logic;
		signal led2    :  std_logic_vector(6 downto 0);
		signal led2_dp :  std_logic;
		signal led3    :  std_logic_vector(6 downto 0);
		signal led3_dp :  std_logic;

begin  -- TB

	UUT : entity work.top_level
		port map (
			    
			clk     => clk,
			rst     => rst,
			switch  => switch,
			button  => button,
			led0    => led0,
			led0_dp => led0_dp,
			led1    => led1,
			led1_dp => led1_dp,
			led2    => led2,
			led2_dp => led2_dp,
			led3    => led3,
			led3_dp => led3_dp
		);
				
		clk <= not clk after 10 ns;
  
	process		
	begin
	
		-- Reset		
--		outport1_en <= '0';
--		outport2_en <= '0';
--		--switch(9) <= '1';
--		switch(8) <= '1';
--		switch(7) <= '1';
--		switch(6) <= '1';
--		switch(5) <= '1';
--		switch(4) <= '1';
--		switch(3) <= '1';
--		switch(2) <= '1';
--		switch(1) <= '0';
--		switch(0) <= '1';
--		
--		button(1) <= '0';
--		button(2) <= '1';
		
		
		
		rst <= '1';
		wait for 40 ns;
		rst <= '0';
		--go  <= '1';
		
--		wait for 1000 ns;
--		rst <= '1';
--		wait for 40 ns;
--		rst <= '0';
		
		wait for 1 ms;
	
	end process;

end TB;