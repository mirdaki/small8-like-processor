-- Matthew Booe

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;
 
entity datapath_tb is
end datapath_tb;


architecture TB of datapath_tb is

	component datapath
		port (
			clk        : in  std_logic;
			rst        : in  std_logic;
			inport1    : in  std_logic_vector(7 downto 0);
			inport2    : in  std_logic_vector(7 downto 0);
			outport1   : out std_logic_vector(7 downto 0);
			outport2   : out std_logic_vector(7 downto 0);
		  
		   -- Control signals 
		  
		   -- Internal enables 
		   a_en       : in  std_logic;
		   d_en       : in  std_logic;
		   ir_en      : in  std_logic;
		   spL_en     : in  std_logic;
		   spH_en     : in  std_logic;
		   xL_en      : in  std_logic;
			xH_en      : in  std_logic;
			pcL_en     : in  std_logic;
			pcH_en     : in  std_logic;
			arL_en     : in  std_logic;
			arH_en     : in  std_logic;
			inB_sel    : in  integer range 0 to 11;
			alu_sel    : in  std_logic_vector(5 downto 0);
		  
			outport1_en : in std_logic;
			outport2_en : in std_logic;
		  
			-- Flags 
			c_en       : in  std_logic;
			v_en       : in  std_logic;
			s_en       : in  std_logic;
			z_en       : in  std_logic;
			c_out      : buffer std_logic;
			v_out      : buffer std_logic;
			s_out      : buffer std_logic;
			z_out      : buffer std_logic;
		  
			-- Address Bus 
			pcL_in_sel : in  integer range 0 to 2;
			pcH_in_sel : in  integer range 0 to 2;
			pc_add_sel : in  integer range 0 to 2;
			adrB_sel   : in  integer range 0 to 11;
			adr_bs_sel : in  integer range 0 to 11;
		  
			-- External Bus 
			in_t_ex_en : in  std_logic;
			ex_t_in_en : in  std_logic;
			exB_sel    : in  integer range 0 to 11
		  
			-- Memory Stuff 
		  
		  );
	end component;
	
		-- Signals modified or read 
		signal clk        :  std_logic := '0';
		signal rst        :  std_logic;
		signal inport1    :  std_logic_vector(7 downto 0);
		signal inport2    :  std_logic_vector(7 downto 0);
		signal outport1   :  std_logic_vector(7 downto 0);
		signal outport2   :  std_logic_vector(7 downto 0);
	  
		-- Control signals 
		signal outport1_en : std_logic;
		signal outport2_en : std_logic;
	  
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
		signal addr_bs_sel :  integer range 0 to 2;
		
		-- Flags 
		signal c_en       :  std_logic;
		signal v_en       :  std_logic;
		signal s_en       :  std_logic;
		signal z_en       :  std_logic;
		signal c_out      :  std_logic;
		signal v_out      :  std_logic;
		signal s_out      :  std_logic;
		signal z_out      :  std_logic;
	  
		-- Address Bus 
		signal pcL_in_sel :   integer range 0 to 2;
		signal pcH_in_sel :   integer range 0 to 2;
		signal pc_add_sel :   integer range 0 to 2;
		signal adrB_sel   :   integer range 0 to 11;
	  
		-- External Bus 
		signal in_t_ex_en :  std_logic;
		signal ex_t_in_en :  std_logic;
		signal exB_sel    :  integer range 0 to 11;
		
		-- Memory 
		signal write_en   :  std_logic;
		signal read_en    :  std_logic;

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
			b_en       =>  b_en,
			x_in_sel   =>  x_in_sel,
			x_add_sel  =>  x_add_sel,
			sp_in_sel  =>  sp_in_sel,
			sp_add_sel =>  sp_add_sel,
			addr_bs_sel=>  addr_bs_sel,
			outport1_en=> outport1_en,
			outport2_en=> outport2_en
		);
				
		clk <= not clk after 10 ns;
  
	process		
	begin
	
		-- Reset 
		a_en       <= '0';
		d_en       <= '0';
		ir_en      <= '0';
		spL_en     <= '0';
		spH_en     <= '0';
		xL_en      <= '0';
		xH_en      <= '0';
		pcL_en     <= '0';
		pcH_en     <= '0';
		arL_en     <= '0';
		arH_en     <= '0';
		inB_sel    <= 0;
		c_en       <= '0';
		v_en       <= '0';
		s_en       <= '0';
		z_en       <= '0';
		in_t_ex_en <= '0';
		ex_t_in_en <= '0';
		exB_sel    <= 0;
		write_en   <= '0';
		outport1_en <= '0';
		outport2_en <= '0';
		
		rst <= '1';
		wait for 40 ns;
		rst <= '0';
		
		-- Store
		
		-- First Value, a 
		exB_sel <= 1; -- From external bus
		ex_t_in_en <= '1'; -- Through connection 
		--clk <= '1'; 
		wait for 40 ns;
		--ex_t_in_en <= '0';
		--clk <= '0';
		inB_sel <= 11; -- Onto internal bus 
		a_en  <= '1'; -- Onto Register 
		--clk <= '1';
		wait for 40 ns;
		a_en <= '0';
		--clk <= '0';
		
		-- Second Value, d 
		exB_sel <= 2; -- From external bus
		ex_t_in_en <= '1'; -- Through connection 
		--clk <= '1'; 
		wait for 40 ns;
		ex_t_in_en <= '0';
		--clk <= '0';
		inB_sel <= 11; -- Onto internal bus 
		d_en  <= '1'; -- Onto Register 
		--clk <= '1';
		wait for 40 ns;
		d_en <= '0';
		--clk <= '0';
		
		-- Thrid Value, ir
		exB_sel <= 3; -- From external bus
		ex_t_in_en <= '1'; -- Through connection 
		--clk <= '1'; 
		wait for 40 ns;
		ex_t_in_en <= '0';
		--clk <= '0';
		inB_sel <= 11; -- Onto internal bus 
		ir_en  <= '1'; -- Onto Register 
		--clk <= '1';
		wait for 40 ns;
		ir_en <= '0';
		--clk <= '0';
		
		-- Fourth Value, spL
		exB_sel <= 4; -- From external bus
		ex_t_in_en <= '1'; -- Through connection 
		--clk <= '1'; 
		wait for 40 ns;
		ex_t_in_en <= '0';
		--clk <= '0';
		inB_sel <= 11; -- Onto internal bus 
		spL_en  <= '1'; -- Onto Register 
		--clk <= '1';
		wait for 40 ns;
		spL_en <= '0';
		--clk <= '0';
		
		-- Fifth Value, spH
		exB_sel <= 5; -- From external bus
		ex_t_in_en <= '1'; -- Through connection 
		--clk <= '1'; 
		wait for 40 ns;
		ex_t_in_en <= '0';
		--clk <= '0';
		inB_sel <= 11; -- Onto internal bus 
		spH_en  <= '1'; -- Onto Register 
		--clk <= '1';
		wait for 40 ns;
		spH_en <= '0';
		--clk <= '0';
		
		-- Sixth Value, xL  
		exB_sel <= 6; -- From external bus
		ex_t_in_en <= '1'; -- Through connection 
		--clk <= '1'; 
		wait for 40 ns;
		ex_t_in_en <= '0';
		--clk <= '0';
		inB_sel <= 11; -- Onto internal bus 
		xL_en  <= '1'; -- Onto Register 
		--clk <= '1';
		wait for 40 ns;
		xL_en <= '0';
		--clk <= '0';
		
		-- Seventh Value, xH 
		exB_sel <= 7; -- From external bus
		ex_t_in_en <= '1'; -- Through connection 
		--clk <= '1'; 
		wait for 40 ns;
		ex_t_in_en <= '0';
		--clk <= '0';
		inB_sel <= 11; -- Onto internal bus 
		xH_en  <= '1'; -- Onto Register 
		--clk <= '1';
		wait for 40 ns;
		xH_en <= '0';
		--clk <= '0';
		
		-- Eighth Value, pcL
		exB_sel <= 8; -- From external bus
		ex_t_in_en <= '1'; -- Through connection 
		--clk <= '1'; 
		wait for 40 ns;
		ex_t_in_en <= '0';
		--clk <= '0';
		inB_sel <= 11; -- Onto internal bus 
		pcL_en  <= '1'; -- Onto Register 
		--clk <= '1';
		wait for 40 ns;
		pcL_en <= '0';
		--clk <= '0';
		
		-- Ninth Value, pcH
		exB_sel <= 9; -- From external bus
		ex_t_in_en <= '1'; -- Through connection 
		--clk <= '1'; 
		wait for 40 ns;
		ex_t_in_en <= '0';
		--clk <= '0';
		inB_sel <= 11; -- Onto internal bus 
		pcH_en  <= '1'; -- Onto Register 
		--clk <= '1';
		wait for 40 ns;
		pcH_en <= '0';
		--clk <= '0';
		
		-- Ten Value, arL
		exB_sel <= 10; -- From external bus
		ex_t_in_en <= '1'; -- Through connection 
		--clk <= '1'; 
		wait for 40 ns;
		ex_t_in_en <= '0';
		--clk <= '0';
		inB_sel <= 11; -- Onto internal bus 
		arL_en  <= '1'; -- Onto Register 
		--clk <= '1';
		wait for 40 ns;
		arL_en <= '0';
		--clk <= '0';
		
		-- Eleventh Value, arH
		exB_sel <= 11; -- From external bus
		ex_t_in_en <= '1'; -- Through connection 
		--clk <= '1'; 
		wait for 40 ns;
		ex_t_in_en <= '0';
		--clk <= '0';
		inB_sel <= 11; -- Onto internal bus 
		arH_en  <= '1'; -- Onto Register 
		--clk <= '1';
		wait for 40 ns;
		arH_en <= '0';
		--clk <= '0';
		
		-- Load 
		
		-- First Value, a 
		inB_sel <= 1; -- Onto internal bus 
		wait for 40 ns;
		
		-- Second Value, d 
		inB_sel <= 2; -- Onto internal bus 
		wait for 40 ns;
		
		-- It will skip IR, because there is no output to the Internal Bus
		
		-- Third Value, spL
		inB_sel <= 3; -- Onto internal bus 
		wait for 40 ns;
		
		-- Fouth Value, spH
		inB_sel <= 4; -- Onto internal bus 
		wait for 40 ns;
		
		-- Fifth Value, xL 
		inB_sel <= 5; -- Onto internal bus 
		wait for 40 ns;
		
		-- Sixth Value, xH
		inB_sel <= 6; -- Onto internal bus 
		wait for 40 ns;
		
		-- Seventh Value, pcL
		inB_sel <= 7; -- Onto internal bus 
		wait for 40 ns;
		
		-- Eighth Value, pcH
		inB_sel <= 8; -- Onto internal bus 
		wait for 40 ns;
		
		-- Ninth Value, arL
		inB_sel <= 9; -- Onto internal bus 
		wait for 40 ns;
		
		-- Tenth Value, arH
		inB_sel <= 10; -- Onto internal bus 
		wait for 40 ns;
	
		report "SIMULATION FINISHED!";
		
	end process;

end TB;