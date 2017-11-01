-- Matthew Booe

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity alu is
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
end alu;


architecture BHV of alu is

-- In order to make the code more reable 
	constant C_LD_IM   : std_logic_vector(5 downto 0) := "000000";
	constant C_LD_ABS  : std_logic_vector(5 downto 0) := "000001";
	constant C_LD_RR   : std_logic_vector(5 downto 0) := "000010";
	constant C_SW_ABS  : std_logic_vector(5 downto 0) := "000011";
	constant C_SW_RR   : std_logic_vector(5 downto 0) := "000100";
	constant C_ADD_C   : std_logic_vector(5 downto 0) := "000101";
	constant C_SUB_B   : std_logic_vector(5 downto 0) := "000110";
	constant C_COMP    : std_logic_vector(5 downto 0) := "000111";
	constant C_AND     : std_logic_vector(5 downto 0) := "001000";
	constant C_OR      : std_logic_vector(5 downto 0) := "001001";
	constant C_XOR     : std_logic_vector(5 downto 0) := "001010";
	constant C_SHL_L   : std_logic_vector(5 downto 0) := "001011";
   constant C_SHR_L   : std_logic_vector(5 downto 0) := "001100";
   constant C_RTL_C   : std_logic_vector(5 downto 0) := "001101";
   constant C_RTR_C   : std_logic_vector(5 downto 0) := "001110";
   constant C_BR_NC   : std_logic_vector(5 downto 0) := "001111";
	constant C_BR_C    : std_logic_vector(5 downto 0) := "010000";
	constant C_BR_Z    : std_logic_vector(5 downto 0) := "010001";
	constant C_BR_S    : std_logic_vector(5 downto 0) := "010010";
	constant C_BR_NZ   : std_logic_vector(5 downto 0) := "010011";
	constant C_BR_NS   : std_logic_vector(5 downto 0) := "010100";
	constant C_BR_NV   : std_logic_vector(5 downto 0) := "010101";
	constant C_BR_V    : std_logic_vector(5 downto 0) := "010110";
	constant C_DEC_ACC : std_logic_vector(5 downto 0) := "010111";
	constant C_INC_ACC : std_logic_vector(5 downto 0) := "011000";
	constant C_SET_C   : std_logic_vector(5 downto 0) := "011001";
	constant C_CLR_C   : std_logic_vector(5 downto 0) := "011010";
	constant C_MUL_AD1 : std_logic_vector(5 downto 0) := "011011";
	constant C_MUL_AD2 : std_logic_vector(5 downto 0) := "011111";


