library ieee;
use ieee.std_logic_1164.all;

entity top_level is
    port (
		clk     : in  std_logic;
		rst     : in  std_logic;
		switch  : in  std_logic_vector(9 downto 0);
		button  : in  std_logic_vector(2 downto 0);
		led0    : out std_logic_vector(6 downto 0);
		led0_dp : out std_logic;
		led1    : out std_logic_vector(6 downto 0);
		led1_dp : out std_logic;
		led2    : out std_logic_vector(6 downto 0);
		led2_dp : out std_logic;
		led3    : out std_logic_vector(6 downto 0);
		led3_dp : out std_logic);
end top_level;

architecture STR of top_level is

    component decoder7seg
        port (
            input  : in  std_logic_vector(3 downto 0);
            output : out std_logic_vector(6 downto 0));
    end component;

	-- I/O

	signal input1  : std_logic_vector(7 downto 0);
	signal input2  : std_logic_vector(7 downto 0);
	signal output1 : std_logic_vector(7 downto 0);
	signal output2 : std_logic_vector(7 downto 0);
	
	signal go      : std_logic;
	signal done    : std_logic;
	signal not_rst : std_logic;
	
	signal adrB_out : std_logic_vector(15 downto 0);
	
	constant C0 : std_logic_vector(3 downto 0) := "0000";
	
	-- Control Signals 
	signal  a_en, d_en, ir_en, spL_en, spH_en, xL_en, xH_en, pcL_en, pcH_en, cH_en, arL_en, arH_en, c_en, v_en, s_en, z_en, c, v, s, z, 
	in_t_ex_en, ex_t_in_en, read_en, write_en, b_en, outport1_en, outport2_en, clk_25, in1_sel, in2_sel : std_logic;
	signal ir : std_logic_vector(7 downto 0);
	signal alu_sel : std_logic_vector(5 downto 0);
	signal inB_sel, adrB_sel, exB_sel : integer range 0 to 11;
	signal pcL_in_sel, pcH_in_sel, pc_add_sel, x_in_sel, x_add_sel, sp_in_sel, sp_add_sel, addr_bs_sel : integer range 0 to 2;
	 
	 
    
begin  -- STR
	
	-- map adder output to two leftmost LEDs
	U_LED3 : decoder7seg port map (
		input  => output2(7 downto 4),
		output => led3);
	
	U_LED2 : decoder7seg port map (
		input  => output2(3 downto 0),
		output => led2);
	
	U_LED1 : decoder7seg port map (
		input  => output1(7 downto 4),
		output => led1);
	
	U_LED0 : decoder7seg port map (
		input  => output1(3 downto 0),
		--input => "0101",
		output => led0);
		
	led3_dp <= '1';
   led2_dp <= '1';
   led1_dp <= '1';
   led0_dp <= '1';
		
	U_CLK_DIV : entity work.clk_div
			generic map (
				clk_in_freq  => 50000000,
            clk_out_freq => 25000000)
			   --clk_out_freq => 50000000)
			port map (
		     clk_in  => clk,
			  clk_out => clk_25,
			  rst     => rst
		);
		
	process(button, switch, adrB_out, rst)
	begin
		outport2_en <= '0';
		outport1_en <= '0';
		input2 <= "00000000";
		input1 <= "00000000";
		in1_sel <= '0';
		in2_sel <= '0';
		go      <= '0';
		done    <= '0';
	
		if (button(2) = '0' and button(1) = '1' and adrB_out = "1111111111111110") then 
			input1 <= switch(7 downto 0);
			in1_sel <= '1';
		elsif (adrB_out = "1111111111111111" and button(1) = '0' and button(2) = '1') then
			input2 <= switch(7 downto 0);
			in2_sel <= '1';
		end if;
		
		if (adrB_out = "1111111111111110") then 
			outport1_en <= '1';
		elsif (adrB_out = "1111111111111111") then 
			outport2_en <= '1';
		end if;
		
		--not_rst <= not rst;
		
	end process;
	

	datapath : entity work.datapath
		port map (
			clk        => clk_25,
			rst        => rst, 
			inport1    => input1,
			inport2    => input2,
			outport1   => output1,
			outport2   => output2,
		  
			-- Control signals 
			ir_out     => ir,
		  
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
			sp_in_sel  =>  sp_in_sel,
			sp_add_sel =>  sp_add_sel,
		  
		  
			-- Flags 
			c_en       => c_en,
			v_en       => v_en,
			s_en       => s_en,
			z_en       => z_en,
			c_out      => c,
			v_out      => v,
			s_out      => s,
			z_out      => z,
			
			outport2_en => outport2_en,
			outport1_en => outport1_en,
			
			-- Address Bus 
			pcL_in_sel => pcL_in_sel,
			pcH_in_sel => pcH_in_sel,
			pc_add_sel => pc_add_sel,
			adrB_sel   => adrB_sel,
			addr_bs_sel=> addr_bs_sel,
			
			adrB_out => adrB_out, 
		  
			-- External Bus 
			in_t_ex_en => in_t_ex_en,
			ex_t_in_en => ex_t_in_en,
			exB_sel    => exB_sel,
		  
			-- Memory Stuff (NEW!)
			read_en   => read_en,
			write_en  => write_en
		);

	controler : entity work.controler
		port map(
			clk        => clk_25,
			rst        => rst,
			go         => go,
			done       => done,
			
			-- Control signals 
			ir_in      => ir,
			
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
			b_en       => b_en,
			x_in_sel   => x_in_sel,
			x_add_sel  => x_add_sel,
			sp_in_sel  => sp_in_sel,
			sp_add_sel => sp_add_sel,
			
			-- Flags 
			c_en       => c_en,
			v_en       => v_en,
			s_en       => s_en,
			z_en       => z_en,
			c_in       => c,
			v_in       => v,
			s_in       => s,
			z_in       => z,
			
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

end STR;
