-- Matthew Booe 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controler is
    port (
        clk        : in   std_logic;
        rst        : in   std_logic;
        go         : in   std_logic;
        done       : out  std_logic;
		  
		  -- Control signals 
		  ir_in      : in   std_logic_vector(7 downto 0);
		  
		  -- Internal enables 
		  a_en       : out  std_logic;
		  d_en       : out  std_logic;
		  ir_en      : out  std_logic;
		  spL_en     : out  std_logic;
		  spH_en     : out  std_logic;
		  xL_en      : out  std_logic;
		  xH_en      : out  std_logic;
		  pcL_en     : out  std_logic;
		  pcH_en     : out  std_logic;
		  arL_en     : out  std_logic;
		  arH_en     : out  std_logic;
		  inB_sel    : out  integer range 0 to 11;
		  alu_sel    : out  std_logic_vector(5 downto 0);
		  b_en       : out  std_logic;
		  x_in_sel   : out  integer range 0 to 2;
		  x_add_sel  : out  integer range 0 to 2;
		  sp_in_sel  : out  integer range 0 to 2;
		  sp_add_sel : out  integer range 0 to 2;
		  
		  -- Flags 
		  c_en       : out  std_logic;
		  v_en       : out  std_logic;
		  s_en       : out  std_logic;
		  z_en       : out  std_logic;
		  c_in       : in   std_logic;
		  v_in       : in   std_logic;
		  s_in       : in   std_logic;
		  z_in       : in   std_logic;
		  
		  -- Address Bus 
		  pcL_in_sel : out  integer range 0 to 2;
		  pcH_in_sel : out  integer range 0 to 2;
		  pc_add_sel : out  integer range 0 to 2;
		  adrB_sel   : out  integer range 0 to 11;
		  addr_bs_sel: out  integer range 0 to 2;
		  
		  --outport1_en : out std_logic;
		  --outport2_en : out std_logic;
		  
		  -- External Bus 
		  in_t_ex_en : out  std_logic;
		  ex_t_in_en : out  std_logic;
		  exB_sel    : out  integer range 0 to 11;
		  
		  -- Memory Stuff
		  read_en   : out  std_logic;
		  write_en  : out  std_logic;
		  
		  in1_sel : in std_logic;
		  in2_sel : in std_logic
	  );
		  
end controler;

architecture twoProc of controler is

	type state_type is (S_INIT, S_FETCH_BEGIN, S_FETCH_EXTERNAL, S_FETCH_INTERNAL, S_DECODE, S_LOAD_ACC_IMM, S_LOAD_ACC_IMM_2,
		S_LOAD_ACC_IMM_3,	S_ADD_CARRY, S_SUBTRACT_BORROW, S_COMPARE, S_AND, S_OR, S_XOR, S_SHIFT_LEFT_LOGICAL, 
		S_SHIFT_RIGHT_LOGICAL, S_ROTATE_LEFT_CARRY, S_ROTATE_RIGHT_CARRY, S_DONE, S_LOAD_ACC_ABS, S_LOAD_ACC_RR, 
		S_STORE_ACC_ABS, S_STORE_ACC_RR,	S_BRANCH_NOT_C, S_BRANCH_C, S_BRANCH_NOT_S, S_BRANCH_S, S_BRANCH_NOT_Z, S_BRANCH_Z,
		S_BRANCH_NOT_V, S_BRANCH_V, S_DECREMENT_ACC, S_INCREMENT_ACC, S_DECREMENT_X, S_INCREMENT_X, S_SET_CARRY, S_CLEAR_CARRY,
		S_LOAD_SP_IMM, S_CALL, S_RETURN,	S_LOAD_X_IMM, S_LOAD_ACC_INDX, S_STORE_ACC_INDX, S_LOAD_ACC_ABS_2, S_LOAD_ACC_ABS_3,
		S_LOAD_ACC_ABS_4, S_LOAD_ACC_ABS_5,	S_LOAD_ACC_ABS_6, S_LOAD_ACC_ABS_7, S_STORE_ACC_ABS_2, S_STORE_ACC_ABS_3, 
		S_STORE_ACC_ABS_4, S_STORE_ACC_ABS_5, S_STORE_ACC_ABS_6, S_LOAD_SP_IMM_2, S_LOAD_SP_IMM_3, S_LOAD_SP_IMM_4, 
		S_LOAD_X_IMM_2, S_LOAD_X_IMM_3, S_LOAD_X_IMM_4, S_INCRREMNET_PC, S_BRANCH_TAKEN, S_BRANCH_TAKEN_2, S_BRANCH_TAKEN_3,
		S_LOAD_ACC_INDX_2, S_LOAD_ACC_INDX_3, S_LOAD_ACC_INDX_4, S_LOAD_ACC_INDX_5, S_LOAD_ACC_INDX_6, S_STORE_ACC_INDX_2,
		S_STORE_ACC_INDX_3, S_STORE_ACC_INDX_4, S_STORE_ACC_INDX_5, S_CALL_2, S_CALL_3, S_CALL_4, S_CALL_5, S_CALL_6, S_CALL_7,
		S_RETURN_2, S_RETURN_3, S_RETURN_4, S_MULT_AD, S_MULT_AD_2, S_RETURN_5, S_RETURN_6, S_RETURN_7
	);

   signal state, next_state : state_type;

