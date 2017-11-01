-- Matthew Booe

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;
 
entity count_tb is
end count_tb;

architecture TB of count_tb is
	
		-- Signals modified or read 
		signal clk        :  std_logic := '0';
		signal rst        :  std_logic;
		signal inport1    :  std_logic_vector(7 downto 0);
		signal inport2    :  std_logic_vector(7 downto 0);
		signal outport1   :  std_logic_vector(7 downto 0);
		signal outport2   :  std_logic_vector(7 downto 0);
	  
		-- Control signals 
		signal ir_out     :  std_logic_vector(7 downto 0);
		signal go         :  std_logic;
		signal done       :  std_logic;
	  
		-- Internal enables 
		signal a_en       :  std_logic;
		signal d_en       :  std_logic;
		signal ir_en      :  std_logic;
		signal spL_en     :  std_logic;
		signal spH_en     :  std_logic;
		signal xL_en      :  std_logic;
		signal xH_en      :  std_logic;
		signal pcL_en     :  std_logic;
		signal pcH_en     :  std_logic;
		signal arL_en     :  std_logic;
		signal arH_en     :  std_logic;
		signal inB_sel    :  integer range 0 to 11;
		signal alu_sel    :  std_logic_vector(5 downto 0);
		signal b_en       :  std_logic;
		signal x_in_sel   :  integer range 0 to 2;
		signal x_add_sel  :  integer range 0 to 2;
		signal sp_in_sel  :  integer range 0 to 2;
		signal sp_add_sel :  integer range 0 to 2;
	  
		-- Flags 
		signal c_en       :  std_logic;
		signal v_en       :  std_logic;
		signal s_en       :  std_logic;
		signal z_en       :  std_logic;
		signal c_out      :  std_logic;
		signal v_out      :  std_logic;
		signal s_out      :  std_logic;
		signal z_out      :  std_logic;
		
		signal outport1_en : std_logic;
		signal outport2_en : std_logic;
	  
		-- Address Bus 
		signal pcL_in_sel :  integer range 0 to 2;
		signal pcH_in_sel :  integer range 0 to 2;
		signal pc_add_sel :  integer range 0 to 2;
		signal adrB_sel   :  integer range 0 to 11;
		signal addr_bs_sel:  integer range 0 to 2;
	  
		-- External Bus 
		signal in_t_ex_en :  std_logic;
		signal ex_t_in_en :  std_logic;
		signal exB_sel    :  integer range 0 to 11;
		
		-- Memory 
		signal write_en   :  std_logic;
		signal read_en    :  std_logic;
		
		signal in1_sel : std_logic;
		signal in2_sel : std_logic;
		
		signal adrB_out : std_logic_vector(7 downto 0);

begin  -- TB

	UUT : entity work.datapath
		port map (
			clk        =>  clk,
			rst        =>  rst,
			inport1    =>  inport1,
			inport2    =>  inport2,
			outport1   =>  outport1,
			outport2   =>  outport2,
			a_en       =>  a_en,
			d_en       =>  d_en,
			ir_en      =>  ir_en,
			spL_en     =>  spL_en,
			spH_en     =>  spH_en,
			xL_en      =>  xL_en,
			xH_en      =>  xH_en,
			pcL_en     =>  pcL_en,
			pcH_en     =>  pcH_en,
			arL_en     =>  arL_en,
			arH_en     =>  arH_en,
			inB_sel    =>  inB_sel,
			alu_sel    =>  alu_sel,
			c_en       =>  c_en,
			v_en       =>  v_en,
			s_en       =>  s_en,
			z_en       =>  z_en,
			c_out      =>  c_out,
			v_out      =>  v_out,
			s_out      =>  s_out,
			z_out      =>  z_out,
			pcL_in_sel =>  pcL_in_sel,
			pcH_in_sel =>  pcH_in_sel,
			pc_add_sel =>  pc_add_sel,
			adrB_sel   =>  adrB_sel,
			in_t_ex_en =>  in_t_ex_en,
			ex_t_in_en =>  ex_t_in_en,
			exB_sel    =>  exB_sel,
			write_en   =>  write_en,
			read_en    =>  read_en,
			ir_out     =>  ir_out,
			b_en       =>  b_en,
			x_in_sel   =>  x_in_sel,
			x_add_sel  =>  x_add_sel,
			sp_in_sel  =>  sp_in_sel,
			sp_add_sel =>  sp_add_sel,
			addr_bs_sel=>  addr_bs_sel,
			outport1_en=> outport1_en,
			outport2_en=> outport2_en,
			adrB_out => adrB_out
		);
		
	controler : entity work.controler
		port map(
			clk        => clk,
			rst        => rst,
			go         => go,
			done       => done,
			
			-- Control signals 
			ir_in      => ir_out,
			
			-- Internal enables 
			a_en       => a_en,
			d_en       => d_en,
			ir_en      => ir_en,
			spL_en     => spL_en,
			spH_en     => spH_en,
			xL_en      => xL_en,
			xH_en      => xH_en,
			pcL_en     => pcL_en,
			pcH_en     => pcH_en,
			arL_en     => arL_en,
			arH_en     => arH_en,
			inB_sel    => inB_sel,
			alu_sel    => alu_sel,
			b_en       =>  b_en,
			x_in_sel   =>  x_in_sel,
			x_add_sel  =>  x_add_sel,
			sp_in_sel   =>  sp_in_sel,
			sp_add_sel  =>  sp_add_sel,
			
			-- Flags 
			c_en       => c_en,
			v_en       => v_en,
			s_en       => s_en,
			z_en       => z_en,
			c_in       => c_out,
			v_in       => v_out,
			s_in       => s_out,
			z_in       => z_out,
			
			--outport1_en => outport1_en,
			--outport2_en => outport2_en,
			
			-- Address Bus 
			pcL_in_sel => pcL_in_sel,
			pcH_in_sel => pcH_in_sel,
			pc_add_sel => pc_add_sel,
			adrB_sel   => adrB_sel,
			addr_bs_sel=> addr_bs_sel,
			
			-- External Bus 
			in_t_ex_en => in_t_ex_en,
			ex_t_in_en => ex_t_in_en,
			exB_sel    => exB_sel,
			
			-- Memory Stuff
			read_en    => read_en,
			write_en   => write_en,
			
			in1_sel => in1_sel,
			in2_sel => in2_sel
			
	);
				
		clk <= not clk after 10 ns;
  
	process		
	begin
	
		-- Reset 
--		a_en       <= '0';
--		d_en       <= '0';
--		ir_en      <= '0';
--		spL_en     <= '0';
--		spH_en     <= '0';
--		xL_en      <= '0';
--		xH_en      <= '0';
--		pcL_en     <= '0';
--		pcH_en     <= '0';
--		arL_en     <= '0';
--		arH_en     <= '0';
--		--inB_sel    <= 0;
--		c_en       <= '0';
--		v_en       <= '0';
--		s_en       <= '0';
--		z_en       <= '0';
--		in_t_ex_en <= '0';
--		ex_t_in_en <= '0';
--		--exB_sel    <= 0;
--		write_en   <= '0';
--		read_en    <= '0';
		go         <= '0';
		
		outport1_en <= '0';
		outport2_en <= '0';
		
		if (adrB_out = "11111110") then 
			outport1_en <= '1';
		elsif (adrB_out = "11111111") then 
			outport2_en <= '1';
		end if;
		
		rst <= '1';
		wait for 40 ns;
		rst <= '0';
		go  <= '1';
		
		wait for 1 ms;
	
	end process;

end TB;