begin  

	process(input1, input2, sel, c_in, v_in, z_in, s_in)
		variable temp     : unsigned(WIDTH-1 downto 0); 
		variable mul_temp : unsigned(WIDTH*2 - 1 downto 0);
		variable c_in_vec : std_logic_vector(0 downto 0);

	begin
	 
		-- Defaults for flags
	 	c_out <= '0';		
	
		case sel is
			when C_LD_IM => 
				temp := unsigned(input2); -- Pass from bus to bus
			
			when C_LD_ABS =>
				temp := unsigned(input2);
			
			when C_LD_RR =>
				temp := unsigned(input2);
			
			when C_SW_ABS =>
				temp := unsigned(input1);
			
			when C_SW_RR => 
				temp := unsigned(input1);
			
			when C_ADD_C => 
				c_in_vec    := (others => '0');
				c_in_vec(0) := c_in;
				temp := unsigned(input1) + unsigned(input2) + unsigned(c_in_vec);
				if ((temp < unsigned(input1)) or temp < unsigned(input2)) then --if (temp < unsigned(input1 or input2)) then --(temp_vec < input1) or (temp_vec < input2)
					c_out <= '1';
				end if;
			
			when C_SUB_B =>
				c_in_vec := (others => c_in);
				temp := unsigned(input1) + not(unsigned(input2)) + unsigned(c_in_vec);

			when C_COMP =>
				c_in_vec := (others => c_in);	
				temp := unsigned(input1) + not(unsigned(input2)) + unsigned(c_in_vec);
			
			when C_AND => 
				temp := unsigned(input1 and input2);
			
			when C_OR => 
				temp := unsigned(input1 or input2);
			
			when C_XOR => 
				temp := unsigned(input1 xor input2);
			
			when C_SHL_L =>
				c_out <= std_logic(input1(WIDTH-1));
				temp  := unsigned(input1(WIDTH-2 downto 0) & '0');
			
			when C_SHR_L => 
				c_out <= std_logic(input1(0));
				temp  := unsigned('0' & input1(WIDTH-1 downto 1));
			
			when C_RTL_C => 
				c_out <= std_logic(input1(WIDTH-1));
				temp  := unsigned(input1(WIDTH-2 downto 0) & c_in);
			
			when C_RTR_C => 
				c_out <= std_logic(input1(0));
				temp  := unsigned(c_in & input1(WIDTH-1 downto 1));
			
			when C_BR_NC => 
				if (c_in = '0') then -- This is the assumption that current PC is stored in input1
					temp := unsigned(input2);	-- And mem[mem] is in the pipeline 
				else 
					temp := to_unsigned(1 + to_integer(unsigned(input1)), WIDTH);
				end if;
			
			when C_BR_C => 
				if (c_in = '1') then -- This is the assumption that current PC is stored in input1
					temp := unsigned(input2);	-- And mem[mem] is in the pipeline 
				else 
					temp := to_unsigned(1 + to_integer(unsigned(input1)), WIDTH);
				end if;
			
			when C_BR_Z => 
				if (z_in = '1') then -- This is the assumption that current PC is stored in input1
					temp := unsigned(input2);	-- And mem[mem] is in the pipeline 
				else 
					temp := to_unsigned(1 + to_integer(unsigned(input1)), WIDTH);
				end if;
		
			when C_BR_S => 
				if (s_in = '1') then -- This is the assumption that current PC is stored in input1
					temp := unsigned(input2);	-- And mem[mem] is in the pipeline 
				else 
					temp := to_unsigned(1 + to_integer(unsigned(input1)), WIDTH);
				end if;
			
			when C_BR_NZ => 
				if (z_in = '0') then -- This is the assumption that current PC is stored in input1
					temp := unsigned(input2);	-- And mem[mem] is in the pipeline 
				else 
					temp := to_unsigned(1 + to_integer(unsigned(input1)), WIDTH);
				end if;
			
			when C_BR_NS => 
				if (s_in = '0') then -- This is the assumption that current PC is stored in input1
					temp := unsigned(input2);	-- And mem[mem] is in the pipeline 
				else 
					temp := to_unsigned(1 + to_integer(unsigned(input1)), WIDTH);
				end if;
			
			when C_BR_NV =>
				if (v_in = '0') then -- This is the assumption that current PC is stored in input1
					temp := unsigned(input2);	-- And mem[mem] is in the pipeline 
				else 
					temp := to_unsigned(1 + to_integer(unsigned(input1)), WIDTH);
				end if;
			
			when C_BR_V => 
				if (v_in = '1') then -- This is the assumption that current PC is stored in input1
					temp := unsigned(input2);	-- And mem[mem] is in the pipeline 
				else 
					temp := to_unsigned(1 + to_integer(unsigned(input1)), WIDTH);
				end if;
			
			when C_DEC_ACC => 
				temp := to_unsigned(to_integer(unsigned(input1)) - 1, WIDTH);
			
			when C_INC_ACC =>
				temp := to_unsigned(to_integer(unsigned(input1)) + 1, WIDTH);
			
			when C_SET_C => 
				temp := unsigned(input1);
				c_out <= '1';
			
			when C_CLR_C =>
				temp := unsigned(input1);
				c_out <= '0';
				
			when C_MUL_AD1 => 
				mul_temp := unsigned(input1) * unsigned(input2);
				temp     := mul_temp(WIDTH-1 downto 0);
				
			when C_MUL_AD2 => 
				mul_temp := unsigned(input1) * unsigned(input2);
				temp     := mul_temp(WIDTH*2 - 1 downto WIDTH);
				
			when others =>
				temp := unsigned(input1);
			
		end case;
		
		v_out <= std_logic(temp(WIDTH-1) xor c_in);
		s_out <= std_logic(temp(WIDTH-1));
		
		if (temp = "00000000") then 
			z_out <= '1';
		else 
			z_out <= '0';
		end if;
		
		
		output <= std_logic_vector(temp);
		
	end process;
end BHV;