begin 
	 
	process(clk, rst)
   begin   
	 
		if (rst = '1') then
			state <= S_INIT;
		elsif (rising_edge(clk)) then
			state <= next_state;
		end if;
	end process;
	
	process(state, go, c_in, v_in, z_in, s_in, ir_in, in1_sel, in2_sel)
	begin
	
		done       <= '0';
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
		c_en       <= '0';
		v_en       <= '0';
		s_en       <= '0';
		z_en       <= '0';
		in_t_ex_en <= '0';
		ex_t_in_en <= '0';
		exB_sel    <=  0;
		read_en    <= '1';
		write_en   <= '0';
		b_en       <= '0';
		--outport1_en <= '0';
		--outport2_en <= '0';
		
		x_in_sel   <=  0;
		x_add_sel  <=  0;
		inB_sel    <=  0;
		alu_sel    <= (others => '0');
		pcL_in_sel <=  0;
		pcH_in_sel <=  0;
		pc_add_sel <=  0;
		adrB_sel   <=  0;
		addr_bs_sel<=  0;
		sp_in_sel  <=  0;
		sp_add_sel <=  0;
		
    case state is

		-- Initial State 
		when S_INIT =>
				--next_state <= S_INIT;
			--if (go = '1') then
				next_state <= S_FETCH_BEGIN;
			--end if;

		-- Fetch Cycle 
		when S_FETCH_BEGIN => -- Move PC to MEM
			adrB_sel   <=  1;
			addr_bs_sel<=  0;
			read_en    <= '1';
			next_state <= S_FETCH_EXTERNAL;
			
		when S_FETCH_EXTERNAL => -- Move from mem to external/internal bus 
			if (in1_sel = '1') then 
				exB_sel <= 2;
			elsif (in2_sel = '1') then 
				exB_sel <= 3;
			else 
				exB_sel    <=  1;
			end if;
			ex_t_in_en <= '1';
			next_state <= S_FETCH_INTERNAL;
			
		when S_FETCH_INTERNAL => -- Move from external/internal bus to internal 
			inB_sel    <=  11;
			ir_en      <= '1';
			-- PC++
			pc_add_sel <=  1;
			pcL_in_sel <=  1;
			pcH_in_sel <=  1;
			pcL_en     <= '1';
			pcH_en     <= '1';
			next_state <= S_DECODE;
			
		-- Decode State 
		when S_DECODE => -- Read from IR, and decide what operation to do 
			case ir_in is 
				when "10000100" => 
					next_state <= S_LOAD_ACC_IMM;
				when "10001000" => 
					next_state <= S_LOAD_ACC_ABS;
				when "10000001" => 
					next_state <= S_LOAD_ACC_RR;
				when "11110110" => 
					next_state <= S_STORE_ACC_ABS;
				when "11110001" => 
					next_state <= S_STORE_ACC_RR;
				when "00000001" => 
					next_state <= S_ADD_CARRY;
				when "00010001" => 
					next_state <= S_SUBTRACT_BORROW;
				when "10010001" => 
					next_state <= S_COMPARE; -- Might be about same as subtract
				when "00100001" =>
					next_state <= S_AND;
				when "00110001" => 
					next_state <= S_OR;
				when "01000001" => 
					next_state <= S_XOR;
				when "01010001" => 
					next_state <= S_SHIFT_LEFT_LOGICAL;
				when "01100001" => 
					next_state <= S_SHIFT_RIGHT_LOGICAL;
				when "01010010" => 
					next_state <= S_ROTATE_LEFT_CARRY;
				when "01100010" => 
					next_state <= S_ROTATE_RIGHT_CARRY;
				when "10110000" => 
					next_state <= S_BRANCH_NOT_C;
				when "10110001" => 
					next_state <= S_BRANCH_C;
				when "10110010" => 
					next_state <= S_BRANCH_Z;
				when "10110011" => 
					next_state <= S_BRANCH_S;
				when "10110100" => 
					next_state <= S_BRANCH_NOT_Z;
				when "10110101" => 
					next_state <= S_BRANCH_NOT_S;
				when "10110110" => 
					next_state <= S_BRANCH_NOT_V;
				when "10110111" => 
					next_state <= S_BRANCH_V;
				when "11111011" => 
					next_state <= S_DECREMENT_ACC;
				when "11111010" => 
					next_state <= S_INCREMENT_ACC;
				when "11111000" =>
					next_state <= S_SET_CARRY;
				when "11111001" => 
					next_state <= S_CLEAR_CARRY;
				when "10001001" => 
					next_state <= S_LOAD_SP_IMM;
				when "11001000" =>
					next_state <= S_CALL;
				when "11000000" =>
					next_state <= S_RETURN;
				when "10001010" =>
					next_state <= S_LOAD_X_IMM;
				when "10111100" =>
					next_state <= S_LOAD_ACC_INDX;
				when "11101100" =>
					next_state <= S_STORE_ACC_INDX;
				when "11111100" =>
					next_state <= S_INCREMENT_X;
				when "11111101" =>
					next_state <= S_DECREMENT_X;
				when "00000010" =>
					next_state <= S_MULT_AD;
				when others => 
					next_state <= S_INIT;
				end case;
				
		-- Operations 
		
		-- Load A Immediate 		
		when S_LOAD_ACC_IMM => -- Move PC to MEM
			adrB_sel   <=  1;
			addr_bs_sel<=  0;
			read_en    <= '1';
			next_state <= S_LOAD_ACC_IMM_2;
			
		when S_LOAD_ACC_IMM_2 => -- Move from mem to external/internal bus 
			if (in1_sel = '1') then 
				exB_sel <= 2;
			elsif (in2_sel = '1') then 
				exB_sel <= 3;
			else 
				exB_sel    <=  1;
			end if;
			ex_t_in_en <= '1';
			next_state <= S_LOAD_ACC_IMM_3;
			
		when S_LOAD_ACC_IMM_3 => -- Move from external/internal bus to internal 
			inB_sel    <=  11;
			a_en       <= '1';
			-- PC++
			pc_add_sel <=  1;
			pcL_in_sel <=  1;
			pcH_in_sel <=  1;
			pcL_en     <= '1';
			pcH_en     <= '1';
			-- For flags 
			alu_sel    <= "000011";
			s_en       <= '1';
			z_en       <= '1';
			next_state <= S_DONE;
			
		-- Load A Absolute 
		when S_LOAD_ACC_ABS =>  -- Move PC to MEM
			adrB_sel   <=  1;
			addr_bs_sel<=  0;
			read_en    <= '1';
			-- PC++
			pc_add_sel <=  1;
			pcL_in_sel <=  1;
			pcH_in_sel <=  1;
			pcL_en     <= '1';
			pcH_en     <= '1';
			next_state <= S_LOAD_ACC_ABS_2;
			
		when S_LOAD_ACC_ABS_2 => -- Move low from mem to external/internal bus 
			if (in1_sel = '1') then 
				--exB_sel <= 2;
			elsif (in2_sel = '1') then 
				--exB_sel <= 3;
			else 
				exB_sel    <=  1;
			end if;
			ex_t_in_en <= '1';
			-- Move high PC to MEM
			adrB_sel   <=  1;
			addr_bs_sel<=  0;
			read_en    <= '1';
			next_state <= S_LOAD_ACC_ABS_3;
			
		when S_LOAD_ACC_ABS_3 => -- Move low from external/internal bus to internal 
			inB_sel    <=  11;
			arL_en     <= '1';
			-- Move high from external to internal 
			if (in1_sel = '1') then 
				--exB_sel <= 2;
			elsif (in2_sel = '1') then 
				--exB_sel <= 3;
			else 
				exB_sel    <=  1;
			end if;
			ex_t_in_en <= '1';
			next_state <= S_LOAD_ACC_ABS_4;
			
		when S_LOAD_ACC_ABS_4 => -- Move high from internal to register 
			inB_sel    <=  11;
			arH_en     <= '1';
			-- PC++
			pc_add_sel <=  1;
			pcL_in_sel <=  1;
			pcH_in_sel <=  1;
			pcL_en     <= '1';
			pcH_en     <= '1';
			next_state <= S_LOAD_ACC_ABS_5;
		
		when S_LOAD_ACC_ABS_5 => -- Move AR to MEM
			adrB_sel   <=  0;
			addr_bs_sel<=  0;
			read_en    <= '1';
			next_state <= S_LOAD_ACC_ABS_6;
			
		when S_LOAD_ACC_ABS_6 => -- Move abs from mem to external/internal bus 
			if (in1_sel = '1') then 
				exB_sel <= 2;
			elsif (in2_sel = '1') then 
				exB_sel <= 3;
			else 
				exB_sel    <=  1;
			end if;
			ex_t_in_en <= '1';
			next_state <= S_LOAD_ACC_ABS_7;
			
		when S_LOAD_ACC_ABS_7 => -- Move abs from external/internal bus to internal 
			inB_sel    <=  11;
			a_en       <= '1';
			-- For flags 
			alu_sel    <= "000011";
			s_en       <= '1';
			z_en       <= '1';
			next_state <= S_DONE;
			
		-- Load A from D
		when S_LOAD_ACC_RR =>
			alu_sel    <= "000010";
			inB_sel    <=  0; 
			a_en       <= '1';
			-- For flags
			s_en       <= '1';
			z_en       <= '1';
			next_state <= S_DONE;
			
		-- Store Absolute 
		when S_STORE_ACC_ABS =>  -- Move PC to MEM
			adrB_sel   <=  1;
			addr_bs_sel<=  0;
			read_en    <= '1';
			-- PC++
			pc_add_sel <=  1;
			pcL_in_sel <=  1;
			pcH_in_sel <=  1;
			pcL_en     <= '1';
			pcH_en     <= '1';
			next_state <= S_STORE_ACC_ABS_2;
			
		when S_STORE_ACC_ABS_2 => -- Move low from mem to external/internal bus 
			if (in1_sel = '1') then 
				exB_sel <= 2;
			elsif (in2_sel = '1') then 
				exB_sel <= 3;
			else 
				exB_sel    <=  1;
			end if;
			ex_t_in_en <= '1';
			-- Move high PC to MEM
			adrB_sel   <=  1;
			addr_bs_sel<=  0;
			read_en    <= '1';
			next_state <= S_STORE_ACC_ABS_3;
			
		when S_STORE_ACC_ABS_3 => -- Move low from external/internal bus to internal 
			inB_sel    <=  11;
			arL_en     <= '1';
			-- Move high from external to internal 
			if (in1_sel = '1') then 
				exB_sel <= 2;
			elsif (in2_sel = '1') then 
				exB_sel <= 3;
			else 
				exB_sel    <=  1;
			end if;
			ex_t_in_en <= '1';
			next_state <= S_STORE_ACC_ABS_4;
			
		when S_STORE_ACC_ABS_4 => -- Move high from internal to register 
			inB_sel    <=  11;
			arH_en     <= '1';
			-- PC++
			pc_add_sel <=  1;
			pcL_in_sel <=  1;
			pcH_in_sel <=  1;
			pcL_en     <= '1';
			pcH_en     <= '1';
			next_state <= S_STORE_ACC_ABS_5;
		
		when S_STORE_ACC_ABS_5 => -- Move AR to MEM
			adrB_sel   <=  0;
			addr_bs_sel<=  0;
			read_en    <= '1';
			-- A to internal
			alu_sel    <= "000011";
			inB_sel    <=  0;
			in_t_ex_en <= '1';
			next_state <= S_STORE_ACC_ABS_6;
			
		when S_STORE_ACC_ABS_6 => -- Move a from exchange to external, and write 
			if (in1_sel = '1') then 
				exB_sel <= 2;
			elsif (in2_sel = '1') then 
				exB_sel <= 3;
			else 
				exB_sel    <=  0;
			end if;
			read_en    <= '0';
			write_en   <= '1';
			next_state <= S_DONE;
			
		-- Store A to D
		when S_STORE_ACC_RR =>
			alu_sel    <= "000011";
			inB_sel    <=  0; 
			d_en       <= '1';
			next_state <= S_DONE; 
			
		-- Add 
		when S_ADD_CARRY =>
			alu_sel <= "000101"; 
			c_en       <= '1';
			v_en       <= '1';
			s_en       <= '1';
			z_en       <= '1';
			inB_sel    <=  0; 
			a_en       <= '1'; -- May need to wait a cycle 
			next_state <= S_DONE; 
			
		-- Subtract
		when S_SUBTRACT_BORROW =>
			alu_sel    <= "000110"; 
			c_en       <= '1';
			v_en       <= '1';
			s_en       <= '1';
			z_en       <= '1';
			inB_sel    <=  0; 
			a_en       <= '1'; -- May need to wait a cycle
			next_state <= S_DONE; 
			
		-- Borrow 
		when S_COMPARE =>
			alu_sel    <= "000111"; 
			c_en       <= '1';
			v_en       <= '1';
			s_en       <= '1';
			z_en       <= '1';
			next_state <= S_DONE; 
			
		-- And
		when S_AND =>
			alu_sel    <= "001000"; 
			s_en       <= '1';
			z_en       <= '1';
			inB_sel    <=  0; 
			a_en       <= '1'; -- May need to wait a cycle 
			next_state <= S_DONE; 
			
		-- Or
		when S_OR =>
			alu_sel    <= "001001"; 
			s_en       <= '1';
			z_en       <= '1';
			inB_sel    <=  0; 
			a_en       <= '1'; -- May need to wait a cycle 
			next_state <= S_DONE; 
			
		-- Xor
		when S_XOR =>
			alu_sel    <= "001010"; 
			s_en       <= '1';
			z_en       <= '1';
			inB_sel    <=  0; 
			a_en       <= '1'; -- May need to wait a cycle 
			next_state <= S_DONE; 
			
		-- Shift Left 
		when S_SHIFT_LEFT_LOGICAL =>
			alu_sel    <= "001011"; 
			c_en       <= '1';
			s_en       <= '1';
			z_en       <= '1';
			inB_sel    <=  0; 
			a_en       <= '1'; -- May need to wait a cycle 
			next_state <= S_DONE; 
			
		-- Shift Right 
		when S_SHIFT_RIGHT_LOGICAL =>
			alu_sel    <= "001100"; 
			c_en       <= '1';
			s_en       <= '1';
			z_en       <= '1';
			inB_sel    <=  0; 
			a_en       <= '1'; -- May need to wait a cycle 
			next_state <= S_DONE;
		
		-- Rotate Left 
		when S_ROTATE_LEFT_CARRY =>
			alu_sel    <= "001101"; 
			c_en       <= '1';
			s_en       <= '1';
			z_en       <= '1';
			inB_sel    <=  0; 
			a_en       <= '1'; -- May need to wait a cycle 
			next_state <= S_DONE;
			
		-- Rotate Right
		when S_ROTATE_RIGHT_CARRY =>
			alu_sel    <= "001110"; 
			c_en       <= '1';
			s_en       <= '1';
			z_en       <= '1';
			inB_sel    <=  0; 
			a_en       <= '1'; -- May need to wait a cycle 
			next_state <= S_DONE;
			
		-- Branches
		-- C is true
		when S_BRANCH_C => 
			-- PC++
			pc_add_sel <=  1;
			pcL_in_sel <=  1;
			pcH_in_sel <=  1;
			pcL_en     <= '1';
			pcH_en     <= '1';
			if (c_in = '1') then 
				adrB_sel   <=  1; -- Move PC to MEM
				addr_bs_sel<=  0;
				read_en    <= '1';
				next_state <= S_BRANCH_TAKEN;
			else 
				next_state <= S_INCRREMNET_PC;
			end if;
			
		-- C is flase 
		when S_BRANCH_NOT_C => 
			-- PC++
			pc_add_sel <=  1;
			pcL_in_sel <=  1;
			pcH_in_sel <=  1;
			pcL_en     <= '1';
			pcH_en     <= '1';
			if (c_in = '0') then 
				adrB_sel   <=  1; -- Move PC to MEM
				addr_bs_sel<=  0;
				read_en    <= '1';
				next_state <= S_BRANCH_TAKEN;
			else 
				next_state <= S_INCRREMNET_PC;
			end if;
		
		-- Z is true 
		when S_BRANCH_Z => 
			-- PC++
			pc_add_sel <=  1;
			pcL_in_sel <=  1;
			pcH_in_sel <=  1;
			pcL_en     <= '1';
			pcH_en     <= '1';
			if (z_in = '1') then 
				adrB_sel   <=  1; -- Move PC to MEM
				addr_bs_sel<=  0;
				read_en    <= '1';
				next_state <= S_BRANCH_TAKEN;
			else 
				next_state <= S_INCRREMNET_PC;
			end if;			
		
		-- S is true 
		when S_BRANCH_S => 
			-- PC++
			pc_add_sel <=  1;
			pcL_in_sel <=  1;
			pcH_in_sel <=  1;
			pcL_en     <= '1';
			pcH_en     <= '1';
			if (s_in = '1') then 
				adrB_sel   <=  1; -- Move PC to MEM
				addr_bs_sel<=  0;
				read_en    <= '1';
				next_state <= S_BRANCH_TAKEN;
			else 
				next_state <= S_INCRREMNET_PC;
			end if;
			
		-- Z is false 
		when S_BRANCH_NOT_Z => 
			-- PC++
			pc_add_sel <=  1;
			pcL_in_sel <=  1;
			pcH_in_sel <=  1;
			pcL_en     <= '1';
			pcH_en     <= '1';
			if (z_in = '0') then 
				adrB_sel   <=  1; -- Move PC to MEM
				addr_bs_sel<=  0;
				read_en    <= '1';
				next_state <= S_BRANCH_TAKEN;
			else 
				next_state <= S_INCRREMNET_PC;
			end if;
			
		-- S is false 
		when S_BRANCH_NOT_S => 
			-- PC++
			pc_add_sel <=  1;
			pcL_in_sel <=  1;
			pcH_in_sel <=  1;
			pcL_en     <= '1';
			pcH_en     <= '1';
			if (s_in = '0') then 
				adrB_sel   <=  1; -- Move PC to MEM
				addr_bs_sel<=  0;
				read_en    <= '1';
				next_state <= S_BRANCH_TAKEN;
			else 
				next_state <= S_INCRREMNET_PC;
			end if;
			
		-- V is false 
		when S_BRANCH_NOT_V => 
			-- PC++
			pc_add_sel <=  1;
			pcL_in_sel <=  1;
			pcH_in_sel <=  1;
			pcL_en     <= '1';
			pcH_en     <= '1';
			if (v_in = '0') then 
				adrB_sel   <=  1; -- Move PC to MEM
				addr_bs_sel<=  0;
				read_en    <= '1';
				next_state <= S_BRANCH_TAKEN;
			else 
				next_state <= S_INCRREMNET_PC;
			end if;
			
		-- V is true 
		when S_BRANCH_V => 
			-- PC++
			pc_add_sel <=  1;
			pcL_in_sel <=  1;
			pcH_in_sel <=  1;
			pcL_en     <= '1';
			pcH_en     <= '1';
			if (v_in = '1') then 
				adrB_sel   <=  1; -- Move PC to MEM
				addr_bs_sel<=  0;
				read_en    <= '1';
				next_state <= S_BRANCH_TAKEN;
			else 
				next_state <= S_INCRREMNET_PC;
			end if;
			
		-- Default increment for not take branches 
		when S_INCRREMNET_PC =>
			-- PC++
			pc_add_sel <=  1;
			pcL_in_sel <=  1;
			pcH_in_sel <=  1;
			pcL_en     <= '1';
			pcH_en     <= '1';
			next_state <= S_DONE;
		
		-- Default for branches taken 
		when S_BRANCH_TAKEN => -- Move from mem to external/internal bus 
			if (in1_sel = '1') then 
				exB_sel <= 2;
			elsif (in2_sel = '1') then 
				exB_sel <= 3;
			else 
				exB_sel    <=  1;
			end if;
			ex_t_in_en <= '1';
			-- High from PC to MEM 
			adrB_sel   <=  1; 
			addr_bs_sel<=  0;
			read_en    <= '1';
			next_state <= S_BRANCH_TAKEN_2;
			
		when S_BRANCH_TAKEN_2 => -- Move from external/internal bus to internal 
			inB_sel    <=  11;
			pcL_in_sel <=  0;
			pcL_en     <= '1';
			-- High from MEM to external 
			if (in1_sel = '1') then 
				exB_sel <= 2;
			elsif (in2_sel = '1') then 
				exB_sel <= 3;
			else 
				exB_sel    <=  1;
			end if;
			ex_t_in_en <= '1';
			next_state <= S_BRANCH_TAKEN_3;	
		
		when S_BRANCH_TAKEN_3 => -- High from exchange to internal 
			inB_sel    <=  11;
			pcH_in_sel <=  0;
			pcH_en     <= '1';
			next_state <= S_DONE;
		
		-- Decrment A
		when S_DECREMENT_ACC =>
			alu_sel    <= "010111";
			s_en       <= '1';
			z_en       <= '1';
			inB_sel    <=  0; 
			a_en       <= '1';
			next_state <= S_DONE;
		
		-- Increment A 
		when S_INCREMENT_ACC =>
			alu_sel    <= "011000";
			s_en       <= '1';
			z_en       <= '1';
			inB_sel    <=  0; 
			a_en       <= '1';
			next_state <= S_DONE;
			
		-- Set Carry Flag 
		when S_SET_CARRY =>
			alu_sel    <= "011001";
			c_en       <= '1';
			next_state <= S_DONE;
		
		-- Clear Carry Flag 
		when S_CLEAR_CARRY =>
			alu_sel    <= "011010";
			c_en       <= '1';
			next_state <= S_DONE;
			
		-- Addendum
			
		-- Load Stack Pointer Immediate 
		when S_LOAD_SP_IMM => -- Move low PC to MEM
			adrB_sel   <=  1;
			addr_bs_sel<=  0;
			read_en    <= '1';
			-- PC++
			pc_add_sel <=  1;
			pcL_in_sel <=  1;
			pcH_in_sel <=  1;
			pcL_en     <= '1';
			pcH_en     <= '1';
			next_state <= S_LOAD_SP_IMM_2;
			
		when S_LOAD_SP_IMM_2 => -- Move low from mem to external/internal bus 
			if (in1_sel = '1') then 
				exB_sel <= 2;
			elsif (in2_sel = '1') then 
				exB_sel <= 3;
			else 
				exB_sel    <=  1;
			end if;
			ex_t_in_en <= '1';
			-- Move high to MEM
			adrB_sel   <=  1;
			addr_bs_sel<=  0;
			read_en    <= '1';
			-- PC++
			pc_add_sel <=  1;
			pcL_in_sel <=  1;
			pcH_in_sel <=  1;
			pcL_en     <= '1';
			pcH_en     <= '1';
			next_state <= S_LOAD_SP_IMM_3;
			
		when S_LOAD_SP_IMM_3 => -- Move low from external/internal bus to internal 
			inB_sel    <=  11;
			spL_en     <= '1';
			-- Move hight to exchange 
			if (in1_sel = '1') then 
				exB_sel <= 2;
			elsif (in2_sel = '1') then 
				exB_sel <= 3;
			else 
				exB_sel    <=  1;
			end if;
			ex_t_in_en <= '1';
			next_state <= S_LOAD_SP_IMM_4;
			
		when S_LOAD_SP_IMM_4 => -- High from exhcnage to register 
			inB_sel    <=  11;
			spH_en     <= '1';
			next_state <= S_DONE;
			
		-- Call
		--NOTE: Reversed Low and High PC
		when S_CALL => -- Put SP onto address bus
			--adrB_sel   <=  0;
			addr_bs_sel<=  1;
			-- Put pcL onto internal 
			inB_sel    <=  7;
			in_t_ex_en <= '1';
			next_state <= S_CALL_2;
		
		when S_CALL_2 => -- Put pcL onto MEM 
			addr_bs_sel<=  1;
			if (in1_sel = '1') then 
				exB_sel <= 2;
			elsif (in2_sel = '1') then 
				exB_sel <= 3;
			else 
				exB_sel    <=  0;
			end if;
			read_en    <= '0';
			write_en   <= '1';
			-- Put pcH onto internal 
			inB_sel    <=  8;
			in_t_ex_en <= '1';
			next_state <= S_CALL_3;
			
		when S_CALL_3 => -- SP--  
			sp_add_sel <=  0; -- Should add -1 or "11111111"
			sp_in_sel  <=  1;
			spL_en     <= '1';
			--spH_en     <= '1';
			next_state <= S_CALL_4;
			
		when S_CALL_4 => --Put pcH onto MEM 
			addr_bs_sel<=  1;
			if (in1_sel = '1') then 
				exB_sel <= 2;
			elsif (in2_sel = '1') then 
				exB_sel <= 3;
			else 
				exB_sel    <=  0;
			end if;
			read_en    <= '0';
			write_en   <= '1';
			-- SP--
			sp_add_sel <=  0; -- Should add -1 or "11111111"
			sp_in_sel  <=  1;
			spL_en     <= '1';
			--spH_en     <= '1';
			next_state <= S_CALL_5;
			
		when S_CALL_5 => -- Move address low to exchange 
			adrB_sel   <=  1;
			addr_bs_sel<=  0;
			read_en    <= '1';
			if (in1_sel = '1') then 
				exB_sel <= 2;
			elsif (in2_sel = '1') then 
				exB_sel <= 3;
			else 
				exB_sel    <=  1;
			end if;
			ex_t_in_en <= '1';
			-- PC++
			pc_add_sel <=  1;
			pcL_in_sel <=  1;
			pcH_in_sel <=  1;
			pcL_en     <= '1';
			pcH_en     <= '1';
			next_state <= S_CALL_6;
			
		when S_CALL_6 => -- Move addres low to pcL 
			inB_sel    <=  11;
			pcH_in_sel <=  0;
			pcH_en     <= '1';
			-- Move high address to exchange 
			adrB_sel   <=  1;
			addr_bs_sel<=  0;
			read_en    <= '1';
			if (in1_sel = '1') then 
				exB_sel <= 2;
			elsif (in2_sel = '1') then 
				exB_sel <= 3;
			else 
				exB_sel    <=  1;
			end if;
			ex_t_in_en <= '1';
