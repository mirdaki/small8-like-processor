-- Matthew Booe

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.eight_busses.all;
use work.sixteen_busses.all;

entity datapath is
    port (
        clk        : in  std_logic;
        rst        : in  std_logic;
        inport1    : in  std_logic_vector(7 downto 0);
        inport2    : in  std_logic_vector(7 downto 0);
        outport1   : out std_logic_vector(7 downto 0);
		  outport2   : out std_logic_vector(7 downto 0);
		  
		  -- Control signals 
		  ir_out     : out std_logic_vector(7 downto 0);
		  
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
		  b_en       : in  std_logic;
		  x_in_sel   : in  integer range 0 to 2;
		  x_add_sel  : in  integer range 0 to 2;
		  sp_in_sel  : in  integer range 0 to 2;
		  sp_add_sel : in  integer range 0 to 2;
		  addr_bs_sel: in  integer range 0 to 2;
		  
		  -- Flags 
		  c_en       : in  std_logic;
		  v_en       : in  std_logic;
		  s_en       : in  std_logic;
		  z_en       : in  std_logic;
		  c_out      : buffer std_logic;
		  v_out      : buffer std_logic;
		  s_out      : buffer std_logic;
		  z_out      : buffer std_logic;
		  
		  outport1_en : in std_logic;
		  outport2_en : in std_logic;
		  
		  -- Address Bus 
		  pcL_in_sel : in  integer range 0 to 2;
		  pcH_in_sel : in  integer range 0 to 2;
		  pc_add_sel : in  integer range 0 to 2;
		  adrB_sel   : in  integer range 0 to 11;
		  
		  adrB_out   : buffer std_logic_vector(15 downto 0);
		  
		  -- External Bus 
		  in_t_ex_en : in  std_logic;
		  ex_t_in_en : in  std_logic;
		  exB_sel    : in  integer range 0 to 11;
		  
		  -- Memory Stuff (NEW!)
		  read_en    : in  std_logic;
		  write_en   : in  std_logic
		  );
		  
end datapath;


architecture STR of datapath is
	
	-- Connections 
	
	signal inB_out, exB_out, a_out, d_out, spL_out, spH_out, xL_out, xH_out, pcL_out, pcH_out, mem_out, xL_in, xH_in,
		pcL_in, pcH_in, arL_out, arH_out, in_to_ex, ex_to_in, alu_out, adrL_in, adrH_in, pc_adder_num, b_out, x_adder_num,
		spH_in, spL_in, sp_adder_num, in_1, in_2, half_adrB_out : std_logic_vector(7 downto 0);
	signal pc_adder_out, pc_adder_in, x_adder_out, x_adder_in, sp_adder_out, sp_adder_in : std_logic_vector(15 downto 0);
	signal c_in, v_in, s_in, z_in, wren_en, out1_reg_en, out2_reg_en : std_logic;
	signal pcL_mux_in, pcH_mux_in, pc_adder_mux_in, adrL_mux_in, adrH_mux_in, xL_mux_in, xH_mux_in, x_adder_mux_in, 
		spL_mux_in, spH_mux_in, sp_adder_mux_in	: eight_bus_input(2 downto 0); -- For the MUXes 
	signal in_bus_arr, ex_bus_arr : eight_bus_input(11 downto 0); -- For the internal and external busses
	signal adr_bus_arr : sixteen_bus_input(11 downto 0);
	
begin

	-- Internal Registers 
	ir : entity work.eight_bit_reg 
		generic map (
			width => 8)
		port map (
				input  => inB_out,
				enable => ir_en,
				clk    => clk,
				rst    => rst,
				output => ir_out
			);	
			
	a : entity work.eight_bit_reg 
		generic map (
			width => 8)
		port map (
				input  => inB_out,
				enable => a_en,
				clk    => clk,
				rst    => rst, 
				output => a_out
			);	
			
	d : entity work.eight_bit_reg 
		generic map (
			width => 8)
		port map (
				input  => inB_out,
				enable => d_en,
				clk    => clk,
				rst    => rst, 
				output => d_out
			);	

	spL : entity work.eight_bit_reg 
		generic map (
			width => 8)
		port map (
				input  => spL_in,
				enable => spL_en,
				clk    => clk,
				rst    => rst, 
				output => spL_out
			);	
			
	spH : entity work.eight_bit_reg 
		generic map (
			width => 8)
		port map (
				input  => spH_in,
				enable => spH_en,
				clk    => clk,
				rst    => rst, 
				output => spH_out
			);	
			
	xL : entity work.eight_bit_reg 
		generic map (
			width => 8)
		port map (
				input  => xL_in, -- From MUX
				enable => xL_en,
				clk    => clk,
				rst    => rst, 
				output => xL_out
			);	
			
	xH : entity work.eight_bit_reg 
		generic map (
			width => 8)
		port map (
				input  => xH_in, -- From MUX
				enable => xH_en,
				clk    => clk,
				rst    => rst, 
				output => xH_out
			);	
			
	pcL : entity work.eight_bit_reg 
		generic map (
			width => 8)
		port map (
				input  => pcL_in, -- From MUX
				enable => pcL_en,
				clk    => clk,
				rst    => rst, 
				output => pcL_out
			);	
			
	pcH : entity work.eight_bit_reg 
		generic map (
			width => 8)
		port map (
				input  => pcH_in, -- From MUX
				enable => pcH_en,
				clk    => clk,
				rst    => rst, 
				output => pcH_out
			);	
			
	arL : entity work.eight_bit_reg 
		generic map (
			width => 8)
		port map (
				input  => inB_out,
				enable => arL_en,
				clk    => clk,
				rst    => rst, 
				output => arL_out -- To adr mux and pc mux
			);	
			
	arH : entity work.eight_bit_reg
		generic map (
			width => 8)
		port map (
				input  => inB_out,
				enable => arH_en,
				clk    => clk,
				rst    => rst, 
				output => arH_out  -- To adr mux and pc mux
			);	
			
	b : entity work.eight_bit_reg
		generic map (
			width => 8)
		port map (
				input  => inB_out,
				enable => b_en,
				clk    => clk,
				rst    => rst, 
				output => b_out  -- To x adder mux
			);	
			
	c_flag : entity work.one_bit_reg 
		port map (
				input  => c_in, -- From ALU
				enable => c_en,
				clk    => clk,
				rst    => rst, 
				output => c_out
			);	
	v_flag : entity work.one_bit_reg 
		port map (
				input  => v_in, -- From ALU
				enable => v_en,
				clk    => clk,
				rst    => rst, 
				output => v_out
			);	
			
	s_flag : entity work.one_bit_reg 
		port map (
				input  => s_in, -- From ALU
				enable => s_en,
				clk    => clk,
				rst    => rst, 
				output => s_out
			);	
			
	z_flag : entity work.one_bit_reg 
		port map (
				input  => z_in, -- From ALU 
				enable => z_en,
				clk    => clk,
				rst    => rst, 
				output => z_out
			);	
			
	-- External to internal 
	in_to_ex_reg : entity work.eight_bit_reg 
		generic map (
			width => 8)
		port map (
				input  => inB_out, -- From internal 
				enable => in_t_ex_en,
				clk    => clk,
				rst    => rst, 
				output => in_to_ex
		);	
		
	ex_to_in_reg : entity work.eight_bit_reg 
		generic map (
			width => 8)
		port map (
				input  => exB_out, -- From external 
				enable => ex_t_in_en,
				clk    => clk,
				rst    => rst, 
				output => ex_to_in
			);	
	
	-- Busses 
	in_bus_arr <= (alu_out, a_out, d_out, spL_out, spH_out, xL_out, xH_out, pcL_out, pcH_out, arL_out, arH_out, ex_to_in);
	
	in_bus : entity work.eight_bus
		port map (
			input  => in_bus_arr, -- All the (up to 12) inputs, make ordered list 
			sel    => inB_sel,
			output => inB_out
		);
		
	ex_bus_arr <= (in_to_ex, mem_out, in_1, in_2, "00000100", "00000101", "00000110", "00000111", "00001000", "00001001", "00001010", "00001011");
		
	ex_bus : entity work.eight_bus
		port map (
			input  => ex_bus_arr, -- All the (up to 12) inputs, make ordered list 
			sel    => exB_sel,
			output => exB_out
		);
		
	adr_bus_arr <= ((adrH_in & adrL_in), (spH_out & spL_out), "0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000");
	
	adr_bus : entity work.sixteen_bus
		port map (
			input  => adr_bus_arr, -- All the (up to 12) inputs, make ordered list 
			sel    => addr_bs_sel,
			output => adrB_out
		);
	
	-- ALU 
	alu : entity work.alu
		generic map(
			width => 8)
		port map(
			input1  => a_out,
			input2  => d_out,
			sel     => alu_sel,
			c_in    => c_out,
			v_in    => v_out,
			z_in    => z_out,
			s_in    => s_out,
			output  => alu_out,
			c_out   => c_in,
			v_out   => v_in,
			z_out   => z_in,
			s_out   => s_in
		);
	
	-- MUXes 
	pcL_mux_in <= (inB_out, pc_adder_out(7 downto 0), arL_out);
	
	pcL_mux : entity work.three_to_one_mux
		port map(
			input  => pcL_mux_in, -- In bus, pc adder out, AR out 
			sel    => pcL_in_sel,
			output => pcL_in
		);
		
	pcH_mux_in <= (inB_out, pc_adder_out(15 downto 8), arH_out);
		
	pcH_mux : entity work.three_to_one_mux
		port map(
			input  => pcH_mux_in, -- In bus, pc adder out, AR out 
			sel    => pcH_in_sel,
			output => pcH_in
		);
		
	xL_mux_in <= (inB_out, x_adder_out(7 downto 0), "00000000");
	
	xL_mux : entity work.three_to_one_mux
		port map(
			input  => xL_mux_in, -- In bus, x adder out, 0 
			sel    => x_in_sel,
			output => xL_in
		);
		
	xH_mux_in <= (inB_out, x_adder_out(15 downto 8), "00000000");
		
	xH_mux : entity work.three_to_one_mux
		port map(
			input  => xH_mux_in, -- In bus, xsp adder out,0 
			sel    => x_in_sel,
			output => xH_in
		);
		
	spL_mux_in <= (inB_out, sp_adder_out(7 downto 0), "00000000");
	
	spL_mux : entity work.three_to_one_mux
		port map(
			input  => spL_mux_in, -- In bus, sp adder out, 0 
			sel    => sp_in_sel,
			output => spL_in
		);
		
	spH_mux_in <= (inB_out, sp_adder_out(15 downto 8), "00000000");
		
	spH_mux : entity work.three_to_one_mux
		port map(
			input  => spH_mux_in, -- In bus, x adder out,0 
			sel    => sp_in_sel,
			output => spH_in
		);
		
	pc_adder_mux_in <= ("00000000", "00000001", "00000010");
		
	pc_adder_mux : entity work.three_to_one_mux
		port map(
			input  => pc_adder_mux_in, -- 0, 1, 2
			sel    => pc_add_sel,
			output => pc_adder_num
		);
		
	x_adder_mux_in <= ("11111111", "00000001", b_out);
		
	x_adder_mux : entity work.three_to_one_mux
		port map(
			input  => x_adder_mux_in, -- -1, 1, b reg
			sel    => x_add_sel,
			output => x_adder_num
		);	
		
	sp_adder_mux_in <= ("11111111", "00000001", "00000000");
		
	sp_adder_mux : entity work.three_to_one_mux
		port map(
			input  => sp_adder_mux_in, -- -1, 1, 0
			sel    => sp_add_sel,
			output => sp_adder_num
		);		
	
	adrL_mux_in <= (arL_out, pcL_out, x_adder_out(7 downto 0));
		
	adrL_mux : entity work.three_to_one_mux
		port map(
			input  => adrL_mux_in, --  AR, PC, X
			sel    => adrB_sel,
			output => adrL_in -- Gets combined for adr bus 
		);
	
	adrH_mux_in <= (arH_out, pcH_out, x_adder_out(15 downto 8));
	
	adrH_mux : entity work.three_to_one_mux
		port map(
			input  => adrH_mux_in, --  AR, PC, X
			sel    => adrB_sel,
			output => adrH_in -- Gets combined for adr bus 
		);
		
	-- Adder 
	
	pc_adder_in <= (pcH_out & pcL_out);
	
	pc_adder : entity work.adder
		port map (
			pc_in  => pc_adder_in,
			num_in => pc_adder_num,
			output => pc_adder_out
		);
			
	x_adder_in <= (xH_out & xL_out);	
		
	x_adder : entity work.adder
		port map (
			pc_in  => x_adder_in,
			num_in => x_adder_num,
			output => x_adder_out
		);
		
	sp_adder_in <= (spH_out & spL_out);	
		
	sp_adder : entity work.adder
		port map (
			pc_in  => sp_adder_in,
			num_in => sp_adder_num,
			output => sp_adder_out
		);
			
	-- External 
	-- Imports and Outports 
	
	-- Memory
	mem_decoder : entity work.mem_decoder
    port map(
        address  => adrB_out,
        write_en => write_en,
		  read_en  => read_en,
        enable   => wren_en
		  );
		  
	half_adrB_out <= adrB_out(7 downto 0);
	
	ram : entity work.mult
		port map (
			address => half_adrB_out,
			clock	  => clk,
			q		  => mem_out,
			data    => exB_out,
			wren    => wren_en
		);
		
	--outport1 <= exB_out;
	--outport2 <= exB_out;
	
	out1_reg_en <= (outport1_en and write_en);
	
	outport1_reg : entity work.eight_bit_reg 
	generic map (
		width => 8)
	port map (
			input  => exB_out,
			enable => out1_reg_en,
			clk    => clk,
			--rst    => rst,
			rst    => '0',
			output => outport1
		);
		
	out2_reg_en <= (outport2_en and write_en);	
		
	outport2_reg : entity work.eight_bit_reg 
	generic map (
		width => 8)
	port map (
			input  => exB_out,
			enable => out2_reg_en,
			clk    => clk,
			--rst    => rst,
			rst    => '0',
			output => outport2
		);
		
	inport1_reg : entity work.eight_bit_reg 
	generic map (
		width => 8)
	port map (
			input  => inport1,
			enable => read_en,
			clk    => clk,
			--rst    => rst,
			rst    => '0',
			output => in_1
		);
		
	inport2_reg : entity work.eight_bit_reg 
	generic map (
		width => 8)
	port map (
			input  => inport2,
			enable => read_en,
			clk    => clk,
			--rst    => rst, 
			rst    => '0', 
			output => in_2
		);

end STR;