--			-- PC++
--			pc_add_sel <=  1;
--			pcL_in_sel <=  1;
--			pcH_in_sel <=  1;
--			pcL_en     <= '1';
--			pcH_en     <= '1';
			next_state <= S_CALL_7;
			
		when S_CALL_7 => -- Move address high to pcH
			inB_sel    <=  11;
			pcL_in_sel <=  0;
			pcL_en     <= '1';
			next_state <= S_DONE;
			
		-- Return
		when S_RETURN => -- Incremnet SP 
			sp_add_sel <=  1;
			sp_in_sel  <=  1;
			spL_en     <= '1';
			--spH_en     <= '1';
			next_state <= S_RETURN_2;
			
		when S_RETURN_2 => -- Move SP to MEM 
			--adrB_sel   <=  1;
			addr_bs_sel<=  1;
			read_en    <= '1';
			next_state <= S_RETURN_3;
			
		when S_RETURN_3 => -- Move high to echange 
			if (in1_sel = '1') then 
				exB_sel <= 2;
			elsif (in2_sel = '1') then 
				exB_sel <= 3;
			else 
				exB_sel    <=  1;
			end if;
			ex_t_in_en <= '1';
			-- SP++
			sp_add_sel <=  1;
			sp_in_sel  <=  1;
			spL_en     <= '1';
			--spH_en     <= '1';
			next_state <= S_RETURN_4;
		
		when S_RETURN_4 => -- Move high to pcH 
			inB_sel    <=  11;
			pcL_in_sel <=  0;
			pcL_en     <= '1';
			-- Move low to exchange 
			addr_bs_sel<=  1;
			read_en    <= '1';
			next_state <= S_RETURN_5;
		
		when S_RETURN_5 => -- Move low to pcL
			if (in1_sel = '1') then 
				exB_sel <= 2;
			elsif (in2_sel = '1') then 
				exB_sel <= 3;
			else 
				exB_sel    <=  1;
			end if;
			ex_t_in_en <= '1';
			next_state <= S_RETURN_6;
			
		when S_RETURN_6 => -- Move low to pcL
			inB_sel    <=  11;
			pcH_in_sel <=  0;
			pcH_en     <= '1';
			next_state <= S_RETURN_7;
			
		when S_RETURN_7 => --PC++
--			pc_add_sel <=  1;
--			pcL_in_sel <=  1;
--			pcH_in_sel <=  1;
--			pcL_en     <= '1';
--			pcH_en     <= '1';
			next_state <= S_DONE;
		
		-- Load X Immediate 
		when S_LOAD_X_IMM => -- Move low PC to MEM
			--NOTE: May eneed to actyally move value
			adrB_sel   <=  1;
			addr_bs_sel<=  0;
			read_en    <= '1';
			-- PC++
			pc_add_sel <=  1;
			pcL_in_sel <=  1;
			pcH_in_sel <=  1;
			pcL_en     <= '1';
			pcH_en     <= '1';
			next_state <= S_LOAD_X_IMM_2;
			
		when S_LOAD_X_IMM_2 => -- Move low from mem to external/internal bus 
			if (in1_sel = '1') then 
				exB_sel <= 2;
			elsif (in2_sel = '1') then 
				exB_sel <= 3;
			else 
				exB_sel    <=  1;
			end if;
			ex_t_in_en <= '1';
			-- Move high to MEM
			adrB_sel   <=  1;
			addr_bs_sel<=  0;
			read_en    <= '1';
			-- PC++
			pc_add_sel <=  1;
			pcL_in_sel <=  1;
			pcH_in_sel <=  1;
			pcL_en     <= '1';
			pcH_en     <= '1';
			next_state <= S_LOAD_X_IMM_3;
			
		when S_LOAD_X_IMM_3 => -- Move low from external/internal bus to internal 
			inB_sel    <=  11;
			xL_en      <= '1';
			-- Move hight to exchange 
			if (in1_sel = '1') then 
				exB_sel <= 2;
			elsif (in2_sel = '1') then 
				exB_sel <= 3;
			else 
				exB_sel    <=  1;
			end if;
			ex_t_in_en <= '1';
			next_state <= S_LOAD_X_IMM_4;
			
		when S_LOAD_X_IMM_4 => -- High from exhcnage to register 
			inB_sel    <=  11;
			xH_en      <= '1';
			next_state <= S_DONE;
		
		-- Load A index 
		when S_LOAD_ACC_INDX => --- Move PC to MEM 
			adrB_sel   <=  1;
			addr_bs_sel<=  0;
			read_en    <= '1';
			next_state <= S_LOAD_ACC_INDX_2;
		
		when S_LOAD_ACC_INDX_2 => -- Move value to exchange 
			if (in1_sel = '1') then 
				exB_sel <= 2;
			elsif (in2_sel = '1') then 
				exB_sel <= 3;
			else 
				exB_sel    <=  1;
			end if;
			ex_t_in_en <= '1';
			next_state <= S_LOAD_ACC_INDX_3;
			
		when S_LOAD_ACC_INDX_3 => -- Move value to b 
			inB_sel    <=  11;
			b_en       <= '1';
			next_state <=  S_LOAD_ACC_INDX_4;
			
		when S_LOAD_ACC_INDX_4 => -- Move X+B to MEM
			x_add_sel  <=  2;
			adrB_sel   <=  2;
			addr_bs_sel<=  0;
			read_en    <= '1';
			next_state <= S_LOAD_ACC_INDX_5;
			
		when S_LOAD_ACC_INDX_5 => -- Move from mem to external/internal bus 
			if (in1_sel = '1') then 
				exB_sel <= 2;
			elsif (in2_sel = '1') then 
				exB_sel <= 3;
			else 
				exB_sel    <=  1;
			end if;
			ex_t_in_en <= '1';
			-- PC++
			pc_add_sel <=  1;
			pcL_in_sel <=  1;
			pcH_in_sel <=  1;
			pcL_en     <= '1';
			pcH_en     <= '1';
			next_state <= S_LOAD_ACC_INDX_6;
			
		when S_LOAD_ACC_INDX_6 => -- Move from external/internal bus to internal 
			inB_sel    <=  11;
			a_en       <= '1';
			-- PC++
			pc_add_sel <=  1;
			pcL_in_sel <=  1;
			pcH_in_sel <=  1;
			pcL_en     <= '1';
			pcH_en     <= '1';
			next_state <= S_DONE;
		
		-- Store A index 
		when S_STORE_ACC_INDX => --- Move PC to MEM 
			adrB_sel   <=  1;
			addr_bs_sel<=  0;
			read_en    <= '1';
			next_state <= S_STORE_ACC_INDX_2;
		
		when S_STORE_ACC_INDX_2 => -- Move value to exchange 
			if (in1_sel = '1') then 
				exB_sel <= 2;
			elsif (in2_sel = '1') then 
				exB_sel <= 3;
			else 
				exB_sel    <=  1;
			end if;
			ex_t_in_en <= '1';
			next_state <= S_STORE_ACC_INDX_3;
			
		when S_STORE_ACC_INDX_3 => -- Move value to b 
			inB_sel    <=  11;
			b_en       <= '1';
			next_state <=  S_STORE_ACC_INDX_4;
			
		when S_STORE_ACC_INDX_4 => -- Move X+B to MEM
			x_add_sel  <=  2;
			adrB_sel   <=  2;
			addr_bs_sel<=  0;
			-- Move A to internal bus and exchange 
			inB_sel    <=  1;
			in_t_ex_en <= '1';
			next_state <= S_STORE_ACC_INDX_5;
			
		when S_STORE_ACC_INDX_5 => -- Move A from exchange to external bus  
			if (in1_sel = '1') then 
				exB_sel <= 2;
			elsif (in2_sel = '1') then 
				exB_sel <= 3;
			else 
				exB_sel    <=  0;
			end if;
			--adrB_sel   <=  2;
			--addr_bs_sel<=  0;
			read_en    <= '0';
			write_en   <= '1';
			-- PC++
			pc_add_sel <=  1;
			pcL_in_sel <=  1;
			pcH_in_sel <=  1;
			pcL_en     <= '1';
			pcH_en     <= '1';
			next_state <= S_DONE;
		
		-- Increment X
		when S_INCREMENT_X => 
			-- X++
			x_add_sel  <=  1;
			x_in_sel   <=  1;
			xL_en      <= '1';
			xH_en      <= '1';
			next_state <= S_DONE;
		
		-- Decrement x
		when S_DECREMENT_X =>
			-- X--
			x_add_sel  <=  0; -- Should add -1 or "11111111"
			x_in_sel   <=  1;
			xL_en      <= '1';
			xH_en      <= '1';
			next_state <= S_DONE;
			
		-- Multiply A and D
		when S_MULT_AD => 
			alu_sel <= "011011"; 
			inB_sel    <=  0; 
			d_en       <= '1'; 
			next_state <= S_MULT_AD_2;
			
		when S_MULT_AD_2 =>
			alu_sel <= "011111"; 
			inB_sel    <=  0; 
			a_en       <= '1'; 
			next_state <= S_MULT_AD_2;
		
		-- Done State 
      when S_DONE =>
			--done <= '1';
				--if (go = '0') then
					next_state <= S_INIT;
            --end if;

      when others =>
			next_state <= S_INIT;

      end case;
		  
	end process;
end twoProc;