-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 12.1 Build 177 11/07/2012 SJ Web Edition"

-- DATE "04/19/2016 12:00:06"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	switch : IN std_logic_vector(9 DOWNTO 0);
	button : IN std_logic_vector(2 DOWNTO 0);
	led0 : OUT std_logic_vector(6 DOWNTO 0);
	led0_dp : OUT std_logic;
	led1 : OUT std_logic_vector(6 DOWNTO 0);
	led1_dp : OUT std_logic;
	led2 : OUT std_logic_vector(6 DOWNTO 0);
	led2_dp : OUT std_logic;
	led3 : OUT std_logic_vector(6 DOWNTO 0);
	led3_dp : OUT std_logic
	);
END top_level;

-- Design Ports Information
-- switch[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[9]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[0]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0_dp	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1_dp	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[5]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2_dp	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3_dp	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_switch : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_button : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_led0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led0_dp : std_logic;
SIGNAL ww_led1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led1_dp : std_logic;
SIGNAL ww_led2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led2_dp : std_logic;
SIGNAL ww_led3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led3_dp : std_logic;
SIGNAL \datapath|ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \datapath|ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \datapath|alu|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \datapath|alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \datapath|alu|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \datapath|alu|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \datapath|alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U_CLK_DIV|clk_en~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|x_adder|output[0]~0_combout\ : std_logic;
SIGNAL \datapath|x_adder|output[2]~4_combout\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \datapath|alu|Add0~4_combout\ : std_logic;
SIGNAL \datapath|alu|Add0~14_combout\ : std_logic;
SIGNAL \datapath|pc_adder|output[5]~10_combout\ : std_logic;
SIGNAL \datapath|pc_adder|output[9]~18_combout\ : std_logic;
SIGNAL \datapath|pc_adder|output[10]~20_combout\ : std_logic;
SIGNAL \datapath|pc_adder|output[14]~29\ : std_logic;
SIGNAL \datapath|pc_adder|output[15]~30_combout\ : std_logic;
SIGNAL \controler|Selector3~1_combout\ : std_logic;
SIGNAL \controler|Selector3~2_combout\ : std_logic;
SIGNAL \datapath|v_flag|output~q\ : std_logic;
SIGNAL \datapath|x_adder_mux|Mux0~0_combout\ : std_logic;
SIGNAL \datapath|x_adder_mux|Mux2~0_combout\ : std_logic;
SIGNAL \datapath|x_adder_mux|Mux3~0_combout\ : std_logic;
SIGNAL \datapath|x_adder_mux|Mux5~0_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux4~0_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux6~0_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux6~1_combout\ : std_logic;
SIGNAL \datapath|mem_decoder|LessThan0~0_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux7~4_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux7~5_combout\ : std_logic;
SIGNAL \controler|WideOr9~4_combout\ : std_logic;
SIGNAL \controler|WideOr9~5_combout\ : std_logic;
SIGNAL \controler|state.S_STORE_ACC_INDX_5~q\ : std_logic;
SIGNAL \datapath|mem_decoder|enable~0_combout\ : std_logic;
SIGNAL \datapath|mem_decoder|enable~1_combout\ : std_logic;
SIGNAL \datapath|mem_decoder|enable~2_combout\ : std_logic;
SIGNAL \datapath|mem_decoder|enable~combout\ : std_logic;
SIGNAL \controler|state.S_LOAD_ACC_RR~q\ : std_logic;
SIGNAL \controler|WideOr22~1_combout\ : std_logic;
SIGNAL \datapath|alu|Add2~5_combout\ : std_logic;
SIGNAL \datapath|alu|Add2~7_combout\ : std_logic;
SIGNAL \datapath|alu|Add2~8_combout\ : std_logic;
SIGNAL \controler|Mux0~0_combout\ : std_logic;
SIGNAL \datapath|alu|Add2~22_combout\ : std_logic;
SIGNAL \datapath|alu|Add2~23_combout\ : std_logic;
SIGNAL \datapath|alu|Add2~24_combout\ : std_logic;
SIGNAL \datapath|alu|Add2~27_combout\ : std_logic;
SIGNAL \datapath|alu|Add2~39_combout\ : std_logic;
SIGNAL \datapath|alu|Mux0~6_combout\ : std_logic;
SIGNAL \datapath|alu|Equal0~0_combout\ : std_logic;
SIGNAL \datapath|alu|Mux7~5_combout\ : std_logic;
SIGNAL \datapath|alu|Mux7~6_combout\ : std_logic;
SIGNAL \datapath|alu|Equal0~1_combout\ : std_logic;
SIGNAL \datapath|v_flag|output~0_combout\ : std_logic;
SIGNAL \datapath|v_flag|output~1_combout\ : std_logic;
SIGNAL \datapath|c_flag|output~1_combout\ : std_logic;
SIGNAL \controler|next_state.S_RETURN~0_combout\ : std_logic;
SIGNAL \controler|next_state.S_STORE_ACC_ABS~1_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux4~2_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux5~2_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux5~3_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux5~4_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux6~2_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux6~3_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux6~4_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux0~3_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux2~2_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux2~3_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux2~4_combout\ : std_logic;
SIGNAL \datapath|pc_adder|Add0~3_combout\ : std_logic;
SIGNAL \datapath|pc_adder|Add0~4_combout\ : std_logic;
SIGNAL \input1[0]~1_combout\ : std_logic;
SIGNAL \input2[0]~1_combout\ : std_logic;
SIGNAL \input1[1]~2_combout\ : std_logic;
SIGNAL \input1[3]~3_combout\ : std_logic;
SIGNAL \input2[6]~4_combout\ : std_logic;
SIGNAL \input1[4]~5_combout\ : std_logic;
SIGNAL \input1[5]~6_combout\ : std_logic;
SIGNAL \input1[7]~7_combout\ : std_logic;
SIGNAL \controler|next_state.S_ADD_CARRY~2_combout\ : std_logic;
SIGNAL \controler|next_state.S_LOAD_ACC_RR~2_combout\ : std_logic;
SIGNAL \controler|Mux0~1_combout\ : std_logic;
SIGNAL \controler|Mux0~2_combout\ : std_logic;
SIGNAL \controler|Mux0~3_combout\ : std_logic;
SIGNAL \controler|Mux0~4_combout\ : std_logic;
SIGNAL \controler|Mux0~10_combout\ : std_logic;
SIGNAL \controler|Mux0~11_combout\ : std_logic;
SIGNAL \controler|Selector1~2_combout\ : std_logic;
SIGNAL \controler|WideOr1~7_combout\ : std_logic;
SIGNAL \datapath|alu|Mux0~9_combout\ : std_logic;
SIGNAL \datapath|xH_mux|Mux3~2_combout\ : std_logic;
SIGNAL \datapath|xH_mux|Mux4~2_combout\ : std_logic;
SIGNAL \datapath|xH_mux|Mux5~2_combout\ : std_logic;
SIGNAL \datapath|xL_mux|Mux1~2_combout\ : std_logic;
SIGNAL \datapath|xL_mux|Mux4~2_combout\ : std_logic;
SIGNAL \datapath|xL_mux|Mux6~2_combout\ : std_logic;
SIGNAL \datapath|xL_mux|Mux7~2_combout\ : std_logic;
SIGNAL \controler|next_state.S_LOAD_ACC_RR~3_combout\ : std_logic;
SIGNAL \datapath|alu|Mux6~5_combout\ : std_logic;
SIGNAL \datapath|alu|Mux4~19_combout\ : std_logic;
SIGNAL \datapath|alu|Mux2~5_combout\ : std_logic;
SIGNAL \datapath|alu|Mux2~6_combout\ : std_logic;
SIGNAL \controler|next_state.S_STORE_ACC_INDX~0_combout\ : std_logic;
SIGNAL \switch[8]~input_o\ : std_logic;
SIGNAL \switch[9]~input_o\ : std_logic;
SIGNAL \button[0]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \datapath|spH|output[3]~feeder_combout\ : std_logic;
SIGNAL \datapath|spH|output[1]~feeder_combout\ : std_logic;
SIGNAL \datapath|arH|output[1]~feeder_combout\ : std_logic;
SIGNAL \datapath|pcL|output[5]~feeder_combout\ : std_logic;
SIGNAL \led0[0]~output_o\ : std_logic;
SIGNAL \led0[1]~output_o\ : std_logic;
SIGNAL \led0[2]~output_o\ : std_logic;
SIGNAL \led0[3]~output_o\ : std_logic;
SIGNAL \led0[4]~output_o\ : std_logic;
SIGNAL \led0[5]~output_o\ : std_logic;
SIGNAL \led0[6]~output_o\ : std_logic;
SIGNAL \led0_dp~output_o\ : std_logic;
SIGNAL \led1[0]~output_o\ : std_logic;
SIGNAL \led1[1]~output_o\ : std_logic;
SIGNAL \led1[2]~output_o\ : std_logic;
SIGNAL \led1[3]~output_o\ : std_logic;
SIGNAL \led1[4]~output_o\ : std_logic;
SIGNAL \led1[5]~output_o\ : std_logic;
SIGNAL \led1[6]~output_o\ : std_logic;
SIGNAL \led1_dp~output_o\ : std_logic;
SIGNAL \led2[0]~output_o\ : std_logic;
SIGNAL \led2[1]~output_o\ : std_logic;
SIGNAL \led2[2]~output_o\ : std_logic;
SIGNAL \led2[3]~output_o\ : std_logic;
SIGNAL \led2[4]~output_o\ : std_logic;
SIGNAL \led2[5]~output_o\ : std_logic;
SIGNAL \led2[6]~output_o\ : std_logic;
SIGNAL \led2_dp~output_o\ : std_logic;
SIGNAL \led3[0]~output_o\ : std_logic;
SIGNAL \led3[1]~output_o\ : std_logic;
SIGNAL \led3[2]~output_o\ : std_logic;
SIGNAL \led3[3]~output_o\ : std_logic;
SIGNAL \led3[4]~output_o\ : std_logic;
SIGNAL \led3[5]~output_o\ : std_logic;
SIGNAL \led3[6]~output_o\ : std_logic;
SIGNAL \led3_dp~output_o\ : std_logic;
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \button[1]~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \controler|state.S_LOAD_ACC_INDX_5~q\ : std_logic;
SIGNAL \controler|state.S_LOAD_ACC_INDX_6~q\ : std_logic;
SIGNAL \datapath|pcL|output[7]~feeder_combout\ : std_logic;
SIGNAL \controler|next_state.S_BRANCH_V~0_combout\ : std_logic;
SIGNAL \controler|next_state.S_BRANCH_NOT_S~0_combout\ : std_logic;
SIGNAL \controler|state.S_BRANCH_NOT_S~q\ : std_logic;
SIGNAL \controler|next_state.S_BRANCH_S~0_combout\ : std_logic;
SIGNAL \controler|state.S_BRANCH_S~q\ : std_logic;
SIGNAL \switch[3]~input_o\ : std_logic;
SIGNAL \input2[3]~3_combout\ : std_logic;
SIGNAL \controler|next_state.S_STORE_ACC_ABS~2_combout\ : std_logic;
SIGNAL \controler|state.S_STORE_ACC_ABS~q\ : std_logic;
SIGNAL \controler|state.S_STORE_ACC_ABS_2~feeder_combout\ : std_logic;
SIGNAL \controler|state.S_STORE_ACC_ABS_2~q\ : std_logic;
SIGNAL \controler|state.S_STORE_ACC_ABS_3~feeder_combout\ : std_logic;
SIGNAL \controler|state.S_STORE_ACC_ABS_3~q\ : std_logic;
SIGNAL \controler|state.S_STORE_ACC_ABS_4~q\ : std_logic;
SIGNAL \controler|state.S_STORE_ACC_ABS_5~q\ : std_logic;
SIGNAL \controler|state.S_STORE_ACC_ABS_6~q\ : std_logic;
SIGNAL \controler|state.S_CALL_3~feeder_combout\ : std_logic;
SIGNAL \controler|state.S_CALL_3~q\ : std_logic;
SIGNAL \controler|state.S_CALL_4~q\ : std_logic;
SIGNAL \controler|WideOr6~0_combout\ : std_logic;
SIGNAL \controler|next_state.S_BRANCH_V~1_combout\ : std_logic;
SIGNAL \controler|state.S_BRANCH_V~q\ : std_logic;
SIGNAL \controler|next_state.S_BRANCH_NOT_V~0_combout\ : std_logic;
SIGNAL \controler|state.S_BRANCH_NOT_V~q\ : std_logic;
SIGNAL \controler|Selector3~4_combout\ : std_logic;
SIGNAL \controler|next_state.S_BRANCH_C~0_combout\ : std_logic;
SIGNAL \controler|state.S_BRANCH_C~q\ : std_logic;
SIGNAL \controler|next_state.S_SET_CARRY~0_combout\ : std_logic;
SIGNAL \controler|state.S_SET_CARRY~q\ : std_logic;
SIGNAL \controler|next_state.S_SHIFT_LEFT_LOGICAL~0_combout\ : std_logic;
SIGNAL \controler|state.S_SHIFT_LEFT_LOGICAL~q\ : std_logic;
SIGNAL \controler|next_state.S_COMPARE~0_combout\ : std_logic;
SIGNAL \controler|state.S_COMPARE~q\ : std_logic;
SIGNAL \controler|WideOr27~0_combout\ : std_logic;
SIGNAL \controler|next_state.S_DECREMENT_ACC~0_combout\ : std_logic;
SIGNAL \controler|next_state.S_DECREMENT_ACC~1_combout\ : std_logic;
SIGNAL \controler|state.S_DECREMENT_ACC~q\ : std_logic;
SIGNAL \controler|next_state.S_AND~2_combout\ : std_logic;
SIGNAL \controler|next_state.S_LOAD_ACC_IMM~1_combout\ : std_logic;
SIGNAL \controler|state.S_LOAD_ACC_IMM~q\ : std_logic;
SIGNAL \controler|state.S_LOAD_ACC_IMM_2~q\ : std_logic;
SIGNAL \controler|state.S_LOAD_ACC_IMM_3~q\ : std_logic;
SIGNAL \controler|state.S_LOAD_ACC_ABS_4~q\ : std_logic;
SIGNAL \controler|state.S_LOAD_ACC_ABS_5~feeder_combout\ : std_logic;
SIGNAL \controler|state.S_LOAD_ACC_ABS_5~q\ : std_logic;
SIGNAL \controler|state.S_LOAD_ACC_ABS_6~q\ : std_logic;
SIGNAL \controler|state.S_LOAD_ACC_ABS_7~q\ : std_logic;
SIGNAL \controler|WideOr1~0_combout\ : std_logic;
SIGNAL \controler|WideOr22~3_combout\ : std_logic;
SIGNAL \controler|next_state.S_SUBTRACT_BORROW~0_combout\ : std_logic;
SIGNAL \controler|state.S_SUBTRACT_BORROW~q\ : std_logic;
SIGNAL \controler|next_state.S_ROTATE_RIGHT_CARRY~0_combout\ : std_logic;
SIGNAL \controler|state.S_ROTATE_RIGHT_CARRY~q\ : std_logic;
SIGNAL \controler|next_state.S_STORE_ACC_RR~0_combout\ : std_logic;
SIGNAL \controler|next_state.S_OR~0_combout\ : std_logic;
SIGNAL \controler|next_state.S_SHIFT_RIGHT_LOGICAL~0_combout\ : std_logic;
SIGNAL \controler|state.S_SHIFT_RIGHT_LOGICAL~q\ : std_logic;
SIGNAL \controler|next_state.S_ROTATE_LEFT_CARRY~1_combout\ : std_logic;
SIGNAL \controler|state.S_ROTATE_LEFT_CARRY~q\ : std_logic;
SIGNAL \controler|WideOr21~0_combout\ : std_logic;
SIGNAL \controler|WideOr21~1_combout\ : std_logic;
SIGNAL \controler|WideOr21~combout\ : std_logic;
SIGNAL \controler|next_state.S_XOR~0_combout\ : std_logic;
SIGNAL \controler|state.S_XOR~q\ : std_logic;
SIGNAL \controler|WideOr22~0_combout\ : std_logic;
SIGNAL \datapath|alu|Add2~38_combout\ : std_logic;
SIGNAL \controler|next_state.S_ADD_CARRY~3_combout\ : std_logic;
SIGNAL \controler|state.S_ADD_CARRY~q\ : std_logic;
SIGNAL \controler|WideOr23~0_combout\ : std_logic;
SIGNAL \controler|WideOr23~combout\ : std_logic;
SIGNAL \datapath|c_flag|output~2_combout\ : std_logic;
SIGNAL \datapath|c_flag|output~0_combout\ : std_logic;
SIGNAL \controler|next_state.S_INCREMENT_ACC~0_combout\ : std_logic;
SIGNAL \controler|state.S_INCREMENT_ACC~q\ : std_logic;
SIGNAL \controler|next_state.S_AND~3_combout\ : std_logic;
SIGNAL \controler|state.S_AND~q\ : std_logic;
SIGNAL \controler|next_state.S_OR~1_combout\ : std_logic;
SIGNAL \controler|state.S_OR~q\ : std_logic;
SIGNAL \controler|WideOr1~1_combout\ : std_logic;
SIGNAL \controler|WideOr20~0_combout\ : std_logic;
SIGNAL \controler|WideOr20~1_combout\ : std_logic;
SIGNAL \datapath|a|output[6]~feeder_combout\ : std_logic;
SIGNAL \datapath|a|output[4]~feeder_combout\ : std_logic;
SIGNAL \datapath|alu|Add0~1_cout\ : std_logic;
SIGNAL \datapath|alu|Add0~3\ : std_logic;
SIGNAL \datapath|alu|Add0~5\ : std_logic;
SIGNAL \datapath|alu|Add0~7\ : std_logic;
SIGNAL \datapath|alu|Add0~9\ : std_logic;
SIGNAL \datapath|alu|Add0~11\ : std_logic;
SIGNAL \datapath|alu|Add0~13\ : std_logic;
SIGNAL \datapath|alu|Add0~15\ : std_logic;
SIGNAL \datapath|alu|Add0~16_combout\ : std_logic;
SIGNAL \datapath|alu|Add0~8_combout\ : std_logic;
SIGNAL \datapath|alu|LessThan0~1_cout\ : std_logic;
SIGNAL \datapath|alu|LessThan0~3_cout\ : std_logic;
SIGNAL \datapath|alu|LessThan0~5_cout\ : std_logic;
SIGNAL \datapath|alu|LessThan0~7_cout\ : std_logic;
SIGNAL \datapath|alu|LessThan0~9_cout\ : std_logic;
SIGNAL \datapath|alu|LessThan0~11_cout\ : std_logic;
SIGNAL \datapath|alu|LessThan0~13_cout\ : std_logic;
SIGNAL \datapath|alu|LessThan0~14_combout\ : std_logic;
SIGNAL \datapath|d|output[6]~feeder_combout\ : std_logic;
SIGNAL \datapath|alu|Add0~10_combout\ : std_logic;
SIGNAL \datapath|alu|LessThan1~1_cout\ : std_logic;
SIGNAL \datapath|alu|LessThan1~3_cout\ : std_logic;
SIGNAL \datapath|alu|LessThan1~5_cout\ : std_logic;
SIGNAL \datapath|alu|LessThan1~7_cout\ : std_logic;
SIGNAL \datapath|alu|LessThan1~9_cout\ : std_logic;
SIGNAL \datapath|alu|LessThan1~11_cout\ : std_logic;
SIGNAL \datapath|alu|LessThan1~13_cout\ : std_logic;
SIGNAL \datapath|alu|LessThan1~14_combout\ : std_logic;
SIGNAL \datapath|c_flag|output~3_combout\ : std_logic;
SIGNAL \datapath|c_flag|output~4_combout\ : std_logic;
SIGNAL \datapath|c_flag|output~5_combout\ : std_logic;
SIGNAL \datapath|c_flag|output~6_combout\ : std_logic;
SIGNAL \datapath|c_flag|output~q\ : std_logic;
SIGNAL \controler|Selector3~5_combout\ : std_logic;
SIGNAL \controler|next_state.S_BRANCH_Z~0_combout\ : std_logic;
SIGNAL \controler|state.S_BRANCH_Z~q\ : std_logic;
SIGNAL \controler|WideOr19~combout\ : std_logic;
SIGNAL \controler|next_state.S_CLEAR_CARRY~0_combout\ : std_logic;
SIGNAL \controler|state.S_CLEAR_CARRY~q\ : std_logic;
SIGNAL \controler|WideOr22~2_combout\ : std_logic;
SIGNAL \controler|WideOr22~combout\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \datapath|alu|Mux0~4_combout\ : std_logic;
SIGNAL \datapath|alu|Mux0~5_combout\ : std_logic;
SIGNAL \datapath|alu|Mux0~7_combout\ : std_logic;
SIGNAL \datapath|alu|Add2~34_combout\ : std_logic;
SIGNAL \datapath|alu|Add2~2_combout\ : std_logic;
SIGNAL \datapath|alu|Add2~3_combout\ : std_logic;
SIGNAL \datapath|alu|Add2~25_combout\ : std_logic;
SIGNAL \datapath|alu|Add2~26_combout\ : std_logic;
SIGNAL \datapath|alu|Add2~4_combout\ : std_logic;
SIGNAL \datapath|alu|Add2~6_combout\ : std_logic;
SIGNAL \datapath|alu|Add2~9_combout\ : std_logic;
SIGNAL \datapath|alu|Add2~11_cout\ : std_logic;
SIGNAL \datapath|alu|Add2~13\ : std_logic;
SIGNAL \datapath|alu|Add2~15\ : std_logic;
SIGNAL \datapath|alu|Add2~17\ : std_logic;
SIGNAL \datapath|alu|Add2~19\ : std_logic;
SIGNAL \datapath|alu|Add2~21\ : std_logic;
SIGNAL \datapath|alu|Add2~29\ : std_logic;
SIGNAL \datapath|alu|Add2~31\ : std_logic;
SIGNAL \datapath|alu|Add2~32_combout\ : std_logic;
SIGNAL \datapath|alu|Add2~35_combout\ : std_logic;
SIGNAL \datapath|alu|Add2~36_combout\ : std_logic;
SIGNAL \datapath|alu|Add2~37_combout\ : std_logic;
SIGNAL \datapath|alu|Mux0~2_combout\ : std_logic;
SIGNAL \datapath|alu|Add2~40_combout\ : std_logic;
SIGNAL \datapath|alu|Add2~41_combout\ : std_logic;
SIGNAL \datapath|alu|Mux0~3_combout\ : std_logic;
SIGNAL \datapath|alu|Mux0~8_combout\ : std_logic;
SIGNAL \controler|WideOr1~3_combout\ : std_logic;
SIGNAL \controler|WideOr21~2_combout\ : std_logic;
SIGNAL \controler|WideOr1~4_combout\ : std_logic;
SIGNAL \controler|WideOr25~combout\ : std_logic;
SIGNAL \datapath|s_flag|output~q\ : std_logic;
SIGNAL \controler|Selector3~3_combout\ : std_logic;
SIGNAL \controler|Selector3~6_combout\ : std_logic;
SIGNAL \controler|state.S_BRANCH_TAKEN~feeder_combout\ : std_logic;
SIGNAL \controler|state.S_BRANCH_TAKEN~q\ : std_logic;
SIGNAL \controler|WideOr9~3_combout\ : std_logic;
SIGNAL \controler|next_state.S_LOAD_X_IMM~0_combout\ : std_logic;
SIGNAL \controler|state.S_LOAD_X_IMM~q\ : std_logic;
SIGNAL \controler|state.S_LOAD_X_IMM_2~q\ : std_logic;
SIGNAL \controler|state.S_LOAD_X_IMM_3~q\ : std_logic;
SIGNAL \controler|WideOr9~0_combout\ : std_logic;
SIGNAL \controler|WideOr9~1_combout\ : std_logic;
SIGNAL \controler|WideOr9~2_combout\ : std_logic;
SIGNAL \controler|WideOr9~6_combout\ : std_logic;
SIGNAL \button[2]~input_o\ : std_logic;
SIGNAL \datapath|spL|output[0]~8_combout\ : std_logic;
SIGNAL \controler|next_state.S_RETURN~1_combout\ : std_logic;
SIGNAL \controler|state.S_RETURN~q\ : std_logic;
SIGNAL \controler|state.S_RETURN_2~feeder_combout\ : std_logic;
SIGNAL \controler|state.S_RETURN_2~q\ : std_logic;
SIGNAL \controler|state.S_RETURN_3~q\ : std_logic;
SIGNAL \controler|WideOr29~0_combout\ : std_logic;
SIGNAL \controler|sp_add_sel[0]~0_combout\ : std_logic;
SIGNAL \controler|WideOr29~combout\ : std_logic;
SIGNAL \controler|Selector3~0_combout\ : std_logic;
SIGNAL \controler|state.S_CALL_5~q\ : std_logic;
SIGNAL \controler|Selector3~7_combout\ : std_logic;
SIGNAL \controler|Selector3~8_combout\ : std_logic;
SIGNAL \controler|Selector3~9_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux7~0_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux7~1_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux7~2_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux15~0_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux15~1_combout\ : std_logic;
SIGNAL \datapath|pc_adder|Add0~2_combout\ : std_logic;
SIGNAL \controler|state.S_BRANCH_TAKEN_2~q\ : std_logic;
SIGNAL \controler|state.S_BRANCH_TAKEN_3~q\ : std_logic;
SIGNAL \controler|state.S_RETURN_4~feeder_combout\ : std_logic;
SIGNAL \controler|state.S_RETURN_4~q\ : std_logic;
SIGNAL \controler|state.S_RETURN_5~q\ : std_logic;
SIGNAL \controler|state.S_RETURN_6~q\ : std_logic;
SIGNAL \controler|WideOr17~combout\ : std_logic;
SIGNAL \datapath|pcH|output[0]~feeder_combout\ : std_logic;
SIGNAL \datapath|pc_adder|output[7]~15\ : std_logic;
SIGNAL \datapath|pc_adder|output[8]~16_combout\ : std_logic;
SIGNAL \datapath|pc_adder|output[8]~17\ : std_logic;
SIGNAL \datapath|pc_adder|output[9]~19\ : std_logic;
SIGNAL \datapath|pc_adder|output[10]~21\ : std_logic;
SIGNAL \datapath|pc_adder|output[11]~22_combout\ : std_logic;
SIGNAL \datapath|pc_adder|Add0~1_combout\ : std_logic;
SIGNAL \controler|next_state.S_INCREMENT_X~2_combout\ : std_logic;
SIGNAL \controler|state.S_INCREMENT_X~q\ : std_logic;
SIGNAL \controler|next_state.S_DECREMENT_X~1_combout\ : std_logic;
SIGNAL \controler|state.S_DECREMENT_X~q\ : std_logic;
SIGNAL \controler|next_state.S_STORE_ACC_INDX~1_combout\ : std_logic;
SIGNAL \controler|state.S_STORE_ACC_INDX~q\ : std_logic;
SIGNAL \controler|state.S_STORE_ACC_INDX_2~q\ : std_logic;
SIGNAL \controler|state.S_STORE_ACC_INDX_3~feeder_combout\ : std_logic;
SIGNAL \controler|state.S_STORE_ACC_INDX_3~q\ : std_logic;
SIGNAL \controler|b_en~0_combout\ : std_logic;
SIGNAL \controler|state.S_STORE_ACC_INDX_4~feeder_combout\ : std_logic;
SIGNAL \controler|state.S_STORE_ACC_INDX_4~q\ : std_logic;
SIGNAL \datapath|x_adder_mux|Mux1~0_combout\ : std_logic;
SIGNAL \datapath|xL_mux|Mux2~2_combout\ : std_logic;
SIGNAL \controler|WideOr31~combout\ : std_logic;
SIGNAL \datapath|x_adder_mux|Mux4~0_combout\ : std_logic;
SIGNAL \datapath|xL_mux|Mux5~2_combout\ : std_logic;
SIGNAL \datapath|x_adder_mux|Mux6~0_combout\ : std_logic;
SIGNAL \datapath|x_adder_mux|Mux7~0_combout\ : std_logic;
SIGNAL \datapath|x_adder|output[0]~1\ : std_logic;
SIGNAL \datapath|x_adder|output[1]~3\ : std_logic;
SIGNAL \datapath|x_adder|output[2]~5\ : std_logic;
SIGNAL \datapath|x_adder|output[3]~7\ : std_logic;
SIGNAL \datapath|x_adder|output[4]~8_combout\ : std_logic;
SIGNAL \datapath|xL_mux|Mux3~2_combout\ : std_logic;
SIGNAL \datapath|x_adder|output[4]~9\ : std_logic;
SIGNAL \datapath|x_adder|output[5]~11\ : std_logic;
SIGNAL \datapath|x_adder|output[6]~13\ : std_logic;
SIGNAL \datapath|x_adder|output[7]~14_combout\ : std_logic;
SIGNAL \datapath|xL_mux|Mux0~2_combout\ : std_logic;
SIGNAL \datapath|x_adder|output[7]~15\ : std_logic;
SIGNAL \datapath|x_adder|output[8]~16_combout\ : std_logic;
SIGNAL \datapath|xH_mux|Mux7~2_combout\ : std_logic;
SIGNAL \controler|state.S_LOAD_X_IMM_4~feeder_combout\ : std_logic;
SIGNAL \controler|state.S_LOAD_X_IMM_4~q\ : std_logic;
SIGNAL \controler|WideOr32~combout\ : std_logic;
SIGNAL \datapath|x_adder|output[8]~17\ : std_logic;
SIGNAL \datapath|x_adder|output[9]~18_combout\ : std_logic;
SIGNAL \datapath|xH_mux|Mux6~2_combout\ : std_logic;
SIGNAL \datapath|x_adder|output[9]~19\ : std_logic;
SIGNAL \datapath|x_adder|output[10]~21\ : std_logic;
SIGNAL \datapath|x_adder|output[11]~22_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux4~1_combout\ : std_logic;
SIGNAL \controler|arH_en~0_combout\ : std_logic;
SIGNAL \datapath|x_adder|output[10]~20_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux5~0_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux5~1_combout\ : std_logic;
SIGNAL \datapath|x_adder|output[11]~23\ : std_logic;
SIGNAL \datapath|x_adder|output[12]~24_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux3~0_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux3~1_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \datapath|spH|output[5]~feeder_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux2~0_combout\ : std_logic;
SIGNAL \datapath|xH_mux|Mux2~2_combout\ : std_logic;
SIGNAL \datapath|x_adder|output[12]~25\ : std_logic;
SIGNAL \datapath|x_adder|output[13]~26_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux2~1_combout\ : std_logic;
SIGNAL \datapath|xH_mux|Mux1~2_combout\ : std_logic;
SIGNAL \datapath|x_adder|output[13]~27\ : std_logic;
SIGNAL \datapath|x_adder|output[14]~28_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux1~0_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux1~1_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \in1_sel~0_combout\ : std_logic;
SIGNAL \in1_sel~combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \controler|Selector4~0_combout\ : std_logic;
SIGNAL \controler|Selector5~0_combout\ : std_logic;
SIGNAL \controler|Selector5~1_combout\ : std_logic;
SIGNAL \controler|WideOr26~0_combout\ : std_logic;
SIGNAL \datapath|ex_bus|Mux4~0_combout\ : std_logic;
SIGNAL \datapath|ex_bus|Mux4~1_combout\ : std_logic;
SIGNAL \controler|WideOr9~combout\ : std_logic;
SIGNAL \datapath|arL|output[3]~feeder_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux4~3_combout\ : std_logic;
SIGNAL \datapath|pcL|output[3]~feeder_combout\ : std_logic;
SIGNAL \datapath|pcL|output[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|pc_adder|output[0]~1\ : std_logic;
SIGNAL \datapath|pc_adder|output[1]~3\ : std_logic;
SIGNAL \datapath|pc_adder|output[2]~4_combout\ : std_logic;
SIGNAL \controler|state.S_CALL_6~q\ : std_logic;
SIGNAL \controler|state.S_CALL_7~q\ : std_logic;
SIGNAL \controler|WideOr16~combout\ : std_logic;
SIGNAL \datapath|pc_adder|output[2]~5\ : std_logic;
SIGNAL \datapath|pc_adder|output[3]~6_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux4~4_combout\ : std_logic;
SIGNAL \datapath|alu|Mux4~11_combout\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \datapath|alu|Add2~18_combout\ : std_logic;
SIGNAL \datapath|alu|Mux4~5_combout\ : std_logic;
SIGNAL \datapath|alu|Mux4~4_combout\ : std_logic;
SIGNAL \datapath|alu|Mux4~6_combout\ : std_logic;
SIGNAL \datapath|alu|Mux4~10_combout\ : std_logic;
SIGNAL \datapath|alu|Mux4~17_combout\ : std_logic;
SIGNAL \datapath|alu|Mux4~20_combout\ : std_logic;
SIGNAL \datapath|alu|Add2~1_combout\ : std_logic;
SIGNAL \datapath|alu|Mux4~9_combout\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \datapath|alu|Mux4~12_combout\ : std_logic;
SIGNAL \datapath|alu|Mux4~13_combout\ : std_logic;
SIGNAL \datapath|alu|Mux4~14_combout\ : std_logic;
SIGNAL \datapath|alu|Mux4~15_combout\ : std_logic;
SIGNAL \datapath|alu|Mux4~16_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux4~5_combout\ : std_logic;
SIGNAL \datapath|pcL|output[3]~6_combout\ : std_logic;
SIGNAL \controler|next_state.S_BRANCH_NOT_Z~1_combout\ : std_logic;
SIGNAL \controler|state.S_BRANCH_NOT_Z~q\ : std_logic;
SIGNAL \controler|WideOr13~2_combout\ : std_logic;
SIGNAL \controler|WideOr13~3_combout\ : std_logic;
SIGNAL \datapath|alu|Add2~16_combout\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \datapath|alu|Mux4~7_combout\ : std_logic;
SIGNAL \datapath|alu|Mux4~8_combout\ : std_logic;
SIGNAL \datapath|alu|Add0~6_combout\ : std_logic;
SIGNAL \datapath|alu|Mux5~5_combout\ : std_logic;
SIGNAL \datapath|alu|Mux5~6_combout\ : std_logic;
SIGNAL \datapath|alu|Mux5~0_combout\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \datapath|alu|Mux5~1_combout\ : std_logic;
SIGNAL \datapath|alu|Mux5~2_combout\ : std_logic;
SIGNAL \datapath|alu|Mux5~3_combout\ : std_logic;
SIGNAL \datapath|alu|Mux5~4_combout\ : std_logic;
SIGNAL \datapath|alu|Add2~14_combout\ : std_logic;
SIGNAL \datapath|alu|Mux4~18_combout\ : std_logic;
SIGNAL \datapath|alu|Mux6~6_combout\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \datapath|alu|Mux6~0_combout\ : std_logic;
SIGNAL \datapath|alu|Mux6~1_combout\ : std_logic;
SIGNAL \datapath|alu|Mux6~2_combout\ : std_logic;
SIGNAL \datapath|alu|Mux6~3_combout\ : std_logic;
SIGNAL \datapath|alu|Mux6~4_combout\ : std_logic;
SIGNAL \datapath|alu|Equal0~2_combout\ : std_logic;
SIGNAL \datapath|z_flag|output~q\ : std_logic;
SIGNAL \controler|Selector1~1_combout\ : std_logic;
SIGNAL \controler|next_state.S_BRANCH_NOT_C~2_combout\ : std_logic;
SIGNAL \controler|state.S_BRANCH_NOT_C~q\ : std_logic;
SIGNAL \controler|Selector1~3_combout\ : std_logic;
SIGNAL \controler|Selector1~0_combout\ : std_logic;
SIGNAL \controler|Selector1~4_combout\ : std_logic;
SIGNAL \controler|state.S_INCRREMNET_PC~q\ : std_logic;
SIGNAL \controler|WideOr1~6_combout\ : std_logic;
SIGNAL \controler|WideOr13~0_combout\ : std_logic;
SIGNAL \controler|WideOr13~1_combout\ : std_logic;
SIGNAL \controler|WideOr13~4_combout\ : std_logic;
SIGNAL \datapath|pc_adder|output[0]~0_combout\ : std_logic;
SIGNAL \datapath|pc_adder|Add0~6_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux7~2_combout\ : std_logic;
SIGNAL \U_CLK_DIV|count[0]~0_combout\ : std_logic;
SIGNAL \U_CLK_DIV|clk_en~feeder_combout\ : std_logic;
SIGNAL \U_CLK_DIV|clk_en~q\ : std_logic;
SIGNAL \U_CLK_DIV|clk_en~clkctrl_outclk\ : std_logic;
SIGNAL \datapath|pcL|output[1]~feeder_combout\ : std_logic;
SIGNAL \datapath|pc_adder|output[1]~2_combout\ : std_logic;
SIGNAL \datapath|x_adder|output[1]~2_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux14~0_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux14~1_combout\ : std_logic;
SIGNAL \datapath|spL|output[0]~9\ : std_logic;
SIGNAL \datapath|spL|output[1]~10_combout\ : std_logic;
SIGNAL \datapath|spL|output[1]~11\ : std_logic;
SIGNAL \datapath|spL|output[2]~12_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux13~0_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux13~1_combout\ : std_logic;
SIGNAL \datapath|x_adder|output[3]~6_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux12~0_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux12~1_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux11~0_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux11~1_combout\ : std_logic;
SIGNAL \datapath|x_adder|output[5]~10_combout\ : std_logic;
SIGNAL \datapath|spL|output[2]~13\ : std_logic;
SIGNAL \datapath|spL|output[3]~14_combout\ : std_logic;
SIGNAL \datapath|spL|output[3]~15\ : std_logic;
SIGNAL \datapath|spL|output[4]~16_combout\ : std_logic;
SIGNAL \datapath|spL|output[4]~17\ : std_logic;
SIGNAL \datapath|spL|output[5]~18_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux10~0_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux10~1_combout\ : std_logic;
SIGNAL \datapath|spL|output[5]~19\ : std_logic;
SIGNAL \datapath|spL|output[6]~20_combout\ : std_logic;
SIGNAL \datapath|pcL|output[6]~feeder_combout\ : std_logic;
SIGNAL \datapath|pc_adder|output[6]~12_combout\ : std_logic;
SIGNAL \datapath|x_adder|output[6]~12_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux9~0_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux9~1_combout\ : std_logic;
SIGNAL \datapath|spL|output[6]~21\ : std_logic;
SIGNAL \datapath|spL|output[7]~22_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux8~0_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux8~1_combout\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \input2[1]~2_combout\ : std_logic;
SIGNAL \datapath|in_to_ex_reg|output[1]~feeder_combout\ : std_logic;
SIGNAL \datapath|ex_bus|Mux6~0_combout\ : std_logic;
SIGNAL \datapath|ex_bus|Mux6~1_combout\ : std_logic;
SIGNAL \switch[4]~input_o\ : std_logic;
SIGNAL \input2[4]~5_combout\ : std_logic;
SIGNAL \datapath|ex_bus|Mux3~0_combout\ : std_logic;
SIGNAL \datapath|ex_bus|Mux3~1_combout\ : std_logic;
SIGNAL \switch[5]~input_o\ : std_logic;
SIGNAL \input2[5]~6_combout\ : std_logic;
SIGNAL \datapath|ex_bus|Mux2~0_combout\ : std_logic;
SIGNAL \datapath|ex_bus|Mux2~1_combout\ : std_logic;
SIGNAL \switch[7]~input_o\ : std_logic;
SIGNAL \input2[7]~7_combout\ : std_logic;
SIGNAL \datapath|ex_bus|Mux0~0_combout\ : std_logic;
SIGNAL \datapath|ex_bus|Mux0~1_combout\ : std_logic;
SIGNAL \switch[6]~input_o\ : std_logic;
SIGNAL \input1[6]~4_combout\ : std_logic;
SIGNAL \datapath|ex_bus|Mux1~0_combout\ : std_logic;
SIGNAL \datapath|ex_bus|Mux1~1_combout\ : std_logic;
SIGNAL \datapath|ex_bus|Mux7~0_combout\ : std_logic;
SIGNAL \datapath|ex_bus|Mux7~1_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux7~3_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux7~4_combout\ : std_logic;
SIGNAL \datapath|alu|Mux7~12_combout\ : std_logic;
SIGNAL \datapath|alu|Add2~12_combout\ : std_logic;
SIGNAL \datapath|alu|Mux7~13_combout\ : std_logic;
SIGNAL \datapath|alu|Mux7~14_combout\ : std_logic;
SIGNAL \datapath|alu|Add0~2_combout\ : std_logic;
SIGNAL \datapath|alu|Mux7~7_combout\ : std_logic;
SIGNAL \datapath|alu|Mux7~8_combout\ : std_logic;
SIGNAL \datapath|alu|Mux7~9_combout\ : std_logic;
SIGNAL \datapath|alu|Mux7~10_combout\ : std_logic;
SIGNAL \datapath|alu|Mux7~11_combout\ : std_logic;
SIGNAL \datapath|alu|Mux7~15_combout\ : std_logic;
SIGNAL \datapath|alu|Mux7~1_combout\ : std_logic;
SIGNAL \datapath|alu|Mux7~0_combout\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \datapath|alu|Mux7~2_combout\ : std_logic;
SIGNAL \datapath|alu|Mux7~3_combout\ : std_logic;
SIGNAL \datapath|alu|Mux7~4_combout\ : std_logic;
SIGNAL \datapath|alu|Mux7~16_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux7~5_combout\ : std_logic;
SIGNAL \datapath|pcH|output[0]~0_combout\ : std_logic;
SIGNAL \controler|next_state.S_LOAD_ACC_ABS~4_combout\ : std_logic;
SIGNAL \controler|state.S_LOAD_ACC_ABS~q\ : std_logic;
SIGNAL \controler|state.S_LOAD_ACC_ABS_2~q\ : std_logic;
SIGNAL \controler|state.S_LOAD_ACC_ABS_3~q\ : std_logic;
SIGNAL \controler|arL_en~combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux3~3_combout\ : std_logic;
SIGNAL \datapath|pc_adder|output[11]~23\ : std_logic;
SIGNAL \datapath|pc_adder|output[12]~24_combout\ : std_logic;
SIGNAL \datapath|pc_adder|Add0~0_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux3~2_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux3~4_combout\ : std_logic;
SIGNAL \datapath|alu|Add2~20_combout\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \datapath|alu|Mux3~5_combout\ : std_logic;
SIGNAL \datapath|alu|Mux3~6_combout\ : std_logic;
SIGNAL \datapath|alu|Mux3~0_combout\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \datapath|alu|Mux3~1_combout\ : std_logic;
SIGNAL \datapath|alu|Mux3~2_combout\ : std_logic;
SIGNAL \datapath|alu|Mux3~3_combout\ : std_logic;
SIGNAL \datapath|alu|Mux3~4_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux3~5_combout\ : std_logic;
SIGNAL \datapath|pcL|output[4]~3_combout\ : std_logic;
SIGNAL \datapath|pcL|output[4]~feeder_combout\ : std_logic;
SIGNAL \datapath|pc_adder|output[3]~7\ : std_logic;
SIGNAL \datapath|pc_adder|output[4]~8_combout\ : std_logic;
SIGNAL \datapath|pc_adder|output[4]~9\ : std_logic;
SIGNAL \datapath|pc_adder|output[5]~11\ : std_logic;
SIGNAL \datapath|pc_adder|output[6]~13\ : std_logic;
SIGNAL \datapath|pc_adder|output[7]~14_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux0~2_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux0~4_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux0~5_combout\ : std_logic;
SIGNAL \datapath|pcL|output[7]~0_combout\ : std_logic;
SIGNAL \controler|next_state.S_STORE_ACC_ABS~0_combout\ : std_logic;
SIGNAL \controler|next_state.S_STORE_ACC_RR~1_combout\ : std_logic;
SIGNAL \controler|state.S_STORE_ACC_RR~q\ : std_logic;
SIGNAL \controler|d_en~combout\ : std_logic;
SIGNAL \datapath|alu|Add2~28_combout\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \datapath|alu|Add0~12_combout\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \datapath|alu|Mux2~0_combout\ : std_logic;
SIGNAL \datapath|alu|Mux2~1_combout\ : std_logic;
SIGNAL \datapath|alu|Mux2~2_combout\ : std_logic;
SIGNAL \datapath|alu|Mux2~3_combout\ : std_logic;
SIGNAL \datapath|alu|Mux2~4_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux2~5_combout\ : std_logic;
SIGNAL \datapath|pcL|output[5]~2_combout\ : std_logic;
SIGNAL \controler|Mux0~8_combout\ : std_logic;
SIGNAL \controler|Mux0~6_combout\ : std_logic;
SIGNAL \controler|Mux0~7_combout\ : std_logic;
SIGNAL \controler|Mux0~5_combout\ : std_logic;
SIGNAL \controler|Mux0~9_combout\ : std_logic;
SIGNAL \controler|Mux0~12_combout\ : std_logic;
SIGNAL \controler|state.S_RETURN_7~q\ : std_logic;
SIGNAL \controler|WideOr1~5_combout\ : std_logic;
SIGNAL \controler|WideOr1~8_combout\ : std_logic;
SIGNAL \controler|WideOr1~combout\ : std_logic;
SIGNAL \controler|state.S_DONE~q\ : std_logic;
SIGNAL \controler|Selector0~0_combout\ : std_logic;
SIGNAL \controler|state.S_INIT~q\ : std_logic;
SIGNAL \controler|state.S_FETCH_BEGIN~0_combout\ : std_logic;
SIGNAL \controler|state.S_FETCH_BEGIN~q\ : std_logic;
SIGNAL \controler|state.S_FETCH_EXTERNAL~q\ : std_logic;
SIGNAL \controler|state.S_FETCH_INTERNAL~q\ : std_logic;
SIGNAL \controler|state.S_DECODE~feeder_combout\ : std_logic;
SIGNAL \controler|state.S_DECODE~q\ : std_logic;
SIGNAL \controler|next_state.S_ROTATE_LEFT_CARRY~0_combout\ : std_logic;
SIGNAL \controler|next_state.S_MULT_AD~2_combout\ : std_logic;
SIGNAL \controler|state.S_MULT_AD~q\ : std_logic;
SIGNAL \controler|state.S_MULT_AD_2~0_combout\ : std_logic;
SIGNAL \controler|state.S_MULT_AD_2~q\ : std_logic;
SIGNAL \controler|WideOr18~combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux5~5_combout\ : std_logic;
SIGNAL \datapath|pcL|output[2]~4_combout\ : std_logic;
SIGNAL \controler|next_state.S_LOAD_ACC_IMM~0_combout\ : std_logic;
SIGNAL \controler|next_state.S_CALL~0_combout\ : std_logic;
SIGNAL \controler|next_state.S_LOAD_SP_IMM~0_combout\ : std_logic;
SIGNAL \controler|state.S_LOAD_SP_IMM~q\ : std_logic;
SIGNAL \controler|state.S_LOAD_SP_IMM_2~feeder_combout\ : std_logic;
SIGNAL \controler|state.S_LOAD_SP_IMM_2~q\ : std_logic;
SIGNAL \controler|state.S_LOAD_SP_IMM_3~feeder_combout\ : std_logic;
SIGNAL \controler|state.S_LOAD_SP_IMM_3~q\ : std_logic;
SIGNAL \controler|state.S_LOAD_SP_IMM_4~q\ : std_logic;
SIGNAL \controler|WideOr1~2_combout\ : std_logic;
SIGNAL \controler|WideOr11~0_combout\ : std_logic;
SIGNAL \controler|WideOr11~1_combout\ : std_logic;
SIGNAL \controler|WideOr11~2_combout\ : std_logic;
SIGNAL \controler|WideOr12~combout\ : std_logic;
SIGNAL \datapath|alu|Add2~30_combout\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \datapath|alu|Mux1~4_combout\ : std_logic;
SIGNAL \datapath|alu|Mux1~5_combout\ : std_logic;
SIGNAL \datapath|alu|Mux1~0_combout\ : std_logic;
SIGNAL \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \datapath|alu|Mux1~1_combout\ : std_logic;
SIGNAL \datapath|alu|Mux1~2_combout\ : std_logic;
SIGNAL \datapath|alu|Mux1~3_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux1~2_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux1~6_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux1~4_combout\ : std_logic;
SIGNAL \datapath|pc_adder|output[12]~25\ : std_logic;
SIGNAL \datapath|pc_adder|output[13]~26_combout\ : std_logic;
SIGNAL \datapath|pc_adder|Add0~7_combout\ : std_logic;
SIGNAL \datapath|pc_adder|output[13]~27\ : std_logic;
SIGNAL \datapath|pc_adder|output[14]~28_combout\ : std_logic;
SIGNAL \datapath|pc_adder|Add0~5_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux1~3_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux1~5_combout\ : std_logic;
SIGNAL \datapath|pcL|output[6]~1_combout\ : std_logic;
SIGNAL \datapath|ir|output[6]~feeder_combout\ : std_logic;
SIGNAL \controler|next_state.S_DECREMENT_X~0_combout\ : std_logic;
SIGNAL \controler|next_state.S_CALL~1_combout\ : std_logic;
SIGNAL \controler|state.S_CALL~q\ : std_logic;
SIGNAL \controler|state.S_CALL_2~q\ : std_logic;
SIGNAL \datapath|in_bus|Add0~0_combout\ : std_logic;
SIGNAL \datapath|in_bus|Mux6~5_combout\ : std_logic;
SIGNAL \datapath|pcL|output[1]~5_combout\ : std_logic;
SIGNAL \controler|next_state.S_BRANCH_NOT_Z~0_combout\ : std_logic;
SIGNAL \controler|next_state.S_LOAD_ACC_INDX~2_combout\ : std_logic;
SIGNAL \controler|state.S_LOAD_ACC_INDX~q\ : std_logic;
SIGNAL \controler|state.S_LOAD_ACC_INDX_2~q\ : std_logic;
SIGNAL \controler|state.S_LOAD_ACC_INDX_3~feeder_combout\ : std_logic;
SIGNAL \controler|state.S_LOAD_ACC_INDX_3~q\ : std_logic;
SIGNAL \controler|state.S_LOAD_ACC_INDX_4~q\ : std_logic;
SIGNAL \datapath|adr_bus|Mux7~3_combout\ : std_logic;
SIGNAL \datapath|xH_mux|Mux0~2_combout\ : std_logic;
SIGNAL \datapath|x_adder|output[14]~29\ : std_logic;
SIGNAL \datapath|x_adder|output[15]~30_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux0~0_combout\ : std_logic;
SIGNAL \datapath|adr_bus|Mux0~1_combout\ : std_logic;
SIGNAL \datapath|mem_decoder|LessThan0~1_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \input2[2]~0_combout\ : std_logic;
SIGNAL \input1[2]~0_combout\ : std_logic;
SIGNAL \datapath|ex_bus|Mux5~0_combout\ : std_logic;
SIGNAL \datapath|ex_bus|Mux5~1_combout\ : std_logic;
SIGNAL \datapath|out1_reg_en~combout\ : std_logic;
SIGNAL \datapath|outport1_reg|output[1]~feeder_combout\ : std_logic;
SIGNAL \datapath|outport1_reg|output[3]~feeder_combout\ : std_logic;
SIGNAL \U_LED0|output[0]~0_combout\ : std_logic;
SIGNAL \U_LED0|output[1]~1_combout\ : std_logic;
SIGNAL \U_LED0|output[2]~2_combout\ : std_logic;
SIGNAL \U_LED0|output[3]~3_combout\ : std_logic;
SIGNAL \U_LED0|output[4]~4_combout\ : std_logic;
SIGNAL \U_LED0|output[5]~5_combout\ : std_logic;
SIGNAL \U_LED0|output[6]~6_combout\ : std_logic;
SIGNAL \datapath|outport1_reg|output[4]~feeder_combout\ : std_logic;
SIGNAL \datapath|outport1_reg|output[5]~feeder_combout\ : std_logic;
SIGNAL \datapath|outport1_reg|output[7]~feeder_combout\ : std_logic;
SIGNAL \datapath|outport1_reg|output[6]~feeder_combout\ : std_logic;
SIGNAL \U_LED1|output[0]~0_combout\ : std_logic;
SIGNAL \U_LED1|output[1]~1_combout\ : std_logic;
SIGNAL \U_LED1|output[2]~2_combout\ : std_logic;
SIGNAL \U_LED1|output[3]~3_combout\ : std_logic;
SIGNAL \U_LED1|output[4]~4_combout\ : std_logic;
SIGNAL \U_LED1|output[5]~5_combout\ : std_logic;
SIGNAL \U_LED1|output[6]~6_combout\ : std_logic;
SIGNAL \datapath|outport2_reg|output[0]~feeder_combout\ : std_logic;
SIGNAL \datapath|out2_reg_en~combout\ : std_logic;
SIGNAL \U_LED2|output[0]~0_combout\ : std_logic;
SIGNAL \U_LED2|output[1]~1_combout\ : std_logic;
SIGNAL \U_LED2|output[2]~2_combout\ : std_logic;
SIGNAL \U_LED2|output[3]~3_combout\ : std_logic;
SIGNAL \U_LED2|output[4]~4_combout\ : std_logic;
SIGNAL \U_LED2|output[5]~5_combout\ : std_logic;
SIGNAL \U_LED2|output[6]~6_combout\ : std_logic;
SIGNAL \datapath|outport2_reg|output[5]~feeder_combout\ : std_logic;
SIGNAL \datapath|outport2_reg|output[4]~feeder_combout\ : std_logic;
SIGNAL \datapath|outport2_reg|output[7]~feeder_combout\ : std_logic;
SIGNAL \U_LED3|output[0]~0_combout\ : std_logic;
SIGNAL \U_LED3|output[1]~1_combout\ : std_logic;
SIGNAL \U_LED3|output[2]~2_combout\ : std_logic;
SIGNAL \U_LED3|output[3]~3_combout\ : std_logic;
SIGNAL \U_LED3|output[4]~4_combout\ : std_logic;
SIGNAL \U_LED3|output[5]~5_combout\ : std_logic;
SIGNAL \U_LED3|output[6]~6_combout\ : std_logic;
SIGNAL \datapath|a|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|d|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|spL|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|spH|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|xL|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|xH|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|pcL|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|pcH|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|arL|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|arH|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|b|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|in_to_ex_reg|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|ex_to_in_reg|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|outport1_reg|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|outport2_reg|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|inport1_reg|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|inport2_reg|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_CLK_DIV|count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \datapath|ir|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|ram|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \controler|ALT_INV_WideOr13~4_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_switch <= switch;
ww_button <= button;
led0 <= ww_led0;
led0_dp <= ww_led0_dp;
led1 <= ww_led1;
led1_dp <= ww_led1_dp;
led2 <= ww_led2;
led2_dp <= ww_led2_dp;
led3 <= ww_led3;
led3_dp <= ww_led3_dp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\datapath|ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \datapath|ex_bus|Mux0~1_combout\ & \datapath|ex_bus|Mux1~1_combout\ & \datapath|ex_bus|Mux2~1_combout\ & 
\datapath|ex_bus|Mux3~1_combout\ & \datapath|ex_bus|Mux4~1_combout\ & \datapath|ex_bus|Mux5~1_combout\ & \datapath|ex_bus|Mux6~1_combout\ & \datapath|ex_bus|Mux7~1_combout\);

\datapath|ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\datapath|adr_bus|Mux8~1_combout\ & \datapath|adr_bus|Mux9~1_combout\ & \datapath|adr_bus|Mux10~1_combout\ & \datapath|adr_bus|Mux11~1_combout\ & 
\datapath|adr_bus|Mux12~1_combout\ & \datapath|adr_bus|Mux13~1_combout\ & \datapath|adr_bus|Mux14~1_combout\ & \datapath|adr_bus|Mux15~1_combout\);

\datapath|ram|altsyncram_component|auto_generated|q_a\(0) <= \datapath|ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\datapath|ram|altsyncram_component|auto_generated|q_a\(1) <= \datapath|ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\datapath|ram|altsyncram_component|auto_generated|q_a\(2) <= \datapath|ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\datapath|ram|altsyncram_component|auto_generated|q_a\(3) <= \datapath|ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\datapath|ram|altsyncram_component|auto_generated|q_a\(4) <= \datapath|ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\datapath|ram|altsyncram_component|auto_generated|q_a\(5) <= \datapath|ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\datapath|ram|altsyncram_component|auto_generated|q_a\(6) <= \datapath|ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\datapath|ram|altsyncram_component|auto_generated|q_a\(7) <= \datapath|ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\datapath|alu|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT9\ & 
\datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT5\ & 
\datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\datapath|alu|Mult0|auto_generated|mac_mult1~dataout\ & \datapath|alu|Mult0|auto_generated|mac_mult1~1\ & \datapath|alu|Mult0|auto_generated|mac_mult1~0\);

\datapath|alu|Mult0|auto_generated|mac_out2~0\ <= \datapath|alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\datapath|alu|Mult0|auto_generated|mac_out2~1\ <= \datapath|alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\datapath|alu|Mult0|auto_generated|mac_out2~dataout\ <= \datapath|alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \datapath|alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \datapath|alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \datapath|alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \datapath|alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \datapath|alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \datapath|alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \datapath|alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \datapath|alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \datapath|alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \datapath|alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \datapath|alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \datapath|alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \datapath|alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \datapath|alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \datapath|alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\datapath|alu|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\datapath|a|output\(7) & \datapath|a|output\(6) & \datapath|a|output\(5) & \datapath|a|output\(4) & \datapath|a|output\(3) & \datapath|a|output\(2) & \datapath|a|output\(1) & 
\datapath|a|output\(0) & gnd);

\datapath|alu|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\datapath|d|output\(7) & \datapath|d|output\(6) & \datapath|d|output\(5) & \datapath|d|output\(4) & \datapath|d|output\(3) & \datapath|d|output\(2) & \datapath|d|output\(1) & 
\datapath|d|output\(0) & gnd);

\datapath|alu|Mult0|auto_generated|mac_mult1~0\ <= \datapath|alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\datapath|alu|Mult0|auto_generated|mac_mult1~1\ <= \datapath|alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\datapath|alu|Mult0|auto_generated|mac_mult1~dataout\ <= \datapath|alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \datapath|alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \datapath|alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \datapath|alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \datapath|alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \datapath|alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \datapath|alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \datapath|alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \datapath|alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \datapath|alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \datapath|alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \datapath|alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \datapath|alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \datapath|alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \datapath|alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\datapath|alu|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \datapath|alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\U_CLK_DIV|clk_en~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_CLK_DIV|clk_en~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\controler|ALT_INV_WideOr13~4_combout\ <= NOT \controler|WideOr13~4_combout\;

-- Location: LCCOMB_X24_Y22_N0
\datapath|x_adder|output[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|x_adder|output[0]~0_combout\ = (\datapath|xL|output\(0) & (\datapath|x_adder_mux|Mux7~0_combout\ $ (VCC))) # (!\datapath|xL|output\(0) & (\datapath|x_adder_mux|Mux7~0_combout\ & VCC))
-- \datapath|x_adder|output[0]~1\ = CARRY((\datapath|xL|output\(0) & \datapath|x_adder_mux|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|xL|output\(0),
	datab => \datapath|x_adder_mux|Mux7~0_combout\,
	datad => VCC,
	combout => \datapath|x_adder|output[0]~0_combout\,
	cout => \datapath|x_adder|output[0]~1\);

-- Location: LCCOMB_X24_Y22_N4
\datapath|x_adder|output[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|x_adder|output[2]~4_combout\ = ((\datapath|x_adder_mux|Mux5~0_combout\ $ (\datapath|xL|output\(2) $ (!\datapath|x_adder|output[1]~3\)))) # (GND)
-- \datapath|x_adder|output[2]~5\ = CARRY((\datapath|x_adder_mux|Mux5~0_combout\ & ((\datapath|xL|output\(2)) # (!\datapath|x_adder|output[1]~3\))) # (!\datapath|x_adder_mux|Mux5~0_combout\ & (\datapath|xL|output\(2) & !\datapath|x_adder|output[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|x_adder_mux|Mux5~0_combout\,
	datab => \datapath|xL|output\(2),
	datad => VCC,
	cin => \datapath|x_adder|output[1]~3\,
	combout => \datapath|x_adder|output[2]~4_combout\,
	cout => \datapath|x_adder|output[2]~5\);

-- Location: FF_X29_Y23_N1
\datapath|pcL|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|pcL|output[5]~feeder_combout\,
	asdata => \datapath|pc_adder|output[5]~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \controler|ALT_INV_WideOr13~4_combout\,
	ena => \controler|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|pcL|output\(5));

-- Location: M9K_X25_Y24_N0
\datapath|ram|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007C0030000000050002C000F9003FC00FF003D800000015C0088003FC00FE003D80000001580088000000016002D400000016000F6003EC0000001600088003E400000015C00F60018800000015C0088000000056003D800620000000560022000000015800F6000040000001580088003C4000000150008800000002B002C800210000000570022000F1000040084000000057003D80000001540088000000056003D800000021000000016000F60001C0084003FC00FF0022000FF003F80088",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "C:\Users\Matthew\Desktop\Digtial Design Labs\Project\Small8TestPackage\mult_back.mif",
	init_file_layout => "port_a",
	logical_ram_name => "datapath:datapath|mult:ram|altsyncram:altsyncram_component|altsyncram_3ip1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \datapath|mem_decoder|enable~combout\,
	portare => VCC,
	clk0 => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	portadatain => \datapath|ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \datapath|ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \datapath|ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: DSPOUT_X18_Y23_N2
\datapath|alu|Mult0|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \datapath|alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X23_Y23_N12
\datapath|alu|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add0~4_combout\ = ((\datapath|d|output\(1) $ (\datapath|a|output\(1) $ (!\datapath|alu|Add0~3\)))) # (GND)
-- \datapath|alu|Add0~5\ = CARRY((\datapath|d|output\(1) & ((\datapath|a|output\(1)) # (!\datapath|alu|Add0~3\))) # (!\datapath|d|output\(1) & (\datapath|a|output\(1) & !\datapath|alu|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|d|output\(1),
	datab => \datapath|a|output\(1),
	datad => VCC,
	cin => \datapath|alu|Add0~3\,
	combout => \datapath|alu|Add0~4_combout\,
	cout => \datapath|alu|Add0~5\);

-- Location: LCCOMB_X23_Y23_N22
\datapath|alu|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add0~14_combout\ = (\datapath|d|output\(6) & ((\datapath|a|output\(6) & (\datapath|alu|Add0~13\ & VCC)) # (!\datapath|a|output\(6) & (!\datapath|alu|Add0~13\)))) # (!\datapath|d|output\(6) & ((\datapath|a|output\(6) & 
-- (!\datapath|alu|Add0~13\)) # (!\datapath|a|output\(6) & ((\datapath|alu|Add0~13\) # (GND)))))
-- \datapath|alu|Add0~15\ = CARRY((\datapath|d|output\(6) & (!\datapath|a|output\(6) & !\datapath|alu|Add0~13\)) # (!\datapath|d|output\(6) & ((!\datapath|alu|Add0~13\) # (!\datapath|a|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|d|output\(6),
	datab => \datapath|a|output\(6),
	datad => VCC,
	cin => \datapath|alu|Add0~13\,
	combout => \datapath|alu|Add0~14_combout\,
	cout => \datapath|alu|Add0~15\);

-- Location: LCCOMB_X30_Y23_N10
\datapath|pc_adder|output[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pc_adder|output[5]~10_combout\ = (\datapath|pcL|output\(5) & (!\datapath|pc_adder|output[4]~9\)) # (!\datapath|pcL|output\(5) & ((\datapath|pc_adder|output[4]~9\) # (GND)))
-- \datapath|pc_adder|output[5]~11\ = CARRY((!\datapath|pc_adder|output[4]~9\) # (!\datapath|pcL|output\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|pcL|output\(5),
	datad => VCC,
	cin => \datapath|pc_adder|output[4]~9\,
	combout => \datapath|pc_adder|output[5]~10_combout\,
	cout => \datapath|pc_adder|output[5]~11\);

-- Location: LCCOMB_X30_Y23_N18
\datapath|pc_adder|output[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pc_adder|output[9]~18_combout\ = (\datapath|pcH|output\(1) & (!\datapath|pc_adder|output[8]~17\)) # (!\datapath|pcH|output\(1) & ((\datapath|pc_adder|output[8]~17\) # (GND)))
-- \datapath|pc_adder|output[9]~19\ = CARRY((!\datapath|pc_adder|output[8]~17\) # (!\datapath|pcH|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|pcH|output\(1),
	datad => VCC,
	cin => \datapath|pc_adder|output[8]~17\,
	combout => \datapath|pc_adder|output[9]~18_combout\,
	cout => \datapath|pc_adder|output[9]~19\);

-- Location: LCCOMB_X30_Y23_N20
\datapath|pc_adder|output[10]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pc_adder|output[10]~20_combout\ = (\datapath|pcH|output\(2) & (\datapath|pc_adder|output[9]~19\ $ (GND))) # (!\datapath|pcH|output\(2) & (!\datapath|pc_adder|output[9]~19\ & VCC))
-- \datapath|pc_adder|output[10]~21\ = CARRY((\datapath|pcH|output\(2) & !\datapath|pc_adder|output[9]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|pcH|output\(2),
	datad => VCC,
	cin => \datapath|pc_adder|output[9]~19\,
	combout => \datapath|pc_adder|output[10]~20_combout\,
	cout => \datapath|pc_adder|output[10]~21\);

-- Location: LCCOMB_X30_Y23_N28
\datapath|pc_adder|output[14]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pc_adder|output[14]~28_combout\ = (\datapath|pcH|output\(6) & (\datapath|pc_adder|output[13]~27\ $ (GND))) # (!\datapath|pcH|output\(6) & (!\datapath|pc_adder|output[13]~27\ & VCC))
-- \datapath|pc_adder|output[14]~29\ = CARRY((\datapath|pcH|output\(6) & !\datapath|pc_adder|output[13]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|pcH|output\(6),
	datad => VCC,
	cin => \datapath|pc_adder|output[13]~27\,
	combout => \datapath|pc_adder|output[14]~28_combout\,
	cout => \datapath|pc_adder|output[14]~29\);

-- Location: LCCOMB_X30_Y23_N30
\datapath|pc_adder|output[15]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pc_adder|output[15]~30_combout\ = \datapath|pc_adder|output[14]~29\ $ (\datapath|pcH|output\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \datapath|pcH|output\(7),
	cin => \datapath|pc_adder|output[14]~29\,
	combout => \datapath|pc_adder|output[15]~30_combout\);

-- Location: LCCOMB_X21_Y22_N16
\controler|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Selector3~1_combout\ = (\controler|state.S_STORE_ACC_INDX~q\) # ((\controler|state.S_LOAD_ACC_ABS_2~q\) # ((\controler|state.S_LOAD_ACC_INDX~q\) # (\controler|state.S_CALL_6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_STORE_ACC_INDX~q\,
	datab => \controler|state.S_LOAD_ACC_ABS_2~q\,
	datac => \controler|state.S_LOAD_ACC_INDX~q\,
	datad => \controler|state.S_CALL_6~q\,
	combout => \controler|Selector3~1_combout\);

-- Location: LCCOMB_X22_Y22_N12
\controler|Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Selector3~2_combout\ = (\datapath|z_flag|output~q\ & (((\datapath|s_flag|output~q\) # (!\controler|state.S_BRANCH_NOT_S~q\)))) # (!\datapath|z_flag|output~q\ & (!\controler|state.S_BRANCH_NOT_Z~q\ & ((\datapath|s_flag|output~q\) # 
-- (!\controler|state.S_BRANCH_NOT_S~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|z_flag|output~q\,
	datab => \controler|state.S_BRANCH_NOT_Z~q\,
	datac => \controler|state.S_BRANCH_NOT_S~q\,
	datad => \datapath|s_flag|output~q\,
	combout => \controler|Selector3~2_combout\);

-- Location: FF_X22_Y22_N7
\datapath|v_flag|output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|v_flag|output~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|v_flag|output~q\);

-- Location: FF_X27_Y22_N17
\datapath|xH|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|xH_mux|Mux3~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr32~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|xH|output\(4));

-- Location: FF_X27_Y22_N27
\datapath|xH|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|xH_mux|Mux4~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr32~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|xH|output\(3));

-- Location: FF_X27_Y22_N9
\datapath|xH|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|xH_mux|Mux5~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr32~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|xH|output\(2));

-- Location: FF_X23_Y22_N27
\datapath|b|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[7]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|b_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|b|output\(7));

-- Location: LCCOMB_X23_Y22_N26
\datapath|x_adder_mux|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|x_adder_mux|Mux0~0_combout\ = (\controler|state.S_INCREMENT_X~q\ & ((\controler|state.S_LOAD_ACC_INDX_4~q\) # ((\controler|state.S_STORE_ACC_INDX_4~q\)))) # (!\controler|state.S_INCREMENT_X~q\ & ((\datapath|b|output\(7)) # 
-- ((!\controler|state.S_LOAD_ACC_INDX_4~q\ & !\controler|state.S_STORE_ACC_INDX_4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_INCREMENT_X~q\,
	datab => \controler|state.S_LOAD_ACC_INDX_4~q\,
	datac => \datapath|b|output\(7),
	datad => \controler|state.S_STORE_ACC_INDX_4~q\,
	combout => \datapath|x_adder_mux|Mux0~0_combout\);

-- Location: FF_X28_Y22_N11
\datapath|xL|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|xL_mux|Mux1~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|xL|output\(6));

-- Location: FF_X23_Y22_N15
\datapath|b|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[5]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|b_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|b|output\(5));

-- Location: LCCOMB_X23_Y22_N14
\datapath|x_adder_mux|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|x_adder_mux|Mux2~0_combout\ = (\controler|state.S_INCREMENT_X~q\ & ((\controler|state.S_LOAD_ACC_INDX_4~q\) # ((\controler|state.S_STORE_ACC_INDX_4~q\)))) # (!\controler|state.S_INCREMENT_X~q\ & ((\datapath|b|output\(5)) # 
-- ((!\controler|state.S_LOAD_ACC_INDX_4~q\ & !\controler|state.S_STORE_ACC_INDX_4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_INCREMENT_X~q\,
	datab => \controler|state.S_LOAD_ACC_INDX_4~q\,
	datac => \datapath|b|output\(5),
	datad => \controler|state.S_STORE_ACC_INDX_4~q\,
	combout => \datapath|x_adder_mux|Mux2~0_combout\);

-- Location: FF_X23_Y22_N7
\datapath|b|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[4]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|b_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|b|output\(4));

-- Location: LCCOMB_X23_Y22_N6
\datapath|x_adder_mux|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|x_adder_mux|Mux3~0_combout\ = (\controler|state.S_INCREMENT_X~q\ & ((\controler|state.S_LOAD_ACC_INDX_4~q\) # ((\controler|state.S_STORE_ACC_INDX_4~q\)))) # (!\controler|state.S_INCREMENT_X~q\ & ((\datapath|b|output\(4)) # 
-- ((!\controler|state.S_LOAD_ACC_INDX_4~q\ & !\controler|state.S_STORE_ACC_INDX_4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_INCREMENT_X~q\,
	datab => \controler|state.S_LOAD_ACC_INDX_4~q\,
	datac => \datapath|b|output\(4),
	datad => \controler|state.S_STORE_ACC_INDX_4~q\,
	combout => \datapath|x_adder_mux|Mux3~0_combout\);

-- Location: FF_X28_Y22_N15
\datapath|xL|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|xL_mux|Mux4~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|xL|output\(3));

-- Location: FF_X23_Y22_N17
\datapath|b|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[2]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|b_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|b|output\(2));

-- Location: LCCOMB_X23_Y22_N16
\datapath|x_adder_mux|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|x_adder_mux|Mux5~0_combout\ = (\controler|state.S_INCREMENT_X~q\ & ((\controler|state.S_LOAD_ACC_INDX_4~q\) # ((\controler|state.S_STORE_ACC_INDX_4~q\)))) # (!\controler|state.S_INCREMENT_X~q\ & ((\datapath|b|output\(2)) # 
-- ((!\controler|state.S_LOAD_ACC_INDX_4~q\ & !\controler|state.S_STORE_ACC_INDX_4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_INCREMENT_X~q\,
	datab => \controler|state.S_LOAD_ACC_INDX_4~q\,
	datac => \datapath|b|output\(2),
	datad => \controler|state.S_STORE_ACC_INDX_4~q\,
	combout => \datapath|x_adder_mux|Mux5~0_combout\);

-- Location: FF_X28_Y22_N23
\datapath|xL|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|xL_mux|Mux6~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|xL|output\(1));

-- Location: FF_X28_Y22_N9
\datapath|xL|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|xL_mux|Mux7~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|xL|output\(0));

-- Location: FF_X24_Y23_N15
\datapath|spH|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|spH|output[3]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|state.S_LOAD_SP_IMM_4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|spH|output\(3));

-- Location: FF_X27_Y22_N31
\datapath|arH|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[3]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|arH_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|arH|output\(3));

-- Location: LCCOMB_X27_Y22_N30
\datapath|adr_bus|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux4~0_combout\ = (\datapath|adr_bus|Mux7~3_combout\ & (((\datapath|adr_bus|Mux7~2_combout\)))) # (!\datapath|adr_bus|Mux7~3_combout\ & ((\datapath|adr_bus|Mux7~2_combout\ & (\datapath|spH|output\(3))) # 
-- (!\datapath|adr_bus|Mux7~2_combout\ & ((\datapath|arH|output\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|spH|output\(3),
	datab => \datapath|adr_bus|Mux7~3_combout\,
	datac => \datapath|arH|output\(3),
	datad => \datapath|adr_bus|Mux7~2_combout\,
	combout => \datapath|adr_bus|Mux4~0_combout\);

-- Location: FF_X26_Y22_N19
\datapath|spH|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|spH|output[1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|state.S_LOAD_SP_IMM_4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|spH|output\(1));

-- Location: FF_X26_Y22_N9
\datapath|arH|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|arH|output[1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|arH_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|arH|output\(1));

-- Location: LCCOMB_X27_Y22_N18
\datapath|adr_bus|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux6~0_combout\ = (\datapath|adr_bus|Mux7~3_combout\ & (((\datapath|adr_bus|Mux7~2_combout\)))) # (!\datapath|adr_bus|Mux7~3_combout\ & ((\datapath|adr_bus|Mux7~2_combout\ & ((\datapath|spH|output\(1)))) # 
-- (!\datapath|adr_bus|Mux7~2_combout\ & (\datapath|arH|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|arH|output\(1),
	datab => \datapath|adr_bus|Mux7~3_combout\,
	datac => \datapath|spH|output\(1),
	datad => \datapath|adr_bus|Mux7~2_combout\,
	combout => \datapath|adr_bus|Mux6~0_combout\);

-- Location: FF_X26_Y23_N31
\datapath|pcH|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|pc_adder|Add0~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|pcH|output\(1));

-- Location: LCCOMB_X27_Y22_N12
\datapath|adr_bus|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux6~1_combout\ = (\datapath|adr_bus|Mux7~3_combout\ & ((\datapath|adr_bus|Mux6~0_combout\ & (\datapath|pcH|output\(1))) # (!\datapath|adr_bus|Mux6~0_combout\ & ((\datapath|x_adder|output[9]~18_combout\))))) # 
-- (!\datapath|adr_bus|Mux7~3_combout\ & (((\datapath|adr_bus|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|pcH|output\(1),
	datab => \datapath|adr_bus|Mux7~3_combout\,
	datac => \datapath|x_adder|output[9]~18_combout\,
	datad => \datapath|adr_bus|Mux6~0_combout\,
	combout => \datapath|adr_bus|Mux6~1_combout\);

-- Location: FF_X26_Y22_N1
\datapath|spH|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[7]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|state.S_LOAD_SP_IMM_4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|spH|output\(7));

-- Location: FF_X26_Y23_N21
\datapath|pcH|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|pc_adder|Add0~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|pcH|output\(7));

-- Location: FF_X23_Y24_N27
\datapath|arL|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[5]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|arL_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|arL|output\(5));

-- Location: LCCOMB_X23_Y24_N6
\datapath|mem_decoder|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|mem_decoder|LessThan0~0_combout\ = (\datapath|adr_bus|Mux10~1_combout\ & (\datapath|adr_bus|Mux9~1_combout\ & (\datapath|adr_bus|Mux8~1_combout\ & \datapath|adr_bus|Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|adr_bus|Mux10~1_combout\,
	datab => \datapath|adr_bus|Mux9~1_combout\,
	datac => \datapath|adr_bus|Mux8~1_combout\,
	datad => \datapath|adr_bus|Mux11~1_combout\,
	combout => \datapath|mem_decoder|LessThan0~0_combout\);

-- Location: FF_X26_Y22_N23
\datapath|spH|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcH|output[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|state.S_LOAD_SP_IMM_4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|spH|output\(0));

-- Location: FF_X26_Y22_N13
\datapath|arH|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcH|output[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|arH_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|arH|output\(0));

-- Location: LCCOMB_X26_Y22_N12
\datapath|adr_bus|Mux7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux7~4_combout\ = (\datapath|adr_bus|Mux7~3_combout\ & ((\datapath|adr_bus|Mux7~2_combout\) # ((\datapath|x_adder|output[8]~16_combout\)))) # (!\datapath|adr_bus|Mux7~3_combout\ & (!\datapath|adr_bus|Mux7~2_combout\ & 
-- (\datapath|arH|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|adr_bus|Mux7~3_combout\,
	datab => \datapath|adr_bus|Mux7~2_combout\,
	datac => \datapath|arH|output\(0),
	datad => \datapath|x_adder|output[8]~16_combout\,
	combout => \datapath|adr_bus|Mux7~4_combout\);

-- Location: LCCOMB_X26_Y22_N22
\datapath|adr_bus|Mux7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux7~5_combout\ = (\datapath|adr_bus|Mux7~2_combout\ & ((\datapath|adr_bus|Mux7~4_combout\ & (\datapath|pcH|output\(0))) # (!\datapath|adr_bus|Mux7~4_combout\ & ((\datapath|spH|output\(0)))))) # (!\datapath|adr_bus|Mux7~2_combout\ & 
-- (((\datapath|adr_bus|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|pcH|output\(0),
	datab => \datapath|adr_bus|Mux7~2_combout\,
	datac => \datapath|spH|output\(0),
	datad => \datapath|adr_bus|Mux7~4_combout\,
	combout => \datapath|adr_bus|Mux7~5_combout\);

-- Location: LCCOMB_X22_Y25_N28
\controler|WideOr9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr9~4_combout\ = (!\controler|state.S_LOAD_ACC_INDX_5~q\ & (!\controler|state.S_RETURN_3~q\ & (!\controler|state.S_LOAD_ACC_INDX_2~q\ & !\controler|state.S_STORE_ACC_INDX_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_LOAD_ACC_INDX_5~q\,
	datab => \controler|state.S_RETURN_3~q\,
	datac => \controler|state.S_LOAD_ACC_INDX_2~q\,
	datad => \controler|state.S_STORE_ACC_INDX_2~q\,
	combout => \controler|WideOr9~4_combout\);

-- Location: LCCOMB_X22_Y25_N14
\controler|WideOr9~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr9~5_combout\ = (!\controler|state.S_RETURN_5~q\ & \controler|WideOr9~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controler|state.S_RETURN_5~q\,
	datad => \controler|WideOr9~4_combout\,
	combout => \controler|WideOr9~5_combout\);

-- Location: FF_X23_Y25_N23
\controler|state.S_STORE_ACC_INDX_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_STORE_ACC_INDX_4~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_STORE_ACC_INDX_5~q\);

-- Location: FF_X26_Y24_N21
\datapath|inport1_reg|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \input1[0]~1_combout\,
	ena => \controler|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|inport1_reg|output\(0));

-- Location: FF_X26_Y24_N19
\datapath|inport2_reg|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \input2[0]~1_combout\,
	ena => \controler|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|inport2_reg|output\(0));

-- Location: FF_X24_Y24_N27
\datapath|inport1_reg|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \input1[1]~2_combout\,
	ena => \controler|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|inport1_reg|output\(1));

-- Location: FF_X24_Y24_N23
\datapath|inport1_reg|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \input1[3]~3_combout\,
	ena => \controler|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|inport1_reg|output\(3));

-- Location: FF_X24_Y24_N29
\datapath|inport2_reg|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \input2[6]~4_combout\,
	ena => \controler|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|inport2_reg|output\(6));

-- Location: FF_X24_Y24_N3
\datapath|inport1_reg|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \input1[4]~5_combout\,
	ena => \controler|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|inport1_reg|output\(4));

-- Location: FF_X24_Y24_N19
\datapath|inport1_reg|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \input1[5]~6_combout\,
	ena => \controler|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|inport1_reg|output\(5));

-- Location: FF_X24_Y24_N7
\datapath|inport1_reg|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \input1[7]~7_combout\,
	ena => \controler|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|inport1_reg|output\(7));

-- Location: LCCOMB_X26_Y24_N28
\datapath|mem_decoder|enable~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|mem_decoder|enable~0_combout\ = (!\controler|WideOr6~0_combout\ & ((!\datapath|mem_decoder|LessThan0~1_combout\) # (!\datapath|adr_bus|Mux15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controler|WideOr6~0_combout\,
	datac => \datapath|adr_bus|Mux15~1_combout\,
	datad => \datapath|mem_decoder|LessThan0~1_combout\,
	combout => \datapath|mem_decoder|enable~0_combout\);

-- Location: LCCOMB_X26_Y24_N22
\datapath|mem_decoder|enable~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|mem_decoder|enable~1_combout\ = (!\datapath|adr_bus|Mux7~5_combout\ & (!\datapath|adr_bus|Mux2~1_combout\ & (!\datapath|adr_bus|Mux1~1_combout\ & !\datapath|adr_bus|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|adr_bus|Mux7~5_combout\,
	datab => \datapath|adr_bus|Mux2~1_combout\,
	datac => \datapath|adr_bus|Mux1~1_combout\,
	datad => \datapath|adr_bus|Mux0~1_combout\,
	combout => \datapath|mem_decoder|enable~1_combout\);

-- Location: LCCOMB_X27_Y22_N10
\datapath|mem_decoder|enable~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|mem_decoder|enable~2_combout\ = (!\datapath|adr_bus|Mux3~1_combout\ & (!\datapath|adr_bus|Mux4~1_combout\ & (!\datapath|adr_bus|Mux5~1_combout\ & !\datapath|adr_bus|Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|adr_bus|Mux3~1_combout\,
	datab => \datapath|adr_bus|Mux4~1_combout\,
	datac => \datapath|adr_bus|Mux5~1_combout\,
	datad => \datapath|adr_bus|Mux6~1_combout\,
	combout => \datapath|mem_decoder|enable~2_combout\);

-- Location: LCCOMB_X26_Y24_N4
\datapath|mem_decoder|enable\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|mem_decoder|enable~combout\ = (\datapath|mem_decoder|enable~1_combout\ & (\datapath|mem_decoder|enable~2_combout\ & \datapath|mem_decoder|enable~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|mem_decoder|enable~1_combout\,
	datac => \datapath|mem_decoder|enable~2_combout\,
	datad => \datapath|mem_decoder|enable~0_combout\,
	combout => \datapath|mem_decoder|enable~combout\);

-- Location: FF_X21_Y25_N31
\controler|state.S_LOAD_ACC_RR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_LOAD_ACC_RR~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_LOAD_ACC_RR~q\);

-- Location: LCCOMB_X21_Y25_N6
\controler|WideOr22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr22~1_combout\ = (!\controler|state.S_MULT_AD_2~q\ & (!\controler|state.S_MULT_AD~q\ & (!\controler|state.S_STORE_ACC_RR~q\ & !\controler|state.S_SHIFT_LEFT_LOGICAL~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_MULT_AD_2~q\,
	datab => \controler|state.S_MULT_AD~q\,
	datac => \controler|state.S_STORE_ACC_RR~q\,
	datad => \controler|state.S_SHIFT_LEFT_LOGICAL~q\,
	combout => \controler|WideOr22~1_combout\);

-- Location: LCCOMB_X20_Y23_N30
\datapath|alu|Add2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~5_combout\ = (\datapath|alu|Add2~2_combout\) # ((\datapath|alu|Add2~3_combout\ & !\datapath|d|output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Add2~3_combout\,
	datac => \datapath|d|output\(3),
	datad => \datapath|alu|Add2~2_combout\,
	combout => \datapath|alu|Add2~5_combout\);

-- Location: LCCOMB_X20_Y23_N6
\datapath|alu|Add2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~7_combout\ = (\datapath|alu|Add2~2_combout\) # ((\datapath|alu|Add2~3_combout\ & !\datapath|d|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Add2~3_combout\,
	datab => \datapath|d|output\(1),
	datad => \datapath|alu|Add2~2_combout\,
	combout => \datapath|alu|Add2~7_combout\);

-- Location: LCCOMB_X21_Y23_N16
\datapath|alu|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~8_combout\ = ((\controler|WideOr20~1_combout\) # (\controler|WideOr19~combout\)) # (!\datapath|d|output\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|d|output\(0),
	datab => \controler|WideOr20~1_combout\,
	datad => \controler|WideOr19~combout\,
	combout => \datapath|alu|Add2~8_combout\);

-- Location: LCCOMB_X21_Y22_N0
\controler|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Mux0~0_combout\ = (!\datapath|ir|output\(6) & \datapath|ir|output\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(6),
	datad => \datapath|ir|output\(3),
	combout => \controler|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y24_N6
\datapath|alu|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~22_combout\ = (\datapath|a|output\(7) & \datapath|d|output\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|a|output\(7),
	datac => \datapath|d|output\(7),
	combout => \datapath|alu|Add2~22_combout\);

-- Location: LCCOMB_X22_Y24_N20
\datapath|alu|Add2~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~23_combout\ = (\controler|WideOr21~combout\ & (\datapath|d|output\(7) $ (((\datapath|a|output\(7)))))) # (!\controler|WideOr21~combout\ & (((\datapath|c_flag|output~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr21~combout\,
	datab => \datapath|d|output\(7),
	datac => \datapath|c_flag|output~q\,
	datad => \datapath|a|output\(7),
	combout => \datapath|alu|Add2~23_combout\);

-- Location: LCCOMB_X22_Y24_N30
\datapath|alu|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~24_combout\ = (\controler|WideOr22~combout\ & ((\datapath|alu|Add2~23_combout\) # ((\datapath|alu|Add2~1_combout\ & \datapath|alu|Add2~22_combout\)))) # (!\controler|WideOr22~combout\ & (((\datapath|alu|Add2~1_combout\ & 
-- \datapath|alu|Add2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr22~combout\,
	datab => \datapath|alu|Add2~23_combout\,
	datac => \datapath|alu|Add2~1_combout\,
	datad => \datapath|alu|Add2~22_combout\,
	combout => \datapath|alu|Add2~24_combout\);

-- Location: LCCOMB_X21_Y23_N4
\datapath|alu|Add2~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~27_combout\ = (\datapath|alu|Add2~2_combout\) # ((!\datapath|d|output\(5) & \datapath|alu|Add2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|d|output\(5),
	datac => \datapath|alu|Add2~3_combout\,
	datad => \datapath|alu|Add2~2_combout\,
	combout => \datapath|alu|Add2~27_combout\);

-- Location: LCCOMB_X23_Y23_N6
\datapath|alu|Add2~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~39_combout\ = (\controler|WideOr22~combout\ & (\datapath|c_flag|output~q\)) # (!\controler|WideOr22~combout\ & ((\datapath|a|output\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|c_flag|output~q\,
	datac => \datapath|a|output\(7),
	datad => \controler|WideOr22~combout\,
	combout => \datapath|alu|Add2~39_combout\);

-- Location: LCCOMB_X22_Y23_N26
\datapath|alu|Mux0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux0~6_combout\ = (!\controler|WideOr23~combout\ & ((\datapath|alu|Add2~1_combout\ & ((\datapath|alu|Add2~32_combout\))) # (!\datapath|alu|Add2~1_combout\ & (\datapath|a|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|a|output\(7),
	datab => \datapath|alu|Add2~1_combout\,
	datac => \controler|WideOr23~combout\,
	datad => \datapath|alu|Add2~32_combout\,
	combout => \datapath|alu|Mux0~6_combout\);

-- Location: LCCOMB_X24_Y23_N4
\datapath|alu|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Equal0~0_combout\ = (!\datapath|alu|Mux2~4_combout\ & ((\datapath|alu|Mux4~11_combout\ & (!\datapath|d|output\(6))) # (!\datapath|alu|Mux4~11_combout\ & ((!\datapath|alu|Mux1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|d|output\(6),
	datab => \datapath|alu|Mux4~11_combout\,
	datac => \datapath|alu|Mux2~4_combout\,
	datad => \datapath|alu|Mux1~3_combout\,
	combout => \datapath|alu|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y24_N20
\datapath|alu|Mux7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux7~5_combout\ = (\controler|WideOr21~combout\ & ((\datapath|a|output\(0) & (\datapath|d|output\(0) $ (\controler|WideOr22~combout\))) # (!\datapath|a|output\(0) & (\datapath|d|output\(0) & \controler|WideOr22~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr21~combout\,
	datab => \datapath|a|output\(0),
	datac => \datapath|d|output\(0),
	datad => \controler|WideOr22~combout\,
	combout => \datapath|alu|Mux7~5_combout\);

-- Location: LCCOMB_X19_Y24_N10
\datapath|alu|Mux7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux7~6_combout\ = (\datapath|alu|Mux7~5_combout\) # ((\datapath|a|output\(1) & !\controler|WideOr21~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|a|output\(1),
	datac => \controler|WideOr21~combout\,
	datad => \datapath|alu|Mux7~5_combout\,
	combout => \datapath|alu|Mux7~6_combout\);

-- Location: LCCOMB_X24_Y23_N6
\datapath|alu|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Equal0~1_combout\ = (!\datapath|alu|Mux3~4_combout\ & (!\datapath|alu|Mux7~16_combout\ & (\datapath|alu|Equal0~0_combout\ & !\datapath|alu|Mux4~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mux3~4_combout\,
	datab => \datapath|alu|Mux7~16_combout\,
	datac => \datapath|alu|Equal0~0_combout\,
	datad => \datapath|alu|Mux4~16_combout\,
	combout => \datapath|alu|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y25_N18
\datapath|v_flag|output~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|v_flag|output~0_combout\ = (!\controler|state.S_COMPARE~q\ & (!\controler|state.S_ADD_CARRY~q\ & !\controler|state.S_SUBTRACT_BORROW~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controler|state.S_COMPARE~q\,
	datac => \controler|state.S_ADD_CARRY~q\,
	datad => \controler|state.S_SUBTRACT_BORROW~q\,
	combout => \datapath|v_flag|output~0_combout\);

-- Location: LCCOMB_X22_Y22_N6
\datapath|v_flag|output~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|v_flag|output~1_combout\ = (\datapath|v_flag|output~0_combout\ & (((\datapath|v_flag|output~q\)))) # (!\datapath|v_flag|output~0_combout\ & (\datapath|alu|Mux0~8_combout\ $ ((\datapath|c_flag|output~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mux0~8_combout\,
	datab => \datapath|c_flag|output~q\,
	datac => \datapath|v_flag|output~q\,
	datad => \datapath|v_flag|output~0_combout\,
	combout => \datapath|v_flag|output~1_combout\);

-- Location: LCCOMB_X21_Y24_N26
\datapath|c_flag|output~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|c_flag|output~1_combout\ = (\datapath|a|output\(0) & !\controler|WideOr21~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|a|output\(0),
	datac => \controler|WideOr21~combout\,
	combout => \datapath|c_flag|output~1_combout\);

-- Location: LCCOMB_X20_Y22_N16
\controler|next_state.S_RETURN~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_RETURN~0_combout\ = (!\datapath|ir|output\(0) & !\datapath|ir|output\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|ir|output\(0),
	datad => \datapath|ir|output\(1),
	combout => \controler|next_state.S_RETURN~0_combout\);

-- Location: LCCOMB_X20_Y22_N30
\controler|next_state.S_STORE_ACC_ABS~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_STORE_ACC_ABS~1_combout\ = (!\datapath|ir|output\(0) & (!\datapath|ir|output\(3) & \datapath|ir|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|ir|output\(0),
	datac => \datapath|ir|output\(3),
	datad => \datapath|ir|output\(1),
	combout => \controler|next_state.S_STORE_ACC_ABS~1_combout\);

-- Location: LCCOMB_X26_Y23_N2
\datapath|in_bus|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux4~2_combout\ = (\datapath|pcH|output\(3) & (\controler|WideOr11~2_combout\ & !\controler|state.S_STORE_ACC_INDX_4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|pcH|output\(3),
	datac => \controler|WideOr11~2_combout\,
	datad => \controler|state.S_STORE_ACC_INDX_4~q\,
	combout => \datapath|in_bus|Mux4~2_combout\);

-- Location: FF_X29_Y24_N25
\datapath|ex_to_in_reg|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|ex_bus|Mux5~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|ex_to_in_reg|output\(2));

-- Location: LCCOMB_X29_Y24_N24
\datapath|in_bus|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux5~2_combout\ = (\controler|WideOr11~2_combout\ & (\datapath|arL|output\(2) & (\controler|state.S_STORE_ACC_INDX_4~q\))) # (!\controler|WideOr11~2_combout\ & (((\datapath|ex_to_in_reg|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|arL|output\(2),
	datab => \controler|state.S_STORE_ACC_INDX_4~q\,
	datac => \datapath|ex_to_in_reg|output\(2),
	datad => \controler|WideOr11~2_combout\,
	combout => \datapath|in_bus|Mux5~2_combout\);

-- Location: LCCOMB_X24_Y24_N30
\datapath|in_bus|Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux5~3_combout\ = (!\controler|state.S_CALL~q\ & ((\datapath|in_bus|Mux5~2_combout\) # ((\datapath|pcH|output\(2) & !\controler|WideOr12~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_CALL~q\,
	datab => \datapath|pcH|output\(2),
	datac => \datapath|in_bus|Mux5~2_combout\,
	datad => \controler|WideOr12~combout\,
	combout => \datapath|in_bus|Mux5~3_combout\);

-- Location: LCCOMB_X23_Y22_N22
\datapath|in_bus|Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux5~4_combout\ = (\datapath|in_bus|Mux5~3_combout\) # ((\controler|state.S_CALL~q\ & \datapath|pcL|output\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_CALL~q\,
	datab => \datapath|pcL|output\(2),
	datac => \datapath|in_bus|Mux5~3_combout\,
	combout => \datapath|in_bus|Mux5~4_combout\);

-- Location: FF_X23_Y24_N15
\datapath|ex_to_in_reg|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|ex_bus|Mux6~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|ex_to_in_reg|output\(1));

-- Location: LCCOMB_X29_Y24_N18
\datapath|in_bus|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux6~2_combout\ = (\controler|WideOr11~2_combout\ & (\datapath|arL|output\(1) & (\controler|state.S_STORE_ACC_INDX_4~q\))) # (!\controler|WideOr11~2_combout\ & (((\datapath|ex_to_in_reg|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|arL|output\(1),
	datab => \controler|state.S_STORE_ACC_INDX_4~q\,
	datac => \datapath|ex_to_in_reg|output\(1),
	datad => \controler|WideOr11~2_combout\,
	combout => \datapath|in_bus|Mux6~2_combout\);

-- Location: LCCOMB_X29_Y24_N20
\datapath|in_bus|Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux6~3_combout\ = (!\controler|state.S_CALL~q\ & ((\datapath|in_bus|Mux6~2_combout\) # ((\datapath|pcH|output\(1) & !\controler|WideOr12~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|pcH|output\(1),
	datab => \controler|state.S_CALL~q\,
	datac => \controler|WideOr12~combout\,
	datad => \datapath|in_bus|Mux6~2_combout\,
	combout => \datapath|in_bus|Mux6~3_combout\);

-- Location: LCCOMB_X29_Y24_N2
\datapath|in_bus|Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux6~4_combout\ = (\datapath|in_bus|Mux6~3_combout\) # ((\controler|state.S_CALL~q\ & \datapath|pcL|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controler|state.S_CALL~q\,
	datac => \datapath|pcL|output\(1),
	datad => \datapath|in_bus|Mux6~3_combout\,
	combout => \datapath|in_bus|Mux6~4_combout\);

-- Location: FF_X29_Y24_N23
\datapath|ex_to_in_reg|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|ex_bus|Mux0~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|ex_to_in_reg|output\(7));

-- Location: LCCOMB_X29_Y23_N12
\datapath|in_bus|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux0~3_combout\ = (\controler|WideOr11~2_combout\ & (((\datapath|arL|output\(7) & \controler|state.S_STORE_ACC_INDX_4~q\)))) # (!\controler|WideOr11~2_combout\ & (\datapath|ex_to_in_reg|output\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ex_to_in_reg|output\(7),
	datab => \datapath|arL|output\(7),
	datac => \controler|WideOr11~2_combout\,
	datad => \controler|state.S_STORE_ACC_INDX_4~q\,
	combout => \datapath|in_bus|Mux0~3_combout\);

-- Location: LCCOMB_X26_Y23_N28
\datapath|in_bus|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux2~2_combout\ = (!\controler|state.S_STORE_ACC_INDX_4~q\ & (\datapath|pcH|output\(5) & \controler|WideOr11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_STORE_ACC_INDX_4~q\,
	datab => \datapath|pcH|output\(5),
	datad => \controler|WideOr11~2_combout\,
	combout => \datapath|in_bus|Mux2~2_combout\);

-- Location: FF_X30_Y24_N13
\datapath|ex_to_in_reg|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|ex_bus|Mux2~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|ex_to_in_reg|output\(5));

-- Location: LCCOMB_X26_Y23_N10
\datapath|in_bus|Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux2~3_combout\ = (\controler|WideOr11~2_combout\ & (\controler|state.S_STORE_ACC_INDX_4~q\ & (\datapath|arL|output\(5)))) # (!\controler|WideOr11~2_combout\ & (((\datapath|ex_to_in_reg|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_STORE_ACC_INDX_4~q\,
	datab => \datapath|arL|output\(5),
	datac => \datapath|ex_to_in_reg|output\(5),
	datad => \controler|WideOr11~2_combout\,
	combout => \datapath|in_bus|Mux2~3_combout\);

-- Location: LCCOMB_X26_Y23_N16
\datapath|in_bus|Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux2~4_combout\ = (\controler|state.S_CALL~q\ & (((\datapath|pcL|output\(5))))) # (!\controler|state.S_CALL~q\ & ((\datapath|in_bus|Mux2~3_combout\) # ((\datapath|in_bus|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|in_bus|Mux2~3_combout\,
	datab => \controler|state.S_CALL~q\,
	datac => \datapath|pcL|output\(5),
	datad => \datapath|in_bus|Mux2~2_combout\,
	combout => \datapath|in_bus|Mux2~4_combout\);

-- Location: LCCOMB_X26_Y23_N30
\datapath|pc_adder|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pc_adder|Add0~3_combout\ = (\controler|WideOr13~4_combout\ & ((\datapath|pcL|output[1]~5_combout\))) # (!\controler|WideOr13~4_combout\ & (\datapath|pc_adder|output[9]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr13~4_combout\,
	datac => \datapath|pc_adder|output[9]~18_combout\,
	datad => \datapath|pcL|output[1]~5_combout\,
	combout => \datapath|pc_adder|Add0~3_combout\);

-- Location: LCCOMB_X26_Y23_N20
\datapath|pc_adder|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pc_adder|Add0~4_combout\ = (\controler|WideOr13~4_combout\ & (\datapath|pcL|output[7]~0_combout\)) # (!\controler|WideOr13~4_combout\ & ((\datapath|pc_adder|output[15]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr13~4_combout\,
	datab => \datapath|pcL|output[7]~0_combout\,
	datad => \datapath|pc_adder|output[15]~30_combout\,
	combout => \datapath|pc_adder|Add0~4_combout\);

-- Location: LCCOMB_X26_Y24_N20
\input1[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input1[0]~1_combout\ = (!\button[2]~input_o\ & (\switch[0]~input_o\ & (\button[1]~input_o\ & \in1_sel~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \switch[0]~input_o\,
	datac => \button[1]~input_o\,
	datad => \in1_sel~0_combout\,
	combout => \input1[0]~1_combout\);

-- Location: LCCOMB_X26_Y24_N18
\input2[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input2[0]~1_combout\ = (\button[2]~input_o\ & (\switch[0]~input_o\ & (!\button[1]~input_o\ & \process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \switch[0]~input_o\,
	datac => \button[1]~input_o\,
	datad => \process_0~2_combout\,
	combout => \input2[0]~1_combout\);

-- Location: LCCOMB_X24_Y24_N26
\input1[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input1[1]~2_combout\ = (\in1_sel~0_combout\ & (\switch[1]~input_o\ & (\button[1]~input_o\ & !\button[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_sel~0_combout\,
	datab => \switch[1]~input_o\,
	datac => \button[1]~input_o\,
	datad => \button[2]~input_o\,
	combout => \input1[1]~2_combout\);

-- Location: LCCOMB_X24_Y24_N22
\input1[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input1[3]~3_combout\ = (\in1_sel~0_combout\ & (\switch[3]~input_o\ & (\button[1]~input_o\ & !\button[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_sel~0_combout\,
	datab => \switch[3]~input_o\,
	datac => \button[1]~input_o\,
	datad => \button[2]~input_o\,
	combout => \input1[3]~3_combout\);

-- Location: LCCOMB_X24_Y24_N28
\input2[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input2[6]~4_combout\ = (\button[2]~input_o\ & (\switch[6]~input_o\ & (!\button[1]~input_o\ & \process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \switch[6]~input_o\,
	datac => \button[1]~input_o\,
	datad => \process_0~2_combout\,
	combout => \input2[6]~4_combout\);

-- Location: LCCOMB_X24_Y24_N2
\input1[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input1[4]~5_combout\ = (\in1_sel~0_combout\ & (\switch[4]~input_o\ & (\button[1]~input_o\ & !\button[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_sel~0_combout\,
	datab => \switch[4]~input_o\,
	datac => \button[1]~input_o\,
	datad => \button[2]~input_o\,
	combout => \input1[4]~5_combout\);

-- Location: LCCOMB_X24_Y24_N18
\input1[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input1[5]~6_combout\ = (\in1_sel~0_combout\ & (\switch[5]~input_o\ & (\button[1]~input_o\ & !\button[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_sel~0_combout\,
	datab => \switch[5]~input_o\,
	datac => \button[1]~input_o\,
	datad => \button[2]~input_o\,
	combout => \input1[5]~6_combout\);

-- Location: LCCOMB_X24_Y24_N6
\input1[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input1[7]~7_combout\ = (\in1_sel~0_combout\ & (\switch[7]~input_o\ & (\button[1]~input_o\ & !\button[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_sel~0_combout\,
	datab => \switch[7]~input_o\,
	datac => \button[1]~input_o\,
	datad => \button[2]~input_o\,
	combout => \input1[7]~7_combout\);

-- Location: LCCOMB_X21_Y21_N0
\controler|next_state.S_ADD_CARRY~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_ADD_CARRY~2_combout\ = (\controler|state.S_DECODE~q\ & (!\datapath|ir|output\(7) & (\controler|next_state.S_STORE_ACC_RR~0_combout\ & !\datapath|ir|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_DECODE~q\,
	datab => \datapath|ir|output\(7),
	datac => \controler|next_state.S_STORE_ACC_RR~0_combout\,
	datad => \datapath|ir|output\(5),
	combout => \controler|next_state.S_ADD_CARRY~2_combout\);

-- Location: LCCOMB_X21_Y21_N10
\controler|next_state.S_LOAD_ACC_RR~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_LOAD_ACC_RR~2_combout\ = (\controler|state.S_DECODE~q\ & (\datapath|ir|output\(7) & (\controler|next_state.S_STORE_ACC_RR~0_combout\ & !\datapath|ir|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_DECODE~q\,
	datab => \datapath|ir|output\(7),
	datac => \controler|next_state.S_STORE_ACC_RR~0_combout\,
	datad => \datapath|ir|output\(5),
	combout => \controler|next_state.S_LOAD_ACC_RR~2_combout\);

-- Location: LCCOMB_X20_Y22_N18
\controler|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Mux0~1_combout\ = (\datapath|ir|output\(3) & ((\datapath|ir|output\(1)) # ((\datapath|ir|output\(0) & !\datapath|ir|output\(6))))) # (!\datapath|ir|output\(3) & (\datapath|ir|output\(6) & ((\datapath|ir|output\(0)) # 
-- (!\datapath|ir|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(3),
	datab => \datapath|ir|output\(0),
	datac => \datapath|ir|output\(6),
	datad => \datapath|ir|output\(1),
	combout => \controler|Mux0~1_combout\);

-- Location: LCCOMB_X20_Y22_N0
\controler|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Mux0~2_combout\ = (\datapath|ir|output\(5) & (((\controler|Mux0~1_combout\ & \datapath|ir|output\(4))))) # (!\datapath|ir|output\(5) & ((\datapath|ir|output\(6)) # ((\datapath|ir|output\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(6),
	datab => \controler|Mux0~1_combout\,
	datac => \datapath|ir|output\(5),
	datad => \datapath|ir|output\(4),
	combout => \controler|Mux0~2_combout\);

-- Location: LCCOMB_X20_Y22_N22
\controler|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Mux0~3_combout\ = ((\datapath|ir|output\(3) & (!\datapath|ir|output\(6))) # (!\datapath|ir|output\(3) & ((\datapath|ir|output\(5))))) # (!\controler|next_state.S_RETURN~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(6),
	datab => \datapath|ir|output\(5),
	datac => \datapath|ir|output\(3),
	datad => \controler|next_state.S_RETURN~0_combout\,
	combout => \controler|Mux0~3_combout\);

-- Location: LCCOMB_X20_Y22_N12
\controler|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Mux0~4_combout\ = (\datapath|ir|output\(2) & ((\controler|Mux0~2_combout\) # ((!\datapath|ir|output\(4) & \controler|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(4),
	datab => \datapath|ir|output\(2),
	datac => \controler|Mux0~3_combout\,
	datad => \controler|Mux0~2_combout\,
	combout => \controler|Mux0~4_combout\);

-- Location: LCCOMB_X20_Y22_N20
\controler|Mux0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Mux0~10_combout\ = (\datapath|ir|output\(4) & ((\datapath|ir|output\(6) & (\datapath|ir|output\(5))) # (!\datapath|ir|output\(6) & ((\datapath|ir|output\(1)))))) # (!\datapath|ir|output\(4) & (\datapath|ir|output\(1) & (\datapath|ir|output\(5) 
-- $ (\datapath|ir|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(4),
	datab => \datapath|ir|output\(5),
	datac => \datapath|ir|output\(6),
	datad => \datapath|ir|output\(1),
	combout => \controler|Mux0~10_combout\);

-- Location: LCCOMB_X20_Y22_N6
\controler|Mux0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Mux0~11_combout\ = (\datapath|ir|output\(3)) # ((\controler|Mux0~10_combout\) # (\datapath|ir|output\(1) $ (!\datapath|ir|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(1),
	datab => \datapath|ir|output\(0),
	datac => \datapath|ir|output\(3),
	datad => \controler|Mux0~10_combout\,
	combout => \controler|Mux0~11_combout\);

-- Location: LCCOMB_X22_Y25_N26
\controler|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Selector1~2_combout\ = (\datapath|v_flag|output~q\ & ((\controler|state.S_BRANCH_NOT_V~q\))) # (!\datapath|v_flag|output~q\ & (\controler|state.S_BRANCH_V~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_BRANCH_V~q\,
	datab => \datapath|v_flag|output~q\,
	datad => \controler|state.S_BRANCH_NOT_V~q\,
	combout => \controler|Selector1~2_combout\);

-- Location: LCCOMB_X21_Y24_N22
\controler|WideOr1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr1~7_combout\ = (\controler|state.S_CLEAR_CARRY~q\) # ((\controler|state.S_STORE_ACC_RR~q\) # ((\controler|state.S_COMPARE~q\) # (\controler|state.S_SET_CARRY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_CLEAR_CARRY~q\,
	datab => \controler|state.S_STORE_ACC_RR~q\,
	datac => \controler|state.S_COMPARE~q\,
	datad => \controler|state.S_SET_CARRY~q\,
	combout => \controler|WideOr1~7_combout\);

-- Location: LCCOMB_X22_Y23_N12
\datapath|alu|Mux0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux0~9_combout\ = (!\controler|WideOr20~1_combout\ & (\datapath|alu|Add2~32_combout\ & ((\controler|WideOr23~0_combout\) # (!\controler|WideOr22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr22~3_combout\,
	datab => \controler|WideOr20~1_combout\,
	datac => \controler|WideOr23~0_combout\,
	datad => \datapath|alu|Add2~32_combout\,
	combout => \datapath|alu|Mux0~9_combout\);

-- Location: LCCOMB_X27_Y22_N16
\datapath|xH_mux|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|xH_mux|Mux3~2_combout\ = (\controler|state.S_DECREMENT_X~q\ & (\datapath|x_adder|output[12]~24_combout\)) # (!\controler|state.S_DECREMENT_X~q\ & ((\controler|state.S_INCREMENT_X~q\ & (\datapath|x_adder|output[12]~24_combout\)) # 
-- (!\controler|state.S_INCREMENT_X~q\ & ((\datapath|pcL|output[4]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_DECREMENT_X~q\,
	datab => \datapath|x_adder|output[12]~24_combout\,
	datac => \controler|state.S_INCREMENT_X~q\,
	datad => \datapath|pcL|output[4]~3_combout\,
	combout => \datapath|xH_mux|Mux3~2_combout\);

-- Location: LCCOMB_X27_Y22_N26
\datapath|xH_mux|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|xH_mux|Mux4~2_combout\ = (\controler|state.S_INCREMENT_X~q\ & (\datapath|x_adder|output[11]~22_combout\)) # (!\controler|state.S_INCREMENT_X~q\ & ((\controler|state.S_DECREMENT_X~q\ & (\datapath|x_adder|output[11]~22_combout\)) # 
-- (!\controler|state.S_DECREMENT_X~q\ & ((\datapath|pcL|output[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|x_adder|output[11]~22_combout\,
	datab => \controler|state.S_INCREMENT_X~q\,
	datac => \datapath|pcL|output[3]~6_combout\,
	datad => \controler|state.S_DECREMENT_X~q\,
	combout => \datapath|xH_mux|Mux4~2_combout\);

-- Location: LCCOMB_X27_Y22_N8
\datapath|xH_mux|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|xH_mux|Mux5~2_combout\ = (\controler|state.S_DECREMENT_X~q\ & (\datapath|x_adder|output[10]~20_combout\)) # (!\controler|state.S_DECREMENT_X~q\ & ((\controler|state.S_INCREMENT_X~q\ & (\datapath|x_adder|output[10]~20_combout\)) # 
-- (!\controler|state.S_INCREMENT_X~q\ & ((\datapath|pcL|output[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_DECREMENT_X~q\,
	datab => \datapath|x_adder|output[10]~20_combout\,
	datac => \controler|state.S_INCREMENT_X~q\,
	datad => \datapath|pcL|output[2]~4_combout\,
	combout => \datapath|xH_mux|Mux5~2_combout\);

-- Location: LCCOMB_X28_Y22_N10
\datapath|xL_mux|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|xL_mux|Mux1~2_combout\ = (\controler|state.S_INCREMENT_X~q\ & (((\datapath|x_adder|output[6]~12_combout\)))) # (!\controler|state.S_INCREMENT_X~q\ & ((\controler|state.S_DECREMENT_X~q\ & (\datapath|x_adder|output[6]~12_combout\)) # 
-- (!\controler|state.S_DECREMENT_X~q\ & ((\datapath|pcL|output[6]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_INCREMENT_X~q\,
	datab => \controler|state.S_DECREMENT_X~q\,
	datac => \datapath|x_adder|output[6]~12_combout\,
	datad => \datapath|pcL|output[6]~1_combout\,
	combout => \datapath|xL_mux|Mux1~2_combout\);

-- Location: LCCOMB_X28_Y22_N14
\datapath|xL_mux|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|xL_mux|Mux4~2_combout\ = (\controler|state.S_DECREMENT_X~q\ & (\datapath|x_adder|output[3]~6_combout\)) # (!\controler|state.S_DECREMENT_X~q\ & ((\controler|state.S_INCREMENT_X~q\ & (\datapath|x_adder|output[3]~6_combout\)) # 
-- (!\controler|state.S_INCREMENT_X~q\ & ((\datapath|pcL|output[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|x_adder|output[3]~6_combout\,
	datab => \controler|state.S_DECREMENT_X~q\,
	datac => \controler|state.S_INCREMENT_X~q\,
	datad => \datapath|pcL|output[3]~6_combout\,
	combout => \datapath|xL_mux|Mux4~2_combout\);

-- Location: LCCOMB_X28_Y22_N22
\datapath|xL_mux|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|xL_mux|Mux6~2_combout\ = (\controler|state.S_INCREMENT_X~q\ & (((\datapath|x_adder|output[1]~2_combout\)))) # (!\controler|state.S_INCREMENT_X~q\ & ((\controler|state.S_DECREMENT_X~q\ & ((\datapath|x_adder|output[1]~2_combout\))) # 
-- (!\controler|state.S_DECREMENT_X~q\ & (\datapath|pcL|output[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_INCREMENT_X~q\,
	datab => \controler|state.S_DECREMENT_X~q\,
	datac => \datapath|pcL|output[1]~5_combout\,
	datad => \datapath|x_adder|output[1]~2_combout\,
	combout => \datapath|xL_mux|Mux6~2_combout\);

-- Location: LCCOMB_X28_Y22_N8
\datapath|xL_mux|Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|xL_mux|Mux7~2_combout\ = (\controler|state.S_INCREMENT_X~q\ & (((\datapath|x_adder|output[0]~0_combout\)))) # (!\controler|state.S_INCREMENT_X~q\ & ((\controler|state.S_DECREMENT_X~q\ & ((\datapath|x_adder|output[0]~0_combout\))) # 
-- (!\controler|state.S_DECREMENT_X~q\ & (\datapath|pcH|output[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_INCREMENT_X~q\,
	datab => \controler|state.S_DECREMENT_X~q\,
	datac => \datapath|pcH|output[0]~0_combout\,
	datad => \datapath|x_adder|output[0]~0_combout\,
	combout => \datapath|xL_mux|Mux7~2_combout\);

-- Location: LCCOMB_X21_Y25_N30
\controler|next_state.S_LOAD_ACC_RR~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_LOAD_ACC_RR~3_combout\ = (\controler|next_state.S_LOAD_ACC_RR~2_combout\ & (!\datapath|ir|output\(6) & !\datapath|ir|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|next_state.S_LOAD_ACC_RR~2_combout\,
	datab => \datapath|ir|output\(6),
	datad => \datapath|ir|output\(4),
	combout => \controler|next_state.S_LOAD_ACC_RR~3_combout\);

-- Location: LCCOMB_X19_Y22_N26
\datapath|alu|Mux6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux6~5_combout\ = (\datapath|d|output\(1) & ((\datapath|a|output\(1) $ (\datapath|alu|Mux4~17_combout\)) # (!\datapath|alu|Mux4~10_combout\))) # (!\datapath|d|output\(1) & ((\datapath|alu|Mux4~17_combout\ & ((\datapath|a|output\(1)))) # 
-- (!\datapath|alu|Mux4~17_combout\ & (!\datapath|alu|Mux4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|d|output\(1),
	datab => \datapath|alu|Mux4~10_combout\,
	datac => \datapath|a|output\(1),
	datad => \datapath|alu|Mux4~17_combout\,
	combout => \datapath|alu|Mux6~5_combout\);

-- Location: LCCOMB_X19_Y23_N30
\datapath|alu|Mux4~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux4~19_combout\ = (\datapath|d|output\(3) & ((\datapath|a|output\(3) $ (\datapath|alu|Mux4~17_combout\)) # (!\datapath|alu|Mux4~10_combout\))) # (!\datapath|d|output\(3) & ((\datapath|alu|Mux4~17_combout\ & ((\datapath|a|output\(3)))) # 
-- (!\datapath|alu|Mux4~17_combout\ & (!\datapath|alu|Mux4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mux4~10_combout\,
	datab => \datapath|d|output\(3),
	datac => \datapath|a|output\(3),
	datad => \datapath|alu|Mux4~17_combout\,
	combout => \datapath|alu|Mux4~19_combout\);

-- Location: LCCOMB_X23_Y23_N26
\datapath|alu|Mux2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux2~5_combout\ = (\datapath|d|output\(5) & ((\datapath|alu|Mux4~17_combout\ $ (\datapath|a|output\(5))) # (!\datapath|alu|Mux4~10_combout\))) # (!\datapath|d|output\(5) & ((\datapath|alu|Mux4~17_combout\ & ((\datapath|a|output\(5)))) # 
-- (!\datapath|alu|Mux4~17_combout\ & (!\datapath|alu|Mux4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mux4~17_combout\,
	datab => \datapath|alu|Mux4~10_combout\,
	datac => \datapath|d|output\(5),
	datad => \datapath|a|output\(5),
	combout => \datapath|alu|Mux2~5_combout\);

-- Location: LCCOMB_X23_Y23_N2
\datapath|alu|Mux2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux2~6_combout\ = (\datapath|alu|Mux2~5_combout\ & ((\datapath|alu|Mux4~17_combout\) # ((\datapath|a|output\(6)) # (\datapath|alu|Mux4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mux4~17_combout\,
	datab => \datapath|a|output\(6),
	datac => \datapath|alu|Mux2~5_combout\,
	datad => \datapath|alu|Mux4~10_combout\,
	combout => \datapath|alu|Mux2~6_combout\);

-- Location: LCCOMB_X20_Y22_N10
\controler|next_state.S_STORE_ACC_INDX~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_STORE_ACC_INDX~0_combout\ = (!\datapath|ir|output\(4) & (\controler|next_state.S_DECREMENT_X~0_combout\ & (\datapath|ir|output\(5) & \datapath|ir|output\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(4),
	datab => \controler|next_state.S_DECREMENT_X~0_combout\,
	datac => \datapath|ir|output\(5),
	datad => \datapath|ir|output\(7),
	combout => \controler|next_state.S_STORE_ACC_INDX~0_combout\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\switch[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(0),
	o => \switch[0]~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X24_Y23_N14
\datapath|spH|output[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|spH|output[3]~feeder_combout\ = \datapath|pcL|output[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|pcL|output[3]~6_combout\,
	combout => \datapath|spH|output[3]~feeder_combout\);

-- Location: LCCOMB_X26_Y22_N18
\datapath|spH|output[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|spH|output[1]~feeder_combout\ = \datapath|pcL|output[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|pcL|output[1]~5_combout\,
	combout => \datapath|spH|output[1]~feeder_combout\);

-- Location: LCCOMB_X26_Y22_N8
\datapath|arH|output[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|arH|output[1]~feeder_combout\ = \datapath|pcL|output[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|pcL|output[1]~5_combout\,
	combout => \datapath|arH|output[1]~feeder_combout\);

-- Location: LCCOMB_X29_Y23_N0
\datapath|pcL|output[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pcL|output[5]~feeder_combout\ = \datapath|pcL|output[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|pcL|output[5]~2_combout\,
	combout => \datapath|pcL|output[5]~feeder_combout\);

-- Location: IOOBUF_X26_Y29_N16
\led0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|output[0]~0_combout\,
	devoe => ww_devoe,
	o => \led0[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\led0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|output[1]~1_combout\,
	devoe => ww_devoe,
	o => \led0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\led0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|output[2]~2_combout\,
	devoe => ww_devoe,
	o => \led0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\led0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|output[3]~3_combout\,
	devoe => ww_devoe,
	o => \led0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\led0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|output[4]~4_combout\,
	devoe => ww_devoe,
	o => \led0[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\led0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|output[5]~5_combout\,
	devoe => ww_devoe,
	o => \led0[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\led0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|output[6]~6_combout\,
	devoe => ww_devoe,
	o => \led0[6]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\led0_dp~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led0_dp~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\led1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|output[0]~0_combout\,
	devoe => ww_devoe,
	o => \led1[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\led1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|output[1]~1_combout\,
	devoe => ww_devoe,
	o => \led1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\led1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|output[2]~2_combout\,
	devoe => ww_devoe,
	o => \led1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\led1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|output[3]~3_combout\,
	devoe => ww_devoe,
	o => \led1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\led1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|output[4]~4_combout\,
	devoe => ww_devoe,
	o => \led1[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\led1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|output[5]~5_combout\,
	devoe => ww_devoe,
	o => \led1[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\led1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|output[6]~6_combout\,
	devoe => ww_devoe,
	o => \led1[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\led1_dp~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led1_dp~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\led2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|output[0]~0_combout\,
	devoe => ww_devoe,
	o => \led2[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\led2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|output[1]~1_combout\,
	devoe => ww_devoe,
	o => \led2[1]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\led2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|output[2]~2_combout\,
	devoe => ww_devoe,
	o => \led2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\led2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|output[3]~3_combout\,
	devoe => ww_devoe,
	o => \led2[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\led2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|output[4]~4_combout\,
	devoe => ww_devoe,
	o => \led2[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\led2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|output[5]~5_combout\,
	devoe => ww_devoe,
	o => \led2[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\led2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|output[6]~6_combout\,
	devoe => ww_devoe,
	o => \led2[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\led2_dp~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led2_dp~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\led3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|output[0]~0_combout\,
	devoe => ww_devoe,
	o => \led3[0]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\led3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|output[1]~1_combout\,
	devoe => ww_devoe,
	o => \led3[1]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\led3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|output[2]~2_combout\,
	devoe => ww_devoe,
	o => \led3[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\led3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|output[3]~3_combout\,
	devoe => ww_devoe,
	o => \led3[3]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\led3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|output[4]~4_combout\,
	devoe => ww_devoe,
	o => \led3[4]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\led3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|output[5]~5_combout\,
	devoe => ww_devoe,
	o => \led3[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\led3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|output[6]~6_combout\,
	devoe => ww_devoe,
	o => \led3[6]~output_o\);

-- Location: IOOBUF_X39_Y29_N23
\led3_dp~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led3_dp~output_o\);

-- Location: IOIBUF_X0_Y25_N22
\switch[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(2),
	o => \switch[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\button[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(1),
	o => \button[1]~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X22_Y25_N7
\controler|state.S_LOAD_ACC_INDX_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_LOAD_ACC_INDX_4~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_LOAD_ACC_INDX_5~q\);

-- Location: FF_X23_Y25_N29
\controler|state.S_LOAD_ACC_INDX_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_LOAD_ACC_INDX_5~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_LOAD_ACC_INDX_6~q\);

-- Location: FF_X23_Y23_N29
\datapath|a|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[5]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|a|output\(5));

-- Location: LCCOMB_X29_Y23_N20
\datapath|pcL|output[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pcL|output[7]~feeder_combout\ = \datapath|pcL|output[7]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|pcL|output[7]~0_combout\,
	combout => \datapath|pcL|output[7]~feeder_combout\);

-- Location: LCCOMB_X22_Y25_N22
\controler|next_state.S_BRANCH_V~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_BRANCH_V~0_combout\ = (!\datapath|ir|output\(3) & (!\datapath|ir|output\(6) & \controler|next_state.S_STORE_ACC_ABS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(3),
	datab => \datapath|ir|output\(6),
	datad => \controler|next_state.S_STORE_ACC_ABS~0_combout\,
	combout => \controler|next_state.S_BRANCH_V~0_combout\);

-- Location: LCCOMB_X21_Y22_N6
\controler|next_state.S_BRANCH_NOT_S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_BRANCH_NOT_S~0_combout\ = (!\datapath|ir|output\(1) & (\datapath|ir|output\(0) & (\datapath|ir|output\(2) & \controler|next_state.S_BRANCH_V~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(1),
	datab => \datapath|ir|output\(0),
	datac => \datapath|ir|output\(2),
	datad => \controler|next_state.S_BRANCH_V~0_combout\,
	combout => \controler|next_state.S_BRANCH_NOT_S~0_combout\);

-- Location: FF_X21_Y22_N7
\controler|state.S_BRANCH_NOT_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_BRANCH_NOT_S~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_BRANCH_NOT_S~q\);

-- Location: LCCOMB_X21_Y22_N4
\controler|next_state.S_BRANCH_S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_BRANCH_S~0_combout\ = (\datapath|ir|output\(1) & (\datapath|ir|output\(0) & (!\datapath|ir|output\(2) & \controler|next_state.S_BRANCH_V~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(1),
	datab => \datapath|ir|output\(0),
	datac => \datapath|ir|output\(2),
	datad => \controler|next_state.S_BRANCH_V~0_combout\,
	combout => \controler|next_state.S_BRANCH_S~0_combout\);

-- Location: FF_X22_Y22_N3
\controler|state.S_BRANCH_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|next_state.S_BRANCH_S~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_BRANCH_S~q\);

-- Location: IOIBUF_X0_Y23_N8
\switch[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(3),
	o => \switch[3]~input_o\);

-- Location: LCCOMB_X24_Y24_N24
\input2[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input2[3]~3_combout\ = (\button[2]~input_o\ & (\switch[3]~input_o\ & (!\button[1]~input_o\ & \process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \switch[3]~input_o\,
	datac => \button[1]~input_o\,
	datad => \process_0~2_combout\,
	combout => \input2[3]~3_combout\);

-- Location: LCCOMB_X21_Y21_N24
\controler|next_state.S_STORE_ACC_ABS~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_STORE_ACC_ABS~2_combout\ = (\controler|next_state.S_STORE_ACC_ABS~1_combout\ & (\datapath|ir|output\(2) & (\datapath|ir|output\(6) & \controler|next_state.S_STORE_ACC_ABS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|next_state.S_STORE_ACC_ABS~1_combout\,
	datab => \datapath|ir|output\(2),
	datac => \datapath|ir|output\(6),
	datad => \controler|next_state.S_STORE_ACC_ABS~0_combout\,
	combout => \controler|next_state.S_STORE_ACC_ABS~2_combout\);

-- Location: FF_X22_Y22_N5
\controler|state.S_STORE_ACC_ABS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|next_state.S_STORE_ACC_ABS~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_STORE_ACC_ABS~q\);

-- Location: LCCOMB_X22_Y21_N24
\controler|state.S_STORE_ACC_ABS_2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|state.S_STORE_ACC_ABS_2~feeder_combout\ = \controler|state.S_STORE_ACC_ABS~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controler|state.S_STORE_ACC_ABS~q\,
	combout => \controler|state.S_STORE_ACC_ABS_2~feeder_combout\);

-- Location: FF_X22_Y21_N25
\controler|state.S_STORE_ACC_ABS_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|state.S_STORE_ACC_ABS_2~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_STORE_ACC_ABS_2~q\);

-- Location: LCCOMB_X22_Y21_N22
\controler|state.S_STORE_ACC_ABS_3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|state.S_STORE_ACC_ABS_3~feeder_combout\ = \controler|state.S_STORE_ACC_ABS_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controler|state.S_STORE_ACC_ABS_2~q\,
	combout => \controler|state.S_STORE_ACC_ABS_3~feeder_combout\);

-- Location: FF_X22_Y21_N23
\controler|state.S_STORE_ACC_ABS_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|state.S_STORE_ACC_ABS_3~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_STORE_ACC_ABS_3~q\);

-- Location: FF_X22_Y21_N29
\controler|state.S_STORE_ACC_ABS_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_STORE_ACC_ABS_3~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_STORE_ACC_ABS_4~q\);

-- Location: FF_X21_Y25_N15
\controler|state.S_STORE_ACC_ABS_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_STORE_ACC_ABS_4~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_STORE_ACC_ABS_5~q\);

-- Location: FF_X23_Y25_N5
\controler|state.S_STORE_ACC_ABS_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_STORE_ACC_ABS_5~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_STORE_ACC_ABS_6~q\);

-- Location: LCCOMB_X23_Y25_N26
\controler|state.S_CALL_3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|state.S_CALL_3~feeder_combout\ = \controler|state.S_CALL_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controler|state.S_CALL_2~q\,
	combout => \controler|state.S_CALL_3~feeder_combout\);

-- Location: FF_X23_Y25_N27
\controler|state.S_CALL_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|state.S_CALL_3~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_CALL_3~q\);

-- Location: FF_X23_Y25_N13
\controler|state.S_CALL_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_CALL_3~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_CALL_4~q\);

-- Location: LCCOMB_X23_Y25_N18
\controler|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr6~0_combout\ = (!\controler|state.S_STORE_ACC_INDX_5~q\ & (!\controler|state.S_STORE_ACC_ABS_6~q\ & (!\controler|state.S_CALL_2~q\ & !\controler|state.S_CALL_4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_STORE_ACC_INDX_5~q\,
	datab => \controler|state.S_STORE_ACC_ABS_6~q\,
	datac => \controler|state.S_CALL_2~q\,
	datad => \controler|state.S_CALL_4~q\,
	combout => \controler|WideOr6~0_combout\);

-- Location: FF_X24_Y24_N25
\datapath|inport2_reg|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \input2[3]~3_combout\,
	ena => \controler|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|inport2_reg|output\(3));

-- Location: LCCOMB_X21_Y22_N28
\controler|next_state.S_BRANCH_V~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_BRANCH_V~1_combout\ = (\datapath|ir|output\(1) & (\datapath|ir|output\(0) & (\datapath|ir|output\(2) & \controler|next_state.S_BRANCH_V~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(1),
	datab => \datapath|ir|output\(0),
	datac => \datapath|ir|output\(2),
	datad => \controler|next_state.S_BRANCH_V~0_combout\,
	combout => \controler|next_state.S_BRANCH_V~1_combout\);

-- Location: FF_X21_Y22_N29
\controler|state.S_BRANCH_V\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_BRANCH_V~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_BRANCH_V~q\);

-- Location: LCCOMB_X21_Y22_N18
\controler|next_state.S_BRANCH_NOT_V~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_BRANCH_NOT_V~0_combout\ = (\datapath|ir|output\(1) & (!\datapath|ir|output\(0) & (\datapath|ir|output\(2) & \controler|next_state.S_BRANCH_V~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(1),
	datab => \datapath|ir|output\(0),
	datac => \datapath|ir|output\(2),
	datad => \controler|next_state.S_BRANCH_V~0_combout\,
	combout => \controler|next_state.S_BRANCH_NOT_V~0_combout\);

-- Location: FF_X21_Y22_N19
\controler|state.S_BRANCH_NOT_V\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_BRANCH_NOT_V~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_BRANCH_NOT_V~q\);

-- Location: LCCOMB_X22_Y22_N0
\controler|Selector3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Selector3~4_combout\ = (\datapath|v_flag|output~q\ & (!\controler|state.S_BRANCH_V~q\)) # (!\datapath|v_flag|output~q\ & ((!\controler|state.S_BRANCH_NOT_V~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|v_flag|output~q\,
	datab => \controler|state.S_BRANCH_V~q\,
	datad => \controler|state.S_BRANCH_NOT_V~q\,
	combout => \controler|Selector3~4_combout\);

-- Location: LCCOMB_X21_Y22_N22
\controler|next_state.S_BRANCH_C~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_BRANCH_C~0_combout\ = (!\datapath|ir|output\(1) & (\datapath|ir|output\(0) & (!\datapath|ir|output\(2) & \controler|next_state.S_BRANCH_V~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(1),
	datab => \datapath|ir|output\(0),
	datac => \datapath|ir|output\(2),
	datad => \controler|next_state.S_BRANCH_V~0_combout\,
	combout => \controler|next_state.S_BRANCH_C~0_combout\);

-- Location: FF_X21_Y22_N23
\controler|state.S_BRANCH_C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_BRANCH_C~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_BRANCH_C~q\);

-- Location: LCCOMB_X22_Y25_N0
\controler|next_state.S_SET_CARRY~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_SET_CARRY~0_combout\ = (!\datapath|ir|output\(0) & (\controler|next_state.S_DECREMENT_X~0_combout\ & (!\datapath|ir|output\(2) & \controler|next_state.S_STORE_ACC_ABS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(0),
	datab => \controler|next_state.S_DECREMENT_X~0_combout\,
	datac => \datapath|ir|output\(2),
	datad => \controler|next_state.S_STORE_ACC_ABS~0_combout\,
	combout => \controler|next_state.S_SET_CARRY~0_combout\);

-- Location: FF_X20_Y25_N21
\controler|state.S_SET_CARRY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|next_state.S_SET_CARRY~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_SET_CARRY~q\);

-- Location: FF_X24_Y22_N17
\datapath|ir|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[4]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|state.S_FETCH_INTERNAL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|ir|output\(4));

-- Location: LCCOMB_X20_Y25_N24
\controler|next_state.S_SHIFT_LEFT_LOGICAL~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_SHIFT_LEFT_LOGICAL~0_combout\ = (\controler|next_state.S_ADD_CARRY~2_combout\ & (\datapath|ir|output\(4) & \datapath|ir|output\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|next_state.S_ADD_CARRY~2_combout\,
	datab => \datapath|ir|output\(4),
	datac => \datapath|ir|output\(6),
	combout => \controler|next_state.S_SHIFT_LEFT_LOGICAL~0_combout\);

-- Location: FF_X20_Y25_N25
\controler|state.S_SHIFT_LEFT_LOGICAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_SHIFT_LEFT_LOGICAL~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_SHIFT_LEFT_LOGICAL~q\);

-- Location: LCCOMB_X21_Y25_N12
\controler|next_state.S_COMPARE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_COMPARE~0_combout\ = (\controler|next_state.S_LOAD_ACC_RR~2_combout\ & (!\datapath|ir|output\(6) & \datapath|ir|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|next_state.S_LOAD_ACC_RR~2_combout\,
	datab => \datapath|ir|output\(6),
	datad => \datapath|ir|output\(4),
	combout => \controler|next_state.S_COMPARE~0_combout\);

-- Location: FF_X21_Y25_N13
\controler|state.S_COMPARE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_COMPARE~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_COMPARE~q\);

-- Location: LCCOMB_X21_Y24_N20
\controler|WideOr27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr27~0_combout\ = (\controler|state.S_CLEAR_CARRY~q\) # ((\controler|state.S_SET_CARRY~q\) # ((\controler|state.S_SHIFT_LEFT_LOGICAL~q\) # (\controler|state.S_COMPARE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_CLEAR_CARRY~q\,
	datab => \controler|state.S_SET_CARRY~q\,
	datac => \controler|state.S_SHIFT_LEFT_LOGICAL~q\,
	datad => \controler|state.S_COMPARE~q\,
	combout => \controler|WideOr27~0_combout\);

-- Location: LCCOMB_X21_Y21_N16
\controler|next_state.S_DECREMENT_ACC~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_DECREMENT_ACC~0_combout\ = (\controler|next_state.S_STORE_ACC_ABS~0_combout\ & (\datapath|ir|output\(6) & \datapath|ir|output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controler|next_state.S_STORE_ACC_ABS~0_combout\,
	datac => \datapath|ir|output\(6),
	datad => \datapath|ir|output\(3),
	combout => \controler|next_state.S_DECREMENT_ACC~0_combout\);

-- Location: LCCOMB_X21_Y25_N16
\controler|next_state.S_DECREMENT_ACC~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_DECREMENT_ACC~1_combout\ = (\datapath|ir|output\(1) & (!\datapath|ir|output\(2) & (\controler|next_state.S_DECREMENT_ACC~0_combout\ & \datapath|ir|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(1),
	datab => \datapath|ir|output\(2),
	datac => \controler|next_state.S_DECREMENT_ACC~0_combout\,
	datad => \datapath|ir|output\(0),
	combout => \controler|next_state.S_DECREMENT_ACC~1_combout\);

-- Location: FF_X21_Y25_N17
\controler|state.S_DECREMENT_ACC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_DECREMENT_ACC~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_DECREMENT_ACC~q\);

-- Location: LCCOMB_X21_Y21_N18
\controler|next_state.S_AND~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_AND~2_combout\ = (!\datapath|ir|output\(4) & !\datapath|ir|output\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|ir|output\(4),
	datac => \datapath|ir|output\(6),
	combout => \controler|next_state.S_AND~2_combout\);

-- Location: LCCOMB_X22_Y21_N26
\controler|next_state.S_LOAD_ACC_IMM~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_LOAD_ACC_IMM~1_combout\ = (\controler|next_state.S_LOAD_ACC_IMM~0_combout\ & (\controler|next_state.S_AND~2_combout\ & (\controler|next_state.S_BRANCH_NOT_Z~0_combout\ & !\datapath|ir|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|next_state.S_LOAD_ACC_IMM~0_combout\,
	datab => \controler|next_state.S_AND~2_combout\,
	datac => \controler|next_state.S_BRANCH_NOT_Z~0_combout\,
	datad => \datapath|ir|output\(3),
	combout => \controler|next_state.S_LOAD_ACC_IMM~1_combout\);

-- Location: FF_X22_Y21_N27
\controler|state.S_LOAD_ACC_IMM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_LOAD_ACC_IMM~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_LOAD_ACC_IMM~q\);

-- Location: FF_X22_Y21_N13
\controler|state.S_LOAD_ACC_IMM_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_LOAD_ACC_IMM~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_LOAD_ACC_IMM_2~q\);

-- Location: FF_X21_Y25_N27
\controler|state.S_LOAD_ACC_IMM_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_LOAD_ACC_IMM_2~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_LOAD_ACC_IMM_3~q\);

-- Location: FF_X22_Y21_N19
\controler|state.S_LOAD_ACC_ABS_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_LOAD_ACC_ABS_3~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_LOAD_ACC_ABS_4~q\);

-- Location: LCCOMB_X21_Y21_N6
\controler|state.S_LOAD_ACC_ABS_5~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|state.S_LOAD_ACC_ABS_5~feeder_combout\ = \controler|state.S_LOAD_ACC_ABS_4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controler|state.S_LOAD_ACC_ABS_4~q\,
	combout => \controler|state.S_LOAD_ACC_ABS_5~feeder_combout\);

-- Location: FF_X21_Y21_N7
\controler|state.S_LOAD_ACC_ABS_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|state.S_LOAD_ACC_ABS_5~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_LOAD_ACC_ABS_5~q\);

-- Location: FF_X22_Y21_N21
\controler|state.S_LOAD_ACC_ABS_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_LOAD_ACC_ABS_5~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_LOAD_ACC_ABS_6~q\);

-- Location: FF_X21_Y25_N21
\controler|state.S_LOAD_ACC_ABS_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_LOAD_ACC_ABS_6~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_LOAD_ACC_ABS_7~q\);

-- Location: LCCOMB_X21_Y25_N10
\controler|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr1~0_combout\ = (!\controler|state.S_DECREMENT_ACC~q\ & (!\controler|state.S_LOAD_ACC_IMM_3~q\ & !\controler|state.S_LOAD_ACC_ABS_7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controler|state.S_DECREMENT_ACC~q\,
	datac => \controler|state.S_LOAD_ACC_IMM_3~q\,
	datad => \controler|state.S_LOAD_ACC_ABS_7~q\,
	combout => \controler|WideOr1~0_combout\);

-- Location: LCCOMB_X21_Y25_N14
\controler|WideOr22~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr22~3_combout\ = (\controler|WideOr22~1_combout\ & (!\controler|state.S_COMPARE~q\ & (!\controler|state.S_STORE_ACC_ABS_5~q\ & \controler|WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr22~1_combout\,
	datab => \controler|state.S_COMPARE~q\,
	datac => \controler|state.S_STORE_ACC_ABS_5~q\,
	datad => \controler|WideOr1~0_combout\,
	combout => \controler|WideOr22~3_combout\);

-- Location: LCCOMB_X20_Y25_N22
\controler|next_state.S_SUBTRACT_BORROW~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_SUBTRACT_BORROW~0_combout\ = (\controler|next_state.S_ADD_CARRY~2_combout\ & (\datapath|ir|output\(4) & !\datapath|ir|output\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|next_state.S_ADD_CARRY~2_combout\,
	datab => \datapath|ir|output\(4),
	datac => \datapath|ir|output\(6),
	combout => \controler|next_state.S_SUBTRACT_BORROW~0_combout\);

-- Location: FF_X20_Y25_N23
\controler|state.S_SUBTRACT_BORROW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_SUBTRACT_BORROW~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_SUBTRACT_BORROW~q\);

-- Location: LCCOMB_X20_Y25_N16
\controler|next_state.S_ROTATE_RIGHT_CARRY~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_ROTATE_RIGHT_CARRY~0_combout\ = (\controler|next_state.S_ROTATE_LEFT_CARRY~0_combout\ & (!\datapath|ir|output\(4) & (\datapath|ir|output\(5) & \datapath|ir|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|next_state.S_ROTATE_LEFT_CARRY~0_combout\,
	datab => \datapath|ir|output\(4),
	datac => \datapath|ir|output\(5),
	datad => \datapath|ir|output\(6),
	combout => \controler|next_state.S_ROTATE_RIGHT_CARRY~0_combout\);

-- Location: FF_X20_Y25_N17
\controler|state.S_ROTATE_RIGHT_CARRY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_ROTATE_RIGHT_CARRY~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_ROTATE_RIGHT_CARRY~q\);

-- Location: LCCOMB_X20_Y22_N8
\controler|next_state.S_STORE_ACC_RR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_STORE_ACC_RR~0_combout\ = (!\datapath|ir|output\(3) & (\datapath|ir|output\(0) & (!\datapath|ir|output\(2) & !\datapath|ir|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(3),
	datab => \datapath|ir|output\(0),
	datac => \datapath|ir|output\(2),
	datad => \datapath|ir|output\(1),
	combout => \controler|next_state.S_STORE_ACC_RR~0_combout\);

-- Location: LCCOMB_X21_Y21_N20
\controler|next_state.S_OR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_OR~0_combout\ = (\controler|state.S_DECODE~q\ & (!\datapath|ir|output\(7) & (\controler|next_state.S_STORE_ACC_RR~0_combout\ & \datapath|ir|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_DECODE~q\,
	datab => \datapath|ir|output\(7),
	datac => \controler|next_state.S_STORE_ACC_RR~0_combout\,
	datad => \datapath|ir|output\(5),
	combout => \controler|next_state.S_OR~0_combout\);

-- Location: LCCOMB_X20_Y25_N4
\controler|next_state.S_SHIFT_RIGHT_LOGICAL~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_SHIFT_RIGHT_LOGICAL~0_combout\ = (\datapath|ir|output\(6) & (!\datapath|ir|output\(4) & \controler|next_state.S_OR~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(6),
	datac => \datapath|ir|output\(4),
	datad => \controler|next_state.S_OR~0_combout\,
	combout => \controler|next_state.S_SHIFT_RIGHT_LOGICAL~0_combout\);

-- Location: FF_X20_Y25_N15
\controler|state.S_SHIFT_RIGHT_LOGICAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|next_state.S_SHIFT_RIGHT_LOGICAL~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_SHIFT_RIGHT_LOGICAL~q\);

-- Location: LCCOMB_X20_Y25_N12
\controler|next_state.S_ROTATE_LEFT_CARRY~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_ROTATE_LEFT_CARRY~1_combout\ = (\controler|next_state.S_ROTATE_LEFT_CARRY~0_combout\ & (\datapath|ir|output\(4) & (!\datapath|ir|output\(5) & \datapath|ir|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|next_state.S_ROTATE_LEFT_CARRY~0_combout\,
	datab => \datapath|ir|output\(4),
	datac => \datapath|ir|output\(5),
	datad => \datapath|ir|output\(6),
	combout => \controler|next_state.S_ROTATE_LEFT_CARRY~1_combout\);

-- Location: FF_X20_Y25_N13
\controler|state.S_ROTATE_LEFT_CARRY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_ROTATE_LEFT_CARRY~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_ROTATE_LEFT_CARRY~q\);

-- Location: LCCOMB_X20_Y25_N14
\controler|WideOr21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr21~0_combout\ = (!\controler|state.S_ROTATE_RIGHT_CARRY~q\ & (!\controler|state.S_SHIFT_RIGHT_LOGICAL~q\ & !\controler|state.S_ROTATE_LEFT_CARRY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controler|state.S_ROTATE_RIGHT_CARRY~q\,
	datac => \controler|state.S_SHIFT_RIGHT_LOGICAL~q\,
	datad => \controler|state.S_ROTATE_LEFT_CARRY~q\,
	combout => \controler|WideOr21~0_combout\);

-- Location: LCCOMB_X21_Y25_N26
\controler|WideOr21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr21~1_combout\ = (!\controler|state.S_MULT_AD_2~q\ & (!\controler|state.S_DECREMENT_ACC~q\ & !\controler|state.S_COMPARE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_MULT_AD_2~q\,
	datab => \controler|state.S_DECREMENT_ACC~q\,
	datad => \controler|state.S_COMPARE~q\,
	combout => \controler|WideOr21~1_combout\);

-- Location: LCCOMB_X20_Y25_N26
\controler|WideOr21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr21~combout\ = (!\controler|state.S_ADD_CARRY~q\ & (!\controler|state.S_SUBTRACT_BORROW~q\ & (\controler|WideOr21~0_combout\ & \controler|WideOr21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_ADD_CARRY~q\,
	datab => \controler|state.S_SUBTRACT_BORROW~q\,
	datac => \controler|WideOr21~0_combout\,
	datad => \controler|WideOr21~1_combout\,
	combout => \controler|WideOr21~combout\);

-- Location: LCCOMB_X20_Y25_N10
\controler|next_state.S_XOR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_XOR~0_combout\ = (\controler|next_state.S_ADD_CARRY~2_combout\ & (!\datapath|ir|output\(4) & \datapath|ir|output\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|next_state.S_ADD_CARRY~2_combout\,
	datab => \datapath|ir|output\(4),
	datac => \datapath|ir|output\(6),
	combout => \controler|next_state.S_XOR~0_combout\);

-- Location: FF_X20_Y25_N11
\controler|state.S_XOR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_XOR~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_XOR~q\);

-- Location: LCCOMB_X21_Y25_N24
\controler|WideOr22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr22~0_combout\ = (\controler|state.S_LOAD_ACC_RR~q\) # ((\controler|state.S_SUBTRACT_BORROW~q\) # ((\controler|state.S_ROTATE_RIGHT_CARRY~q\) # (\controler|state.S_XOR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_LOAD_ACC_RR~q\,
	datab => \controler|state.S_SUBTRACT_BORROW~q\,
	datac => \controler|state.S_ROTATE_RIGHT_CARRY~q\,
	datad => \controler|state.S_XOR~q\,
	combout => \controler|WideOr22~0_combout\);

-- Location: LCCOMB_X21_Y24_N18
\datapath|alu|Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~38_combout\ = \controler|WideOr21~combout\ $ (((\controler|state.S_CLEAR_CARRY~q\) # ((\controler|WideOr22~0_combout\) # (!\controler|WideOr22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_CLEAR_CARRY~q\,
	datab => \controler|WideOr22~3_combout\,
	datac => \controler|WideOr21~combout\,
	datad => \controler|WideOr22~0_combout\,
	combout => \datapath|alu|Add2~38_combout\);

-- Location: FF_X23_Y23_N7
\datapath|a|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[7]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|a|output\(7));

-- Location: LCCOMB_X20_Y25_N30
\controler|next_state.S_ADD_CARRY~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_ADD_CARRY~3_combout\ = (\controler|next_state.S_ADD_CARRY~2_combout\ & (!\datapath|ir|output\(4) & !\datapath|ir|output\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|next_state.S_ADD_CARRY~2_combout\,
	datab => \datapath|ir|output\(4),
	datac => \datapath|ir|output\(6),
	combout => \controler|next_state.S_ADD_CARRY~3_combout\);

-- Location: FF_X20_Y25_N31
\controler|state.S_ADD_CARRY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_ADD_CARRY~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_ADD_CARRY~q\);

-- Location: LCCOMB_X20_Y25_N0
\controler|WideOr23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr23~0_combout\ = (\controler|state.S_OR~q\) # ((\controler|state.S_SET_CARRY~q\) # ((\controler|state.S_ADD_CARRY~q\) # (\controler|state.S_ROTATE_LEFT_CARRY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_OR~q\,
	datab => \controler|state.S_SET_CARRY~q\,
	datac => \controler|state.S_ADD_CARRY~q\,
	datad => \controler|state.S_ROTATE_LEFT_CARRY~q\,
	combout => \controler|WideOr23~0_combout\);

-- Location: LCCOMB_X21_Y25_N0
\controler|WideOr23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr23~combout\ = (\controler|WideOr23~0_combout\) # (!\controler|WideOr22~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controler|WideOr22~3_combout\,
	datad => \controler|WideOr23~0_combout\,
	combout => \controler|WideOr23~combout\);

-- Location: LCCOMB_X21_Y24_N16
\datapath|c_flag|output~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|c_flag|output~2_combout\ = (\controler|WideOr23~combout\ & (((!\datapath|alu|Add2~38_combout\ & \datapath|a|output\(7))))) # (!\controler|WideOr23~combout\ & (\datapath|c_flag|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|c_flag|output~1_combout\,
	datab => \datapath|alu|Add2~38_combout\,
	datac => \datapath|a|output\(7),
	datad => \controler|WideOr23~combout\,
	combout => \datapath|c_flag|output~2_combout\);

-- Location: LCCOMB_X21_Y24_N8
\datapath|c_flag|output~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|c_flag|output~0_combout\ = (!\controler|state.S_CLEAR_CARRY~q\ & (\controler|WideOr22~3_combout\ & (\controler|WideOr23~0_combout\ & !\controler|WideOr22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_CLEAR_CARRY~q\,
	datab => \controler|WideOr22~3_combout\,
	datac => \controler|WideOr23~0_combout\,
	datad => \controler|WideOr22~0_combout\,
	combout => \datapath|c_flag|output~0_combout\);

-- Location: LCCOMB_X21_Y23_N28
\controler|next_state.S_INCREMENT_ACC~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_INCREMENT_ACC~0_combout\ = (\controler|next_state.S_DECREMENT_ACC~0_combout\ & (\datapath|ir|output\(1) & (!\datapath|ir|output\(0) & !\datapath|ir|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|next_state.S_DECREMENT_ACC~0_combout\,
	datab => \datapath|ir|output\(1),
	datac => \datapath|ir|output\(0),
	datad => \datapath|ir|output\(2),
	combout => \controler|next_state.S_INCREMENT_ACC~0_combout\);

-- Location: FF_X21_Y23_N29
\controler|state.S_INCREMENT_ACC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_INCREMENT_ACC~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_INCREMENT_ACC~q\);

-- Location: LCCOMB_X20_Y25_N2
\controler|next_state.S_AND~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_AND~3_combout\ = (!\datapath|ir|output\(6) & (!\datapath|ir|output\(4) & \controler|next_state.S_OR~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(6),
	datac => \datapath|ir|output\(4),
	datad => \controler|next_state.S_OR~0_combout\,
	combout => \controler|next_state.S_AND~3_combout\);

-- Location: FF_X20_Y25_N29
\controler|state.S_AND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|next_state.S_AND~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_AND~q\);

-- Location: LCCOMB_X20_Y25_N6
\controler|next_state.S_OR~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_OR~1_combout\ = (!\datapath|ir|output\(6) & (\datapath|ir|output\(4) & \controler|next_state.S_OR~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(6),
	datac => \datapath|ir|output\(4),
	datad => \controler|next_state.S_OR~0_combout\,
	combout => \controler|next_state.S_OR~1_combout\);

-- Location: FF_X20_Y25_N7
\controler|state.S_OR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_OR~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_OR~q\);

-- Location: LCCOMB_X20_Y25_N28
\controler|WideOr1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr1~1_combout\ = (!\controler|state.S_XOR~q\ & (!\controler|state.S_SHIFT_LEFT_LOGICAL~q\ & (!\controler|state.S_AND~q\ & !\controler|state.S_OR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_XOR~q\,
	datab => \controler|state.S_SHIFT_LEFT_LOGICAL~q\,
	datac => \controler|state.S_AND~q\,
	datad => \controler|state.S_OR~q\,
	combout => \controler|WideOr1~1_combout\);

-- Location: LCCOMB_X21_Y23_N0
\controler|WideOr20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr20~0_combout\ = (!\controler|state.S_CLEAR_CARRY~q\ & (!\controler|state.S_MULT_AD_2~q\ & (!\controler|state.S_SET_CARRY~q\ & !\controler|state.S_MULT_AD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_CLEAR_CARRY~q\,
	datab => \controler|state.S_MULT_AD_2~q\,
	datac => \controler|state.S_SET_CARRY~q\,
	datad => \controler|state.S_MULT_AD~q\,
	combout => \controler|WideOr20~0_combout\);

-- Location: LCCOMB_X21_Y23_N20
\controler|WideOr20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr20~1_combout\ = ((\controler|state.S_INCREMENT_ACC~q\) # ((!\controler|WideOr20~0_combout\) # (!\controler|WideOr1~1_combout\))) # (!\controler|WideOr21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr21~0_combout\,
	datab => \controler|state.S_INCREMENT_ACC~q\,
	datac => \controler|WideOr1~1_combout\,
	datad => \controler|WideOr20~0_combout\,
	combout => \controler|WideOr20~1_combout\);

-- Location: FF_X23_Y23_N19
\datapath|d|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[7]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|d_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|d|output\(7));

-- Location: LCCOMB_X19_Y23_N22
\datapath|a|output[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|a|output[6]~feeder_combout\ = \datapath|pcL|output[6]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|pcL|output[6]~1_combout\,
	combout => \datapath|a|output[6]~feeder_combout\);

-- Location: FF_X19_Y23_N23
\datapath|a|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|a|output[6]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|a|output\(6));

-- Location: LCCOMB_X23_Y23_N30
\datapath|a|output[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|a|output[4]~feeder_combout\ = \datapath|pcL|output[4]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|pcL|output[4]~3_combout\,
	combout => \datapath|a|output[4]~feeder_combout\);

-- Location: FF_X23_Y23_N31
\datapath|a|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|a|output[4]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|a|output\(4));

-- Location: FF_X23_Y23_N17
\datapath|d|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[3]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|d_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|d|output\(3));

-- Location: FF_X20_Y23_N9
\datapath|a|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[1]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|a|output\(1));

-- Location: FF_X21_Y23_N9
\datapath|d|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcH|output[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|d_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|d|output\(0));

-- Location: LCCOMB_X23_Y23_N8
\datapath|alu|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add0~1_cout\ = CARRY(\datapath|c_flag|output~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|c_flag|output~q\,
	datad => VCC,
	cout => \datapath|alu|Add0~1_cout\);

-- Location: LCCOMB_X23_Y23_N10
\datapath|alu|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add0~2_combout\ = (\datapath|a|output\(0) & ((\datapath|d|output\(0) & (\datapath|alu|Add0~1_cout\ & VCC)) # (!\datapath|d|output\(0) & (!\datapath|alu|Add0~1_cout\)))) # (!\datapath|a|output\(0) & ((\datapath|d|output\(0) & 
-- (!\datapath|alu|Add0~1_cout\)) # (!\datapath|d|output\(0) & ((\datapath|alu|Add0~1_cout\) # (GND)))))
-- \datapath|alu|Add0~3\ = CARRY((\datapath|a|output\(0) & (!\datapath|d|output\(0) & !\datapath|alu|Add0~1_cout\)) # (!\datapath|a|output\(0) & ((!\datapath|alu|Add0~1_cout\) # (!\datapath|d|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|a|output\(0),
	datab => \datapath|d|output\(0),
	datad => VCC,
	cin => \datapath|alu|Add0~1_cout\,
	combout => \datapath|alu|Add0~2_combout\,
	cout => \datapath|alu|Add0~3\);

-- Location: LCCOMB_X23_Y23_N14
\datapath|alu|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add0~6_combout\ = (\datapath|d|output\(2) & ((\datapath|a|output\(2) & (\datapath|alu|Add0~5\ & VCC)) # (!\datapath|a|output\(2) & (!\datapath|alu|Add0~5\)))) # (!\datapath|d|output\(2) & ((\datapath|a|output\(2) & (!\datapath|alu|Add0~5\)) 
-- # (!\datapath|a|output\(2) & ((\datapath|alu|Add0~5\) # (GND)))))
-- \datapath|alu|Add0~7\ = CARRY((\datapath|d|output\(2) & (!\datapath|a|output\(2) & !\datapath|alu|Add0~5\)) # (!\datapath|d|output\(2) & ((!\datapath|alu|Add0~5\) # (!\datapath|a|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|d|output\(2),
	datab => \datapath|a|output\(2),
	datad => VCC,
	cin => \datapath|alu|Add0~5\,
	combout => \datapath|alu|Add0~6_combout\,
	cout => \datapath|alu|Add0~7\);

-- Location: LCCOMB_X23_Y23_N16
\datapath|alu|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add0~8_combout\ = ((\datapath|a|output\(3) $ (\datapath|d|output\(3) $ (!\datapath|alu|Add0~7\)))) # (GND)
-- \datapath|alu|Add0~9\ = CARRY((\datapath|a|output\(3) & ((\datapath|d|output\(3)) # (!\datapath|alu|Add0~7\))) # (!\datapath|a|output\(3) & (\datapath|d|output\(3) & !\datapath|alu|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|a|output\(3),
	datab => \datapath|d|output\(3),
	datad => VCC,
	cin => \datapath|alu|Add0~7\,
	combout => \datapath|alu|Add0~8_combout\,
	cout => \datapath|alu|Add0~9\);

-- Location: LCCOMB_X23_Y23_N18
\datapath|alu|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add0~10_combout\ = (\datapath|d|output\(4) & ((\datapath|a|output\(4) & (\datapath|alu|Add0~9\ & VCC)) # (!\datapath|a|output\(4) & (!\datapath|alu|Add0~9\)))) # (!\datapath|d|output\(4) & ((\datapath|a|output\(4) & (!\datapath|alu|Add0~9\)) 
-- # (!\datapath|a|output\(4) & ((\datapath|alu|Add0~9\) # (GND)))))
-- \datapath|alu|Add0~11\ = CARRY((\datapath|d|output\(4) & (!\datapath|a|output\(4) & !\datapath|alu|Add0~9\)) # (!\datapath|d|output\(4) & ((!\datapath|alu|Add0~9\) # (!\datapath|a|output\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|d|output\(4),
	datab => \datapath|a|output\(4),
	datad => VCC,
	cin => \datapath|alu|Add0~9\,
	combout => \datapath|alu|Add0~10_combout\,
	cout => \datapath|alu|Add0~11\);

-- Location: LCCOMB_X23_Y23_N20
\datapath|alu|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add0~12_combout\ = ((\datapath|d|output\(5) $ (\datapath|a|output\(5) $ (!\datapath|alu|Add0~11\)))) # (GND)
-- \datapath|alu|Add0~13\ = CARRY((\datapath|d|output\(5) & ((\datapath|a|output\(5)) # (!\datapath|alu|Add0~11\))) # (!\datapath|d|output\(5) & (\datapath|a|output\(5) & !\datapath|alu|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|d|output\(5),
	datab => \datapath|a|output\(5),
	datad => VCC,
	cin => \datapath|alu|Add0~11\,
	combout => \datapath|alu|Add0~12_combout\,
	cout => \datapath|alu|Add0~13\);

-- Location: LCCOMB_X23_Y23_N24
\datapath|alu|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add0~16_combout\ = \datapath|a|output\(7) $ (\datapath|alu|Add0~15\ $ (!\datapath|d|output\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|a|output\(7),
	datad => \datapath|d|output\(7),
	cin => \datapath|alu|Add0~15\,
	combout => \datapath|alu|Add0~16_combout\);

-- Location: FF_X23_Y23_N11
\datapath|a|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcH|output[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|a|output\(0));

-- Location: LCCOMB_X17_Y23_N16
\datapath|alu|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|LessThan0~1_cout\ = CARRY((!\datapath|alu|Add0~2_combout\ & \datapath|a|output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Add0~2_combout\,
	datab => \datapath|a|output\(0),
	datad => VCC,
	cout => \datapath|alu|LessThan0~1_cout\);

-- Location: LCCOMB_X17_Y23_N18
\datapath|alu|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|LessThan0~3_cout\ = CARRY((\datapath|alu|Add0~4_combout\ & ((!\datapath|alu|LessThan0~1_cout\) # (!\datapath|a|output\(1)))) # (!\datapath|alu|Add0~4_combout\ & (!\datapath|a|output\(1) & !\datapath|alu|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Add0~4_combout\,
	datab => \datapath|a|output\(1),
	datad => VCC,
	cin => \datapath|alu|LessThan0~1_cout\,
	cout => \datapath|alu|LessThan0~3_cout\);

-- Location: LCCOMB_X17_Y23_N20
\datapath|alu|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|LessThan0~5_cout\ = CARRY((\datapath|alu|Add0~6_combout\ & (\datapath|a|output\(2) & !\datapath|alu|LessThan0~3_cout\)) # (!\datapath|alu|Add0~6_combout\ & ((\datapath|a|output\(2)) # (!\datapath|alu|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Add0~6_combout\,
	datab => \datapath|a|output\(2),
	datad => VCC,
	cin => \datapath|alu|LessThan0~3_cout\,
	cout => \datapath|alu|LessThan0~5_cout\);

-- Location: LCCOMB_X17_Y23_N22
\datapath|alu|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|LessThan0~7_cout\ = CARRY((\datapath|a|output\(3) & (\datapath|alu|Add0~8_combout\ & !\datapath|alu|LessThan0~5_cout\)) # (!\datapath|a|output\(3) & ((\datapath|alu|Add0~8_combout\) # (!\datapath|alu|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|a|output\(3),
	datab => \datapath|alu|Add0~8_combout\,
	datad => VCC,
	cin => \datapath|alu|LessThan0~5_cout\,
	cout => \datapath|alu|LessThan0~7_cout\);

-- Location: LCCOMB_X17_Y23_N24
\datapath|alu|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|LessThan0~9_cout\ = CARRY((\datapath|alu|Add0~10_combout\ & (\datapath|a|output\(4) & !\datapath|alu|LessThan0~7_cout\)) # (!\datapath|alu|Add0~10_combout\ & ((\datapath|a|output\(4)) # (!\datapath|alu|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Add0~10_combout\,
	datab => \datapath|a|output\(4),
	datad => VCC,
	cin => \datapath|alu|LessThan0~7_cout\,
	cout => \datapath|alu|LessThan0~9_cout\);

-- Location: LCCOMB_X17_Y23_N26
\datapath|alu|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|LessThan0~11_cout\ = CARRY((\datapath|alu|Add0~12_combout\ & ((!\datapath|alu|LessThan0~9_cout\) # (!\datapath|a|output\(5)))) # (!\datapath|alu|Add0~12_combout\ & (!\datapath|a|output\(5) & !\datapath|alu|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Add0~12_combout\,
	datab => \datapath|a|output\(5),
	datad => VCC,
	cin => \datapath|alu|LessThan0~9_cout\,
	cout => \datapath|alu|LessThan0~11_cout\);

-- Location: LCCOMB_X17_Y23_N28
\datapath|alu|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|LessThan0~13_cout\ = CARRY((\datapath|alu|Add0~14_combout\ & (\datapath|a|output\(6) & !\datapath|alu|LessThan0~11_cout\)) # (!\datapath|alu|Add0~14_combout\ & ((\datapath|a|output\(6)) # (!\datapath|alu|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Add0~14_combout\,
	datab => \datapath|a|output\(6),
	datad => VCC,
	cin => \datapath|alu|LessThan0~11_cout\,
	cout => \datapath|alu|LessThan0~13_cout\);

-- Location: LCCOMB_X17_Y23_N30
\datapath|alu|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|LessThan0~14_combout\ = (\datapath|a|output\(7) & ((\datapath|alu|LessThan0~13_cout\) # (!\datapath|alu|Add0~16_combout\))) # (!\datapath|a|output\(7) & (\datapath|alu|LessThan0~13_cout\ & !\datapath|alu|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|a|output\(7),
	datad => \datapath|alu|Add0~16_combout\,
	cin => \datapath|alu|LessThan0~13_cout\,
	combout => \datapath|alu|LessThan0~14_combout\);

-- Location: LCCOMB_X24_Y23_N8
\datapath|d|output[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|d|output[6]~feeder_combout\ = \datapath|pcL|output[6]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|pcL|output[6]~1_combout\,
	combout => \datapath|d|output[6]~feeder_combout\);

-- Location: FF_X24_Y23_N9
\datapath|d|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|d|output[6]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|d_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|d|output\(6));

-- Location: FF_X23_Y23_N25
\datapath|d|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[2]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|d_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|d|output\(2));

-- Location: FF_X23_Y23_N13
\datapath|d|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[1]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|d_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|d|output\(1));

-- Location: LCCOMB_X17_Y23_N0
\datapath|alu|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|LessThan1~1_cout\ = CARRY((!\datapath|alu|Add0~2_combout\ & \datapath|d|output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Add0~2_combout\,
	datab => \datapath|d|output\(0),
	datad => VCC,
	cout => \datapath|alu|LessThan1~1_cout\);

-- Location: LCCOMB_X17_Y23_N2
\datapath|alu|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|LessThan1~3_cout\ = CARRY((\datapath|alu|Add0~4_combout\ & ((!\datapath|alu|LessThan1~1_cout\) # (!\datapath|d|output\(1)))) # (!\datapath|alu|Add0~4_combout\ & (!\datapath|d|output\(1) & !\datapath|alu|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Add0~4_combout\,
	datab => \datapath|d|output\(1),
	datad => VCC,
	cin => \datapath|alu|LessThan1~1_cout\,
	cout => \datapath|alu|LessThan1~3_cout\);

-- Location: LCCOMB_X17_Y23_N4
\datapath|alu|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|LessThan1~5_cout\ = CARRY((\datapath|alu|Add0~6_combout\ & (\datapath|d|output\(2) & !\datapath|alu|LessThan1~3_cout\)) # (!\datapath|alu|Add0~6_combout\ & ((\datapath|d|output\(2)) # (!\datapath|alu|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Add0~6_combout\,
	datab => \datapath|d|output\(2),
	datad => VCC,
	cin => \datapath|alu|LessThan1~3_cout\,
	cout => \datapath|alu|LessThan1~5_cout\);

-- Location: LCCOMB_X17_Y23_N6
\datapath|alu|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|LessThan1~7_cout\ = CARRY((\datapath|d|output\(3) & (\datapath|alu|Add0~8_combout\ & !\datapath|alu|LessThan1~5_cout\)) # (!\datapath|d|output\(3) & ((\datapath|alu|Add0~8_combout\) # (!\datapath|alu|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|d|output\(3),
	datab => \datapath|alu|Add0~8_combout\,
	datad => VCC,
	cin => \datapath|alu|LessThan1~5_cout\,
	cout => \datapath|alu|LessThan1~7_cout\);

-- Location: LCCOMB_X17_Y23_N8
\datapath|alu|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|LessThan1~9_cout\ = CARRY((\datapath|d|output\(4) & ((!\datapath|alu|LessThan1~7_cout\) # (!\datapath|alu|Add0~10_combout\))) # (!\datapath|d|output\(4) & (!\datapath|alu|Add0~10_combout\ & !\datapath|alu|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|d|output\(4),
	datab => \datapath|alu|Add0~10_combout\,
	datad => VCC,
	cin => \datapath|alu|LessThan1~7_cout\,
	cout => \datapath|alu|LessThan1~9_cout\);

-- Location: LCCOMB_X17_Y23_N10
\datapath|alu|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|LessThan1~11_cout\ = CARRY((\datapath|alu|Add0~12_combout\ & ((!\datapath|alu|LessThan1~9_cout\) # (!\datapath|d|output\(5)))) # (!\datapath|alu|Add0~12_combout\ & (!\datapath|d|output\(5) & !\datapath|alu|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Add0~12_combout\,
	datab => \datapath|d|output\(5),
	datad => VCC,
	cin => \datapath|alu|LessThan1~9_cout\,
	cout => \datapath|alu|LessThan1~11_cout\);

-- Location: LCCOMB_X17_Y23_N12
\datapath|alu|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|LessThan1~13_cout\ = CARRY((\datapath|alu|Add0~14_combout\ & (\datapath|d|output\(6) & !\datapath|alu|LessThan1~11_cout\)) # (!\datapath|alu|Add0~14_combout\ & ((\datapath|d|output\(6)) # (!\datapath|alu|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Add0~14_combout\,
	datab => \datapath|d|output\(6),
	datad => VCC,
	cin => \datapath|alu|LessThan1~11_cout\,
	cout => \datapath|alu|LessThan1~13_cout\);

-- Location: LCCOMB_X17_Y23_N14
\datapath|alu|LessThan1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|LessThan1~14_combout\ = (\datapath|d|output\(7) & ((\datapath|alu|LessThan1~13_cout\) # (!\datapath|alu|Add0~16_combout\))) # (!\datapath|d|output\(7) & (\datapath|alu|LessThan1~13_cout\ & !\datapath|alu|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|d|output\(7),
	datad => \datapath|alu|Add0~16_combout\,
	cin => \datapath|alu|LessThan1~13_cout\,
	combout => \datapath|alu|LessThan1~14_combout\);

-- Location: LCCOMB_X21_Y24_N6
\datapath|c_flag|output~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|c_flag|output~3_combout\ = (\datapath|alu|LessThan0~14_combout\) # (\datapath|alu|LessThan1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|alu|LessThan0~14_combout\,
	datad => \datapath|alu|LessThan1~14_combout\,
	combout => \datapath|c_flag|output~3_combout\);

-- Location: LCCOMB_X21_Y24_N24
\datapath|c_flag|output~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|c_flag|output~4_combout\ = (\controler|WideOr19~combout\ & (\controler|WideOr20~1_combout\ & (\controler|WideOr21~combout\))) # (!\controler|WideOr19~combout\ & (!\controler|WideOr20~1_combout\ & ((\datapath|c_flag|output~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr19~combout\,
	datab => \controler|WideOr20~1_combout\,
	datac => \controler|WideOr21~combout\,
	datad => \datapath|c_flag|output~3_combout\,
	combout => \datapath|c_flag|output~4_combout\);

-- Location: LCCOMB_X21_Y24_N10
\datapath|c_flag|output~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|c_flag|output~5_combout\ = (\datapath|alu|Mux4~18_combout\ & ((\datapath|c_flag|output~2_combout\) # ((\datapath|c_flag|output~0_combout\ & \datapath|c_flag|output~4_combout\)))) # (!\datapath|alu|Mux4~18_combout\ & 
-- (((\datapath|c_flag|output~0_combout\ & \datapath|c_flag|output~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mux4~18_combout\,
	datab => \datapath|c_flag|output~2_combout\,
	datac => \datapath|c_flag|output~0_combout\,
	datad => \datapath|c_flag|output~4_combout\,
	combout => \datapath|c_flag|output~5_combout\);

-- Location: LCCOMB_X21_Y24_N28
\datapath|c_flag|output~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|c_flag|output~6_combout\ = (\controler|WideOr21~2_combout\ & ((\controler|WideOr27~0_combout\ & ((\datapath|c_flag|output~5_combout\))) # (!\controler|WideOr27~0_combout\ & (\datapath|c_flag|output~q\)))) # (!\controler|WideOr21~2_combout\ & 
-- (((\datapath|c_flag|output~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr21~2_combout\,
	datab => \controler|WideOr27~0_combout\,
	datac => \datapath|c_flag|output~q\,
	datad => \datapath|c_flag|output~5_combout\,
	combout => \datapath|c_flag|output~6_combout\);

-- Location: FF_X21_Y24_N29
\datapath|c_flag|output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|c_flag|output~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|c_flag|output~q\);

-- Location: LCCOMB_X22_Y22_N22
\controler|Selector3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Selector3~5_combout\ = (\datapath|c_flag|output~q\ & ((!\controler|state.S_BRANCH_C~q\))) # (!\datapath|c_flag|output~q\ & (!\controler|state.S_BRANCH_NOT_C~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_BRANCH_NOT_C~q\,
	datab => \controler|state.S_BRANCH_C~q\,
	datad => \datapath|c_flag|output~q\,
	combout => \controler|Selector3~5_combout\);

-- Location: LCCOMB_X22_Y25_N10
\controler|next_state.S_BRANCH_Z~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_BRANCH_Z~0_combout\ = (\controler|next_state.S_BRANCH_V~0_combout\ & (\datapath|ir|output\(1) & (!\datapath|ir|output\(0) & !\datapath|ir|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|next_state.S_BRANCH_V~0_combout\,
	datab => \datapath|ir|output\(1),
	datac => \datapath|ir|output\(0),
	datad => \datapath|ir|output\(2),
	combout => \controler|next_state.S_BRANCH_Z~0_combout\);

-- Location: FF_X22_Y25_N11
\controler|state.S_BRANCH_Z\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_BRANCH_Z~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_BRANCH_Z~q\);

-- Location: LCCOMB_X21_Y23_N6
\controler|WideOr19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr19~combout\ = (\controler|state.S_INCREMENT_ACC~q\) # ((\controler|state.S_DECREMENT_ACC~q\) # (!\controler|WideOr20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controler|state.S_INCREMENT_ACC~q\,
	datac => \controler|state.S_DECREMENT_ACC~q\,
	datad => \controler|WideOr20~0_combout\,
	combout => \controler|WideOr19~combout\);

-- Location: LCCOMB_X21_Y23_N26
\controler|next_state.S_CLEAR_CARRY~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_CLEAR_CARRY~0_combout\ = (\controler|next_state.S_STORE_ACC_ABS~0_combout\ & (!\datapath|ir|output\(2) & (\datapath|ir|output\(0) & \controler|next_state.S_DECREMENT_X~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|next_state.S_STORE_ACC_ABS~0_combout\,
	datab => \datapath|ir|output\(2),
	datac => \datapath|ir|output\(0),
	datad => \controler|next_state.S_DECREMENT_X~0_combout\,
	combout => \controler|next_state.S_CLEAR_CARRY~0_combout\);

-- Location: FF_X21_Y23_N27
\controler|state.S_CLEAR_CARRY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_CLEAR_CARRY~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_CLEAR_CARRY~q\);

-- Location: LCCOMB_X21_Y25_N4
\controler|WideOr22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr22~2_combout\ = (\controler|state.S_STORE_ACC_ABS_5~q\) # ((\controler|state.S_COMPARE~q\) # (\controler|state.S_CLEAR_CARRY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_STORE_ACC_ABS_5~q\,
	datac => \controler|state.S_COMPARE~q\,
	datad => \controler|state.S_CLEAR_CARRY~q\,
	combout => \controler|WideOr22~2_combout\);

-- Location: LCCOMB_X21_Y25_N18
\controler|WideOr22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr22~combout\ = (((\controler|WideOr22~2_combout\) # (\controler|WideOr22~0_combout\)) # (!\controler|WideOr1~0_combout\)) # (!\controler|WideOr22~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr22~1_combout\,
	datab => \controler|WideOr1~0_combout\,
	datac => \controler|WideOr22~2_combout\,
	datad => \controler|WideOr22~0_combout\,
	combout => \controler|WideOr22~combout\);

-- Location: FF_X19_Y23_N31
\datapath|a|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[3]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|a|output\(3));

-- Location: FF_X19_Y23_N13
\datapath|d|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[4]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|d_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|d|output\(4));

-- Location: DSPMULT_X18_Y23_N0
\datapath|alu|Mult0|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \datapath|alu|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \datapath|alu|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \datapath|alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X22_Y23_N24
\datapath|alu|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux0~4_combout\ = (\controler|WideOr21~combout\ & (\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT7\)) # (!\controler|WideOr21~combout\ & ((\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr21~combout\,
	datab => \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT15\,
	combout => \datapath|alu|Mux0~4_combout\);

-- Location: LCCOMB_X22_Y23_N0
\datapath|alu|Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux0~5_combout\ = (\controler|WideOr23~combout\ & ((\controler|WideOr22~combout\ & ((\datapath|alu|Mux0~4_combout\))) # (!\controler|WideOr22~combout\ & (\datapath|a|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|a|output\(7),
	datab => \controler|WideOr22~combout\,
	datac => \controler|WideOr23~combout\,
	datad => \datapath|alu|Mux0~4_combout\,
	combout => \datapath|alu|Mux0~5_combout\);

-- Location: LCCOMB_X22_Y23_N22
\datapath|alu|Mux0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux0~7_combout\ = (\controler|WideOr20~1_combout\ & ((\datapath|alu|Mux0~6_combout\) # (\datapath|alu|Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mux0~6_combout\,
	datab => \controler|WideOr20~1_combout\,
	datad => \datapath|alu|Mux0~5_combout\,
	combout => \datapath|alu|Mux0~7_combout\);

-- Location: LCCOMB_X22_Y23_N8
\datapath|alu|Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~34_combout\ = (\controler|WideOr21~combout\ & ((\controler|WideOr22~combout\ & (\datapath|a|output\(7))) # (!\controler|WideOr22~combout\ & ((\datapath|d|output\(7)))))) # (!\controler|WideOr21~combout\ & 
-- (((\controler|WideOr22~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|a|output\(7),
	datab => \datapath|d|output\(7),
	datac => \controler|WideOr21~combout\,
	datad => \controler|WideOr22~combout\,
	combout => \datapath|alu|Add2~34_combout\);

-- Location: LCCOMB_X20_Y23_N10
\datapath|alu|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~2_combout\ = (\controler|WideOr19~combout\ & (!\controler|WideOr21~combout\ & (\controler|WideOr22~combout\ & \controler|WideOr23~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr19~combout\,
	datab => \controler|WideOr21~combout\,
	datac => \controler|WideOr22~combout\,
	datad => \controler|WideOr23~combout\,
	combout => \datapath|alu|Add2~2_combout\);

-- Location: LCCOMB_X21_Y23_N2
\datapath|alu|Add2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~3_combout\ = (!\controler|state.S_INCREMENT_ACC~q\ & (\controler|WideOr20~0_combout\ & (!\controler|state.S_DECREMENT_ACC~q\ & !\controler|WideOr20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_INCREMENT_ACC~q\,
	datab => \controler|WideOr20~0_combout\,
	datac => \controler|state.S_DECREMENT_ACC~q\,
	datad => \controler|WideOr20~1_combout\,
	combout => \datapath|alu|Add2~3_combout\);

-- Location: LCCOMB_X19_Y23_N12
\datapath|alu|Add2~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~25_combout\ = (\datapath|alu|Add2~2_combout\) # ((!\datapath|d|output\(7) & \datapath|alu|Add2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|d|output\(7),
	datab => \datapath|alu|Add2~2_combout\,
	datad => \datapath|alu|Add2~3_combout\,
	combout => \datapath|alu|Add2~25_combout\);

-- Location: LCCOMB_X20_Y23_N8
\datapath|alu|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~26_combout\ = (\datapath|alu|Add2~2_combout\) # ((\datapath|alu|Add2~3_combout\ & !\datapath|d|output\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Add2~3_combout\,
	datab => \datapath|d|output\(6),
	datad => \datapath|alu|Add2~2_combout\,
	combout => \datapath|alu|Add2~26_combout\);

-- Location: LCCOMB_X20_Y23_N4
\datapath|alu|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~4_combout\ = (\datapath|alu|Add2~2_combout\) # ((\datapath|alu|Add2~3_combout\ & !\datapath|d|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Add2~3_combout\,
	datac => \datapath|d|output\(4),
	datad => \datapath|alu|Add2~2_combout\,
	combout => \datapath|alu|Add2~4_combout\);

-- Location: LCCOMB_X20_Y23_N0
\datapath|alu|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~6_combout\ = (\datapath|alu|Add2~2_combout\) # ((\datapath|alu|Add2~3_combout\ & !\datapath|d|output\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Add2~3_combout\,
	datac => \datapath|d|output\(2),
	datad => \datapath|alu|Add2~2_combout\,
	combout => \datapath|alu|Add2~6_combout\);

-- Location: LCCOMB_X20_Y23_N2
\datapath|alu|Add2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~9_combout\ = (!\controler|WideOr21~combout\ & (\datapath|c_flag|output~q\ & (\controler|WideOr22~combout\ & \datapath|alu|Add2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr21~combout\,
	datab => \datapath|c_flag|output~q\,
	datac => \controler|WideOr22~combout\,
	datad => \datapath|alu|Add2~3_combout\,
	combout => \datapath|alu|Add2~9_combout\);

-- Location: LCCOMB_X20_Y23_N12
\datapath|alu|Add2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~11_cout\ = CARRY((\datapath|alu|Add2~3_combout\ & \datapath|alu|Add2~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Add2~3_combout\,
	datab => \datapath|alu|Add2~9_combout\,
	datad => VCC,
	cout => \datapath|alu|Add2~11_cout\);

-- Location: LCCOMB_X20_Y23_N14
\datapath|alu|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~12_combout\ = (\datapath|alu|Add2~8_combout\ & ((\datapath|a|output\(0) & (\datapath|alu|Add2~11_cout\ & VCC)) # (!\datapath|a|output\(0) & (!\datapath|alu|Add2~11_cout\)))) # (!\datapath|alu|Add2~8_combout\ & ((\datapath|a|output\(0) & 
-- (!\datapath|alu|Add2~11_cout\)) # (!\datapath|a|output\(0) & ((\datapath|alu|Add2~11_cout\) # (GND)))))
-- \datapath|alu|Add2~13\ = CARRY((\datapath|alu|Add2~8_combout\ & (!\datapath|a|output\(0) & !\datapath|alu|Add2~11_cout\)) # (!\datapath|alu|Add2~8_combout\ & ((!\datapath|alu|Add2~11_cout\) # (!\datapath|a|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Add2~8_combout\,
	datab => \datapath|a|output\(0),
	datad => VCC,
	cin => \datapath|alu|Add2~11_cout\,
	combout => \datapath|alu|Add2~12_combout\,
	cout => \datapath|alu|Add2~13\);

-- Location: LCCOMB_X20_Y23_N16
\datapath|alu|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~14_combout\ = ((\datapath|alu|Add2~7_combout\ $ (\datapath|a|output\(1) $ (!\datapath|alu|Add2~13\)))) # (GND)
-- \datapath|alu|Add2~15\ = CARRY((\datapath|alu|Add2~7_combout\ & ((\datapath|a|output\(1)) # (!\datapath|alu|Add2~13\))) # (!\datapath|alu|Add2~7_combout\ & (\datapath|a|output\(1) & !\datapath|alu|Add2~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Add2~7_combout\,
	datab => \datapath|a|output\(1),
	datad => VCC,
	cin => \datapath|alu|Add2~13\,
	combout => \datapath|alu|Add2~14_combout\,
	cout => \datapath|alu|Add2~15\);

-- Location: LCCOMB_X20_Y23_N18
\datapath|alu|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~16_combout\ = (\datapath|a|output\(2) & ((\datapath|alu|Add2~6_combout\ & (\datapath|alu|Add2~15\ & VCC)) # (!\datapath|alu|Add2~6_combout\ & (!\datapath|alu|Add2~15\)))) # (!\datapath|a|output\(2) & ((\datapath|alu|Add2~6_combout\ & 
-- (!\datapath|alu|Add2~15\)) # (!\datapath|alu|Add2~6_combout\ & ((\datapath|alu|Add2~15\) # (GND)))))
-- \datapath|alu|Add2~17\ = CARRY((\datapath|a|output\(2) & (!\datapath|alu|Add2~6_combout\ & !\datapath|alu|Add2~15\)) # (!\datapath|a|output\(2) & ((!\datapath|alu|Add2~15\) # (!\datapath|alu|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|a|output\(2),
	datab => \datapath|alu|Add2~6_combout\,
	datad => VCC,
	cin => \datapath|alu|Add2~15\,
	combout => \datapath|alu|Add2~16_combout\,
	cout => \datapath|alu|Add2~17\);

-- Location: LCCOMB_X20_Y23_N20
\datapath|alu|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~18_combout\ = ((\datapath|alu|Add2~5_combout\ $ (\datapath|a|output\(3) $ (!\datapath|alu|Add2~17\)))) # (GND)
-- \datapath|alu|Add2~19\ = CARRY((\datapath|alu|Add2~5_combout\ & ((\datapath|a|output\(3)) # (!\datapath|alu|Add2~17\))) # (!\datapath|alu|Add2~5_combout\ & (\datapath|a|output\(3) & !\datapath|alu|Add2~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Add2~5_combout\,
	datab => \datapath|a|output\(3),
	datad => VCC,
	cin => \datapath|alu|Add2~17\,
	combout => \datapath|alu|Add2~18_combout\,
	cout => \datapath|alu|Add2~19\);

-- Location: LCCOMB_X20_Y23_N22
\datapath|alu|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~20_combout\ = (\datapath|a|output\(4) & ((\datapath|alu|Add2~4_combout\ & (\datapath|alu|Add2~19\ & VCC)) # (!\datapath|alu|Add2~4_combout\ & (!\datapath|alu|Add2~19\)))) # (!\datapath|a|output\(4) & ((\datapath|alu|Add2~4_combout\ & 
-- (!\datapath|alu|Add2~19\)) # (!\datapath|alu|Add2~4_combout\ & ((\datapath|alu|Add2~19\) # (GND)))))
-- \datapath|alu|Add2~21\ = CARRY((\datapath|a|output\(4) & (!\datapath|alu|Add2~4_combout\ & !\datapath|alu|Add2~19\)) # (!\datapath|a|output\(4) & ((!\datapath|alu|Add2~19\) # (!\datapath|alu|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|a|output\(4),
	datab => \datapath|alu|Add2~4_combout\,
	datad => VCC,
	cin => \datapath|alu|Add2~19\,
	combout => \datapath|alu|Add2~20_combout\,
	cout => \datapath|alu|Add2~21\);

-- Location: LCCOMB_X20_Y23_N24
\datapath|alu|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~28_combout\ = ((\datapath|alu|Add2~27_combout\ $ (\datapath|a|output\(5) $ (!\datapath|alu|Add2~21\)))) # (GND)
-- \datapath|alu|Add2~29\ = CARRY((\datapath|alu|Add2~27_combout\ & ((\datapath|a|output\(5)) # (!\datapath|alu|Add2~21\))) # (!\datapath|alu|Add2~27_combout\ & (\datapath|a|output\(5) & !\datapath|alu|Add2~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Add2~27_combout\,
	datab => \datapath|a|output\(5),
	datad => VCC,
	cin => \datapath|alu|Add2~21\,
	combout => \datapath|alu|Add2~28_combout\,
	cout => \datapath|alu|Add2~29\);

-- Location: LCCOMB_X20_Y23_N26
\datapath|alu|Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~30_combout\ = (\datapath|a|output\(6) & ((\datapath|alu|Add2~26_combout\ & (\datapath|alu|Add2~29\ & VCC)) # (!\datapath|alu|Add2~26_combout\ & (!\datapath|alu|Add2~29\)))) # (!\datapath|a|output\(6) & ((\datapath|alu|Add2~26_combout\ & 
-- (!\datapath|alu|Add2~29\)) # (!\datapath|alu|Add2~26_combout\ & ((\datapath|alu|Add2~29\) # (GND)))))
-- \datapath|alu|Add2~31\ = CARRY((\datapath|a|output\(6) & (!\datapath|alu|Add2~26_combout\ & !\datapath|alu|Add2~29\)) # (!\datapath|a|output\(6) & ((!\datapath|alu|Add2~29\) # (!\datapath|alu|Add2~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|a|output\(6),
	datab => \datapath|alu|Add2~26_combout\,
	datad => VCC,
	cin => \datapath|alu|Add2~29\,
	combout => \datapath|alu|Add2~30_combout\,
	cout => \datapath|alu|Add2~31\);

-- Location: LCCOMB_X20_Y23_N28
\datapath|alu|Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~32_combout\ = \datapath|a|output\(7) $ (\datapath|alu|Add2~31\ $ (!\datapath|alu|Add2~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|a|output\(7),
	datad => \datapath|alu|Add2~25_combout\,
	cin => \datapath|alu|Add2~31\,
	combout => \datapath|alu|Add2~32_combout\);

-- Location: LCCOMB_X22_Y23_N14
\datapath|alu|Add2~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~35_combout\ = (\controler|WideOr21~combout\ & (((\datapath|alu|Add2~34_combout\)))) # (!\controler|WideOr21~combout\ & ((\datapath|alu|Add2~34_combout\ & ((\datapath|alu|Add2~32_combout\))) # (!\datapath|alu|Add2~34_combout\ & 
-- (\datapath|alu|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr21~combout\,
	datab => \datapath|alu|Add0~16_combout\,
	datac => \datapath|alu|Add2~34_combout\,
	datad => \datapath|alu|Add2~32_combout\,
	combout => \datapath|alu|Add2~35_combout\);

-- Location: LCCOMB_X22_Y23_N20
\datapath|alu|Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~36_combout\ = (\controler|WideOr21~combout\ & (((\datapath|d|output\(7))))) # (!\controler|WideOr21~combout\ & (\datapath|a|output\(7) & (!\controler|WideOr22~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|a|output\(7),
	datab => \controler|WideOr22~combout\,
	datac => \controler|WideOr21~combout\,
	datad => \datapath|d|output\(7),
	combout => \datapath|alu|Add2~36_combout\);

-- Location: LCCOMB_X22_Y23_N2
\datapath|alu|Add2~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~37_combout\ = (\datapath|alu|Add2~36_combout\) # ((!\controler|WideOr21~combout\ & (\controler|WideOr22~combout\ & \datapath|alu|Add2~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr21~combout\,
	datab => \datapath|alu|Add2~36_combout\,
	datac => \controler|WideOr22~combout\,
	datad => \datapath|alu|Add2~32_combout\,
	combout => \datapath|alu|Add2~37_combout\);

-- Location: LCCOMB_X22_Y23_N4
\datapath|alu|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux0~2_combout\ = (\controler|WideOr23~combout\ & ((\controler|WideOr20~1_combout\) # ((\datapath|alu|Add2~35_combout\)))) # (!\controler|WideOr23~combout\ & (!\controler|WideOr20~1_combout\ & ((\datapath|alu|Add2~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr23~combout\,
	datab => \controler|WideOr20~1_combout\,
	datac => \datapath|alu|Add2~35_combout\,
	datad => \datapath|alu|Add2~37_combout\,
	combout => \datapath|alu|Mux0~2_combout\);

-- Location: LCCOMB_X22_Y23_N10
\datapath|alu|Add2~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~40_combout\ = (\datapath|alu|Add2~39_combout\ & (((\datapath|alu|Add2~32_combout\) # (!\controler|WideOr22~combout\)))) # (!\datapath|alu|Add2~39_combout\ & (\datapath|d|output\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Add2~39_combout\,
	datab => \datapath|d|output\(7),
	datac => \controler|WideOr22~combout\,
	datad => \datapath|alu|Add2~32_combout\,
	combout => \datapath|alu|Add2~40_combout\);

-- Location: LCCOMB_X22_Y23_N16
\datapath|alu|Add2~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~41_combout\ = (\datapath|alu|Add2~38_combout\ & ((\datapath|alu|Add2~40_combout\))) # (!\datapath|alu|Add2~38_combout\ & (\datapath|a|output\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|a|output\(6),
	datac => \datapath|alu|Add2~38_combout\,
	datad => \datapath|alu|Add2~40_combout\,
	combout => \datapath|alu|Add2~41_combout\);

-- Location: LCCOMB_X22_Y23_N6
\datapath|alu|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux0~3_combout\ = (\controler|WideOr20~1_combout\ & ((\datapath|alu|Mux0~2_combout\ & ((\datapath|alu|Add2~41_combout\))) # (!\datapath|alu|Mux0~2_combout\ & (\datapath|alu|Add2~24_combout\)))) # (!\controler|WideOr20~1_combout\ & 
-- (((\datapath|alu|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Add2~24_combout\,
	datab => \controler|WideOr20~1_combout\,
	datac => \datapath|alu|Mux0~2_combout\,
	datad => \datapath|alu|Add2~41_combout\,
	combout => \datapath|alu|Mux0~3_combout\);

-- Location: LCCOMB_X22_Y23_N28
\datapath|alu|Mux0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux0~8_combout\ = (\controler|WideOr19~combout\ & ((\datapath|alu|Mux0~9_combout\) # ((\datapath|alu|Mux0~7_combout\)))) # (!\controler|WideOr19~combout\ & (((\datapath|alu|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mux0~9_combout\,
	datab => \controler|WideOr19~combout\,
	datac => \datapath|alu|Mux0~7_combout\,
	datad => \datapath|alu|Mux0~3_combout\,
	combout => \datapath|alu|Mux0~8_combout\);

-- Location: LCCOMB_X21_Y25_N20
\controler|WideOr1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr1~3_combout\ = (!\controler|state.S_LOAD_ACC_RR~q\ & (!\controler|state.S_DECREMENT_ACC~q\ & (!\controler|state.S_LOAD_ACC_ABS_7~q\ & !\controler|state.S_LOAD_ACC_IMM_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_LOAD_ACC_RR~q\,
	datab => \controler|state.S_DECREMENT_ACC~q\,
	datac => \controler|state.S_LOAD_ACC_ABS_7~q\,
	datad => \controler|state.S_LOAD_ACC_IMM_3~q\,
	combout => \controler|WideOr1~3_combout\);

-- Location: LCCOMB_X20_Y25_N20
\controler|WideOr21~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr21~2_combout\ = (!\controler|state.S_ADD_CARRY~q\ & (!\controler|state.S_SUBTRACT_BORROW~q\ & \controler|WideOr21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_ADD_CARRY~q\,
	datab => \controler|state.S_SUBTRACT_BORROW~q\,
	datad => \controler|WideOr21~0_combout\,
	combout => \controler|WideOr21~2_combout\);

-- Location: LCCOMB_X20_Y25_N8
\controler|WideOr1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr1~4_combout\ = (!\controler|state.S_INCREMENT_ACC~q\ & (\controler|WideOr1~3_combout\ & (\controler|WideOr21~2_combout\ & \controler|WideOr1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_INCREMENT_ACC~q\,
	datab => \controler|WideOr1~3_combout\,
	datac => \controler|WideOr21~2_combout\,
	datad => \controler|WideOr1~1_combout\,
	combout => \controler|WideOr1~4_combout\);

-- Location: LCCOMB_X21_Y24_N4
\controler|WideOr25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr25~combout\ = (\controler|state.S_COMPARE~q\) # (!\controler|WideOr1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controler|WideOr1~4_combout\,
	datad => \controler|state.S_COMPARE~q\,
	combout => \controler|WideOr25~combout\);

-- Location: FF_X22_Y23_N29
\datapath|s_flag|output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|alu|Mux0~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|s_flag|output~q\);

-- Location: LCCOMB_X22_Y22_N28
\controler|Selector3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Selector3~3_combout\ = (\datapath|z_flag|output~q\ & (!\controler|state.S_BRANCH_Z~q\ & ((!\datapath|s_flag|output~q\) # (!\controler|state.S_BRANCH_S~q\)))) # (!\datapath|z_flag|output~q\ & (((!\datapath|s_flag|output~q\)) # 
-- (!\controler|state.S_BRANCH_S~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|z_flag|output~q\,
	datab => \controler|state.S_BRANCH_S~q\,
	datac => \controler|state.S_BRANCH_Z~q\,
	datad => \datapath|s_flag|output~q\,
	combout => \controler|Selector3~3_combout\);

-- Location: LCCOMB_X22_Y22_N20
\controler|Selector3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Selector3~6_combout\ = (((!\controler|Selector3~3_combout\) # (!\controler|Selector3~5_combout\)) # (!\controler|Selector3~4_combout\)) # (!\controler|Selector3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|Selector3~2_combout\,
	datab => \controler|Selector3~4_combout\,
	datac => \controler|Selector3~5_combout\,
	datad => \controler|Selector3~3_combout\,
	combout => \controler|Selector3~6_combout\);

-- Location: LCCOMB_X22_Y21_N8
\controler|state.S_BRANCH_TAKEN~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|state.S_BRANCH_TAKEN~feeder_combout\ = \controler|Selector3~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controler|Selector3~6_combout\,
	combout => \controler|state.S_BRANCH_TAKEN~feeder_combout\);

-- Location: FF_X22_Y21_N9
\controler|state.S_BRANCH_TAKEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|state.S_BRANCH_TAKEN~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_BRANCH_TAKEN~q\);

-- Location: LCCOMB_X22_Y21_N20
\controler|WideOr9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr9~3_combout\ = (!\controler|state.S_LOAD_ACC_IMM_2~q\ & (!\controler|state.S_BRANCH_TAKEN~q\ & (!\controler|state.S_LOAD_ACC_ABS_6~q\ & !\controler|state.S_STORE_ACC_ABS_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_LOAD_ACC_IMM_2~q\,
	datab => \controler|state.S_BRANCH_TAKEN~q\,
	datac => \controler|state.S_LOAD_ACC_ABS_6~q\,
	datad => \controler|state.S_STORE_ACC_ABS_2~q\,
	combout => \controler|WideOr9~3_combout\);

-- Location: LCCOMB_X21_Y22_N2
\controler|next_state.S_LOAD_X_IMM~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_LOAD_X_IMM~0_combout\ = (\controler|Mux0~0_combout\ & (\controler|next_state.S_CALL~0_combout\ & (\datapath|ir|output\(1) & !\datapath|ir|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|Mux0~0_combout\,
	datab => \controler|next_state.S_CALL~0_combout\,
	datac => \datapath|ir|output\(1),
	datad => \datapath|ir|output\(0),
	combout => \controler|next_state.S_LOAD_X_IMM~0_combout\);

-- Location: FF_X21_Y22_N3
\controler|state.S_LOAD_X_IMM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_LOAD_X_IMM~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_LOAD_X_IMM~q\);

-- Location: FF_X22_Y22_N19
\controler|state.S_LOAD_X_IMM_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_LOAD_X_IMM~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_LOAD_X_IMM_2~q\);

-- Location: FF_X22_Y21_N11
\controler|state.S_LOAD_X_IMM_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_LOAD_X_IMM_2~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_LOAD_X_IMM_3~q\);

-- Location: LCCOMB_X22_Y21_N28
\controler|WideOr9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr9~0_combout\ = (!\controler|state.S_BRANCH_TAKEN_2~q\ & (!\controler|state.S_LOAD_X_IMM_3~q\ & (!\controler|state.S_STORE_ACC_ABS_3~q\ & !\controler|state.S_LOAD_SP_IMM_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_BRANCH_TAKEN_2~q\,
	datab => \controler|state.S_LOAD_X_IMM_3~q\,
	datac => \controler|state.S_STORE_ACC_ABS_3~q\,
	datad => \controler|state.S_LOAD_SP_IMM_3~q\,
	combout => \controler|WideOr9~0_combout\);

-- Location: LCCOMB_X22_Y21_N12
\controler|WideOr9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr9~1_combout\ = (!\controler|state.S_CALL_6~q\ & \controler|WideOr9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_CALL_6~q\,
	datad => \controler|WideOr9~0_combout\,
	combout => \controler|WideOr9~1_combout\);

-- Location: LCCOMB_X22_Y21_N10
\controler|WideOr9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr9~2_combout\ = (!\controler|state.S_CALL_5~q\ & (!\controler|state.S_LOAD_SP_IMM_2~q\ & (!\controler|state.S_LOAD_X_IMM_2~q\ & !\controler|state.S_FETCH_EXTERNAL~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_CALL_5~q\,
	datab => \controler|state.S_LOAD_SP_IMM_2~q\,
	datac => \controler|state.S_LOAD_X_IMM_2~q\,
	datad => \controler|state.S_FETCH_EXTERNAL~q\,
	combout => \controler|WideOr9~2_combout\);

-- Location: LCCOMB_X22_Y21_N6
\controler|WideOr9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr9~6_combout\ = (\controler|WideOr9~5_combout\ & (\controler|WideOr9~3_combout\ & (\controler|WideOr9~1_combout\ & \controler|WideOr9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr9~5_combout\,
	datab => \controler|WideOr9~3_combout\,
	datac => \controler|WideOr9~1_combout\,
	datad => \controler|WideOr9~2_combout\,
	combout => \controler|WideOr9~6_combout\);

-- Location: IOIBUF_X0_Y23_N1
\button[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(2),
	o => \button[2]~input_o\);

-- Location: LCCOMB_X28_Y23_N10
\datapath|spL|output[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|spL|output[0]~8_combout\ = \datapath|spL|output\(0) $ (VCC)
-- \datapath|spL|output[0]~9\ = CARRY(\datapath|spL|output\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|spL|output\(0),
	datad => VCC,
	combout => \datapath|spL|output[0]~8_combout\,
	cout => \datapath|spL|output[0]~9\);

-- Location: LCCOMB_X22_Y25_N12
\controler|next_state.S_RETURN~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_RETURN~1_combout\ = (\controler|next_state.S_RETURN~0_combout\ & (\datapath|ir|output\(6) & (\controler|next_state.S_CALL~0_combout\ & !\datapath|ir|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|next_state.S_RETURN~0_combout\,
	datab => \datapath|ir|output\(6),
	datac => \controler|next_state.S_CALL~0_combout\,
	datad => \datapath|ir|output\(3),
	combout => \controler|next_state.S_RETURN~1_combout\);

-- Location: FF_X22_Y25_N13
\controler|state.S_RETURN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_RETURN~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_RETURN~q\);

-- Location: LCCOMB_X23_Y25_N14
\controler|state.S_RETURN_2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|state.S_RETURN_2~feeder_combout\ = \controler|state.S_RETURN~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controler|state.S_RETURN~q\,
	combout => \controler|state.S_RETURN_2~feeder_combout\);

-- Location: FF_X23_Y25_N15
\controler|state.S_RETURN_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|state.S_RETURN_2~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_RETURN_2~q\);

-- Location: FF_X22_Y25_N21
\controler|state.S_RETURN_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_RETURN_2~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_RETURN_3~q\);

-- Location: LCCOMB_X23_Y25_N6
\controler|WideOr29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr29~0_combout\ = (!\controler|state.S_CALL_4~q\ & (!\controler|state.S_RETURN_3~q\ & (!\controler|state.S_CALL_3~q\ & !\controler|state.S_RETURN~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_CALL_4~q\,
	datab => \controler|state.S_RETURN_3~q\,
	datac => \controler|state.S_CALL_3~q\,
	datad => \controler|state.S_RETURN~q\,
	combout => \controler|WideOr29~0_combout\);

-- Location: LCCOMB_X23_Y25_N16
\controler|sp_add_sel[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|sp_add_sel[0]~0_combout\ = (!\controler|state.S_RETURN~q\ & !\controler|state.S_RETURN_3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_RETURN~q\,
	datad => \controler|state.S_RETURN_3~q\,
	combout => \controler|sp_add_sel[0]~0_combout\);

-- Location: LCCOMB_X23_Y25_N30
\controler|WideOr29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr29~combout\ = (\controler|state.S_LOAD_SP_IMM_3~q\) # (((\controler|state.S_CALL_3~q\) # (\controler|state.S_CALL_4~q\)) # (!\controler|sp_add_sel[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_LOAD_SP_IMM_3~q\,
	datab => \controler|sp_add_sel[0]~0_combout\,
	datac => \controler|state.S_CALL_3~q\,
	datad => \controler|state.S_CALL_4~q\,
	combout => \controler|WideOr29~combout\);

-- Location: FF_X28_Y23_N11
\datapath|spL|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|spL|output[0]~8_combout\,
	asdata => \datapath|pcH|output[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \controler|WideOr29~0_combout\,
	ena => \controler|WideOr29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|spL|output\(0));

-- Location: FF_X28_Y22_N7
\datapath|arL|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcH|output[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|arL_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|arL|output\(0));

-- Location: LCCOMB_X22_Y21_N0
\controler|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Selector3~0_combout\ = (\controler|state.S_LOAD_ACC_IMM~q\) # ((\controler|state.S_BRANCH_TAKEN~q\) # ((\controler|state.S_FETCH_BEGIN~q\) # (\controler|state.S_STORE_ACC_ABS_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_LOAD_ACC_IMM~q\,
	datab => \controler|state.S_BRANCH_TAKEN~q\,
	datac => \controler|state.S_FETCH_BEGIN~q\,
	datad => \controler|state.S_STORE_ACC_ABS_2~q\,
	combout => \controler|Selector3~0_combout\);

-- Location: FF_X22_Y22_N1
\controler|state.S_CALL_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_CALL_4~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_CALL_5~q\);

-- Location: LCCOMB_X22_Y22_N18
\controler|Selector3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Selector3~7_combout\ = (!\controler|state.S_LOAD_ACC_ABS~q\ & (!\controler|state.S_CALL_5~q\ & (!\controler|state.S_LOAD_X_IMM_2~q\ & !\controler|state.S_LOAD_SP_IMM_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_LOAD_ACC_ABS~q\,
	datab => \controler|state.S_CALL_5~q\,
	datac => \controler|state.S_LOAD_X_IMM_2~q\,
	datad => \controler|state.S_LOAD_SP_IMM_2~q\,
	combout => \controler|Selector3~7_combout\);

-- Location: LCCOMB_X22_Y22_N4
\controler|Selector3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Selector3~8_combout\ = (!\controler|state.S_LOAD_SP_IMM~q\ & (!\controler|state.S_LOAD_X_IMM~q\ & (!\controler|state.S_STORE_ACC_ABS~q\ & \controler|Selector3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_LOAD_SP_IMM~q\,
	datab => \controler|state.S_LOAD_X_IMM~q\,
	datac => \controler|state.S_STORE_ACC_ABS~q\,
	datad => \controler|Selector3~7_combout\,
	combout => \controler|Selector3~8_combout\);

-- Location: LCCOMB_X22_Y22_N30
\controler|Selector3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Selector3~9_combout\ = (\controler|Selector3~1_combout\) # ((\controler|Selector3~0_combout\) # ((\controler|Selector3~6_combout\) # (!\controler|Selector3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|Selector3~1_combout\,
	datab => \controler|Selector3~0_combout\,
	datac => \controler|Selector3~8_combout\,
	datad => \controler|Selector3~6_combout\,
	combout => \controler|Selector3~9_combout\);

-- Location: LCCOMB_X23_Y25_N0
\datapath|adr_bus|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux7~0_combout\ = (!\controler|state.S_CALL_4~q\ & (!\controler|state.S_CALL_2~q\ & (!\controler|state.S_RETURN_2~q\ & !\controler|state.S_CALL~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_CALL_4~q\,
	datab => \controler|state.S_CALL_2~q\,
	datac => \controler|state.S_RETURN_2~q\,
	datad => \controler|state.S_CALL~q\,
	combout => \datapath|adr_bus|Mux7~0_combout\);

-- Location: LCCOMB_X23_Y25_N4
\datapath|adr_bus|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux7~1_combout\ = (!\controler|state.S_RETURN_4~q\ & \datapath|adr_bus|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_RETURN_4~q\,
	datad => \datapath|adr_bus|Mux7~0_combout\,
	combout => \datapath|adr_bus|Mux7~1_combout\);

-- Location: LCCOMB_X22_Y22_N26
\datapath|adr_bus|Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux7~2_combout\ = ((!\controler|state.S_STORE_ACC_INDX_4~q\ & (!\controler|state.S_LOAD_ACC_INDX_4~q\ & \controler|Selector3~9_combout\))) # (!\datapath|adr_bus|Mux7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_STORE_ACC_INDX_4~q\,
	datab => \controler|state.S_LOAD_ACC_INDX_4~q\,
	datac => \controler|Selector3~9_combout\,
	datad => \datapath|adr_bus|Mux7~1_combout\,
	combout => \datapath|adr_bus|Mux7~2_combout\);

-- Location: LCCOMB_X28_Y22_N6
\datapath|adr_bus|Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux15~0_combout\ = (\datapath|adr_bus|Mux7~3_combout\ & (((\datapath|adr_bus|Mux7~2_combout\)))) # (!\datapath|adr_bus|Mux7~3_combout\ & ((\datapath|adr_bus|Mux7~2_combout\ & (\datapath|spL|output\(0))) # 
-- (!\datapath|adr_bus|Mux7~2_combout\ & ((\datapath|arL|output\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|adr_bus|Mux7~3_combout\,
	datab => \datapath|spL|output\(0),
	datac => \datapath|arL|output\(0),
	datad => \datapath|adr_bus|Mux7~2_combout\,
	combout => \datapath|adr_bus|Mux15~0_combout\);

-- Location: LCCOMB_X28_Y22_N4
\datapath|adr_bus|Mux15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux15~1_combout\ = (\datapath|adr_bus|Mux7~3_combout\ & ((\datapath|adr_bus|Mux15~0_combout\ & ((\datapath|pcL|output\(0)))) # (!\datapath|adr_bus|Mux15~0_combout\ & (\datapath|x_adder|output[0]~0_combout\)))) # 
-- (!\datapath|adr_bus|Mux7~3_combout\ & (((\datapath|adr_bus|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|x_adder|output[0]~0_combout\,
	datab => \datapath|pcL|output\(0),
	datac => \datapath|adr_bus|Mux7~3_combout\,
	datad => \datapath|adr_bus|Mux15~0_combout\,
	combout => \datapath|adr_bus|Mux15~1_combout\);

-- Location: LCCOMB_X26_Y23_N0
\datapath|pc_adder|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pc_adder|Add0~2_combout\ = (\controler|WideOr13~4_combout\ & ((\datapath|pcL|output[2]~4_combout\))) # (!\controler|WideOr13~4_combout\ & (\datapath|pc_adder|output[10]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|pc_adder|output[10]~20_combout\,
	datac => \controler|WideOr13~4_combout\,
	datad => \datapath|pcL|output[2]~4_combout\,
	combout => \datapath|pc_adder|Add0~2_combout\);

-- Location: FF_X22_Y21_N31
\controler|state.S_BRANCH_TAKEN_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_BRANCH_TAKEN~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_BRANCH_TAKEN_2~q\);

-- Location: FF_X22_Y24_N17
\controler|state.S_BRANCH_TAKEN_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_BRANCH_TAKEN_2~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_BRANCH_TAKEN_3~q\);

-- Location: LCCOMB_X23_Y25_N10
\controler|state.S_RETURN_4~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|state.S_RETURN_4~feeder_combout\ = \controler|state.S_RETURN_3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controler|state.S_RETURN_3~q\,
	combout => \controler|state.S_RETURN_4~feeder_combout\);

-- Location: FF_X23_Y25_N11
\controler|state.S_RETURN_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|state.S_RETURN_4~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_RETURN_4~q\);

-- Location: FF_X22_Y25_N27
\controler|state.S_RETURN_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_RETURN_4~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_RETURN_5~q\);

-- Location: FF_X22_Y25_N23
\controler|state.S_RETURN_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_RETURN_5~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_RETURN_6~q\);

-- Location: LCCOMB_X22_Y24_N2
\controler|WideOr17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr17~combout\ = (\controler|state.S_CALL_6~q\) # ((\controler|state.S_BRANCH_TAKEN_3~q\) # ((\controler|state.S_RETURN_6~q\) # (!\controler|WideOr13~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_CALL_6~q\,
	datab => \controler|state.S_BRANCH_TAKEN_3~q\,
	datac => \controler|state.S_RETURN_6~q\,
	datad => \controler|WideOr13~4_combout\,
	combout => \controler|WideOr17~combout\);

-- Location: FF_X26_Y23_N1
\datapath|pcH|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|pc_adder|Add0~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|pcH|output\(2));

-- Location: LCCOMB_X26_Y23_N4
\datapath|pcH|output[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pcH|output[0]~feeder_combout\ = \datapath|pcH|output[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|pcH|output[0]~0_combout\,
	combout => \datapath|pcH|output[0]~feeder_combout\);

-- Location: LCCOMB_X30_Y23_N14
\datapath|pc_adder|output[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pc_adder|output[7]~14_combout\ = (\datapath|pcL|output\(7) & (!\datapath|pc_adder|output[6]~13\)) # (!\datapath|pcL|output\(7) & ((\datapath|pc_adder|output[6]~13\) # (GND)))
-- \datapath|pc_adder|output[7]~15\ = CARRY((!\datapath|pc_adder|output[6]~13\) # (!\datapath|pcL|output\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|pcL|output\(7),
	datad => VCC,
	cin => \datapath|pc_adder|output[6]~13\,
	combout => \datapath|pc_adder|output[7]~14_combout\,
	cout => \datapath|pc_adder|output[7]~15\);

-- Location: LCCOMB_X30_Y23_N16
\datapath|pc_adder|output[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pc_adder|output[8]~16_combout\ = (\datapath|pcH|output\(0) & (\datapath|pc_adder|output[7]~15\ $ (GND))) # (!\datapath|pcH|output\(0) & (!\datapath|pc_adder|output[7]~15\ & VCC))
-- \datapath|pc_adder|output[8]~17\ = CARRY((\datapath|pcH|output\(0) & !\datapath|pc_adder|output[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|pcH|output\(0),
	datad => VCC,
	cin => \datapath|pc_adder|output[7]~15\,
	combout => \datapath|pc_adder|output[8]~16_combout\,
	cout => \datapath|pc_adder|output[8]~17\);

-- Location: FF_X26_Y23_N5
\datapath|pcH|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|pcH|output[0]~feeder_combout\,
	asdata => \datapath|pc_adder|output[8]~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \controler|ALT_INV_WideOr13~4_combout\,
	ena => \controler|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|pcH|output\(0));

-- Location: LCCOMB_X30_Y23_N22
\datapath|pc_adder|output[11]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pc_adder|output[11]~22_combout\ = (\datapath|pcH|output\(3) & (!\datapath|pc_adder|output[10]~21\)) # (!\datapath|pcH|output\(3) & ((\datapath|pc_adder|output[10]~21\) # (GND)))
-- \datapath|pc_adder|output[11]~23\ = CARRY((!\datapath|pc_adder|output[10]~21\) # (!\datapath|pcH|output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|pcH|output\(3),
	datad => VCC,
	cin => \datapath|pc_adder|output[10]~21\,
	combout => \datapath|pc_adder|output[11]~22_combout\,
	cout => \datapath|pc_adder|output[11]~23\);

-- Location: LCCOMB_X26_Y23_N14
\datapath|pc_adder|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pc_adder|Add0~1_combout\ = (\controler|WideOr13~4_combout\ & (\datapath|pcL|output[3]~6_combout\)) # (!\controler|WideOr13~4_combout\ & ((\datapath|pc_adder|output[11]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr13~4_combout\,
	datac => \datapath|pcL|output[3]~6_combout\,
	datad => \datapath|pc_adder|output[11]~22_combout\,
	combout => \datapath|pc_adder|Add0~1_combout\);

-- Location: FF_X26_Y23_N15
\datapath|pcH|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|pc_adder|Add0~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|pcH|output\(3));

-- Location: LCCOMB_X23_Y22_N10
\controler|next_state.S_INCREMENT_X~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_INCREMENT_X~2_combout\ = (\datapath|ir|output\(2) & (\controler|next_state.S_DECREMENT_X~0_combout\ & (\controler|next_state.S_STORE_ACC_ABS~0_combout\ & !\datapath|ir|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(2),
	datab => \controler|next_state.S_DECREMENT_X~0_combout\,
	datac => \controler|next_state.S_STORE_ACC_ABS~0_combout\,
	datad => \datapath|ir|output\(0),
	combout => \controler|next_state.S_INCREMENT_X~2_combout\);

-- Location: FF_X23_Y22_N11
\controler|state.S_INCREMENT_X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_INCREMENT_X~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_INCREMENT_X~q\);

-- Location: LCCOMB_X22_Y25_N24
\controler|next_state.S_DECREMENT_X~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_DECREMENT_X~1_combout\ = (\datapath|ir|output\(0) & (\controler|next_state.S_DECREMENT_X~0_combout\ & (\datapath|ir|output\(2) & \controler|next_state.S_STORE_ACC_ABS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(0),
	datab => \controler|next_state.S_DECREMENT_X~0_combout\,
	datac => \datapath|ir|output\(2),
	datad => \controler|next_state.S_STORE_ACC_ABS~0_combout\,
	combout => \controler|next_state.S_DECREMENT_X~1_combout\);

-- Location: FF_X22_Y25_N25
\controler|state.S_DECREMENT_X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_DECREMENT_X~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_DECREMENT_X~q\);

-- Location: LCCOMB_X21_Y22_N12
\controler|next_state.S_STORE_ACC_INDX~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_STORE_ACC_INDX~1_combout\ = (\controler|next_state.S_STORE_ACC_INDX~0_combout\ & (\datapath|ir|output\(2) & (\controler|state.S_DECODE~q\ & !\datapath|ir|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|next_state.S_STORE_ACC_INDX~0_combout\,
	datab => \datapath|ir|output\(2),
	datac => \controler|state.S_DECODE~q\,
	datad => \datapath|ir|output\(0),
	combout => \controler|next_state.S_STORE_ACC_INDX~1_combout\);

-- Location: FF_X21_Y22_N13
\controler|state.S_STORE_ACC_INDX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_STORE_ACC_INDX~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_STORE_ACC_INDX~q\);

-- Location: FF_X22_Y25_N3
\controler|state.S_STORE_ACC_INDX_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_STORE_ACC_INDX~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_STORE_ACC_INDX_2~q\);

-- Location: LCCOMB_X23_Y22_N12
\controler|state.S_STORE_ACC_INDX_3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|state.S_STORE_ACC_INDX_3~feeder_combout\ = \controler|state.S_STORE_ACC_INDX_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controler|state.S_STORE_ACC_INDX_2~q\,
	combout => \controler|state.S_STORE_ACC_INDX_3~feeder_combout\);

-- Location: FF_X23_Y22_N13
\controler|state.S_STORE_ACC_INDX_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|state.S_STORE_ACC_INDX_3~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_STORE_ACC_INDX_3~q\);

-- Location: LCCOMB_X23_Y22_N4
\controler|b_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|b_en~0_combout\ = (\controler|state.S_LOAD_ACC_INDX_3~q\) # (\controler|state.S_STORE_ACC_INDX_3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controler|state.S_LOAD_ACC_INDX_3~q\,
	datad => \controler|state.S_STORE_ACC_INDX_3~q\,
	combout => \controler|b_en~0_combout\);

-- Location: FF_X23_Y22_N31
\datapath|b|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[6]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|b_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|b|output\(6));

-- Location: LCCOMB_X22_Y22_N8
\controler|state.S_STORE_ACC_INDX_4~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|state.S_STORE_ACC_INDX_4~feeder_combout\ = \controler|state.S_STORE_ACC_INDX_3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controler|state.S_STORE_ACC_INDX_3~q\,
	combout => \controler|state.S_STORE_ACC_INDX_4~feeder_combout\);

-- Location: FF_X22_Y22_N9
\controler|state.S_STORE_ACC_INDX_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|state.S_STORE_ACC_INDX_4~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_STORE_ACC_INDX_4~q\);

-- Location: LCCOMB_X23_Y22_N30
\datapath|x_adder_mux|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|x_adder_mux|Mux1~0_combout\ = (\controler|state.S_INCREMENT_X~q\ & ((\controler|state.S_LOAD_ACC_INDX_4~q\) # ((\controler|state.S_STORE_ACC_INDX_4~q\)))) # (!\controler|state.S_INCREMENT_X~q\ & ((\datapath|b|output\(6)) # 
-- ((!\controler|state.S_LOAD_ACC_INDX_4~q\ & !\controler|state.S_STORE_ACC_INDX_4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_INCREMENT_X~q\,
	datab => \controler|state.S_LOAD_ACC_INDX_4~q\,
	datac => \datapath|b|output\(6),
	datad => \controler|state.S_STORE_ACC_INDX_4~q\,
	combout => \datapath|x_adder_mux|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y24_N12
\datapath|xL_mux|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|xL_mux|Mux2~2_combout\ = (\controler|state.S_INCREMENT_X~q\ & (\datapath|x_adder|output[5]~10_combout\)) # (!\controler|state.S_INCREMENT_X~q\ & ((\controler|state.S_DECREMENT_X~q\ & (\datapath|x_adder|output[5]~10_combout\)) # 
-- (!\controler|state.S_DECREMENT_X~q\ & ((\datapath|pcL|output[5]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|x_adder|output[5]~10_combout\,
	datab => \controler|state.S_INCREMENT_X~q\,
	datac => \controler|state.S_DECREMENT_X~q\,
	datad => \datapath|pcL|output[5]~2_combout\,
	combout => \datapath|xL_mux|Mux2~2_combout\);

-- Location: LCCOMB_X23_Y24_N26
\controler|WideOr31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr31~combout\ = (\controler|state.S_DECREMENT_X~q\) # ((\controler|state.S_LOAD_X_IMM_3~q\) # (\controler|state.S_INCREMENT_X~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_DECREMENT_X~q\,
	datab => \controler|state.S_LOAD_X_IMM_3~q\,
	datad => \controler|state.S_INCREMENT_X~q\,
	combout => \controler|WideOr31~combout\);

-- Location: FF_X24_Y24_N13
\datapath|xL|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|xL_mux|Mux2~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|xL|output\(5));

-- Location: FF_X23_Y22_N29
\datapath|b|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[3]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|b_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|b|output\(3));

-- Location: LCCOMB_X23_Y22_N28
\datapath|x_adder_mux|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|x_adder_mux|Mux4~0_combout\ = (\controler|state.S_INCREMENT_X~q\ & ((\controler|state.S_LOAD_ACC_INDX_4~q\) # ((\controler|state.S_STORE_ACC_INDX_4~q\)))) # (!\controler|state.S_INCREMENT_X~q\ & ((\datapath|b|output\(3)) # 
-- ((!\controler|state.S_LOAD_ACC_INDX_4~q\ & !\controler|state.S_STORE_ACC_INDX_4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_INCREMENT_X~q\,
	datab => \controler|state.S_LOAD_ACC_INDX_4~q\,
	datac => \datapath|b|output\(3),
	datad => \controler|state.S_STORE_ACC_INDX_4~q\,
	combout => \datapath|x_adder_mux|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y22_N20
\datapath|xL_mux|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|xL_mux|Mux5~2_combout\ = (\controler|state.S_DECREMENT_X~q\ & (\datapath|x_adder|output[2]~4_combout\)) # (!\controler|state.S_DECREMENT_X~q\ & ((\controler|state.S_INCREMENT_X~q\ & (\datapath|x_adder|output[2]~4_combout\)) # 
-- (!\controler|state.S_INCREMENT_X~q\ & ((\datapath|pcL|output[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|x_adder|output[2]~4_combout\,
	datab => \controler|state.S_DECREMENT_X~q\,
	datac => \controler|state.S_INCREMENT_X~q\,
	datad => \datapath|pcL|output[2]~4_combout\,
	combout => \datapath|xL_mux|Mux5~2_combout\);

-- Location: FF_X28_Y22_N21
\datapath|xL|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|xL_mux|Mux5~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|xL|output\(2));

-- Location: FF_X23_Y22_N21
\datapath|b|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[1]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|b_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|b|output\(1));

-- Location: LCCOMB_X23_Y22_N20
\datapath|x_adder_mux|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|x_adder_mux|Mux6~0_combout\ = (\controler|state.S_INCREMENT_X~q\ & ((\controler|state.S_LOAD_ACC_INDX_4~q\) # ((\controler|state.S_STORE_ACC_INDX_4~q\)))) # (!\controler|state.S_INCREMENT_X~q\ & ((\datapath|b|output\(1)) # 
-- ((!\controler|state.S_LOAD_ACC_INDX_4~q\ & !\controler|state.S_STORE_ACC_INDX_4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_INCREMENT_X~q\,
	datab => \controler|state.S_LOAD_ACC_INDX_4~q\,
	datac => \datapath|b|output\(1),
	datad => \controler|state.S_STORE_ACC_INDX_4~q\,
	combout => \datapath|x_adder_mux|Mux6~0_combout\);

-- Location: FF_X23_Y22_N19
\datapath|b|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcH|output[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|b_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|b|output\(0));

-- Location: LCCOMB_X23_Y22_N18
\datapath|x_adder_mux|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|x_adder_mux|Mux7~0_combout\ = (\controler|state.S_INCREMENT_X~q\) # ((\datapath|b|output\(0)) # ((!\controler|state.S_LOAD_ACC_INDX_4~q\ & !\controler|state.S_STORE_ACC_INDX_4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_INCREMENT_X~q\,
	datab => \controler|state.S_LOAD_ACC_INDX_4~q\,
	datac => \datapath|b|output\(0),
	datad => \controler|state.S_STORE_ACC_INDX_4~q\,
	combout => \datapath|x_adder_mux|Mux7~0_combout\);

-- Location: LCCOMB_X24_Y22_N2
\datapath|x_adder|output[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|x_adder|output[1]~2_combout\ = (\datapath|xL|output\(1) & ((\datapath|x_adder_mux|Mux6~0_combout\ & (\datapath|x_adder|output[0]~1\ & VCC)) # (!\datapath|x_adder_mux|Mux6~0_combout\ & (!\datapath|x_adder|output[0]~1\)))) # 
-- (!\datapath|xL|output\(1) & ((\datapath|x_adder_mux|Mux6~0_combout\ & (!\datapath|x_adder|output[0]~1\)) # (!\datapath|x_adder_mux|Mux6~0_combout\ & ((\datapath|x_adder|output[0]~1\) # (GND)))))
-- \datapath|x_adder|output[1]~3\ = CARRY((\datapath|xL|output\(1) & (!\datapath|x_adder_mux|Mux6~0_combout\ & !\datapath|x_adder|output[0]~1\)) # (!\datapath|xL|output\(1) & ((!\datapath|x_adder|output[0]~1\) # (!\datapath|x_adder_mux|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|xL|output\(1),
	datab => \datapath|x_adder_mux|Mux6~0_combout\,
	datad => VCC,
	cin => \datapath|x_adder|output[0]~1\,
	combout => \datapath|x_adder|output[1]~2_combout\,
	cout => \datapath|x_adder|output[1]~3\);

-- Location: LCCOMB_X24_Y22_N6
\datapath|x_adder|output[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|x_adder|output[3]~6_combout\ = (\datapath|xL|output\(3) & ((\datapath|x_adder_mux|Mux4~0_combout\ & (\datapath|x_adder|output[2]~5\ & VCC)) # (!\datapath|x_adder_mux|Mux4~0_combout\ & (!\datapath|x_adder|output[2]~5\)))) # 
-- (!\datapath|xL|output\(3) & ((\datapath|x_adder_mux|Mux4~0_combout\ & (!\datapath|x_adder|output[2]~5\)) # (!\datapath|x_adder_mux|Mux4~0_combout\ & ((\datapath|x_adder|output[2]~5\) # (GND)))))
-- \datapath|x_adder|output[3]~7\ = CARRY((\datapath|xL|output\(3) & (!\datapath|x_adder_mux|Mux4~0_combout\ & !\datapath|x_adder|output[2]~5\)) # (!\datapath|xL|output\(3) & ((!\datapath|x_adder|output[2]~5\) # (!\datapath|x_adder_mux|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|xL|output\(3),
	datab => \datapath|x_adder_mux|Mux4~0_combout\,
	datad => VCC,
	cin => \datapath|x_adder|output[2]~5\,
	combout => \datapath|x_adder|output[3]~6_combout\,
	cout => \datapath|x_adder|output[3]~7\);

-- Location: LCCOMB_X24_Y22_N8
\datapath|x_adder|output[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|x_adder|output[4]~8_combout\ = ((\datapath|x_adder_mux|Mux3~0_combout\ $ (\datapath|xL|output\(4) $ (!\datapath|x_adder|output[3]~7\)))) # (GND)
-- \datapath|x_adder|output[4]~9\ = CARRY((\datapath|x_adder_mux|Mux3~0_combout\ & ((\datapath|xL|output\(4)) # (!\datapath|x_adder|output[3]~7\))) # (!\datapath|x_adder_mux|Mux3~0_combout\ & (\datapath|xL|output\(4) & !\datapath|x_adder|output[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|x_adder_mux|Mux3~0_combout\,
	datab => \datapath|xL|output\(4),
	datad => VCC,
	cin => \datapath|x_adder|output[3]~7\,
	combout => \datapath|x_adder|output[4]~8_combout\,
	cout => \datapath|x_adder|output[4]~9\);

-- Location: LCCOMB_X28_Y22_N16
\datapath|xL_mux|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|xL_mux|Mux3~2_combout\ = (\controler|state.S_INCREMENT_X~q\ & (((\datapath|x_adder|output[4]~8_combout\)))) # (!\controler|state.S_INCREMENT_X~q\ & ((\controler|state.S_DECREMENT_X~q\ & (\datapath|x_adder|output[4]~8_combout\)) # 
-- (!\controler|state.S_DECREMENT_X~q\ & ((\datapath|pcL|output[4]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_INCREMENT_X~q\,
	datab => \controler|state.S_DECREMENT_X~q\,
	datac => \datapath|x_adder|output[4]~8_combout\,
	datad => \datapath|pcL|output[4]~3_combout\,
	combout => \datapath|xL_mux|Mux3~2_combout\);

-- Location: FF_X28_Y22_N17
\datapath|xL|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|xL_mux|Mux3~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|xL|output\(4));

-- Location: LCCOMB_X24_Y22_N10
\datapath|x_adder|output[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|x_adder|output[5]~10_combout\ = (\datapath|x_adder_mux|Mux2~0_combout\ & ((\datapath|xL|output\(5) & (\datapath|x_adder|output[4]~9\ & VCC)) # (!\datapath|xL|output\(5) & (!\datapath|x_adder|output[4]~9\)))) # 
-- (!\datapath|x_adder_mux|Mux2~0_combout\ & ((\datapath|xL|output\(5) & (!\datapath|x_adder|output[4]~9\)) # (!\datapath|xL|output\(5) & ((\datapath|x_adder|output[4]~9\) # (GND)))))
-- \datapath|x_adder|output[5]~11\ = CARRY((\datapath|x_adder_mux|Mux2~0_combout\ & (!\datapath|xL|output\(5) & !\datapath|x_adder|output[4]~9\)) # (!\datapath|x_adder_mux|Mux2~0_combout\ & ((!\datapath|x_adder|output[4]~9\) # (!\datapath|xL|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|x_adder_mux|Mux2~0_combout\,
	datab => \datapath|xL|output\(5),
	datad => VCC,
	cin => \datapath|x_adder|output[4]~9\,
	combout => \datapath|x_adder|output[5]~10_combout\,
	cout => \datapath|x_adder|output[5]~11\);

-- Location: LCCOMB_X24_Y22_N12
\datapath|x_adder|output[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|x_adder|output[6]~12_combout\ = ((\datapath|xL|output\(6) $ (\datapath|x_adder_mux|Mux1~0_combout\ $ (!\datapath|x_adder|output[5]~11\)))) # (GND)
-- \datapath|x_adder|output[6]~13\ = CARRY((\datapath|xL|output\(6) & ((\datapath|x_adder_mux|Mux1~0_combout\) # (!\datapath|x_adder|output[5]~11\))) # (!\datapath|xL|output\(6) & (\datapath|x_adder_mux|Mux1~0_combout\ & !\datapath|x_adder|output[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|xL|output\(6),
	datab => \datapath|x_adder_mux|Mux1~0_combout\,
	datad => VCC,
	cin => \datapath|x_adder|output[5]~11\,
	combout => \datapath|x_adder|output[6]~12_combout\,
	cout => \datapath|x_adder|output[6]~13\);

-- Location: LCCOMB_X24_Y22_N14
\datapath|x_adder|output[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|x_adder|output[7]~14_combout\ = (\datapath|x_adder_mux|Mux0~0_combout\ & ((\datapath|xL|output\(7) & (\datapath|x_adder|output[6]~13\ & VCC)) # (!\datapath|xL|output\(7) & (!\datapath|x_adder|output[6]~13\)))) # 
-- (!\datapath|x_adder_mux|Mux0~0_combout\ & ((\datapath|xL|output\(7) & (!\datapath|x_adder|output[6]~13\)) # (!\datapath|xL|output\(7) & ((\datapath|x_adder|output[6]~13\) # (GND)))))
-- \datapath|x_adder|output[7]~15\ = CARRY((\datapath|x_adder_mux|Mux0~0_combout\ & (!\datapath|xL|output\(7) & !\datapath|x_adder|output[6]~13\)) # (!\datapath|x_adder_mux|Mux0~0_combout\ & ((!\datapath|x_adder|output[6]~13\) # (!\datapath|xL|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|x_adder_mux|Mux0~0_combout\,
	datab => \datapath|xL|output\(7),
	datad => VCC,
	cin => \datapath|x_adder|output[6]~13\,
	combout => \datapath|x_adder|output[7]~14_combout\,
	cout => \datapath|x_adder|output[7]~15\);

-- Location: LCCOMB_X28_Y22_N24
\datapath|xL_mux|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|xL_mux|Mux0~2_combout\ = (\controler|state.S_INCREMENT_X~q\ & (((\datapath|x_adder|output[7]~14_combout\)))) # (!\controler|state.S_INCREMENT_X~q\ & ((\controler|state.S_DECREMENT_X~q\ & (\datapath|x_adder|output[7]~14_combout\)) # 
-- (!\controler|state.S_DECREMENT_X~q\ & ((\datapath|pcL|output[7]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_INCREMENT_X~q\,
	datab => \controler|state.S_DECREMENT_X~q\,
	datac => \datapath|x_adder|output[7]~14_combout\,
	datad => \datapath|pcL|output[7]~0_combout\,
	combout => \datapath|xL_mux|Mux0~2_combout\);

-- Location: FF_X28_Y22_N25
\datapath|xL|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|xL_mux|Mux0~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|xL|output\(7));

-- Location: LCCOMB_X24_Y22_N16
\datapath|x_adder|output[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|x_adder|output[8]~16_combout\ = (\datapath|xH|output\(0) & (\datapath|x_adder|output[7]~15\ $ (GND))) # (!\datapath|xH|output\(0) & (!\datapath|x_adder|output[7]~15\ & VCC))
-- \datapath|x_adder|output[8]~17\ = CARRY((\datapath|xH|output\(0) & !\datapath|x_adder|output[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|xH|output\(0),
	datad => VCC,
	cin => \datapath|x_adder|output[7]~15\,
	combout => \datapath|x_adder|output[8]~16_combout\,
	cout => \datapath|x_adder|output[8]~17\);

-- Location: LCCOMB_X27_Y22_N28
\datapath|xH_mux|Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|xH_mux|Mux7~2_combout\ = (\controler|state.S_DECREMENT_X~q\ & (((\datapath|x_adder|output[8]~16_combout\)))) # (!\controler|state.S_DECREMENT_X~q\ & ((\controler|state.S_INCREMENT_X~q\ & (\datapath|x_adder|output[8]~16_combout\)) # 
-- (!\controler|state.S_INCREMENT_X~q\ & ((\datapath|pcH|output[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_DECREMENT_X~q\,
	datab => \controler|state.S_INCREMENT_X~q\,
	datac => \datapath|x_adder|output[8]~16_combout\,
	datad => \datapath|pcH|output[0]~0_combout\,
	combout => \datapath|xH_mux|Mux7~2_combout\);

-- Location: LCCOMB_X22_Y24_N10
\controler|state.S_LOAD_X_IMM_4~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|state.S_LOAD_X_IMM_4~feeder_combout\ = \controler|state.S_LOAD_X_IMM_3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controler|state.S_LOAD_X_IMM_3~q\,
	combout => \controler|state.S_LOAD_X_IMM_4~feeder_combout\);

-- Location: FF_X22_Y24_N11
\controler|state.S_LOAD_X_IMM_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|state.S_LOAD_X_IMM_4~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_LOAD_X_IMM_4~q\);

-- Location: LCCOMB_X23_Y24_N4
\controler|WideOr32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr32~combout\ = (\controler|state.S_DECREMENT_X~q\) # ((\controler|state.S_INCREMENT_X~q\) # (\controler|state.S_LOAD_X_IMM_4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_DECREMENT_X~q\,
	datab => \controler|state.S_INCREMENT_X~q\,
	datad => \controler|state.S_LOAD_X_IMM_4~q\,
	combout => \controler|WideOr32~combout\);

-- Location: FF_X27_Y22_N29
\datapath|xH|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|xH_mux|Mux7~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr32~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|xH|output\(0));

-- Location: LCCOMB_X24_Y22_N18
\datapath|x_adder|output[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|x_adder|output[9]~18_combout\ = (\datapath|xH|output\(1) & (!\datapath|x_adder|output[8]~17\)) # (!\datapath|xH|output\(1) & ((\datapath|x_adder|output[8]~17\) # (GND)))
-- \datapath|x_adder|output[9]~19\ = CARRY((!\datapath|x_adder|output[8]~17\) # (!\datapath|xH|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|xH|output\(1),
	datad => VCC,
	cin => \datapath|x_adder|output[8]~17\,
	combout => \datapath|x_adder|output[9]~18_combout\,
	cout => \datapath|x_adder|output[9]~19\);

-- Location: LCCOMB_X27_Y22_N22
\datapath|xH_mux|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|xH_mux|Mux6~2_combout\ = (\controler|state.S_INCREMENT_X~q\ & (\datapath|x_adder|output[9]~18_combout\)) # (!\controler|state.S_INCREMENT_X~q\ & ((\controler|state.S_DECREMENT_X~q\ & (\datapath|x_adder|output[9]~18_combout\)) # 
-- (!\controler|state.S_DECREMENT_X~q\ & ((\datapath|pcL|output[1]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_INCREMENT_X~q\,
	datab => \datapath|x_adder|output[9]~18_combout\,
	datac => \datapath|pcL|output[1]~5_combout\,
	datad => \controler|state.S_DECREMENT_X~q\,
	combout => \datapath|xH_mux|Mux6~2_combout\);

-- Location: FF_X27_Y22_N23
\datapath|xH|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|xH_mux|Mux6~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr32~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|xH|output\(1));

-- Location: LCCOMB_X24_Y22_N20
\datapath|x_adder|output[10]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|x_adder|output[10]~20_combout\ = (\datapath|xH|output\(2) & (\datapath|x_adder|output[9]~19\ $ (GND))) # (!\datapath|xH|output\(2) & (!\datapath|x_adder|output[9]~19\ & VCC))
-- \datapath|x_adder|output[10]~21\ = CARRY((\datapath|xH|output\(2) & !\datapath|x_adder|output[9]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|xH|output\(2),
	datad => VCC,
	cin => \datapath|x_adder|output[9]~19\,
	combout => \datapath|x_adder|output[10]~20_combout\,
	cout => \datapath|x_adder|output[10]~21\);

-- Location: LCCOMB_X24_Y22_N22
\datapath|x_adder|output[11]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|x_adder|output[11]~22_combout\ = (\datapath|xH|output\(3) & (!\datapath|x_adder|output[10]~21\)) # (!\datapath|xH|output\(3) & ((\datapath|x_adder|output[10]~21\) # (GND)))
-- \datapath|x_adder|output[11]~23\ = CARRY((!\datapath|x_adder|output[10]~21\) # (!\datapath|xH|output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|xH|output\(3),
	datad => VCC,
	cin => \datapath|x_adder|output[10]~21\,
	combout => \datapath|x_adder|output[11]~22_combout\,
	cout => \datapath|x_adder|output[11]~23\);

-- Location: LCCOMB_X27_Y22_N0
\datapath|adr_bus|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux4~1_combout\ = (\datapath|adr_bus|Mux4~0_combout\ & ((\datapath|pcH|output\(3)) # ((!\datapath|adr_bus|Mux7~3_combout\)))) # (!\datapath|adr_bus|Mux4~0_combout\ & (((\datapath|x_adder|output[11]~22_combout\ & 
-- \datapath|adr_bus|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|adr_bus|Mux4~0_combout\,
	datab => \datapath|pcH|output\(3),
	datac => \datapath|x_adder|output[11]~22_combout\,
	datad => \datapath|adr_bus|Mux7~3_combout\,
	combout => \datapath|adr_bus|Mux4~1_combout\);

-- Location: FF_X26_Y22_N7
\datapath|spH|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[2]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|state.S_LOAD_SP_IMM_4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|spH|output\(2));

-- Location: LCCOMB_X22_Y21_N30
\controler|arH_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|arH_en~0_combout\ = (\controler|state.S_STORE_ACC_ABS_4~q\) # (\controler|state.S_LOAD_ACC_ABS_4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controler|state.S_STORE_ACC_ABS_4~q\,
	datad => \controler|state.S_LOAD_ACC_ABS_4~q\,
	combout => \controler|arH_en~0_combout\);

-- Location: FF_X26_Y22_N29
\datapath|arH|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[2]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|arH_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|arH|output\(2));

-- Location: LCCOMB_X26_Y22_N28
\datapath|adr_bus|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux5~0_combout\ = (\datapath|adr_bus|Mux7~3_combout\ & ((\datapath|adr_bus|Mux7~2_combout\) # ((\datapath|x_adder|output[10]~20_combout\)))) # (!\datapath|adr_bus|Mux7~3_combout\ & (!\datapath|adr_bus|Mux7~2_combout\ & 
-- (\datapath|arH|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|adr_bus|Mux7~3_combout\,
	datab => \datapath|adr_bus|Mux7~2_combout\,
	datac => \datapath|arH|output\(2),
	datad => \datapath|x_adder|output[10]~20_combout\,
	combout => \datapath|adr_bus|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y22_N6
\datapath|adr_bus|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux5~1_combout\ = (\datapath|adr_bus|Mux7~2_combout\ & ((\datapath|adr_bus|Mux5~0_combout\ & (\datapath|pcH|output\(2))) # (!\datapath|adr_bus|Mux5~0_combout\ & ((\datapath|spH|output\(2)))))) # (!\datapath|adr_bus|Mux7~2_combout\ & 
-- (((\datapath|adr_bus|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|pcH|output\(2),
	datab => \datapath|adr_bus|Mux7~2_combout\,
	datac => \datapath|spH|output\(2),
	datad => \datapath|adr_bus|Mux5~0_combout\,
	combout => \datapath|adr_bus|Mux5~1_combout\);

-- Location: FF_X26_Y22_N15
\datapath|spH|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[4]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|state.S_LOAD_SP_IMM_4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|spH|output\(4));

-- Location: FF_X26_Y22_N25
\datapath|arH|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[4]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|arH_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|arH|output\(4));

-- Location: LCCOMB_X24_Y22_N24
\datapath|x_adder|output[12]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|x_adder|output[12]~24_combout\ = (\datapath|xH|output\(4) & (\datapath|x_adder|output[11]~23\ $ (GND))) # (!\datapath|xH|output\(4) & (!\datapath|x_adder|output[11]~23\ & VCC))
-- \datapath|x_adder|output[12]~25\ = CARRY((\datapath|xH|output\(4) & !\datapath|x_adder|output[11]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|xH|output\(4),
	datad => VCC,
	cin => \datapath|x_adder|output[11]~23\,
	combout => \datapath|x_adder|output[12]~24_combout\,
	cout => \datapath|x_adder|output[12]~25\);

-- Location: LCCOMB_X26_Y22_N24
\datapath|adr_bus|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux3~0_combout\ = (\datapath|adr_bus|Mux7~3_combout\ & ((\datapath|adr_bus|Mux7~2_combout\) # ((\datapath|x_adder|output[12]~24_combout\)))) # (!\datapath|adr_bus|Mux7~3_combout\ & (!\datapath|adr_bus|Mux7~2_combout\ & 
-- (\datapath|arH|output\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|adr_bus|Mux7~3_combout\,
	datab => \datapath|adr_bus|Mux7~2_combout\,
	datac => \datapath|arH|output\(4),
	datad => \datapath|x_adder|output[12]~24_combout\,
	combout => \datapath|adr_bus|Mux3~0_combout\);

-- Location: LCCOMB_X26_Y22_N14
\datapath|adr_bus|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux3~1_combout\ = (\datapath|adr_bus|Mux7~2_combout\ & ((\datapath|adr_bus|Mux3~0_combout\ & (\datapath|pcH|output\(4))) # (!\datapath|adr_bus|Mux3~0_combout\ & ((\datapath|spH|output\(4)))))) # (!\datapath|adr_bus|Mux7~2_combout\ & 
-- (((\datapath|adr_bus|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|pcH|output\(4),
	datab => \datapath|adr_bus|Mux7~2_combout\,
	datac => \datapath|spH|output\(4),
	datad => \datapath|adr_bus|Mux3~0_combout\,
	combout => \datapath|adr_bus|Mux3~1_combout\);

-- Location: LCCOMB_X27_Y22_N14
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\datapath|adr_bus|Mux6~1_combout\ & (\datapath|adr_bus|Mux4~1_combout\ & (\datapath|adr_bus|Mux5~1_combout\ & \datapath|adr_bus|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|adr_bus|Mux6~1_combout\,
	datab => \datapath|adr_bus|Mux4~1_combout\,
	datac => \datapath|adr_bus|Mux5~1_combout\,
	datad => \datapath|adr_bus|Mux3~1_combout\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X26_Y22_N30
\datapath|spH|output[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|spH|output[5]~feeder_combout\ = \datapath|pcL|output[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|pcL|output[5]~2_combout\,
	combout => \datapath|spH|output[5]~feeder_combout\);

-- Location: FF_X26_Y22_N31
\datapath|spH|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|spH|output[5]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|state.S_LOAD_SP_IMM_4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|spH|output\(5));

-- Location: FF_X26_Y22_N5
\datapath|arH|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[5]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|arH_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|arH|output\(5));

-- Location: LCCOMB_X26_Y22_N4
\datapath|adr_bus|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux2~0_combout\ = (\datapath|adr_bus|Mux7~3_combout\ & (((\datapath|adr_bus|Mux7~2_combout\)))) # (!\datapath|adr_bus|Mux7~3_combout\ & ((\datapath|adr_bus|Mux7~2_combout\ & (\datapath|spH|output\(5))) # 
-- (!\datapath|adr_bus|Mux7~2_combout\ & ((\datapath|arH|output\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|adr_bus|Mux7~3_combout\,
	datab => \datapath|spH|output\(5),
	datac => \datapath|arH|output\(5),
	datad => \datapath|adr_bus|Mux7~2_combout\,
	combout => \datapath|adr_bus|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y22_N24
\datapath|xH_mux|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|xH_mux|Mux2~2_combout\ = (\controler|state.S_DECREMENT_X~q\ & (((\datapath|x_adder|output[13]~26_combout\)))) # (!\controler|state.S_DECREMENT_X~q\ & ((\controler|state.S_INCREMENT_X~q\ & (\datapath|x_adder|output[13]~26_combout\)) # 
-- (!\controler|state.S_INCREMENT_X~q\ & ((\datapath|pcL|output[5]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_DECREMENT_X~q\,
	datab => \controler|state.S_INCREMENT_X~q\,
	datac => \datapath|x_adder|output[13]~26_combout\,
	datad => \datapath|pcL|output[5]~2_combout\,
	combout => \datapath|xH_mux|Mux2~2_combout\);

-- Location: FF_X27_Y22_N25
\datapath|xH|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|xH_mux|Mux2~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr32~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|xH|output\(5));

-- Location: LCCOMB_X24_Y22_N26
\datapath|x_adder|output[13]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|x_adder|output[13]~26_combout\ = (\datapath|xH|output\(5) & (!\datapath|x_adder|output[12]~25\)) # (!\datapath|xH|output\(5) & ((\datapath|x_adder|output[12]~25\) # (GND)))
-- \datapath|x_adder|output[13]~27\ = CARRY((!\datapath|x_adder|output[12]~25\) # (!\datapath|xH|output\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|xH|output\(5),
	datad => VCC,
	cin => \datapath|x_adder|output[12]~25\,
	combout => \datapath|x_adder|output[13]~26_combout\,
	cout => \datapath|x_adder|output[13]~27\);

-- Location: LCCOMB_X26_Y22_N10
\datapath|adr_bus|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux2~1_combout\ = (\datapath|adr_bus|Mux7~3_combout\ & ((\datapath|adr_bus|Mux2~0_combout\ & (\datapath|pcH|output\(5))) # (!\datapath|adr_bus|Mux2~0_combout\ & ((\datapath|x_adder|output[13]~26_combout\))))) # 
-- (!\datapath|adr_bus|Mux7~3_combout\ & (((\datapath|adr_bus|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|pcH|output\(5),
	datab => \datapath|adr_bus|Mux7~3_combout\,
	datac => \datapath|adr_bus|Mux2~0_combout\,
	datad => \datapath|x_adder|output[13]~26_combout\,
	combout => \datapath|adr_bus|Mux2~1_combout\);

-- Location: FF_X26_Y22_N27
\datapath|spH|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[6]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|state.S_LOAD_SP_IMM_4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|spH|output\(6));

-- Location: FF_X26_Y22_N21
\datapath|arH|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[6]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|arH_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|arH|output\(6));

-- Location: LCCOMB_X27_Y22_N6
\datapath|xH_mux|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|xH_mux|Mux1~2_combout\ = (\controler|state.S_DECREMENT_X~q\ & (((\datapath|x_adder|output[14]~28_combout\)))) # (!\controler|state.S_DECREMENT_X~q\ & ((\controler|state.S_INCREMENT_X~q\ & (\datapath|x_adder|output[14]~28_combout\)) # 
-- (!\controler|state.S_INCREMENT_X~q\ & ((\datapath|pcL|output[6]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_DECREMENT_X~q\,
	datab => \controler|state.S_INCREMENT_X~q\,
	datac => \datapath|x_adder|output[14]~28_combout\,
	datad => \datapath|pcL|output[6]~1_combout\,
	combout => \datapath|xH_mux|Mux1~2_combout\);

-- Location: FF_X27_Y22_N7
\datapath|xH|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|xH_mux|Mux1~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr32~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|xH|output\(6));

-- Location: LCCOMB_X24_Y22_N28
\datapath|x_adder|output[14]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|x_adder|output[14]~28_combout\ = (\datapath|xH|output\(6) & (\datapath|x_adder|output[13]~27\ $ (GND))) # (!\datapath|xH|output\(6) & (!\datapath|x_adder|output[13]~27\ & VCC))
-- \datapath|x_adder|output[14]~29\ = CARRY((\datapath|xH|output\(6) & !\datapath|x_adder|output[13]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|xH|output\(6),
	datad => VCC,
	cin => \datapath|x_adder|output[13]~27\,
	combout => \datapath|x_adder|output[14]~28_combout\,
	cout => \datapath|x_adder|output[14]~29\);

-- Location: LCCOMB_X26_Y22_N20
\datapath|adr_bus|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux1~0_combout\ = (\datapath|adr_bus|Mux7~3_combout\ & ((\datapath|adr_bus|Mux7~2_combout\) # ((\datapath|x_adder|output[14]~28_combout\)))) # (!\datapath|adr_bus|Mux7~3_combout\ & (!\datapath|adr_bus|Mux7~2_combout\ & 
-- (\datapath|arH|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|adr_bus|Mux7~3_combout\,
	datab => \datapath|adr_bus|Mux7~2_combout\,
	datac => \datapath|arH|output\(6),
	datad => \datapath|x_adder|output[14]~28_combout\,
	combout => \datapath|adr_bus|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y22_N26
\datapath|adr_bus|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux1~1_combout\ = (\datapath|adr_bus|Mux7~2_combout\ & ((\datapath|adr_bus|Mux1~0_combout\ & (\datapath|pcH|output\(6))) # (!\datapath|adr_bus|Mux1~0_combout\ & ((\datapath|spH|output\(6)))))) # (!\datapath|adr_bus|Mux7~2_combout\ & 
-- (((\datapath|adr_bus|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|pcH|output\(6),
	datab => \datapath|adr_bus|Mux7~2_combout\,
	datac => \datapath|spH|output\(6),
	datad => \datapath|adr_bus|Mux1~0_combout\,
	combout => \datapath|adr_bus|Mux1~1_combout\);

-- Location: LCCOMB_X27_Y24_N16
\process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (\datapath|adr_bus|Mux7~5_combout\ & (\datapath|adr_bus|Mux2~1_combout\ & (\datapath|adr_bus|Mux0~1_combout\ & \datapath|adr_bus|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|adr_bus|Mux7~5_combout\,
	datab => \datapath|adr_bus|Mux2~1_combout\,
	datac => \datapath|adr_bus|Mux0~1_combout\,
	datad => \datapath|adr_bus|Mux1~1_combout\,
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X27_Y24_N2
\in1_sel~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in1_sel~0_combout\ = (\datapath|mem_decoder|LessThan0~1_combout\ & (!\datapath|adr_bus|Mux15~1_combout\ & (\process_0~0_combout\ & \process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|mem_decoder|LessThan0~1_combout\,
	datab => \datapath|adr_bus|Mux15~1_combout\,
	datac => \process_0~0_combout\,
	datad => \process_0~4_combout\,
	combout => \in1_sel~0_combout\);

-- Location: LCCOMB_X27_Y24_N8
in1_sel : cycloneiii_lcell_comb
-- Equation(s):
-- \in1_sel~combout\ = (\button[1]~input_o\ & (!\button[2]~input_o\ & \in1_sel~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button[1]~input_o\,
	datac => \button[2]~input_o\,
	datad => \in1_sel~0_combout\,
	combout => \in1_sel~combout\);

-- Location: LCCOMB_X27_Y24_N28
\process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (\button[2]~input_o\ & (!\button[1]~input_o\ & \process_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \button[1]~input_o\,
	datad => \process_0~2_combout\,
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X27_Y24_N0
\controler|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Selector4~0_combout\ = (\controler|WideOr6~0_combout\ & (!\controler|WideOr9~6_combout\ & ((\in1_sel~combout\) # (\process_0~3_combout\)))) # (!\controler|WideOr6~0_combout\ & (((\in1_sel~combout\) # (\process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr6~0_combout\,
	datab => \controler|WideOr9~6_combout\,
	datac => \in1_sel~combout\,
	datad => \process_0~3_combout\,
	combout => \controler|Selector4~0_combout\);

-- Location: LCCOMB_X27_Y24_N22
\controler|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Selector5~0_combout\ = ((!\process_0~3_combout\ & ((\controler|state.S_LOAD_ACC_ABS_3~q\) # (\controler|state.S_LOAD_ACC_ABS_2~q\)))) # (!\controler|WideOr9~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_LOAD_ACC_ABS_3~q\,
	datab => \controler|state.S_LOAD_ACC_ABS_2~q\,
	datac => \controler|WideOr9~6_combout\,
	datad => \process_0~3_combout\,
	combout => \controler|Selector5~0_combout\);

-- Location: LCCOMB_X27_Y24_N30
\controler|Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Selector5~1_combout\ = (\controler|WideOr6~0_combout\ & (!\in1_sel~combout\ & (\controler|Selector5~0_combout\))) # (!\controler|WideOr6~0_combout\ & ((\process_0~3_combout\) # ((!\in1_sel~combout\ & \controler|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr6~0_combout\,
	datab => \in1_sel~combout\,
	datac => \controler|Selector5~0_combout\,
	datad => \process_0~3_combout\,
	combout => \controler|Selector5~1_combout\);

-- Location: LCCOMB_X23_Y25_N20
\controler|WideOr26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr26~0_combout\ = (\controler|state.S_CALL_2~q\) # ((\controler|state.S_STORE_ACC_INDX_4~q\) # ((\controler|state.S_STORE_ACC_ABS_5~q\) # (\controler|state.S_CALL~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_CALL_2~q\,
	datab => \controler|state.S_STORE_ACC_INDX_4~q\,
	datac => \controler|state.S_STORE_ACC_ABS_5~q\,
	datad => \controler|state.S_CALL~q\,
	combout => \controler|WideOr26~0_combout\);

-- Location: FF_X27_Y23_N11
\datapath|in_to_ex_reg|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|pcL|output[3]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|in_to_ex_reg|output\(3));

-- Location: LCCOMB_X27_Y24_N26
\datapath|ex_bus|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|ex_bus|Mux4~0_combout\ = (\controler|Selector4~0_combout\ & (((\controler|Selector5~1_combout\)))) # (!\controler|Selector4~0_combout\ & ((\controler|Selector5~1_combout\ & (\datapath|ram|altsyncram_component|auto_generated|q_a\(3))) # 
-- (!\controler|Selector5~1_combout\ & ((\datapath|in_to_ex_reg|output\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ram|altsyncram_component|auto_generated|q_a\(3),
	datab => \controler|Selector4~0_combout\,
	datac => \controler|Selector5~1_combout\,
	datad => \datapath|in_to_ex_reg|output\(3),
	combout => \datapath|ex_bus|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y24_N4
\datapath|ex_bus|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|ex_bus|Mux4~1_combout\ = (\datapath|ex_bus|Mux4~0_combout\ & (((\datapath|inport2_reg|output\(3)) # (!\controler|Selector4~0_combout\)))) # (!\datapath|ex_bus|Mux4~0_combout\ & (\datapath|inport1_reg|output\(3) & 
-- ((\controler|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|inport1_reg|output\(3),
	datab => \datapath|inport2_reg|output\(3),
	datac => \datapath|ex_bus|Mux4~0_combout\,
	datad => \controler|Selector4~0_combout\,
	combout => \datapath|ex_bus|Mux4~1_combout\);

-- Location: LCCOMB_X26_Y24_N10
\controler|WideOr9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr9~combout\ = (\controler|state.S_LOAD_ACC_ABS_3~q\) # ((\controler|state.S_LOAD_ACC_ABS_2~q\) # (!\controler|WideOr9~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_LOAD_ACC_ABS_3~q\,
	datab => \controler|WideOr9~6_combout\,
	datad => \controler|state.S_LOAD_ACC_ABS_2~q\,
	combout => \controler|WideOr9~combout\);

-- Location: FF_X27_Y24_N5
\datapath|ex_to_in_reg|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|ex_bus|Mux4~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|ex_to_in_reg|output\(3));

-- Location: LCCOMB_X28_Y22_N26
\datapath|arL|output[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|arL|output[3]~feeder_combout\ = \datapath|pcL|output[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|pcL|output[3]~6_combout\,
	combout => \datapath|arL|output[3]~feeder_combout\);

-- Location: FF_X28_Y22_N27
\datapath|arL|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|arL|output[3]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|arL_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|arL|output\(3));

-- Location: LCCOMB_X27_Y23_N30
\datapath|in_bus|Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux4~3_combout\ = (\controler|WideOr11~2_combout\ & (\controler|state.S_STORE_ACC_INDX_4~q\ & ((\datapath|arL|output\(3))))) # (!\controler|WideOr11~2_combout\ & (((\datapath|ex_to_in_reg|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_STORE_ACC_INDX_4~q\,
	datab => \datapath|ex_to_in_reg|output\(3),
	datac => \datapath|arL|output\(3),
	datad => \controler|WideOr11~2_combout\,
	combout => \datapath|in_bus|Mux4~3_combout\);

-- Location: LCCOMB_X27_Y23_N6
\datapath|pcL|output[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pcL|output[3]~feeder_combout\ = \datapath|pcL|output[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|pcL|output[3]~6_combout\,
	combout => \datapath|pcL|output[3]~feeder_combout\);

-- Location: LCCOMB_X29_Y22_N24
\datapath|pcL|output[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pcL|output[2]~feeder_combout\ = \datapath|pcL|output[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|pcL|output[2]~4_combout\,
	combout => \datapath|pcL|output[2]~feeder_combout\);

-- Location: LCCOMB_X30_Y23_N0
\datapath|pc_adder|output[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pc_adder|output[0]~0_combout\ = (\datapath|pcL|output\(0) & (\controler|WideOr13~4_combout\ $ (GND))) # (!\datapath|pcL|output\(0) & (!\controler|WideOr13~4_combout\ & VCC))
-- \datapath|pc_adder|output[0]~1\ = CARRY((\datapath|pcL|output\(0) & !\controler|WideOr13~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|pcL|output\(0),
	datab => \controler|WideOr13~4_combout\,
	datad => VCC,
	combout => \datapath|pc_adder|output[0]~0_combout\,
	cout => \datapath|pc_adder|output[0]~1\);

-- Location: LCCOMB_X30_Y23_N2
\datapath|pc_adder|output[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pc_adder|output[1]~2_combout\ = (\datapath|pcL|output\(1) & (!\datapath|pc_adder|output[0]~1\)) # (!\datapath|pcL|output\(1) & ((\datapath|pc_adder|output[0]~1\) # (GND)))
-- \datapath|pc_adder|output[1]~3\ = CARRY((!\datapath|pc_adder|output[0]~1\) # (!\datapath|pcL|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|pcL|output\(1),
	datad => VCC,
	cin => \datapath|pc_adder|output[0]~1\,
	combout => \datapath|pc_adder|output[1]~2_combout\,
	cout => \datapath|pc_adder|output[1]~3\);

-- Location: LCCOMB_X30_Y23_N4
\datapath|pc_adder|output[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pc_adder|output[2]~4_combout\ = (\datapath|pcL|output\(2) & (\datapath|pc_adder|output[1]~3\ $ (GND))) # (!\datapath|pcL|output\(2) & (!\datapath|pc_adder|output[1]~3\ & VCC))
-- \datapath|pc_adder|output[2]~5\ = CARRY((\datapath|pcL|output\(2) & !\datapath|pc_adder|output[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|pcL|output\(2),
	datad => VCC,
	cin => \datapath|pc_adder|output[1]~3\,
	combout => \datapath|pc_adder|output[2]~4_combout\,
	cout => \datapath|pc_adder|output[2]~5\);

-- Location: FF_X21_Y22_N11
\controler|state.S_CALL_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_CALL_5~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_CALL_6~q\);

-- Location: FF_X22_Y24_N23
\controler|state.S_CALL_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_CALL_6~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_CALL_7~q\);

-- Location: LCCOMB_X22_Y24_N28
\controler|WideOr16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr16~combout\ = (\controler|state.S_BRANCH_TAKEN_2~q\) # ((\controler|state.S_RETURN_4~q\) # ((\controler|state.S_CALL_7~q\) # (!\controler|WideOr13~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_BRANCH_TAKEN_2~q\,
	datab => \controler|state.S_RETURN_4~q\,
	datac => \controler|state.S_CALL_7~q\,
	datad => \controler|WideOr13~4_combout\,
	combout => \controler|WideOr16~combout\);

-- Location: FF_X29_Y22_N25
\datapath|pcL|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|pcL|output[2]~feeder_combout\,
	asdata => \datapath|pc_adder|output[2]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \controler|ALT_INV_WideOr13~4_combout\,
	ena => \controler|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|pcL|output\(2));

-- Location: LCCOMB_X30_Y23_N6
\datapath|pc_adder|output[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pc_adder|output[3]~6_combout\ = (\datapath|pcL|output\(3) & (!\datapath|pc_adder|output[2]~5\)) # (!\datapath|pcL|output\(3) & ((\datapath|pc_adder|output[2]~5\) # (GND)))
-- \datapath|pc_adder|output[3]~7\ = CARRY((!\datapath|pc_adder|output[2]~5\) # (!\datapath|pcL|output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|pcL|output\(3),
	datad => VCC,
	cin => \datapath|pc_adder|output[2]~5\,
	combout => \datapath|pc_adder|output[3]~6_combout\,
	cout => \datapath|pc_adder|output[3]~7\);

-- Location: FF_X27_Y23_N7
\datapath|pcL|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|pcL|output[3]~feeder_combout\,
	asdata => \datapath|pc_adder|output[3]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \controler|ALT_INV_WideOr13~4_combout\,
	ena => \controler|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|pcL|output\(3));

-- Location: LCCOMB_X27_Y23_N16
\datapath|in_bus|Mux4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux4~4_combout\ = (\controler|state.S_CALL~q\ & (((\datapath|pcL|output\(3))))) # (!\controler|state.S_CALL~q\ & ((\datapath|in_bus|Mux4~2_combout\) # ((\datapath|in_bus|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|in_bus|Mux4~2_combout\,
	datab => \datapath|in_bus|Mux4~3_combout\,
	datac => \controler|state.S_CALL~q\,
	datad => \datapath|pcL|output\(3),
	combout => \datapath|in_bus|Mux4~4_combout\);

-- Location: LCCOMB_X21_Y23_N14
\datapath|alu|Mux4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux4~11_combout\ = (\controler|WideOr21~combout\ & (\datapath|alu|Add2~3_combout\ & ((!\controler|WideOr22~combout\) # (!\controler|WideOr23~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr21~combout\,
	datab => \controler|WideOr23~combout\,
	datac => \controler|WideOr22~combout\,
	datad => \datapath|alu|Add2~3_combout\,
	combout => \datapath|alu|Mux4~11_combout\);

-- Location: LCCOMB_X21_Y23_N12
\datapath|alu|Mux4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux4~5_combout\ = (\controler|WideOr19~combout\ & ((\controler|WideOr22~combout\ & ((!\controler|WideOr23~combout\))) # (!\controler|WideOr22~combout\ & ((\controler|WideOr23~combout\) # (!\controler|WideOr21~combout\))))) # 
-- (!\controler|WideOr19~combout\ & ((\controler|WideOr22~combout\ & (\controler|WideOr21~combout\ & \controler|WideOr23~combout\)) # (!\controler|WideOr22~combout\ & ((!\controler|WideOr23~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr19~combout\,
	datab => \controler|WideOr22~combout\,
	datac => \controler|WideOr21~combout\,
	datad => \controler|WideOr23~combout\,
	combout => \datapath|alu|Mux4~5_combout\);

-- Location: LCCOMB_X21_Y23_N18
\datapath|alu|Mux4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux4~4_combout\ = (\controler|WideOr19~combout\ & (((!\controler|WideOr23~combout\)) # (!\controler|WideOr20~1_combout\))) # (!\controler|WideOr19~combout\ & (!\controler|WideOr20~1_combout\ & ((\controler|WideOr22~combout\) # 
-- (!\controler|WideOr23~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr19~combout\,
	datab => \controler|WideOr20~1_combout\,
	datac => \controler|WideOr22~combout\,
	datad => \controler|WideOr23~combout\,
	combout => \datapath|alu|Mux4~4_combout\);

-- Location: LCCOMB_X21_Y23_N30
\datapath|alu|Mux4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux4~6_combout\ = (\datapath|alu|Mux4~4_combout\) # ((\datapath|alu|Mux4~5_combout\ & (\controler|WideOr19~combout\ $ (!\controler|WideOr20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr19~combout\,
	datab => \controler|WideOr20~1_combout\,
	datac => \datapath|alu|Mux4~5_combout\,
	datad => \datapath|alu|Mux4~4_combout\,
	combout => \datapath|alu|Mux4~6_combout\);

-- Location: LCCOMB_X20_Y24_N8
\datapath|alu|Mux4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux4~10_combout\ = (!\controler|WideOr23~0_combout\ & (\controler|WideOr22~3_combout\ & \controler|WideOr21~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr23~0_combout\,
	datac => \controler|WideOr22~3_combout\,
	datad => \controler|WideOr21~combout\,
	combout => \datapath|alu|Mux4~10_combout\);

-- Location: LCCOMB_X20_Y24_N30
\datapath|alu|Mux4~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux4~17_combout\ = (\controler|WideOr23~0_combout\) # (((\controler|WideOr21~combout\ & \controler|WideOr22~combout\)) # (!\controler|WideOr22~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr23~0_combout\,
	datab => \controler|WideOr21~combout\,
	datac => \controler|WideOr22~3_combout\,
	datad => \controler|WideOr22~combout\,
	combout => \datapath|alu|Mux4~17_combout\);

-- Location: LCCOMB_X19_Y23_N14
\datapath|alu|Mux4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux4~20_combout\ = (\datapath|alu|Mux4~19_combout\ & ((\datapath|a|output\(4)) # ((\datapath|alu|Mux4~10_combout\) # (\datapath|alu|Mux4~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mux4~19_combout\,
	datab => \datapath|a|output\(4),
	datac => \datapath|alu|Mux4~10_combout\,
	datad => \datapath|alu|Mux4~17_combout\,
	combout => \datapath|alu|Mux4~20_combout\);

-- Location: LCCOMB_X21_Y25_N2
\datapath|alu|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Add2~1_combout\ = (\controler|WideOr21~combout\ & (!\controler|WideOr22~0_combout\ & (\controler|WideOr22~3_combout\ & !\controler|state.S_CLEAR_CARRY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr21~combout\,
	datab => \controler|WideOr22~0_combout\,
	datac => \controler|WideOr22~3_combout\,
	datad => \controler|state.S_CLEAR_CARRY~q\,
	combout => \datapath|alu|Add2~1_combout\);

-- Location: LCCOMB_X21_Y23_N24
\datapath|alu|Mux4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux4~9_combout\ = (\controler|WideOr19~combout\) # ((\controler|WideOr20~1_combout\ & (!\datapath|alu|Add2~1_combout\ & \controler|WideOr23~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr19~combout\,
	datab => \controler|WideOr20~1_combout\,
	datac => \datapath|alu|Add2~1_combout\,
	datad => \controler|WideOr23~combout\,
	combout => \datapath|alu|Mux4~9_combout\);

-- Location: LCCOMB_X19_Y23_N0
\datapath|alu|Mux4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux4~12_combout\ = (\datapath|alu|Mux4~18_combout\ & (\datapath|alu|Mux4~9_combout\)) # (!\datapath|alu|Mux4~18_combout\ & ((\datapath|alu|Mux4~9_combout\ & ((\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT3\))) # 
-- (!\datapath|alu|Mux4~9_combout\ & (\datapath|alu|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mux4~18_combout\,
	datab => \datapath|alu|Mux4~9_combout\,
	datac => \datapath|alu|Add0~8_combout\,
	datad => \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT3\,
	combout => \datapath|alu|Mux4~12_combout\);

-- Location: LCCOMB_X19_Y23_N2
\datapath|alu|Mux4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux4~13_combout\ = (\datapath|alu|Mux4~18_combout\ & ((\datapath|alu|Mux4~12_combout\ & (\datapath|a|output\(2))) # (!\datapath|alu|Mux4~12_combout\ & ((\datapath|alu|Mux4~20_combout\))))) # (!\datapath|alu|Mux4~18_combout\ & 
-- (((\datapath|alu|Mux4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mux4~18_combout\,
	datab => \datapath|a|output\(2),
	datac => \datapath|alu|Mux4~20_combout\,
	datad => \datapath|alu|Mux4~12_combout\,
	combout => \datapath|alu|Mux4~13_combout\);

-- Location: LCCOMB_X19_Y23_N28
\datapath|alu|Mux4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux4~14_combout\ = (\datapath|alu|Mux4~8_combout\ & (\datapath|alu|Mux4~6_combout\)) # (!\datapath|alu|Mux4~8_combout\ & ((\datapath|alu|Mux4~6_combout\ & (\datapath|a|output\(3))) # (!\datapath|alu|Mux4~6_combout\ & 
-- ((\datapath|alu|Mux4~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mux4~8_combout\,
	datab => \datapath|alu|Mux4~6_combout\,
	datac => \datapath|a|output\(3),
	datad => \datapath|alu|Mux4~13_combout\,
	combout => \datapath|alu|Mux4~14_combout\);

-- Location: LCCOMB_X19_Y23_N6
\datapath|alu|Mux4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux4~15_combout\ = (\datapath|alu|Mux4~8_combout\ & ((\datapath|alu|Mux4~14_combout\ & ((\datapath|alu|Add2~18_combout\))) # (!\datapath|alu|Mux4~14_combout\ & (\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT11\)))) # 
-- (!\datapath|alu|Mux4~8_combout\ & (((\datapath|alu|Mux4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mux4~8_combout\,
	datab => \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datac => \datapath|alu|Add2~18_combout\,
	datad => \datapath|alu|Mux4~14_combout\,
	combout => \datapath|alu|Mux4~15_combout\);

-- Location: LCCOMB_X19_Y23_N20
\datapath|alu|Mux4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux4~16_combout\ = (\datapath|alu|Mux4~11_combout\ & (\datapath|d|output\(3))) # (!\datapath|alu|Mux4~11_combout\ & ((\datapath|alu|Mux4~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|d|output\(3),
	datac => \datapath|alu|Mux4~11_combout\,
	datad => \datapath|alu|Mux4~15_combout\,
	combout => \datapath|alu|Mux4~16_combout\);

-- Location: LCCOMB_X27_Y23_N12
\datapath|in_bus|Mux4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux4~5_combout\ = (\controler|state.S_STORE_ACC_INDX_4~q\ & (((\datapath|a|output\(3))))) # (!\controler|state.S_STORE_ACC_INDX_4~q\ & ((\controler|WideOr11~2_combout\ & ((\datapath|alu|Mux4~16_combout\))) # 
-- (!\controler|WideOr11~2_combout\ & (\datapath|a|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_STORE_ACC_INDX_4~q\,
	datab => \controler|WideOr11~2_combout\,
	datac => \datapath|a|output\(3),
	datad => \datapath|alu|Mux4~16_combout\,
	combout => \datapath|in_bus|Mux4~5_combout\);

-- Location: LCCOMB_X27_Y23_N10
\datapath|pcL|output[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pcL|output[3]~6_combout\ = (\datapath|in_bus|Add0~0_combout\ & (\datapath|in_bus|Mux4~4_combout\)) # (!\datapath|in_bus|Add0~0_combout\ & ((\datapath|in_bus|Mux4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|in_bus|Mux4~4_combout\,
	datac => \datapath|in_bus|Add0~0_combout\,
	datad => \datapath|in_bus|Mux4~5_combout\,
	combout => \datapath|pcL|output[3]~6_combout\);

-- Location: FF_X22_Y23_N23
\datapath|ir|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[3]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|state.S_FETCH_INTERNAL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|ir|output\(3));

-- Location: LCCOMB_X21_Y22_N20
\controler|next_state.S_BRANCH_NOT_Z~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_BRANCH_NOT_Z~1_combout\ = (\controler|next_state.S_STORE_ACC_ABS~0_combout\ & (\controler|next_state.S_BRANCH_NOT_Z~0_combout\ & (!\datapath|ir|output\(6) & !\datapath|ir|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|next_state.S_STORE_ACC_ABS~0_combout\,
	datab => \controler|next_state.S_BRANCH_NOT_Z~0_combout\,
	datac => \datapath|ir|output\(6),
	datad => \datapath|ir|output\(3),
	combout => \controler|next_state.S_BRANCH_NOT_Z~1_combout\);

-- Location: FF_X21_Y22_N21
\controler|state.S_BRANCH_NOT_Z\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_BRANCH_NOT_Z~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_BRANCH_NOT_Z~q\);

-- Location: LCCOMB_X22_Y22_N2
\controler|WideOr13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr13~2_combout\ = (!\controler|state.S_BRANCH_C~q\ & (!\controler|state.S_BRANCH_NOT_S~q\ & (!\controler|state.S_BRANCH_S~q\ & !\controler|state.S_BRANCH_NOT_Z~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_BRANCH_C~q\,
	datab => \controler|state.S_BRANCH_NOT_S~q\,
	datac => \controler|state.S_BRANCH_S~q\,
	datad => \controler|state.S_BRANCH_NOT_Z~q\,
	combout => \controler|WideOr13~2_combout\);

-- Location: LCCOMB_X22_Y25_N18
\controler|WideOr13~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr13~3_combout\ = (!\controler|state.S_BRANCH_Z~q\ & (!\controler|state.S_BRANCH_NOT_V~q\ & (!\controler|state.S_BRANCH_V~q\ & !\controler|state.S_LOAD_ACC_INDX_5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_BRANCH_Z~q\,
	datab => \controler|state.S_BRANCH_NOT_V~q\,
	datac => \controler|state.S_BRANCH_V~q\,
	datad => \controler|state.S_LOAD_ACC_INDX_5~q\,
	combout => \controler|WideOr13~3_combout\);

-- Location: LCCOMB_X21_Y23_N8
\datapath|alu|Mux4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux4~7_combout\ = (\datapath|alu|Mux4~5_combout\ & (\controler|WideOr20~1_combout\ $ (!\controler|WideOr19~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mux4~5_combout\,
	datab => \controler|WideOr20~1_combout\,
	datad => \controler|WideOr19~combout\,
	combout => \datapath|alu|Mux4~7_combout\);

-- Location: LCCOMB_X21_Y23_N22
\datapath|alu|Mux4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux4~8_combout\ = (!\datapath|alu|Mux4~7_combout\ & ((\datapath|alu|Mux4~4_combout\) # ((!\controler|WideOr21~combout\ & \controler|WideOr19~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr21~combout\,
	datab => \datapath|alu|Mux4~4_combout\,
	datac => \datapath|alu|Mux4~7_combout\,
	datad => \controler|WideOr19~combout\,
	combout => \datapath|alu|Mux4~8_combout\);

-- Location: LCCOMB_X19_Y22_N22
\datapath|alu|Mux5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux5~5_combout\ = (\datapath|d|output\(2) & ((\datapath|a|output\(2) $ (\datapath|alu|Mux4~17_combout\)) # (!\datapath|alu|Mux4~10_combout\))) # (!\datapath|d|output\(2) & ((\datapath|alu|Mux4~17_combout\ & (\datapath|a|output\(2))) # 
-- (!\datapath|alu|Mux4~17_combout\ & ((!\datapath|alu|Mux4~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|d|output\(2),
	datab => \datapath|a|output\(2),
	datac => \datapath|alu|Mux4~17_combout\,
	datad => \datapath|alu|Mux4~10_combout\,
	combout => \datapath|alu|Mux5~5_combout\);

-- Location: LCCOMB_X19_Y22_N12
\datapath|alu|Mux5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux5~6_combout\ = (\datapath|alu|Mux5~5_combout\ & ((\datapath|a|output\(3)) # ((\datapath|alu|Mux4~17_combout\) # (\datapath|alu|Mux4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|a|output\(3),
	datab => \datapath|alu|Mux4~17_combout\,
	datac => \datapath|alu|Mux5~5_combout\,
	datad => \datapath|alu|Mux4~10_combout\,
	combout => \datapath|alu|Mux5~6_combout\);

-- Location: LCCOMB_X19_Y22_N4
\datapath|alu|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux5~0_combout\ = (\datapath|alu|Mux4~18_combout\ & (((\datapath|alu|Mux4~9_combout\) # (\datapath|alu|Mux5~6_combout\)))) # (!\datapath|alu|Mux4~18_combout\ & (\datapath|alu|Add0~6_combout\ & (!\datapath|alu|Mux4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mux4~18_combout\,
	datab => \datapath|alu|Add0~6_combout\,
	datac => \datapath|alu|Mux4~9_combout\,
	datad => \datapath|alu|Mux5~6_combout\,
	combout => \datapath|alu|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y22_N18
\datapath|alu|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux5~1_combout\ = (\datapath|alu|Mux4~9_combout\ & ((\datapath|alu|Mux5~0_combout\ & (\datapath|a|output\(1))) # (!\datapath|alu|Mux5~0_combout\ & ((\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT2\))))) # (!\datapath|alu|Mux4~9_combout\ 
-- & (((\datapath|alu|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|a|output\(1),
	datab => \datapath|alu|Mux4~9_combout\,
	datac => \datapath|alu|Mux5~0_combout\,
	datad => \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT2\,
	combout => \datapath|alu|Mux5~1_combout\);

-- Location: LCCOMB_X19_Y22_N20
\datapath|alu|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux5~2_combout\ = (\datapath|alu|Mux4~6_combout\ & (((\datapath|alu|Mux4~8_combout\)))) # (!\datapath|alu|Mux4~6_combout\ & ((\datapath|alu|Mux4~8_combout\ & (\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT10\)) # 
-- (!\datapath|alu|Mux4~8_combout\ & ((\datapath|alu|Mux5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mux4~6_combout\,
	datab => \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datac => \datapath|alu|Mux4~8_combout\,
	datad => \datapath|alu|Mux5~1_combout\,
	combout => \datapath|alu|Mux5~2_combout\);

-- Location: LCCOMB_X19_Y22_N6
\datapath|alu|Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux5~3_combout\ = (\datapath|alu|Mux4~6_combout\ & ((\datapath|alu|Mux5~2_combout\ & ((\datapath|alu|Add2~16_combout\))) # (!\datapath|alu|Mux5~2_combout\ & (\datapath|a|output\(2))))) # (!\datapath|alu|Mux4~6_combout\ & 
-- (((\datapath|alu|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mux4~6_combout\,
	datab => \datapath|a|output\(2),
	datac => \datapath|alu|Add2~16_combout\,
	datad => \datapath|alu|Mux5~2_combout\,
	combout => \datapath|alu|Mux5~3_combout\);

-- Location: LCCOMB_X19_Y22_N16
\datapath|alu|Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux5~4_combout\ = (\datapath|alu|Mux4~11_combout\ & (\datapath|d|output\(2))) # (!\datapath|alu|Mux4~11_combout\ & ((\datapath|alu|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|d|output\(2),
	datac => \datapath|alu|Mux4~11_combout\,
	datad => \datapath|alu|Mux5~3_combout\,
	combout => \datapath|alu|Mux5~4_combout\);

-- Location: LCCOMB_X21_Y23_N10
\datapath|alu|Mux4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux4~18_combout\ = (!\controler|state.S_INCREMENT_ACC~q\ & (\controler|WideOr20~0_combout\ & (!\controler|state.S_DECREMENT_ACC~q\ & \controler|WideOr20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_INCREMENT_ACC~q\,
	datab => \controler|WideOr20~0_combout\,
	datac => \controler|state.S_DECREMENT_ACC~q\,
	datad => \controler|WideOr20~1_combout\,
	combout => \datapath|alu|Mux4~18_combout\);

-- Location: LCCOMB_X19_Y22_N8
\datapath|alu|Mux6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux6~6_combout\ = (\datapath|alu|Mux6~5_combout\ & ((\datapath|a|output\(2)) # ((\datapath|alu|Mux4~17_combout\) # (\datapath|alu|Mux4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mux6~5_combout\,
	datab => \datapath|a|output\(2),
	datac => \datapath|alu|Mux4~17_combout\,
	datad => \datapath|alu|Mux4~10_combout\,
	combout => \datapath|alu|Mux6~6_combout\);

-- Location: LCCOMB_X19_Y22_N2
\datapath|alu|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux6~0_combout\ = (\datapath|alu|Mux4~18_combout\ & (((\datapath|alu|Mux4~9_combout\)))) # (!\datapath|alu|Mux4~18_combout\ & ((\datapath|alu|Mux4~9_combout\ & ((\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT1\))) # 
-- (!\datapath|alu|Mux4~9_combout\ & (\datapath|alu|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Add0~4_combout\,
	datab => \datapath|alu|Mux4~18_combout\,
	datac => \datapath|alu|Mux4~9_combout\,
	datad => \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT1\,
	combout => \datapath|alu|Mux6~0_combout\);

-- Location: LCCOMB_X19_Y22_N24
\datapath|alu|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux6~1_combout\ = (\datapath|alu|Mux4~18_combout\ & ((\datapath|alu|Mux6~0_combout\ & (\datapath|a|output\(0))) # (!\datapath|alu|Mux6~0_combout\ & ((\datapath|alu|Mux6~6_combout\))))) # (!\datapath|alu|Mux4~18_combout\ & 
-- (((\datapath|alu|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|a|output\(0),
	datab => \datapath|alu|Mux4~18_combout\,
	datac => \datapath|alu|Mux6~6_combout\,
	datad => \datapath|alu|Mux6~0_combout\,
	combout => \datapath|alu|Mux6~1_combout\);

-- Location: LCCOMB_X19_Y22_N10
\datapath|alu|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux6~2_combout\ = (\datapath|alu|Mux4~8_combout\ & (((\datapath|alu|Mux4~6_combout\)))) # (!\datapath|alu|Mux4~8_combout\ & ((\datapath|alu|Mux4~6_combout\ & (\datapath|a|output\(1))) # (!\datapath|alu|Mux4~6_combout\ & 
-- ((\datapath|alu|Mux6~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mux4~8_combout\,
	datab => \datapath|a|output\(1),
	datac => \datapath|alu|Mux4~6_combout\,
	datad => \datapath|alu|Mux6~1_combout\,
	combout => \datapath|alu|Mux6~2_combout\);

-- Location: LCCOMB_X19_Y22_N28
\datapath|alu|Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux6~3_combout\ = (\datapath|alu|Mux4~8_combout\ & ((\datapath|alu|Mux6~2_combout\ & ((\datapath|alu|Add2~14_combout\))) # (!\datapath|alu|Mux6~2_combout\ & (\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT9\)))) # 
-- (!\datapath|alu|Mux4~8_combout\ & (((\datapath|alu|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datab => \datapath|alu|Add2~14_combout\,
	datac => \datapath|alu|Mux4~8_combout\,
	datad => \datapath|alu|Mux6~2_combout\,
	combout => \datapath|alu|Mux6~3_combout\);

-- Location: LCCOMB_X26_Y22_N16
\datapath|alu|Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux6~4_combout\ = (\datapath|alu|Mux4~11_combout\ & (\datapath|d|output\(1))) # (!\datapath|alu|Mux4~11_combout\ & ((\datapath|alu|Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mux4~11_combout\,
	datac => \datapath|d|output\(1),
	datad => \datapath|alu|Mux6~3_combout\,
	combout => \datapath|alu|Mux6~4_combout\);

-- Location: LCCOMB_X22_Y23_N30
\datapath|alu|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Equal0~2_combout\ = (\datapath|alu|Equal0~1_combout\ & (!\datapath|alu|Mux0~8_combout\ & (!\datapath|alu|Mux5~4_combout\ & !\datapath|alu|Mux6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Equal0~1_combout\,
	datab => \datapath|alu|Mux0~8_combout\,
	datac => \datapath|alu|Mux5~4_combout\,
	datad => \datapath|alu|Mux6~4_combout\,
	combout => \datapath|alu|Equal0~2_combout\);

-- Location: FF_X22_Y23_N31
\datapath|z_flag|output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|alu|Equal0~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|z_flag|output~q\);

-- Location: LCCOMB_X22_Y25_N4
\controler|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Selector1~1_combout\ = (\controler|state.S_BRANCH_Z~q\ & (((!\datapath|s_flag|output~q\ & \controler|state.S_BRANCH_S~q\)) # (!\datapath|z_flag|output~q\))) # (!\controler|state.S_BRANCH_Z~q\ & (!\datapath|s_flag|output~q\ & 
-- (\controler|state.S_BRANCH_S~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_BRANCH_Z~q\,
	datab => \datapath|s_flag|output~q\,
	datac => \controler|state.S_BRANCH_S~q\,
	datad => \datapath|z_flag|output~q\,
	combout => \controler|Selector1~1_combout\);

-- Location: LCCOMB_X21_Y22_N8
\controler|next_state.S_BRANCH_NOT_C~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_BRANCH_NOT_C~2_combout\ = (!\datapath|ir|output\(1) & (!\datapath|ir|output\(0) & (!\datapath|ir|output\(2) & \controler|next_state.S_BRANCH_V~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(1),
	datab => \datapath|ir|output\(0),
	datac => \datapath|ir|output\(2),
	datad => \controler|next_state.S_BRANCH_V~0_combout\,
	combout => \controler|next_state.S_BRANCH_NOT_C~2_combout\);

-- Location: FF_X21_Y22_N9
\controler|state.S_BRANCH_NOT_C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_BRANCH_NOT_C~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_BRANCH_NOT_C~q\);

-- Location: LCCOMB_X22_Y24_N22
\controler|Selector1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Selector1~3_combout\ = (\datapath|c_flag|output~q\ & ((\controler|state.S_BRANCH_NOT_C~q\))) # (!\datapath|c_flag|output~q\ & (\controler|state.S_BRANCH_C~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_BRANCH_C~q\,
	datab => \datapath|c_flag|output~q\,
	datad => \controler|state.S_BRANCH_NOT_C~q\,
	combout => \controler|Selector1~3_combout\);

-- Location: LCCOMB_X22_Y22_N10
\controler|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Selector1~0_combout\ = (\datapath|z_flag|output~q\ & ((\controler|state.S_BRANCH_NOT_Z~q\) # ((\controler|state.S_BRANCH_NOT_S~q\ & \datapath|s_flag|output~q\)))) # (!\datapath|z_flag|output~q\ & (((\controler|state.S_BRANCH_NOT_S~q\ & 
-- \datapath|s_flag|output~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|z_flag|output~q\,
	datab => \controler|state.S_BRANCH_NOT_Z~q\,
	datac => \controler|state.S_BRANCH_NOT_S~q\,
	datad => \datapath|s_flag|output~q\,
	combout => \controler|Selector1~0_combout\);

-- Location: LCCOMB_X22_Y25_N16
\controler|Selector1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Selector1~4_combout\ = (\controler|Selector1~2_combout\) # ((\controler|Selector1~1_combout\) # ((\controler|Selector1~3_combout\) # (\controler|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|Selector1~2_combout\,
	datab => \controler|Selector1~1_combout\,
	datac => \controler|Selector1~3_combout\,
	datad => \controler|Selector1~0_combout\,
	combout => \controler|Selector1~4_combout\);

-- Location: FF_X22_Y25_N17
\controler|state.S_INCRREMNET_PC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|Selector1~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_INCRREMNET_PC~q\);

-- Location: LCCOMB_X23_Y25_N8
\controler|WideOr1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr1~6_combout\ = (!\controler|state.S_STORE_ACC_INDX_5~q\ & (!\controler|state.S_LOAD_ACC_INDX_6~q\ & !\controler|state.S_INCRREMNET_PC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_STORE_ACC_INDX_5~q\,
	datab => \controler|state.S_LOAD_ACC_INDX_6~q\,
	datac => \controler|state.S_INCRREMNET_PC~q\,
	combout => \controler|WideOr1~6_combout\);

-- Location: LCCOMB_X22_Y21_N4
\controler|WideOr13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr13~0_combout\ = (!\controler|state.S_FETCH_INTERNAL~q\ & (!\controler|state.S_LOAD_ACC_ABS_4~q\ & (!\controler|state.S_STORE_ACC_ABS_4~q\ & !\controler|state.S_LOAD_ACC_IMM_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_FETCH_INTERNAL~q\,
	datab => \controler|state.S_LOAD_ACC_ABS_4~q\,
	datac => \controler|state.S_STORE_ACC_ABS_4~q\,
	datad => \controler|state.S_LOAD_ACC_IMM_3~q\,
	combout => \controler|WideOr13~0_combout\);

-- Location: LCCOMB_X22_Y24_N4
\controler|WideOr13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr13~1_combout\ = (!\controler|state.S_BRANCH_NOT_C~q\ & (\controler|WideOr1~6_combout\ & \controler|WideOr13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_BRANCH_NOT_C~q\,
	datab => \controler|WideOr1~6_combout\,
	datad => \controler|WideOr13~0_combout\,
	combout => \controler|WideOr13~1_combout\);

-- Location: LCCOMB_X26_Y23_N26
\controler|WideOr13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr13~4_combout\ = (\controler|Selector3~8_combout\ & (\controler|WideOr13~2_combout\ & (\controler|WideOr13~3_combout\ & \controler|WideOr13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|Selector3~8_combout\,
	datab => \controler|WideOr13~2_combout\,
	datac => \controler|WideOr13~3_combout\,
	datad => \controler|WideOr13~1_combout\,
	combout => \controler|WideOr13~4_combout\);

-- Location: LCCOMB_X27_Y23_N14
\datapath|pc_adder|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pc_adder|Add0~6_combout\ = (\controler|WideOr13~4_combout\ & ((\datapath|pcH|output[0]~0_combout\))) # (!\controler|WideOr13~4_combout\ & (\datapath|pc_adder|output[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controler|WideOr13~4_combout\,
	datac => \datapath|pc_adder|output[0]~0_combout\,
	datad => \datapath|pcH|output[0]~0_combout\,
	combout => \datapath|pc_adder|Add0~6_combout\);

-- Location: FF_X27_Y23_N15
\datapath|pcL|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|pc_adder|Add0~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|pcL|output\(0));

-- Location: LCCOMB_X27_Y23_N22
\datapath|in_bus|Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux7~2_combout\ = (!\controler|state.S_STORE_ACC_INDX_4~q\ & (\datapath|pcH|output\(0) & \controler|WideOr11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_STORE_ACC_INDX_4~q\,
	datac => \datapath|pcH|output\(0),
	datad => \controler|WideOr11~2_combout\,
	combout => \datapath|in_bus|Mux7~2_combout\);

-- Location: LCCOMB_X19_Y28_N0
\U_CLK_DIV|count[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_DIV|count[0]~0_combout\ = !\U_CLK_DIV|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CLK_DIV|count\(0),
	combout => \U_CLK_DIV|count[0]~0_combout\);

-- Location: FF_X19_Y28_N1
\U_CLK_DIV|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CLK_DIV|count[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_DIV|count\(0));

-- Location: LCCOMB_X19_Y28_N14
\U_CLK_DIV|clk_en~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_DIV|clk_en~feeder_combout\ = \U_CLK_DIV|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_CLK_DIV|count\(0),
	combout => \U_CLK_DIV|clk_en~feeder_combout\);

-- Location: FF_X19_Y28_N15
\U_CLK_DIV|clk_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CLK_DIV|clk_en~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_DIV|clk_en~q\);

-- Location: CLKCTRL_G12
\U_CLK_DIV|clk_en~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_CLK_DIV|clk_en~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_CLK_DIV|clk_en~clkctrl_outclk\);

-- Location: LCCOMB_X29_Y22_N30
\datapath|pcL|output[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pcL|output[1]~feeder_combout\ = \datapath|pcL|output[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|pcL|output[1]~5_combout\,
	combout => \datapath|pcL|output[1]~feeder_combout\);

-- Location: FF_X29_Y22_N31
\datapath|pcL|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|pcL|output[1]~feeder_combout\,
	asdata => \datapath|pc_adder|output[1]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \controler|ALT_INV_WideOr13~4_combout\,
	ena => \controler|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|pcL|output\(1));

-- Location: FF_X28_Y22_N19
\datapath|arL|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[1]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|arL_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|arL|output\(1));

-- Location: LCCOMB_X28_Y22_N18
\datapath|adr_bus|Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux14~0_combout\ = (\datapath|adr_bus|Mux7~3_combout\ & ((\datapath|x_adder|output[1]~2_combout\) # ((\datapath|adr_bus|Mux7~2_combout\)))) # (!\datapath|adr_bus|Mux7~3_combout\ & (((\datapath|arL|output\(1) & 
-- !\datapath|adr_bus|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|adr_bus|Mux7~3_combout\,
	datab => \datapath|x_adder|output[1]~2_combout\,
	datac => \datapath|arL|output\(1),
	datad => \datapath|adr_bus|Mux7~2_combout\,
	combout => \datapath|adr_bus|Mux14~0_combout\);

-- Location: LCCOMB_X28_Y22_N0
\datapath|adr_bus|Mux14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux14~1_combout\ = (\datapath|adr_bus|Mux7~2_combout\ & ((\datapath|adr_bus|Mux14~0_combout\ & ((\datapath|pcL|output\(1)))) # (!\datapath|adr_bus|Mux14~0_combout\ & (\datapath|spL|output\(1))))) # (!\datapath|adr_bus|Mux7~2_combout\ & 
-- (((\datapath|adr_bus|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|spL|output\(1),
	datab => \datapath|adr_bus|Mux7~2_combout\,
	datac => \datapath|pcL|output\(1),
	datad => \datapath|adr_bus|Mux14~0_combout\,
	combout => \datapath|adr_bus|Mux14~1_combout\);

-- Location: LCCOMB_X28_Y23_N12
\datapath|spL|output[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|spL|output[1]~10_combout\ = (\controler|sp_add_sel[0]~0_combout\ & ((\datapath|spL|output\(1) & (\datapath|spL|output[0]~9\ & VCC)) # (!\datapath|spL|output\(1) & (!\datapath|spL|output[0]~9\)))) # (!\controler|sp_add_sel[0]~0_combout\ & 
-- ((\datapath|spL|output\(1) & (!\datapath|spL|output[0]~9\)) # (!\datapath|spL|output\(1) & ((\datapath|spL|output[0]~9\) # (GND)))))
-- \datapath|spL|output[1]~11\ = CARRY((\controler|sp_add_sel[0]~0_combout\ & (!\datapath|spL|output\(1) & !\datapath|spL|output[0]~9\)) # (!\controler|sp_add_sel[0]~0_combout\ & ((!\datapath|spL|output[0]~9\) # (!\datapath|spL|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controler|sp_add_sel[0]~0_combout\,
	datab => \datapath|spL|output\(1),
	datad => VCC,
	cin => \datapath|spL|output[0]~9\,
	combout => \datapath|spL|output[1]~10_combout\,
	cout => \datapath|spL|output[1]~11\);

-- Location: FF_X28_Y23_N13
\datapath|spL|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|spL|output[1]~10_combout\,
	asdata => \datapath|pcL|output[1]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \controler|WideOr29~0_combout\,
	ena => \controler|WideOr29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|spL|output\(1));

-- Location: LCCOMB_X28_Y23_N14
\datapath|spL|output[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|spL|output[2]~12_combout\ = ((\controler|sp_add_sel[0]~0_combout\ $ (\datapath|spL|output\(2) $ (!\datapath|spL|output[1]~11\)))) # (GND)
-- \datapath|spL|output[2]~13\ = CARRY((\controler|sp_add_sel[0]~0_combout\ & ((\datapath|spL|output\(2)) # (!\datapath|spL|output[1]~11\))) # (!\controler|sp_add_sel[0]~0_combout\ & (\datapath|spL|output\(2) & !\datapath|spL|output[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controler|sp_add_sel[0]~0_combout\,
	datab => \datapath|spL|output\(2),
	datad => VCC,
	cin => \datapath|spL|output[1]~11\,
	combout => \datapath|spL|output[2]~12_combout\,
	cout => \datapath|spL|output[2]~13\);

-- Location: FF_X28_Y23_N15
\datapath|spL|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|spL|output[2]~12_combout\,
	asdata => \datapath|pcL|output[2]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \controler|WideOr29~0_combout\,
	ena => \controler|WideOr29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|spL|output\(2));

-- Location: FF_X28_Y22_N3
\datapath|arL|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[2]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|arL_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|arL|output\(2));

-- Location: LCCOMB_X28_Y22_N2
\datapath|adr_bus|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux13~0_combout\ = (\datapath|adr_bus|Mux7~3_combout\ & (((\datapath|adr_bus|Mux7~2_combout\)))) # (!\datapath|adr_bus|Mux7~3_combout\ & ((\datapath|adr_bus|Mux7~2_combout\ & (\datapath|spL|output\(2))) # 
-- (!\datapath|adr_bus|Mux7~2_combout\ & ((\datapath|arL|output\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|adr_bus|Mux7~3_combout\,
	datab => \datapath|spL|output\(2),
	datac => \datapath|arL|output\(2),
	datad => \datapath|adr_bus|Mux7~2_combout\,
	combout => \datapath|adr_bus|Mux13~0_combout\);

-- Location: LCCOMB_X28_Y22_N12
\datapath|adr_bus|Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux13~1_combout\ = (\datapath|adr_bus|Mux7~3_combout\ & ((\datapath|adr_bus|Mux13~0_combout\ & ((\datapath|pcL|output\(2)))) # (!\datapath|adr_bus|Mux13~0_combout\ & (\datapath|x_adder|output[2]~4_combout\)))) # 
-- (!\datapath|adr_bus|Mux7~3_combout\ & (((\datapath|adr_bus|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|x_adder|output[2]~4_combout\,
	datab => \datapath|pcL|output\(2),
	datac => \datapath|adr_bus|Mux7~3_combout\,
	datad => \datapath|adr_bus|Mux13~0_combout\,
	combout => \datapath|adr_bus|Mux13~1_combout\);

-- Location: LCCOMB_X28_Y22_N28
\datapath|adr_bus|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux12~0_combout\ = (\datapath|adr_bus|Mux7~3_combout\ & (((\datapath|x_adder|output[3]~6_combout\) # (\datapath|adr_bus|Mux7~2_combout\)))) # (!\datapath|adr_bus|Mux7~3_combout\ & (\datapath|arL|output\(3) & 
-- ((!\datapath|adr_bus|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|arL|output\(3),
	datab => \datapath|x_adder|output[3]~6_combout\,
	datac => \datapath|adr_bus|Mux7~3_combout\,
	datad => \datapath|adr_bus|Mux7~2_combout\,
	combout => \datapath|adr_bus|Mux12~0_combout\);

-- Location: LCCOMB_X28_Y22_N30
\datapath|adr_bus|Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux12~1_combout\ = (\datapath|adr_bus|Mux7~2_combout\ & ((\datapath|adr_bus|Mux12~0_combout\ & ((\datapath|pcL|output\(3)))) # (!\datapath|adr_bus|Mux12~0_combout\ & (\datapath|spL|output\(3))))) # (!\datapath|adr_bus|Mux7~2_combout\ & 
-- (((\datapath|adr_bus|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|spL|output\(3),
	datab => \datapath|adr_bus|Mux7~2_combout\,
	datac => \datapath|pcL|output\(3),
	datad => \datapath|adr_bus|Mux12~0_combout\,
	combout => \datapath|adr_bus|Mux12~1_combout\);

-- Location: LCCOMB_X23_Y24_N22
\datapath|adr_bus|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux11~0_combout\ = (\datapath|adr_bus|Mux7~3_combout\ & ((\datapath|x_adder|output[4]~8_combout\) # ((\datapath|adr_bus|Mux7~2_combout\)))) # (!\datapath|adr_bus|Mux7~3_combout\ & (((\datapath|arL|output\(4) & 
-- !\datapath|adr_bus|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|x_adder|output[4]~8_combout\,
	datab => \datapath|arL|output\(4),
	datac => \datapath|adr_bus|Mux7~3_combout\,
	datad => \datapath|adr_bus|Mux7~2_combout\,
	combout => \datapath|adr_bus|Mux11~0_combout\);

-- Location: LCCOMB_X23_Y24_N0
\datapath|adr_bus|Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux11~1_combout\ = (\datapath|adr_bus|Mux11~0_combout\ & (((\datapath|pcL|output\(4)) # (!\datapath|adr_bus|Mux7~2_combout\)))) # (!\datapath|adr_bus|Mux11~0_combout\ & (\datapath|spL|output\(4) & ((\datapath|adr_bus|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|spL|output\(4),
	datab => \datapath|pcL|output\(4),
	datac => \datapath|adr_bus|Mux11~0_combout\,
	datad => \datapath|adr_bus|Mux7~2_combout\,
	combout => \datapath|adr_bus|Mux11~1_combout\);

-- Location: LCCOMB_X28_Y23_N16
\datapath|spL|output[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|spL|output[3]~14_combout\ = (\controler|sp_add_sel[0]~0_combout\ & ((\datapath|spL|output\(3) & (\datapath|spL|output[2]~13\ & VCC)) # (!\datapath|spL|output\(3) & (!\datapath|spL|output[2]~13\)))) # (!\controler|sp_add_sel[0]~0_combout\ & 
-- ((\datapath|spL|output\(3) & (!\datapath|spL|output[2]~13\)) # (!\datapath|spL|output\(3) & ((\datapath|spL|output[2]~13\) # (GND)))))
-- \datapath|spL|output[3]~15\ = CARRY((\controler|sp_add_sel[0]~0_combout\ & (!\datapath|spL|output\(3) & !\datapath|spL|output[2]~13\)) # (!\controler|sp_add_sel[0]~0_combout\ & ((!\datapath|spL|output[2]~13\) # (!\datapath|spL|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controler|sp_add_sel[0]~0_combout\,
	datab => \datapath|spL|output\(3),
	datad => VCC,
	cin => \datapath|spL|output[2]~13\,
	combout => \datapath|spL|output[3]~14_combout\,
	cout => \datapath|spL|output[3]~15\);

-- Location: FF_X28_Y23_N17
\datapath|spL|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|spL|output[3]~14_combout\,
	asdata => \datapath|pcL|output[3]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \controler|WideOr29~0_combout\,
	ena => \controler|WideOr29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|spL|output\(3));

-- Location: LCCOMB_X28_Y23_N18
\datapath|spL|output[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|spL|output[4]~16_combout\ = ((\controler|sp_add_sel[0]~0_combout\ $ (\datapath|spL|output\(4) $ (!\datapath|spL|output[3]~15\)))) # (GND)
-- \datapath|spL|output[4]~17\ = CARRY((\controler|sp_add_sel[0]~0_combout\ & ((\datapath|spL|output\(4)) # (!\datapath|spL|output[3]~15\))) # (!\controler|sp_add_sel[0]~0_combout\ & (\datapath|spL|output\(4) & !\datapath|spL|output[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controler|sp_add_sel[0]~0_combout\,
	datab => \datapath|spL|output\(4),
	datad => VCC,
	cin => \datapath|spL|output[3]~15\,
	combout => \datapath|spL|output[4]~16_combout\,
	cout => \datapath|spL|output[4]~17\);

-- Location: FF_X28_Y23_N19
\datapath|spL|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|spL|output[4]~16_combout\,
	asdata => \datapath|pcL|output[4]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \controler|WideOr29~0_combout\,
	ena => \controler|WideOr29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|spL|output\(4));

-- Location: LCCOMB_X28_Y23_N20
\datapath|spL|output[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|spL|output[5]~18_combout\ = (\controler|sp_add_sel[0]~0_combout\ & ((\datapath|spL|output\(5) & (\datapath|spL|output[4]~17\ & VCC)) # (!\datapath|spL|output\(5) & (!\datapath|spL|output[4]~17\)))) # (!\controler|sp_add_sel[0]~0_combout\ & 
-- ((\datapath|spL|output\(5) & (!\datapath|spL|output[4]~17\)) # (!\datapath|spL|output\(5) & ((\datapath|spL|output[4]~17\) # (GND)))))
-- \datapath|spL|output[5]~19\ = CARRY((\controler|sp_add_sel[0]~0_combout\ & (!\datapath|spL|output\(5) & !\datapath|spL|output[4]~17\)) # (!\controler|sp_add_sel[0]~0_combout\ & ((!\datapath|spL|output[4]~17\) # (!\datapath|spL|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controler|sp_add_sel[0]~0_combout\,
	datab => \datapath|spL|output\(5),
	datad => VCC,
	cin => \datapath|spL|output[4]~17\,
	combout => \datapath|spL|output[5]~18_combout\,
	cout => \datapath|spL|output[5]~19\);

-- Location: FF_X28_Y23_N21
\datapath|spL|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|spL|output[5]~18_combout\,
	asdata => \datapath|pcL|output[5]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \controler|WideOr29~0_combout\,
	ena => \controler|WideOr29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|spL|output\(5));

-- Location: LCCOMB_X23_Y24_N12
\datapath|adr_bus|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux10~0_combout\ = (\datapath|adr_bus|Mux7~3_combout\ & (((\datapath|adr_bus|Mux7~2_combout\)))) # (!\datapath|adr_bus|Mux7~3_combout\ & ((\datapath|adr_bus|Mux7~2_combout\ & ((\datapath|spL|output\(5)))) # 
-- (!\datapath|adr_bus|Mux7~2_combout\ & (\datapath|arL|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|arL|output\(5),
	datab => \datapath|spL|output\(5),
	datac => \datapath|adr_bus|Mux7~3_combout\,
	datad => \datapath|adr_bus|Mux7~2_combout\,
	combout => \datapath|adr_bus|Mux10~0_combout\);

-- Location: LCCOMB_X23_Y24_N10
\datapath|adr_bus|Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux10~1_combout\ = (\datapath|adr_bus|Mux7~3_combout\ & ((\datapath|adr_bus|Mux10~0_combout\ & (\datapath|pcL|output\(5))) # (!\datapath|adr_bus|Mux10~0_combout\ & ((\datapath|x_adder|output[5]~10_combout\))))) # 
-- (!\datapath|adr_bus|Mux7~3_combout\ & (((\datapath|adr_bus|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|pcL|output\(5),
	datab => \datapath|adr_bus|Mux7~3_combout\,
	datac => \datapath|x_adder|output[5]~10_combout\,
	datad => \datapath|adr_bus|Mux10~0_combout\,
	combout => \datapath|adr_bus|Mux10~1_combout\);

-- Location: LCCOMB_X28_Y23_N22
\datapath|spL|output[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|spL|output[6]~20_combout\ = ((\controler|sp_add_sel[0]~0_combout\ $ (\datapath|spL|output\(6) $ (!\datapath|spL|output[5]~19\)))) # (GND)
-- \datapath|spL|output[6]~21\ = CARRY((\controler|sp_add_sel[0]~0_combout\ & ((\datapath|spL|output\(6)) # (!\datapath|spL|output[5]~19\))) # (!\controler|sp_add_sel[0]~0_combout\ & (\datapath|spL|output\(6) & !\datapath|spL|output[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controler|sp_add_sel[0]~0_combout\,
	datab => \datapath|spL|output\(6),
	datad => VCC,
	cin => \datapath|spL|output[5]~19\,
	combout => \datapath|spL|output[6]~20_combout\,
	cout => \datapath|spL|output[6]~21\);

-- Location: FF_X28_Y23_N23
\datapath|spL|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|spL|output[6]~20_combout\,
	asdata => \datapath|pcL|output[6]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \controler|WideOr29~0_combout\,
	ena => \controler|WideOr29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|spL|output\(6));

-- Location: LCCOMB_X29_Y23_N10
\datapath|pcL|output[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pcL|output[6]~feeder_combout\ = \datapath|pcL|output[6]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|pcL|output[6]~1_combout\,
	combout => \datapath|pcL|output[6]~feeder_combout\);

-- Location: LCCOMB_X30_Y23_N12
\datapath|pc_adder|output[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pc_adder|output[6]~12_combout\ = (\datapath|pcL|output\(6) & (\datapath|pc_adder|output[5]~11\ $ (GND))) # (!\datapath|pcL|output\(6) & (!\datapath|pc_adder|output[5]~11\ & VCC))
-- \datapath|pc_adder|output[6]~13\ = CARRY((\datapath|pcL|output\(6) & !\datapath|pc_adder|output[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|pcL|output\(6),
	datad => VCC,
	cin => \datapath|pc_adder|output[5]~11\,
	combout => \datapath|pc_adder|output[6]~12_combout\,
	cout => \datapath|pc_adder|output[6]~13\);

-- Location: FF_X29_Y23_N11
\datapath|pcL|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|pcL|output[6]~feeder_combout\,
	asdata => \datapath|pc_adder|output[6]~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \controler|ALT_INV_WideOr13~4_combout\,
	ena => \controler|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|pcL|output\(6));

-- Location: FF_X23_Y24_N5
\datapath|arL|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[6]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|arL_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|arL|output\(6));

-- Location: LCCOMB_X23_Y24_N2
\datapath|adr_bus|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux9~0_combout\ = (\datapath|adr_bus|Mux7~2_combout\ & (((\datapath|adr_bus|Mux7~3_combout\)))) # (!\datapath|adr_bus|Mux7~2_combout\ & ((\datapath|adr_bus|Mux7~3_combout\ & ((\datapath|x_adder|output[6]~12_combout\))) # 
-- (!\datapath|adr_bus|Mux7~3_combout\ & (\datapath|arL|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|adr_bus|Mux7~2_combout\,
	datab => \datapath|arL|output\(6),
	datac => \datapath|adr_bus|Mux7~3_combout\,
	datad => \datapath|x_adder|output[6]~12_combout\,
	combout => \datapath|adr_bus|Mux9~0_combout\);

-- Location: LCCOMB_X23_Y24_N20
\datapath|adr_bus|Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux9~1_combout\ = (\datapath|adr_bus|Mux7~2_combout\ & ((\datapath|adr_bus|Mux9~0_combout\ & ((\datapath|pcL|output\(6)))) # (!\datapath|adr_bus|Mux9~0_combout\ & (\datapath|spL|output\(6))))) # (!\datapath|adr_bus|Mux7~2_combout\ & 
-- (((\datapath|adr_bus|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|adr_bus|Mux7~2_combout\,
	datab => \datapath|spL|output\(6),
	datac => \datapath|pcL|output\(6),
	datad => \datapath|adr_bus|Mux9~0_combout\,
	combout => \datapath|adr_bus|Mux9~1_combout\);

-- Location: LCCOMB_X28_Y23_N24
\datapath|spL|output[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|spL|output[7]~22_combout\ = \datapath|spL|output\(7) $ (\datapath|spL|output[6]~21\ $ (\controler|sp_add_sel[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|spL|output\(7),
	datad => \controler|sp_add_sel[0]~0_combout\,
	cin => \datapath|spL|output[6]~21\,
	combout => \datapath|spL|output[7]~22_combout\);

-- Location: FF_X28_Y23_N25
\datapath|spL|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|spL|output[7]~22_combout\,
	asdata => \datapath|pcL|output[7]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \controler|WideOr29~0_combout\,
	ena => \controler|WideOr29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|spL|output\(7));

-- Location: FF_X22_Y22_N15
\datapath|arL|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[7]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|arL_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|arL|output\(7));

-- Location: LCCOMB_X22_Y22_N14
\datapath|adr_bus|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux8~0_combout\ = (\datapath|adr_bus|Mux7~2_combout\ & ((\datapath|spL|output\(7)) # ((\datapath|adr_bus|Mux7~3_combout\)))) # (!\datapath|adr_bus|Mux7~2_combout\ & (((\datapath|arL|output\(7) & !\datapath|adr_bus|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|adr_bus|Mux7~2_combout\,
	datab => \datapath|spL|output\(7),
	datac => \datapath|arL|output\(7),
	datad => \datapath|adr_bus|Mux7~3_combout\,
	combout => \datapath|adr_bus|Mux8~0_combout\);

-- Location: LCCOMB_X22_Y22_N16
\datapath|adr_bus|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux8~1_combout\ = (\datapath|adr_bus|Mux7~3_combout\ & ((\datapath|adr_bus|Mux8~0_combout\ & (\datapath|pcL|output\(7))) # (!\datapath|adr_bus|Mux8~0_combout\ & ((\datapath|x_adder|output[7]~14_combout\))))) # 
-- (!\datapath|adr_bus|Mux7~3_combout\ & (((\datapath|adr_bus|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|pcL|output\(7),
	datab => \datapath|adr_bus|Mux7~3_combout\,
	datac => \datapath|adr_bus|Mux8~0_combout\,
	datad => \datapath|x_adder|output[7]~14_combout\,
	combout => \datapath|adr_bus|Mux8~1_combout\);

-- Location: IOIBUF_X0_Y27_N1
\switch[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(1),
	o => \switch[1]~input_o\);

-- Location: LCCOMB_X24_Y24_N8
\input2[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input2[1]~2_combout\ = (\button[2]~input_o\ & (\switch[1]~input_o\ & (!\button[1]~input_o\ & \process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \switch[1]~input_o\,
	datac => \button[1]~input_o\,
	datad => \process_0~2_combout\,
	combout => \input2[1]~2_combout\);

-- Location: FF_X24_Y24_N9
\datapath|inport2_reg|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \input2[1]~2_combout\,
	ena => \controler|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|inport2_reg|output\(1));

-- Location: LCCOMB_X27_Y23_N8
\datapath|in_to_ex_reg|output[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_to_ex_reg|output[1]~feeder_combout\ = \datapath|pcL|output[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|pcL|output[1]~5_combout\,
	combout => \datapath|in_to_ex_reg|output[1]~feeder_combout\);

-- Location: FF_X27_Y23_N9
\datapath|in_to_ex_reg|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|in_to_ex_reg|output[1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|in_to_ex_reg|output\(1));

-- Location: LCCOMB_X23_Y24_N24
\datapath|ex_bus|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|ex_bus|Mux6~0_combout\ = (\controler|Selector4~0_combout\ & (((\controler|Selector5~1_combout\)))) # (!\controler|Selector4~0_combout\ & ((\controler|Selector5~1_combout\ & (\datapath|ram|altsyncram_component|auto_generated|q_a\(1))) # 
-- (!\controler|Selector5~1_combout\ & ((\datapath|in_to_ex_reg|output\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ram|altsyncram_component|auto_generated|q_a\(1),
	datab => \datapath|in_to_ex_reg|output\(1),
	datac => \controler|Selector4~0_combout\,
	datad => \controler|Selector5~1_combout\,
	combout => \datapath|ex_bus|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y24_N14
\datapath|ex_bus|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|ex_bus|Mux6~1_combout\ = (\controler|Selector4~0_combout\ & ((\datapath|ex_bus|Mux6~0_combout\ & ((\datapath|inport2_reg|output\(1)))) # (!\datapath|ex_bus|Mux6~0_combout\ & (\datapath|inport1_reg|output\(1))))) # 
-- (!\controler|Selector4~0_combout\ & (((\datapath|ex_bus|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|inport1_reg|output\(1),
	datab => \datapath|inport2_reg|output\(1),
	datac => \controler|Selector4~0_combout\,
	datad => \datapath|ex_bus|Mux6~0_combout\,
	combout => \datapath|ex_bus|Mux6~1_combout\);

-- Location: IOIBUF_X0_Y27_N22
\switch[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(4),
	o => \switch[4]~input_o\);

-- Location: LCCOMB_X24_Y24_N4
\input2[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input2[4]~5_combout\ = (\button[2]~input_o\ & (\switch[4]~input_o\ & (!\button[1]~input_o\ & \process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \switch[4]~input_o\,
	datac => \button[1]~input_o\,
	datad => \process_0~2_combout\,
	combout => \input2[4]~5_combout\);

-- Location: FF_X24_Y24_N5
\datapath|inport2_reg|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \input2[4]~5_combout\,
	ena => \controler|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|inport2_reg|output\(4));

-- Location: FF_X27_Y23_N1
\datapath|in_to_ex_reg|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|pcL|output[4]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|in_to_ex_reg|output\(4));

-- Location: LCCOMB_X27_Y24_N10
\datapath|ex_bus|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|ex_bus|Mux3~0_combout\ = (\controler|Selector5~1_combout\ & (((\controler|Selector4~0_combout\)))) # (!\controler|Selector5~1_combout\ & ((\controler|Selector4~0_combout\ & (\datapath|inport1_reg|output\(4))) # (!\controler|Selector4~0_combout\ 
-- & ((\datapath|in_to_ex_reg|output\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|inport1_reg|output\(4),
	datab => \datapath|in_to_ex_reg|output\(4),
	datac => \controler|Selector5~1_combout\,
	datad => \controler|Selector4~0_combout\,
	combout => \datapath|ex_bus|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y24_N12
\datapath|ex_bus|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|ex_bus|Mux3~1_combout\ = (\controler|Selector5~1_combout\ & ((\datapath|ex_bus|Mux3~0_combout\ & ((\datapath|inport2_reg|output\(4)))) # (!\datapath|ex_bus|Mux3~0_combout\ & (\datapath|ram|altsyncram_component|auto_generated|q_a\(4))))) # 
-- (!\controler|Selector5~1_combout\ & (((\datapath|ex_bus|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ram|altsyncram_component|auto_generated|q_a\(4),
	datab => \datapath|inport2_reg|output\(4),
	datac => \controler|Selector5~1_combout\,
	datad => \datapath|ex_bus|Mux3~0_combout\,
	combout => \datapath|ex_bus|Mux3~1_combout\);

-- Location: IOIBUF_X0_Y22_N15
\switch[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(5),
	o => \switch[5]~input_o\);

-- Location: LCCOMB_X24_Y24_N16
\input2[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input2[5]~6_combout\ = (\button[2]~input_o\ & (\switch[5]~input_o\ & (!\button[1]~input_o\ & \process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \switch[5]~input_o\,
	datac => \button[1]~input_o\,
	datad => \process_0~2_combout\,
	combout => \input2[5]~6_combout\);

-- Location: FF_X24_Y24_N17
\datapath|inport2_reg|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \input2[5]~6_combout\,
	ena => \controler|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|inport2_reg|output\(5));

-- Location: FF_X30_Y24_N3
\datapath|in_to_ex_reg|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[5]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|in_to_ex_reg|output\(5));

-- Location: LCCOMB_X30_Y24_N2
\datapath|ex_bus|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|ex_bus|Mux2~0_combout\ = (\controler|Selector4~0_combout\ & (((\controler|Selector5~1_combout\)))) # (!\controler|Selector4~0_combout\ & ((\controler|Selector5~1_combout\ & (\datapath|ram|altsyncram_component|auto_generated|q_a\(5))) # 
-- (!\controler|Selector5~1_combout\ & ((\datapath|in_to_ex_reg|output\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ram|altsyncram_component|auto_generated|q_a\(5),
	datab => \controler|Selector4~0_combout\,
	datac => \datapath|in_to_ex_reg|output\(5),
	datad => \controler|Selector5~1_combout\,
	combout => \datapath|ex_bus|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y24_N12
\datapath|ex_bus|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|ex_bus|Mux2~1_combout\ = (\controler|Selector4~0_combout\ & ((\datapath|ex_bus|Mux2~0_combout\ & ((\datapath|inport2_reg|output\(5)))) # (!\datapath|ex_bus|Mux2~0_combout\ & (\datapath|inport1_reg|output\(5))))) # 
-- (!\controler|Selector4~0_combout\ & (((\datapath|ex_bus|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|inport1_reg|output\(5),
	datab => \datapath|inport2_reg|output\(5),
	datac => \controler|Selector4~0_combout\,
	datad => \datapath|ex_bus|Mux2~0_combout\,
	combout => \datapath|ex_bus|Mux2~1_combout\);

-- Location: IOIBUF_X0_Y26_N8
\switch[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(7),
	o => \switch[7]~input_o\);

-- Location: LCCOMB_X24_Y24_N0
\input2[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input2[7]~7_combout\ = (\button[2]~input_o\ & (\switch[7]~input_o\ & (!\button[1]~input_o\ & \process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \switch[7]~input_o\,
	datac => \button[1]~input_o\,
	datad => \process_0~2_combout\,
	combout => \input2[7]~7_combout\);

-- Location: FF_X24_Y24_N1
\datapath|inport2_reg|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \input2[7]~7_combout\,
	ena => \controler|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|inport2_reg|output\(7));

-- Location: FF_X28_Y24_N23
\datapath|in_to_ex_reg|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[7]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|in_to_ex_reg|output\(7));

-- Location: LCCOMB_X28_Y24_N22
\datapath|ex_bus|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|ex_bus|Mux0~0_combout\ = (\controler|Selector4~0_combout\ & (((\controler|Selector5~1_combout\)))) # (!\controler|Selector4~0_combout\ & ((\controler|Selector5~1_combout\ & (\datapath|ram|altsyncram_component|auto_generated|q_a\(7))) # 
-- (!\controler|Selector5~1_combout\ & ((\datapath|in_to_ex_reg|output\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|Selector4~0_combout\,
	datab => \datapath|ram|altsyncram_component|auto_generated|q_a\(7),
	datac => \datapath|in_to_ex_reg|output\(7),
	datad => \controler|Selector5~1_combout\,
	combout => \datapath|ex_bus|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y24_N22
\datapath|ex_bus|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|ex_bus|Mux0~1_combout\ = (\controler|Selector4~0_combout\ & ((\datapath|ex_bus|Mux0~0_combout\ & ((\datapath|inport2_reg|output\(7)))) # (!\datapath|ex_bus|Mux0~0_combout\ & (\datapath|inport1_reg|output\(7))))) # 
-- (!\controler|Selector4~0_combout\ & (((\datapath|ex_bus|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|inport1_reg|output\(7),
	datab => \datapath|inport2_reg|output\(7),
	datac => \controler|Selector4~0_combout\,
	datad => \datapath|ex_bus|Mux0~0_combout\,
	combout => \datapath|ex_bus|Mux0~1_combout\);

-- Location: IOIBUF_X0_Y25_N15
\switch[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(6),
	o => \switch[6]~input_o\);

-- Location: LCCOMB_X24_Y24_N14
\input1[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input1[6]~4_combout\ = (\in1_sel~0_combout\ & (\switch[6]~input_o\ & (\button[1]~input_o\ & !\button[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_sel~0_combout\,
	datab => \switch[6]~input_o\,
	datac => \button[1]~input_o\,
	datad => \button[2]~input_o\,
	combout => \input1[6]~4_combout\);

-- Location: FF_X24_Y24_N15
\datapath|inport1_reg|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \input1[6]~4_combout\,
	ena => \controler|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|inport1_reg|output\(6));

-- Location: FF_X28_Y24_N13
\datapath|in_to_ex_reg|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[6]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|in_to_ex_reg|output\(6));

-- Location: LCCOMB_X28_Y24_N12
\datapath|ex_bus|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|ex_bus|Mux1~0_combout\ = (\controler|Selector4~0_combout\ & ((\datapath|inport1_reg|output\(6)) # ((\controler|Selector5~1_combout\)))) # (!\controler|Selector4~0_combout\ & (((\datapath|in_to_ex_reg|output\(6) & 
-- !\controler|Selector5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|Selector4~0_combout\,
	datab => \datapath|inport1_reg|output\(6),
	datac => \datapath|in_to_ex_reg|output\(6),
	datad => \controler|Selector5~1_combout\,
	combout => \datapath|ex_bus|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y24_N26
\datapath|ex_bus|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|ex_bus|Mux1~1_combout\ = (\controler|Selector5~1_combout\ & ((\datapath|ex_bus|Mux1~0_combout\ & (\datapath|inport2_reg|output\(6))) # (!\datapath|ex_bus|Mux1~0_combout\ & ((\datapath|ram|altsyncram_component|auto_generated|q_a\(6)))))) # 
-- (!\controler|Selector5~1_combout\ & (((\datapath|ex_bus|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|inport2_reg|output\(6),
	datab => \controler|Selector5~1_combout\,
	datac => \datapath|ram|altsyncram_component|auto_generated|q_a\(6),
	datad => \datapath|ex_bus|Mux1~0_combout\,
	combout => \datapath|ex_bus|Mux1~1_combout\);

-- Location: FF_X27_Y23_N21
\datapath|in_to_ex_reg|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|pcH|output[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|in_to_ex_reg|output\(0));

-- Location: LCCOMB_X30_Y24_N14
\datapath|ex_bus|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|ex_bus|Mux7~0_combout\ = (\controler|Selector4~0_combout\ & ((\datapath|inport1_reg|output\(0)) # ((\controler|Selector5~1_combout\)))) # (!\controler|Selector4~0_combout\ & (((\datapath|in_to_ex_reg|output\(0) & 
-- !\controler|Selector5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|inport1_reg|output\(0),
	datab => \datapath|in_to_ex_reg|output\(0),
	datac => \controler|Selector4~0_combout\,
	datad => \controler|Selector5~1_combout\,
	combout => \datapath|ex_bus|Mux7~0_combout\);

-- Location: LCCOMB_X30_Y24_N28
\datapath|ex_bus|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|ex_bus|Mux7~1_combout\ = (\datapath|ex_bus|Mux7~0_combout\ & ((\datapath|inport2_reg|output\(0)) # ((!\controler|Selector5~1_combout\)))) # (!\datapath|ex_bus|Mux7~0_combout\ & (((\datapath|ram|altsyncram_component|auto_generated|q_a\(0) & 
-- \controler|Selector5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|inport2_reg|output\(0),
	datab => \datapath|ram|altsyncram_component|auto_generated|q_a\(0),
	datac => \datapath|ex_bus|Mux7~0_combout\,
	datad => \controler|Selector5~1_combout\,
	combout => \datapath|ex_bus|Mux7~1_combout\);

-- Location: FF_X30_Y24_N29
\datapath|ex_to_in_reg|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|ex_bus|Mux7~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|ex_to_in_reg|output\(0));

-- Location: LCCOMB_X28_Y23_N4
\datapath|in_bus|Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux7~3_combout\ = (\controler|WideOr11~2_combout\ & (\datapath|arL|output\(0) & (\controler|state.S_STORE_ACC_INDX_4~q\))) # (!\controler|WideOr11~2_combout\ & (((\datapath|ex_to_in_reg|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|arL|output\(0),
	datab => \controler|state.S_STORE_ACC_INDX_4~q\,
	datac => \datapath|ex_to_in_reg|output\(0),
	datad => \controler|WideOr11~2_combout\,
	combout => \datapath|in_bus|Mux7~3_combout\);

-- Location: LCCOMB_X27_Y23_N28
\datapath|in_bus|Mux7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux7~4_combout\ = (\controler|state.S_CALL~q\ & (\datapath|pcL|output\(0))) # (!\controler|state.S_CALL~q\ & (((\datapath|in_bus|Mux7~2_combout\) # (\datapath|in_bus|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_CALL~q\,
	datab => \datapath|pcL|output\(0),
	datac => \datapath|in_bus|Mux7~2_combout\,
	datad => \datapath|in_bus|Mux7~3_combout\,
	combout => \datapath|in_bus|Mux7~4_combout\);

-- Location: LCCOMB_X19_Y24_N14
\datapath|alu|Mux7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux7~12_combout\ = (\datapath|a|output\(0)) # (\datapath|d|output\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|a|output\(0),
	datac => \datapath|d|output\(0),
	combout => \datapath|alu|Mux7~12_combout\);

-- Location: LCCOMB_X19_Y24_N28
\datapath|alu|Mux7~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux7~13_combout\ = (\controler|WideOr22~combout\ & ((\datapath|c_flag|output~q\ & ((\datapath|alu|Add2~12_combout\))) # (!\datapath|c_flag|output~q\ & (\datapath|d|output\(0))))) # (!\controler|WideOr22~combout\ & 
-- (\datapath|c_flag|output~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr22~combout\,
	datab => \datapath|c_flag|output~q\,
	datac => \datapath|d|output\(0),
	datad => \datapath|alu|Add2~12_combout\,
	combout => \datapath|alu|Mux7~13_combout\);

-- Location: LCCOMB_X19_Y24_N26
\datapath|alu|Mux7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux7~14_combout\ = (\datapath|alu|Add2~1_combout\ & ((\datapath|alu|Mux7~12_combout\) # ((!\controler|WideOr21~combout\ & \datapath|alu|Mux7~13_combout\)))) # (!\datapath|alu|Add2~1_combout\ & (!\controler|WideOr21~combout\ & 
-- ((\datapath|alu|Mux7~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Add2~1_combout\,
	datab => \controler|WideOr21~combout\,
	datac => \datapath|alu|Mux7~12_combout\,
	datad => \datapath|alu|Mux7~13_combout\,
	combout => \datapath|alu|Mux7~14_combout\);

-- Location: LCCOMB_X19_Y24_N16
\datapath|alu|Mux7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux7~7_combout\ = (\controler|WideOr21~combout\ & (((\datapath|d|output\(0)) # (\controler|WideOr22~combout\)))) # (!\controler|WideOr21~combout\ & (\datapath|alu|Add0~2_combout\ & ((!\controler|WideOr22~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr21~combout\,
	datab => \datapath|alu|Add0~2_combout\,
	datac => \datapath|d|output\(0),
	datad => \controler|WideOr22~combout\,
	combout => \datapath|alu|Mux7~7_combout\);

-- Location: LCCOMB_X19_Y24_N22
\datapath|alu|Mux7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux7~8_combout\ = (\controler|WideOr22~combout\ & ((\datapath|alu|Mux7~7_combout\ & (\datapath|a|output\(0))) # (!\datapath|alu|Mux7~7_combout\ & ((\datapath|alu|Add2~12_combout\))))) # (!\controler|WideOr22~combout\ & 
-- (\datapath|alu|Mux7~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr22~combout\,
	datab => \datapath|alu|Mux7~7_combout\,
	datac => \datapath|a|output\(0),
	datad => \datapath|alu|Add2~12_combout\,
	combout => \datapath|alu|Mux7~8_combout\);

-- Location: LCCOMB_X19_Y24_N0
\datapath|alu|Mux7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux7~9_combout\ = (\controler|WideOr21~combout\ & (((\datapath|d|output\(0))))) # (!\controler|WideOr21~combout\ & (\datapath|a|output\(0) & ((!\controler|WideOr22~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr21~combout\,
	datab => \datapath|a|output\(0),
	datac => \datapath|d|output\(0),
	datad => \controler|WideOr22~combout\,
	combout => \datapath|alu|Mux7~9_combout\);

-- Location: LCCOMB_X19_Y24_N18
\datapath|alu|Mux7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux7~10_combout\ = (\datapath|alu|Mux7~9_combout\) # ((\controler|WideOr22~combout\ & (!\controler|WideOr21~combout\ & \datapath|alu|Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr22~combout\,
	datab => \controler|WideOr21~combout\,
	datac => \datapath|alu|Mux7~9_combout\,
	datad => \datapath|alu|Add2~12_combout\,
	combout => \datapath|alu|Mux7~10_combout\);

-- Location: LCCOMB_X19_Y24_N24
\datapath|alu|Mux7~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux7~11_combout\ = (\controler|WideOr23~combout\ & ((\controler|WideOr20~1_combout\) # ((\datapath|alu|Mux7~8_combout\)))) # (!\controler|WideOr23~combout\ & (!\controler|WideOr20~1_combout\ & ((\datapath|alu|Mux7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr23~combout\,
	datab => \controler|WideOr20~1_combout\,
	datac => \datapath|alu|Mux7~8_combout\,
	datad => \datapath|alu|Mux7~10_combout\,
	combout => \datapath|alu|Mux7~11_combout\);

-- Location: LCCOMB_X19_Y24_N4
\datapath|alu|Mux7~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux7~15_combout\ = (\controler|WideOr20~1_combout\ & ((\datapath|alu|Mux7~11_combout\ & ((\datapath|alu|Mux7~14_combout\))) # (!\datapath|alu|Mux7~11_combout\ & (\datapath|alu|Mux7~6_combout\)))) # (!\controler|WideOr20~1_combout\ & 
-- (((\datapath|alu|Mux7~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mux7~6_combout\,
	datab => \controler|WideOr20~1_combout\,
	datac => \datapath|alu|Mux7~14_combout\,
	datad => \datapath|alu|Mux7~11_combout\,
	combout => \datapath|alu|Mux7~15_combout\);

-- Location: LCCOMB_X21_Y24_N14
\datapath|alu|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux7~1_combout\ = (!\controler|state.S_CLEAR_CARRY~q\ & (\controler|WideOr22~3_combout\ & (\datapath|a|output\(0) & !\controler|WideOr22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_CLEAR_CARRY~q\,
	datab => \controler|WideOr22~3_combout\,
	datac => \datapath|a|output\(0),
	datad => \controler|WideOr22~0_combout\,
	combout => \datapath|alu|Mux7~1_combout\);

-- Location: LCCOMB_X19_Y24_N8
\datapath|alu|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux7~0_combout\ = (!\controler|WideOr23~combout\ & ((\datapath|alu|Add2~1_combout\ & ((\datapath|alu|Add2~12_combout\))) # (!\datapath|alu|Add2~1_combout\ & (\datapath|a|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Add2~1_combout\,
	datab => \datapath|a|output\(0),
	datac => \controler|WideOr23~combout\,
	datad => \datapath|alu|Add2~12_combout\,
	combout => \datapath|alu|Mux7~0_combout\);

-- Location: LCCOMB_X19_Y24_N2
\datapath|alu|Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux7~2_combout\ = (\controler|WideOr22~combout\ & ((\controler|WideOr21~combout\ & ((\datapath|alu|Mult0|auto_generated|mac_out2~dataout\))) # (!\controler|WideOr21~combout\ & (\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr22~combout\,
	datab => \controler|WideOr21~combout\,
	datac => \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => \datapath|alu|Mult0|auto_generated|mac_out2~dataout\,
	combout => \datapath|alu|Mux7~2_combout\);

-- Location: LCCOMB_X19_Y24_N12
\datapath|alu|Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux7~3_combout\ = (\datapath|alu|Mux7~0_combout\) # ((\controler|WideOr23~combout\ & ((\datapath|alu|Mux7~1_combout\) # (\datapath|alu|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr23~combout\,
	datab => \datapath|alu|Mux7~1_combout\,
	datac => \datapath|alu|Mux7~0_combout\,
	datad => \datapath|alu|Mux7~2_combout\,
	combout => \datapath|alu|Mux7~3_combout\);

-- Location: LCCOMB_X19_Y24_N6
\datapath|alu|Mux7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux7~4_combout\ = (\controler|WideOr20~1_combout\ & (((\datapath|alu|Mux7~3_combout\)))) # (!\controler|WideOr20~1_combout\ & (\datapath|alu|Add2~12_combout\ & (\controler|WideOr23~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Add2~12_combout\,
	datab => \controler|WideOr20~1_combout\,
	datac => \controler|WideOr23~combout\,
	datad => \datapath|alu|Mux7~3_combout\,
	combout => \datapath|alu|Mux7~4_combout\);

-- Location: LCCOMB_X19_Y24_N30
\datapath|alu|Mux7~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux7~16_combout\ = (\controler|WideOr19~combout\ & ((\datapath|alu|Mux7~4_combout\))) # (!\controler|WideOr19~combout\ & (\datapath|alu|Mux7~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controler|WideOr19~combout\,
	datac => \datapath|alu|Mux7~15_combout\,
	datad => \datapath|alu|Mux7~4_combout\,
	combout => \datapath|alu|Mux7~16_combout\);

-- Location: LCCOMB_X27_Y23_N18
\datapath|in_bus|Mux7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux7~5_combout\ = (\controler|state.S_STORE_ACC_INDX_4~q\ & (((\datapath|a|output\(0))))) # (!\controler|state.S_STORE_ACC_INDX_4~q\ & ((\controler|WideOr11~2_combout\ & ((\datapath|alu|Mux7~16_combout\))) # 
-- (!\controler|WideOr11~2_combout\ & (\datapath|a|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_STORE_ACC_INDX_4~q\,
	datab => \controler|WideOr11~2_combout\,
	datac => \datapath|a|output\(0),
	datad => \datapath|alu|Mux7~16_combout\,
	combout => \datapath|in_bus|Mux7~5_combout\);

-- Location: LCCOMB_X27_Y23_N20
\datapath|pcH|output[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pcH|output[0]~0_combout\ = (\datapath|in_bus|Add0~0_combout\ & (\datapath|in_bus|Mux7~4_combout\)) # (!\datapath|in_bus|Add0~0_combout\ & ((\datapath|in_bus|Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|in_bus|Mux7~4_combout\,
	datac => \datapath|in_bus|Add0~0_combout\,
	datad => \datapath|in_bus|Mux7~5_combout\,
	combout => \datapath|pcH|output[0]~0_combout\);

-- Location: FF_X24_Y22_N23
\datapath|ir|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcH|output[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|state.S_FETCH_INTERNAL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|ir|output\(0));

-- Location: LCCOMB_X21_Y22_N14
\controler|next_state.S_LOAD_ACC_ABS~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_LOAD_ACC_ABS~4_combout\ = (\controler|Mux0~0_combout\ & (\controler|next_state.S_CALL~0_combout\ & (!\datapath|ir|output\(1) & !\datapath|ir|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|Mux0~0_combout\,
	datab => \controler|next_state.S_CALL~0_combout\,
	datac => \datapath|ir|output\(1),
	datad => \datapath|ir|output\(0),
	combout => \controler|next_state.S_LOAD_ACC_ABS~4_combout\);

-- Location: FF_X21_Y22_N15
\controler|state.S_LOAD_ACC_ABS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_LOAD_ACC_ABS~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_LOAD_ACC_ABS~q\);

-- Location: FF_X21_Y22_N1
\controler|state.S_LOAD_ACC_ABS_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_LOAD_ACC_ABS~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_LOAD_ACC_ABS_2~q\);

-- Location: FF_X23_Y22_N25
\controler|state.S_LOAD_ACC_ABS_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_LOAD_ACC_ABS_2~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_LOAD_ACC_ABS_3~q\);

-- Location: LCCOMB_X22_Y21_N18
\controler|arL_en\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|arL_en~combout\ = (\controler|state.S_STORE_ACC_ABS_3~q\) # (\controler|state.S_LOAD_ACC_ABS_3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_STORE_ACC_ABS_3~q\,
	datac => \controler|state.S_LOAD_ACC_ABS_3~q\,
	combout => \controler|arL_en~combout\);

-- Location: FF_X23_Y24_N29
\datapath|arL|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[4]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|arL_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|arL|output\(4));

-- Location: FF_X27_Y24_N13
\datapath|ex_to_in_reg|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|ex_bus|Mux3~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|ex_to_in_reg|output\(4));

-- Location: LCCOMB_X27_Y23_N26
\datapath|in_bus|Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux3~3_combout\ = (\controler|WideOr11~2_combout\ & (\controler|state.S_STORE_ACC_INDX_4~q\ & (\datapath|arL|output\(4)))) # (!\controler|WideOr11~2_combout\ & (((\datapath|ex_to_in_reg|output\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_STORE_ACC_INDX_4~q\,
	datab => \datapath|arL|output\(4),
	datac => \datapath|ex_to_in_reg|output\(4),
	datad => \controler|WideOr11~2_combout\,
	combout => \datapath|in_bus|Mux3~3_combout\);

-- Location: LCCOMB_X30_Y23_N24
\datapath|pc_adder|output[12]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pc_adder|output[12]~24_combout\ = (\datapath|pcH|output\(4) & (\datapath|pc_adder|output[11]~23\ $ (GND))) # (!\datapath|pcH|output\(4) & (!\datapath|pc_adder|output[11]~23\ & VCC))
-- \datapath|pc_adder|output[12]~25\ = CARRY((\datapath|pcH|output\(4) & !\datapath|pc_adder|output[11]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|pcH|output\(4),
	datad => VCC,
	cin => \datapath|pc_adder|output[11]~23\,
	combout => \datapath|pc_adder|output[12]~24_combout\,
	cout => \datapath|pc_adder|output[12]~25\);

-- Location: LCCOMB_X26_Y23_N12
\datapath|pc_adder|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pc_adder|Add0~0_combout\ = (\controler|WideOr13~4_combout\ & (\datapath|pcL|output[4]~3_combout\)) # (!\controler|WideOr13~4_combout\ & ((\datapath|pc_adder|output[12]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr13~4_combout\,
	datac => \datapath|pcL|output[4]~3_combout\,
	datad => \datapath|pc_adder|output[12]~24_combout\,
	combout => \datapath|pc_adder|Add0~0_combout\);

-- Location: FF_X26_Y23_N13
\datapath|pcH|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|pc_adder|Add0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|pcH|output\(4));

-- Location: LCCOMB_X26_Y23_N6
\datapath|in_bus|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux3~2_combout\ = (!\controler|state.S_STORE_ACC_INDX_4~q\ & (\datapath|pcH|output\(4) & \controler|WideOr11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_STORE_ACC_INDX_4~q\,
	datac => \datapath|pcH|output\(4),
	datad => \controler|WideOr11~2_combout\,
	combout => \datapath|in_bus|Mux3~2_combout\);

-- Location: LCCOMB_X27_Y23_N4
\datapath|in_bus|Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux3~4_combout\ = (\controler|state.S_CALL~q\ & (\datapath|pcL|output\(4))) # (!\controler|state.S_CALL~q\ & (((\datapath|in_bus|Mux3~3_combout\) # (\datapath|in_bus|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_CALL~q\,
	datab => \datapath|pcL|output\(4),
	datac => \datapath|in_bus|Mux3~3_combout\,
	datad => \datapath|in_bus|Mux3~2_combout\,
	combout => \datapath|in_bus|Mux3~4_combout\);

-- Location: LCCOMB_X19_Y23_N8
\datapath|alu|Mux3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux3~5_combout\ = (\datapath|d|output\(4) & ((\datapath|a|output\(4) $ (\datapath|alu|Mux4~17_combout\)) # (!\datapath|alu|Mux4~10_combout\))) # (!\datapath|d|output\(4) & ((\datapath|alu|Mux4~17_combout\ & (\datapath|a|output\(4))) # 
-- (!\datapath|alu|Mux4~17_combout\ & ((!\datapath|alu|Mux4~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|d|output\(4),
	datab => \datapath|a|output\(4),
	datac => \datapath|alu|Mux4~10_combout\,
	datad => \datapath|alu|Mux4~17_combout\,
	combout => \datapath|alu|Mux3~5_combout\);

-- Location: LCCOMB_X19_Y23_N26
\datapath|alu|Mux3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux3~6_combout\ = (\datapath|alu|Mux3~5_combout\ & ((\datapath|alu|Mux4~10_combout\) # ((\datapath|a|output\(5)) # (\datapath|alu|Mux4~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mux4~10_combout\,
	datab => \datapath|a|output\(5),
	datac => \datapath|alu|Mux3~5_combout\,
	datad => \datapath|alu|Mux4~17_combout\,
	combout => \datapath|alu|Mux3~6_combout\);

-- Location: LCCOMB_X19_Y23_N4
\datapath|alu|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux3~0_combout\ = (\datapath|alu|Mux4~9_combout\ & (((\datapath|alu|Mux4~18_combout\)))) # (!\datapath|alu|Mux4~9_combout\ & ((\datapath|alu|Mux4~18_combout\ & ((\datapath|alu|Mux3~6_combout\))) # (!\datapath|alu|Mux4~18_combout\ & 
-- (\datapath|alu|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mux4~9_combout\,
	datab => \datapath|alu|Add0~10_combout\,
	datac => \datapath|alu|Mux3~6_combout\,
	datad => \datapath|alu|Mux4~18_combout\,
	combout => \datapath|alu|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y23_N10
\datapath|alu|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux3~1_combout\ = (\datapath|alu|Mux4~9_combout\ & ((\datapath|alu|Mux3~0_combout\ & (\datapath|a|output\(3))) # (!\datapath|alu|Mux3~0_combout\ & ((\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT4\))))) # (!\datapath|alu|Mux4~9_combout\ 
-- & (((\datapath|alu|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|a|output\(3),
	datab => \datapath|alu|Mux4~9_combout\,
	datac => \datapath|alu|Mux3~0_combout\,
	datad => \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT4\,
	combout => \datapath|alu|Mux3~1_combout\);

-- Location: LCCOMB_X19_Y23_N16
\datapath|alu|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux3~2_combout\ = (\datapath|alu|Mux4~8_combout\ & ((\datapath|alu|Mux4~6_combout\) # ((\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT12\)))) # (!\datapath|alu|Mux4~8_combout\ & (!\datapath|alu|Mux4~6_combout\ & 
-- ((\datapath|alu|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mux4~8_combout\,
	datab => \datapath|alu|Mux4~6_combout\,
	datac => \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => \datapath|alu|Mux3~1_combout\,
	combout => \datapath|alu|Mux3~2_combout\);

-- Location: LCCOMB_X19_Y23_N18
\datapath|alu|Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux3~3_combout\ = (\datapath|alu|Mux4~6_combout\ & ((\datapath|alu|Mux3~2_combout\ & ((\datapath|alu|Add2~20_combout\))) # (!\datapath|alu|Mux3~2_combout\ & (\datapath|a|output\(4))))) # (!\datapath|alu|Mux4~6_combout\ & 
-- (((\datapath|alu|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|a|output\(4),
	datab => \datapath|alu|Mux4~6_combout\,
	datac => \datapath|alu|Add2~20_combout\,
	datad => \datapath|alu|Mux3~2_combout\,
	combout => \datapath|alu|Mux3~3_combout\);

-- Location: LCCOMB_X19_Y23_N24
\datapath|alu|Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux3~4_combout\ = (\datapath|alu|Mux4~11_combout\ & (\datapath|d|output\(4))) # (!\datapath|alu|Mux4~11_combout\ & ((\datapath|alu|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|d|output\(4),
	datac => \datapath|alu|Mux4~11_combout\,
	datad => \datapath|alu|Mux3~3_combout\,
	combout => \datapath|alu|Mux3~4_combout\);

-- Location: LCCOMB_X27_Y23_N2
\datapath|in_bus|Mux3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux3~5_combout\ = (\controler|state.S_STORE_ACC_INDX_4~q\ & (((\datapath|a|output\(4))))) # (!\controler|state.S_STORE_ACC_INDX_4~q\ & ((\controler|WideOr11~2_combout\ & ((\datapath|alu|Mux3~4_combout\))) # 
-- (!\controler|WideOr11~2_combout\ & (\datapath|a|output\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_STORE_ACC_INDX_4~q\,
	datab => \controler|WideOr11~2_combout\,
	datac => \datapath|a|output\(4),
	datad => \datapath|alu|Mux3~4_combout\,
	combout => \datapath|in_bus|Mux3~5_combout\);

-- Location: LCCOMB_X27_Y23_N0
\datapath|pcL|output[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pcL|output[4]~3_combout\ = (\datapath|in_bus|Add0~0_combout\ & (\datapath|in_bus|Mux3~4_combout\)) # (!\datapath|in_bus|Add0~0_combout\ & ((\datapath|in_bus|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|in_bus|Add0~0_combout\,
	datac => \datapath|in_bus|Mux3~4_combout\,
	datad => \datapath|in_bus|Mux3~5_combout\,
	combout => \datapath|pcL|output[4]~3_combout\);

-- Location: LCCOMB_X27_Y23_N24
\datapath|pcL|output[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pcL|output[4]~feeder_combout\ = \datapath|pcL|output[4]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|pcL|output[4]~3_combout\,
	combout => \datapath|pcL|output[4]~feeder_combout\);

-- Location: LCCOMB_X30_Y23_N8
\datapath|pc_adder|output[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pc_adder|output[4]~8_combout\ = (\datapath|pcL|output\(4) & (\datapath|pc_adder|output[3]~7\ $ (GND))) # (!\datapath|pcL|output\(4) & (!\datapath|pc_adder|output[3]~7\ & VCC))
-- \datapath|pc_adder|output[4]~9\ = CARRY((\datapath|pcL|output\(4) & !\datapath|pc_adder|output[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|pcL|output\(4),
	datad => VCC,
	cin => \datapath|pc_adder|output[3]~7\,
	combout => \datapath|pc_adder|output[4]~8_combout\,
	cout => \datapath|pc_adder|output[4]~9\);

-- Location: FF_X27_Y23_N25
\datapath|pcL|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|pcL|output[4]~feeder_combout\,
	asdata => \datapath|pc_adder|output[4]~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \controler|ALT_INV_WideOr13~4_combout\,
	ena => \controler|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|pcL|output\(4));

-- Location: FF_X29_Y23_N21
\datapath|pcL|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|pcL|output[7]~feeder_combout\,
	asdata => \datapath|pc_adder|output[7]~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \controler|ALT_INV_WideOr13~4_combout\,
	ena => \controler|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|pcL|output\(7));

-- Location: LCCOMB_X29_Y23_N2
\datapath|in_bus|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux0~2_combout\ = (\datapath|pcH|output\(7) & (\controler|WideOr11~2_combout\ & !\controler|state.S_STORE_ACC_INDX_4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|pcH|output\(7),
	datac => \controler|WideOr11~2_combout\,
	datad => \controler|state.S_STORE_ACC_INDX_4~q\,
	combout => \datapath|in_bus|Mux0~2_combout\);

-- Location: LCCOMB_X29_Y23_N6
\datapath|in_bus|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux0~4_combout\ = (\controler|state.S_CALL~q\ & (((\datapath|pcL|output\(7))))) # (!\controler|state.S_CALL~q\ & ((\datapath|in_bus|Mux0~3_combout\) # ((\datapath|in_bus|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|in_bus|Mux0~3_combout\,
	datab => \datapath|pcL|output\(7),
	datac => \controler|state.S_CALL~q\,
	datad => \datapath|in_bus|Mux0~2_combout\,
	combout => \datapath|in_bus|Mux0~4_combout\);

-- Location: LCCOMB_X22_Y23_N18
\datapath|in_bus|Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux0~5_combout\ = (\controler|state.S_STORE_ACC_INDX_4~q\ & (\datapath|a|output\(7))) # (!\controler|state.S_STORE_ACC_INDX_4~q\ & ((\controler|WideOr11~2_combout\ & ((\datapath|alu|Mux0~8_combout\))) # (!\controler|WideOr11~2_combout\ & 
-- (\datapath|a|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|a|output\(7),
	datab => \controler|state.S_STORE_ACC_INDX_4~q\,
	datac => \controler|WideOr11~2_combout\,
	datad => \datapath|alu|Mux0~8_combout\,
	combout => \datapath|in_bus|Mux0~5_combout\);

-- Location: LCCOMB_X26_Y23_N18
\datapath|pcL|output[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pcL|output[7]~0_combout\ = (\datapath|in_bus|Add0~0_combout\ & (\datapath|in_bus|Mux0~4_combout\)) # (!\datapath|in_bus|Add0~0_combout\ & ((\datapath|in_bus|Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|in_bus|Add0~0_combout\,
	datac => \datapath|in_bus|Mux0~4_combout\,
	datad => \datapath|in_bus|Mux0~5_combout\,
	combout => \datapath|pcL|output[7]~0_combout\);

-- Location: FF_X26_Y23_N19
\datapath|ir|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|pcL|output[7]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|state.S_FETCH_INTERNAL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|ir|output\(7));

-- Location: LCCOMB_X21_Y21_N28
\controler|next_state.S_STORE_ACC_ABS~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_STORE_ACC_ABS~0_combout\ = (\controler|state.S_DECODE~q\ & (\datapath|ir|output\(7) & (\datapath|ir|output\(4) & \datapath|ir|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_DECODE~q\,
	datab => \datapath|ir|output\(7),
	datac => \datapath|ir|output\(4),
	datad => \datapath|ir|output\(5),
	combout => \controler|next_state.S_STORE_ACC_ABS~0_combout\);

-- Location: LCCOMB_X21_Y25_N8
\controler|next_state.S_STORE_ACC_RR~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_STORE_ACC_RR~1_combout\ = (\datapath|ir|output\(6) & (\controler|next_state.S_STORE_ACC_ABS~0_combout\ & \controler|next_state.S_STORE_ACC_RR~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|ir|output\(6),
	datac => \controler|next_state.S_STORE_ACC_ABS~0_combout\,
	datad => \controler|next_state.S_STORE_ACC_RR~0_combout\,
	combout => \controler|next_state.S_STORE_ACC_RR~1_combout\);

-- Location: FF_X21_Y25_N9
\controler|state.S_STORE_ACC_RR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_STORE_ACC_RR~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_STORE_ACC_RR~q\);

-- Location: LCCOMB_X21_Y24_N30
\controler|d_en\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|d_en~combout\ = (\controler|state.S_MULT_AD~q\) # (\controler|state.S_STORE_ACC_RR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controler|state.S_MULT_AD~q\,
	datad => \controler|state.S_STORE_ACC_RR~q\,
	combout => \controler|d_en~combout\);

-- Location: FF_X23_Y23_N27
\datapath|d|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[5]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|d_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|d|output\(5));

-- Location: LCCOMB_X24_Y23_N10
\datapath|alu|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux2~0_combout\ = (\datapath|alu|Mux4~18_combout\ & (((\datapath|alu|Mux4~9_combout\)))) # (!\datapath|alu|Mux4~18_combout\ & ((\datapath|alu|Mux4~9_combout\ & ((\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT5\))) # 
-- (!\datapath|alu|Mux4~9_combout\ & (\datapath|alu|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mux4~18_combout\,
	datab => \datapath|alu|Add0~12_combout\,
	datac => \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => \datapath|alu|Mux4~9_combout\,
	combout => \datapath|alu|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y23_N0
\datapath|alu|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux2~1_combout\ = (\datapath|alu|Mux4~18_combout\ & ((\datapath|alu|Mux2~0_combout\ & ((\datapath|a|output\(4)))) # (!\datapath|alu|Mux2~0_combout\ & (\datapath|alu|Mux2~6_combout\)))) # (!\datapath|alu|Mux4~18_combout\ & 
-- (((\datapath|alu|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mux2~6_combout\,
	datab => \datapath|alu|Mux4~18_combout\,
	datac => \datapath|a|output\(4),
	datad => \datapath|alu|Mux2~0_combout\,
	combout => \datapath|alu|Mux2~1_combout\);

-- Location: LCCOMB_X24_Y23_N2
\datapath|alu|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux2~2_combout\ = (\datapath|alu|Mux4~8_combout\ & (((\datapath|alu|Mux4~6_combout\)))) # (!\datapath|alu|Mux4~8_combout\ & ((\datapath|alu|Mux4~6_combout\ & (\datapath|a|output\(5))) # (!\datapath|alu|Mux4~6_combout\ & 
-- ((\datapath|alu|Mux2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|a|output\(5),
	datab => \datapath|alu|Mux4~8_combout\,
	datac => \datapath|alu|Mux4~6_combout\,
	datad => \datapath|alu|Mux2~1_combout\,
	combout => \datapath|alu|Mux2~2_combout\);

-- Location: LCCOMB_X24_Y23_N12
\datapath|alu|Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux2~3_combout\ = (\datapath|alu|Mux4~8_combout\ & ((\datapath|alu|Mux2~2_combout\ & (\datapath|alu|Add2~28_combout\)) # (!\datapath|alu|Mux2~2_combout\ & ((\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT13\))))) # 
-- (!\datapath|alu|Mux4~8_combout\ & (((\datapath|alu|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mux4~8_combout\,
	datab => \datapath|alu|Add2~28_combout\,
	datac => \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => \datapath|alu|Mux2~2_combout\,
	combout => \datapath|alu|Mux2~3_combout\);

-- Location: LCCOMB_X24_Y23_N22
\datapath|alu|Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux2~4_combout\ = (\datapath|alu|Mux4~11_combout\ & (\datapath|d|output\(5))) # (!\datapath|alu|Mux4~11_combout\ & ((\datapath|alu|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|d|output\(5),
	datac => \datapath|alu|Mux4~11_combout\,
	datad => \datapath|alu|Mux2~3_combout\,
	combout => \datapath|alu|Mux2~4_combout\);

-- Location: LCCOMB_X23_Y23_N0
\datapath|in_bus|Mux2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux2~5_combout\ = (\controler|state.S_STORE_ACC_INDX_4~q\ & (\datapath|a|output\(5))) # (!\controler|state.S_STORE_ACC_INDX_4~q\ & ((\controler|WideOr11~2_combout\ & ((\datapath|alu|Mux2~4_combout\))) # (!\controler|WideOr11~2_combout\ & 
-- (\datapath|a|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_STORE_ACC_INDX_4~q\,
	datab => \datapath|a|output\(5),
	datac => \controler|WideOr11~2_combout\,
	datad => \datapath|alu|Mux2~4_combout\,
	combout => \datapath|in_bus|Mux2~5_combout\);

-- Location: LCCOMB_X23_Y23_N4
\datapath|pcL|output[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pcL|output[5]~2_combout\ = (\datapath|in_bus|Add0~0_combout\ & (\datapath|in_bus|Mux2~4_combout\)) # (!\datapath|in_bus|Add0~0_combout\ & ((\datapath|in_bus|Mux2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|in_bus|Mux2~4_combout\,
	datab => \datapath|in_bus|Add0~0_combout\,
	datad => \datapath|in_bus|Mux2~5_combout\,
	combout => \datapath|pcL|output[5]~2_combout\);

-- Location: FF_X22_Y23_N25
\datapath|ir|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[5]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|state.S_FETCH_INTERNAL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|ir|output\(5));

-- Location: LCCOMB_X20_Y22_N28
\controler|Mux0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Mux0~8_combout\ = (\datapath|ir|output\(6) $ (\datapath|ir|output\(3))) # (!\datapath|ir|output\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(6),
	datab => \datapath|ir|output\(5),
	datac => \datapath|ir|output\(3),
	combout => \controler|Mux0~8_combout\);

-- Location: LCCOMB_X20_Y22_N4
\controler|Mux0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Mux0~6_combout\ = (\datapath|ir|output\(0) & (((!\datapath|ir|output\(6) & !\datapath|ir|output\(1))))) # (!\datapath|ir|output\(0) & ((\datapath|ir|output\(6) & ((!\datapath|ir|output\(1)))) # (!\datapath|ir|output\(6) & 
-- (\datapath|ir|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(3),
	datab => \datapath|ir|output\(0),
	datac => \datapath|ir|output\(6),
	datad => \datapath|ir|output\(1),
	combout => \controler|Mux0~6_combout\);

-- Location: LCCOMB_X20_Y22_N14
\controler|Mux0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Mux0~7_combout\ = (\datapath|ir|output\(4) & (\datapath|ir|output\(1))) # (!\datapath|ir|output\(4) & (((\datapath|ir|output\(5)) # (!\controler|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(1),
	datab => \datapath|ir|output\(5),
	datac => \controler|Mux0~6_combout\,
	datad => \datapath|ir|output\(4),
	combout => \controler|Mux0~7_combout\);

-- Location: LCCOMB_X20_Y22_N2
\controler|Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Mux0~5_combout\ = (\datapath|ir|output\(6) & (\datapath|ir|output\(5) & ((\datapath|ir|output\(3)) # (\datapath|ir|output\(0))))) # (!\datapath|ir|output\(6) & (!\datapath|ir|output\(3) & ((\datapath|ir|output\(5)) # 
-- (\datapath|ir|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(3),
	datab => \datapath|ir|output\(5),
	datac => \datapath|ir|output\(6),
	datad => \datapath|ir|output\(0),
	combout => \controler|Mux0~5_combout\);

-- Location: LCCOMB_X20_Y22_N26
\controler|Mux0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Mux0~9_combout\ = (\datapath|ir|output\(4) & ((\controler|Mux0~7_combout\ & (\controler|Mux0~8_combout\)) # (!\controler|Mux0~7_combout\ & ((!\controler|Mux0~5_combout\))))) # (!\datapath|ir|output\(4) & (((\controler|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(4),
	datab => \controler|Mux0~8_combout\,
	datac => \controler|Mux0~7_combout\,
	datad => \controler|Mux0~5_combout\,
	combout => \controler|Mux0~9_combout\);

-- Location: LCCOMB_X20_Y22_N24
\controler|Mux0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Mux0~12_combout\ = (\datapath|ir|output\(2) & (((!\datapath|ir|output\(7))))) # (!\datapath|ir|output\(2) & ((\datapath|ir|output\(7) & ((\controler|Mux0~9_combout\))) # (!\datapath|ir|output\(7) & (\controler|Mux0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|Mux0~11_combout\,
	datab => \datapath|ir|output\(2),
	datac => \controler|Mux0~9_combout\,
	datad => \datapath|ir|output\(7),
	combout => \controler|Mux0~12_combout\);

-- Location: FF_X22_Y24_N19
\controler|state.S_RETURN_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_RETURN_6~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_RETURN_7~q\);

-- Location: LCCOMB_X23_Y24_N28
\controler|WideOr1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr1~5_combout\ = (!\controler|state.S_DECREMENT_X~q\ & !\controler|state.S_INCREMENT_X~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_DECREMENT_X~q\,
	datad => \controler|state.S_INCREMENT_X~q\,
	combout => \controler|WideOr1~5_combout\);

-- Location: LCCOMB_X22_Y24_N18
\controler|WideOr1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr1~8_combout\ = (\controler|state.S_STORE_ACC_ABS_6~q\) # (((\controler|state.S_RETURN_7~q\) # (!\controler|WideOr1~5_combout\)) # (!\controler|WideOr1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_STORE_ACC_ABS_6~q\,
	datab => \controler|WideOr1~6_combout\,
	datac => \controler|state.S_RETURN_7~q\,
	datad => \controler|WideOr1~5_combout\,
	combout => \controler|WideOr1~8_combout\);

-- Location: LCCOMB_X21_Y24_N12
\controler|WideOr1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr1~combout\ = (\controler|WideOr1~7_combout\) # (((\controler|WideOr1~8_combout\) # (!\controler|WideOr1~4_combout\)) # (!\controler|WideOr1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr1~7_combout\,
	datab => \controler|WideOr1~2_combout\,
	datac => \controler|WideOr1~4_combout\,
	datad => \controler|WideOr1~8_combout\,
	combout => \controler|WideOr1~combout\);

-- Location: FF_X21_Y24_N13
\controler|state.S_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|WideOr1~combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_DONE~q\);

-- Location: LCCOMB_X21_Y22_N30
\controler|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|Selector0~0_combout\ = (!\controler|state.S_DONE~q\ & (((!\controler|Mux0~4_combout\ & !\controler|Mux0~12_combout\)) # (!\controler|state.S_DECODE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|Mux0~4_combout\,
	datab => \controler|Mux0~12_combout\,
	datac => \controler|state.S_DECODE~q\,
	datad => \controler|state.S_DONE~q\,
	combout => \controler|Selector0~0_combout\);

-- Location: FF_X21_Y22_N31
\controler|state.S_INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|Selector0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_INIT~q\);

-- Location: LCCOMB_X22_Y21_N14
\controler|state.S_FETCH_BEGIN~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|state.S_FETCH_BEGIN~0_combout\ = !\controler|state.S_INIT~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controler|state.S_INIT~q\,
	combout => \controler|state.S_FETCH_BEGIN~0_combout\);

-- Location: FF_X22_Y21_N15
\controler|state.S_FETCH_BEGIN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|state.S_FETCH_BEGIN~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_FETCH_BEGIN~q\);

-- Location: FF_X22_Y21_N1
\controler|state.S_FETCH_EXTERNAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_FETCH_BEGIN~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_FETCH_EXTERNAL~q\);

-- Location: FF_X21_Y21_N13
\controler|state.S_FETCH_INTERNAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_FETCH_EXTERNAL~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_FETCH_INTERNAL~q\);

-- Location: LCCOMB_X21_Y21_N26
\controler|state.S_DECODE~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|state.S_DECODE~feeder_combout\ = \controler|state.S_FETCH_INTERNAL~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controler|state.S_FETCH_INTERNAL~q\,
	combout => \controler|state.S_DECODE~feeder_combout\);

-- Location: FF_X21_Y21_N27
\controler|state.S_DECODE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|state.S_DECODE~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_DECODE~q\);

-- Location: LCCOMB_X21_Y21_N2
\controler|next_state.S_ROTATE_LEFT_CARRY~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_ROTATE_LEFT_CARRY~0_combout\ = (\controler|next_state.S_STORE_ACC_ABS~1_combout\ & (!\datapath|ir|output\(2) & (\controler|state.S_DECODE~q\ & !\datapath|ir|output\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|next_state.S_STORE_ACC_ABS~1_combout\,
	datab => \datapath|ir|output\(2),
	datac => \controler|state.S_DECODE~q\,
	datad => \datapath|ir|output\(7),
	combout => \controler|next_state.S_ROTATE_LEFT_CARRY~0_combout\);

-- Location: LCCOMB_X21_Y25_N28
\controler|next_state.S_MULT_AD~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_MULT_AD~2_combout\ = (!\datapath|ir|output\(4) & (\controler|next_state.S_ROTATE_LEFT_CARRY~0_combout\ & (!\datapath|ir|output\(6) & !\datapath|ir|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(4),
	datab => \controler|next_state.S_ROTATE_LEFT_CARRY~0_combout\,
	datac => \datapath|ir|output\(6),
	datad => \datapath|ir|output\(5),
	combout => \controler|next_state.S_MULT_AD~2_combout\);

-- Location: FF_X21_Y25_N29
\controler|state.S_MULT_AD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_MULT_AD~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_MULT_AD~q\);

-- Location: LCCOMB_X21_Y25_N22
\controler|state.S_MULT_AD_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|state.S_MULT_AD_2~0_combout\ = (\controler|state.S_MULT_AD_2~q\) # (\controler|state.S_MULT_AD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controler|state.S_MULT_AD_2~q\,
	datad => \controler|state.S_MULT_AD~q\,
	combout => \controler|state.S_MULT_AD_2~0_combout\);

-- Location: FF_X21_Y25_N23
\controler|state.S_MULT_AD_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|state.S_MULT_AD_2~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_MULT_AD_2~q\);

-- Location: LCCOMB_X22_Y25_N6
\controler|WideOr18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr18~combout\ = ((\controler|state.S_LOAD_ACC_INDX_6~q\) # (\controler|state.S_MULT_AD_2~q\)) # (!\controler|WideOr1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr1~4_combout\,
	datab => \controler|state.S_LOAD_ACC_INDX_6~q\,
	datad => \controler|state.S_MULT_AD_2~q\,
	combout => \controler|WideOr18~combout\);

-- Location: FF_X23_Y23_N5
\datapath|a|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[2]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|a|output\(2));

-- Location: LCCOMB_X23_Y22_N0
\datapath|in_bus|Mux5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux5~5_combout\ = (\controler|state.S_STORE_ACC_INDX_4~q\ & (\datapath|a|output\(2))) # (!\controler|state.S_STORE_ACC_INDX_4~q\ & ((\controler|WideOr11~2_combout\ & ((\datapath|alu|Mux5~4_combout\))) # (!\controler|WideOr11~2_combout\ & 
-- (\datapath|a|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_STORE_ACC_INDX_4~q\,
	datab => \datapath|a|output\(2),
	datac => \controler|WideOr11~2_combout\,
	datad => \datapath|alu|Mux5~4_combout\,
	combout => \datapath|in_bus|Mux5~5_combout\);

-- Location: LCCOMB_X23_Y22_N24
\datapath|pcL|output[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pcL|output[2]~4_combout\ = (\datapath|in_bus|Add0~0_combout\ & (\datapath|in_bus|Mux5~4_combout\)) # (!\datapath|in_bus|Add0~0_combout\ & ((\datapath|in_bus|Mux5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|in_bus|Mux5~4_combout\,
	datab => \datapath|in_bus|Add0~0_combout\,
	datad => \datapath|in_bus|Mux5~5_combout\,
	combout => \datapath|pcL|output[2]~4_combout\);

-- Location: FF_X24_Y22_N5
\datapath|ir|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[2]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|state.S_FETCH_INTERNAL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|ir|output\(2));

-- Location: LCCOMB_X21_Y21_N8
\controler|next_state.S_LOAD_ACC_IMM~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_LOAD_ACC_IMM~0_combout\ = (\datapath|ir|output\(7) & (\controler|state.S_DECODE~q\ & !\datapath|ir|output\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|ir|output\(7),
	datac => \controler|state.S_DECODE~q\,
	datad => \datapath|ir|output\(5),
	combout => \controler|next_state.S_LOAD_ACC_IMM~0_combout\);

-- Location: LCCOMB_X21_Y21_N22
\controler|next_state.S_CALL~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_CALL~0_combout\ = (!\datapath|ir|output\(2) & (!\datapath|ir|output\(4) & \controler|next_state.S_LOAD_ACC_IMM~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|ir|output\(2),
	datac => \datapath|ir|output\(4),
	datad => \controler|next_state.S_LOAD_ACC_IMM~0_combout\,
	combout => \controler|next_state.S_CALL~0_combout\);

-- Location: LCCOMB_X21_Y22_N24
\controler|next_state.S_LOAD_SP_IMM~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_LOAD_SP_IMM~0_combout\ = (\controler|Mux0~0_combout\ & (\controler|next_state.S_CALL~0_combout\ & (!\datapath|ir|output\(1) & \datapath|ir|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|Mux0~0_combout\,
	datab => \controler|next_state.S_CALL~0_combout\,
	datac => \datapath|ir|output\(1),
	datad => \datapath|ir|output\(0),
	combout => \controler|next_state.S_LOAD_SP_IMM~0_combout\);

-- Location: FF_X22_Y22_N23
\controler|state.S_LOAD_SP_IMM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|next_state.S_LOAD_SP_IMM~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_LOAD_SP_IMM~q\);

-- Location: LCCOMB_X22_Y21_N16
\controler|state.S_LOAD_SP_IMM_2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|state.S_LOAD_SP_IMM_2~feeder_combout\ = \controler|state.S_LOAD_SP_IMM~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controler|state.S_LOAD_SP_IMM~q\,
	combout => \controler|state.S_LOAD_SP_IMM_2~feeder_combout\);

-- Location: FF_X22_Y21_N17
\controler|state.S_LOAD_SP_IMM_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|state.S_LOAD_SP_IMM_2~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_LOAD_SP_IMM_2~q\);

-- Location: LCCOMB_X22_Y21_N2
\controler|state.S_LOAD_SP_IMM_3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|state.S_LOAD_SP_IMM_3~feeder_combout\ = \controler|state.S_LOAD_SP_IMM_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controler|state.S_LOAD_SP_IMM_2~q\,
	combout => \controler|state.S_LOAD_SP_IMM_3~feeder_combout\);

-- Location: FF_X22_Y21_N3
\controler|state.S_LOAD_SP_IMM_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|state.S_LOAD_SP_IMM_3~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_LOAD_SP_IMM_3~q\);

-- Location: FF_X22_Y24_N25
\controler|state.S_LOAD_SP_IMM_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_LOAD_SP_IMM_3~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_LOAD_SP_IMM_4~q\);

-- Location: LCCOMB_X22_Y24_N0
\controler|WideOr1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr1~2_combout\ = (!\controler|state.S_LOAD_X_IMM_4~q\ & (!\controler|state.S_LOAD_SP_IMM_4~q\ & (!\controler|state.S_CALL_7~q\ & !\controler|state.S_BRANCH_TAKEN_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_LOAD_X_IMM_4~q\,
	datab => \controler|state.S_LOAD_SP_IMM_4~q\,
	datac => \controler|state.S_CALL_7~q\,
	datad => \controler|state.S_BRANCH_TAKEN_3~q\,
	combout => \controler|WideOr1~2_combout\);

-- Location: LCCOMB_X22_Y25_N30
\controler|WideOr11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr11~0_combout\ = (!\controler|state.S_RETURN_6~q\ & (!\controler|state.S_LOAD_ACC_INDX_6~q\ & (!\controler|state.S_RETURN_4~q\ & !\controler|state.S_LOAD_ACC_ABS_7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_RETURN_6~q\,
	datab => \controler|state.S_LOAD_ACC_INDX_6~q\,
	datac => \controler|state.S_RETURN_4~q\,
	datad => \controler|state.S_LOAD_ACC_ABS_7~q\,
	combout => \controler|WideOr11~0_combout\);

-- Location: LCCOMB_X23_Y22_N2
\controler|WideOr11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr11~1_combout\ = (!\controler|b_en~0_combout\ & (!\controler|state.S_LOAD_ACC_ABS_3~q\ & (!\controler|state.S_CALL~q\ & \controler|WideOr11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|b_en~0_combout\,
	datab => \controler|state.S_LOAD_ACC_ABS_3~q\,
	datac => \controler|state.S_CALL~q\,
	datad => \controler|WideOr11~0_combout\,
	combout => \controler|WideOr11~1_combout\);

-- Location: LCCOMB_X22_Y24_N26
\controler|WideOr11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr11~2_combout\ = (\controler|WideOr13~0_combout\ & (\controler|WideOr1~2_combout\ & (\controler|WideOr9~1_combout\ & \controler|WideOr11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr13~0_combout\,
	datab => \controler|WideOr1~2_combout\,
	datac => \controler|WideOr9~1_combout\,
	datad => \controler|WideOr11~1_combout\,
	combout => \controler|WideOr11~2_combout\);

-- Location: LCCOMB_X22_Y24_N8
\controler|WideOr12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|WideOr12~combout\ = (\controler|state.S_STORE_ACC_INDX_4~q\) # (!\controler|WideOr11~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controler|WideOr11~2_combout\,
	datad => \controler|state.S_STORE_ACC_INDX_4~q\,
	combout => \controler|WideOr12~combout\);

-- Location: LCCOMB_X20_Y24_N20
\datapath|alu|Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux1~4_combout\ = (\datapath|a|output\(6) & ((\datapath|d|output\(6) $ (\datapath|alu|Mux4~17_combout\)) # (!\datapath|alu|Mux4~10_combout\))) # (!\datapath|a|output\(6) & ((\datapath|alu|Mux4~17_combout\ & (\datapath|d|output\(6))) # 
-- (!\datapath|alu|Mux4~17_combout\ & ((!\datapath|alu|Mux4~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|a|output\(6),
	datab => \datapath|d|output\(6),
	datac => \datapath|alu|Mux4~17_combout\,
	datad => \datapath|alu|Mux4~10_combout\,
	combout => \datapath|alu|Mux1~4_combout\);

-- Location: LCCOMB_X20_Y24_N2
\datapath|alu|Mux1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux1~5_combout\ = (\datapath|alu|Mux1~4_combout\ & ((\datapath|a|output\(7)) # ((\datapath|alu|Mux4~10_combout\) # (\datapath|alu|Mux4~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|a|output\(7),
	datab => \datapath|alu|Mux4~10_combout\,
	datac => \datapath|alu|Mux4~17_combout\,
	datad => \datapath|alu|Mux1~4_combout\,
	combout => \datapath|alu|Mux1~5_combout\);

-- Location: LCCOMB_X24_Y23_N30
\datapath|alu|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux1~0_combout\ = (\datapath|alu|Mux4~9_combout\ & (((\datapath|alu|Mux4~18_combout\)))) # (!\datapath|alu|Mux4~9_combout\ & ((\datapath|alu|Mux4~18_combout\ & ((\datapath|alu|Mux1~5_combout\))) # (!\datapath|alu|Mux4~18_combout\ & 
-- (\datapath|alu|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Add0~14_combout\,
	datab => \datapath|alu|Mux4~9_combout\,
	datac => \datapath|alu|Mux4~18_combout\,
	datad => \datapath|alu|Mux1~5_combout\,
	combout => \datapath|alu|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y23_N28
\datapath|alu|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux1~1_combout\ = (\datapath|alu|Mux4~9_combout\ & ((\datapath|alu|Mux1~0_combout\ & (\datapath|a|output\(5))) # (!\datapath|alu|Mux1~0_combout\ & ((\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT6\))))) # (!\datapath|alu|Mux4~9_combout\ 
-- & (((\datapath|alu|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|a|output\(5),
	datab => \datapath|alu|Mux4~9_combout\,
	datac => \datapath|alu|Mux1~0_combout\,
	datad => \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT6\,
	combout => \datapath|alu|Mux1~1_combout\);

-- Location: LCCOMB_X24_Y23_N18
\datapath|alu|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux1~2_combout\ = (\datapath|alu|Mux4~6_combout\ & (\datapath|alu|Mux4~8_combout\)) # (!\datapath|alu|Mux4~6_combout\ & ((\datapath|alu|Mux4~8_combout\ & (\datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT14\)) # 
-- (!\datapath|alu|Mux4~8_combout\ & ((\datapath|alu|Mux1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu|Mux4~6_combout\,
	datab => \datapath|alu|Mux4~8_combout\,
	datac => \datapath|alu|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => \datapath|alu|Mux1~1_combout\,
	combout => \datapath|alu|Mux1~2_combout\);

-- Location: LCCOMB_X24_Y23_N24
\datapath|alu|Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|alu|Mux1~3_combout\ = (\datapath|alu|Mux4~6_combout\ & ((\datapath|alu|Mux1~2_combout\ & ((\datapath|alu|Add2~30_combout\))) # (!\datapath|alu|Mux1~2_combout\ & (\datapath|a|output\(6))))) # (!\datapath|alu|Mux4~6_combout\ & 
-- (((\datapath|alu|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|a|output\(6),
	datab => \datapath|alu|Add2~30_combout\,
	datac => \datapath|alu|Mux4~6_combout\,
	datad => \datapath|alu|Mux1~2_combout\,
	combout => \datapath|alu|Mux1~3_combout\);

-- Location: LCCOMB_X24_Y23_N20
\datapath|in_bus|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux1~2_combout\ = (!\controler|WideOr12~combout\ & ((\datapath|alu|Mux4~11_combout\ & (\datapath|d|output\(6))) # (!\datapath|alu|Mux4~11_combout\ & ((\datapath|alu|Mux1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|d|output\(6),
	datab => \datapath|alu|Mux4~11_combout\,
	datac => \controler|WideOr12~combout\,
	datad => \datapath|alu|Mux1~3_combout\,
	combout => \datapath|in_bus|Mux1~2_combout\);

-- Location: LCCOMB_X24_Y23_N26
\datapath|in_bus|Mux1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux1~6_combout\ = (\datapath|in_bus|Mux1~2_combout\) # ((\datapath|a|output\(6) & ((\controler|state.S_STORE_ACC_INDX_4~q\) # (!\controler|WideOr11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|a|output\(6),
	datab => \controler|WideOr11~2_combout\,
	datac => \controler|state.S_STORE_ACC_INDX_4~q\,
	datad => \datapath|in_bus|Mux1~2_combout\,
	combout => \datapath|in_bus|Mux1~6_combout\);

-- Location: FF_X27_Y24_N15
\datapath|ex_to_in_reg|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|ex_bus|Mux1~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|ex_to_in_reg|output\(6));

-- Location: LCCOMB_X27_Y24_N14
\datapath|in_bus|Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux1~4_combout\ = (\controler|WideOr11~2_combout\ & (\controler|state.S_STORE_ACC_INDX_4~q\ & (\datapath|arL|output\(6)))) # (!\controler|WideOr11~2_combout\ & (((\datapath|ex_to_in_reg|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_STORE_ACC_INDX_4~q\,
	datab => \datapath|arL|output\(6),
	datac => \datapath|ex_to_in_reg|output\(6),
	datad => \controler|WideOr11~2_combout\,
	combout => \datapath|in_bus|Mux1~4_combout\);

-- Location: LCCOMB_X30_Y23_N26
\datapath|pc_adder|output[13]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pc_adder|output[13]~26_combout\ = (\datapath|pcH|output\(5) & (!\datapath|pc_adder|output[12]~25\)) # (!\datapath|pcH|output\(5) & ((\datapath|pc_adder|output[12]~25\) # (GND)))
-- \datapath|pc_adder|output[13]~27\ = CARRY((!\datapath|pc_adder|output[12]~25\) # (!\datapath|pcH|output\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|pcH|output\(5),
	datad => VCC,
	cin => \datapath|pc_adder|output[12]~25\,
	combout => \datapath|pc_adder|output[13]~26_combout\,
	cout => \datapath|pc_adder|output[13]~27\);

-- Location: LCCOMB_X26_Y23_N24
\datapath|pc_adder|Add0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pc_adder|Add0~7_combout\ = (\controler|WideOr13~4_combout\ & (\datapath|pcL|output[5]~2_combout\)) # (!\controler|WideOr13~4_combout\ & ((\datapath|pc_adder|output[13]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr13~4_combout\,
	datac => \datapath|pcL|output[5]~2_combout\,
	datad => \datapath|pc_adder|output[13]~26_combout\,
	combout => \datapath|pc_adder|Add0~7_combout\);

-- Location: FF_X26_Y23_N25
\datapath|pcH|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|pc_adder|Add0~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|pcH|output\(5));

-- Location: LCCOMB_X26_Y23_N22
\datapath|pc_adder|Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pc_adder|Add0~5_combout\ = (\controler|WideOr13~4_combout\ & ((\datapath|pcL|output[6]~1_combout\))) # (!\controler|WideOr13~4_combout\ & (\datapath|pc_adder|output[14]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|WideOr13~4_combout\,
	datac => \datapath|pc_adder|output[14]~28_combout\,
	datad => \datapath|pcL|output[6]~1_combout\,
	combout => \datapath|pc_adder|Add0~5_combout\);

-- Location: FF_X26_Y23_N23
\datapath|pcH|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|pc_adder|Add0~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|pcH|output\(6));

-- Location: LCCOMB_X28_Y23_N2
\datapath|in_bus|Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux1~3_combout\ = (!\controler|state.S_STORE_ACC_INDX_4~q\ & (\controler|WideOr11~2_combout\ & \datapath|pcH|output\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_STORE_ACC_INDX_4~q\,
	datac => \controler|WideOr11~2_combout\,
	datad => \datapath|pcH|output\(6),
	combout => \datapath|in_bus|Mux1~3_combout\);

-- Location: LCCOMB_X28_Y23_N8
\datapath|in_bus|Mux1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux1~5_combout\ = (\controler|state.S_CALL~q\ & (\datapath|pcL|output\(6))) # (!\controler|state.S_CALL~q\ & (((\datapath|in_bus|Mux1~4_combout\) # (\datapath|in_bus|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|pcL|output\(6),
	datab => \controler|state.S_CALL~q\,
	datac => \datapath|in_bus|Mux1~4_combout\,
	datad => \datapath|in_bus|Mux1~3_combout\,
	combout => \datapath|in_bus|Mux1~5_combout\);

-- Location: LCCOMB_X24_Y23_N16
\datapath|pcL|output[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pcL|output[6]~1_combout\ = (\datapath|in_bus|Add0~0_combout\ & ((\datapath|in_bus|Mux1~5_combout\))) # (!\datapath|in_bus|Add0~0_combout\ & (\datapath|in_bus|Mux1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|in_bus|Add0~0_combout\,
	datac => \datapath|in_bus|Mux1~6_combout\,
	datad => \datapath|in_bus|Mux1~5_combout\,
	combout => \datapath|pcL|output[6]~1_combout\);

-- Location: LCCOMB_X26_Y23_N8
\datapath|ir|output[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|ir|output[6]~feeder_combout\ = \datapath|pcL|output[6]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|pcL|output[6]~1_combout\,
	combout => \datapath|ir|output[6]~feeder_combout\);

-- Location: FF_X26_Y23_N9
\datapath|ir|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|ir|output[6]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|state.S_FETCH_INTERNAL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|ir|output\(6));

-- Location: LCCOMB_X21_Y22_N10
\controler|next_state.S_DECREMENT_X~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_DECREMENT_X~0_combout\ = (!\datapath|ir|output\(1) & (\datapath|ir|output\(6) & \datapath|ir|output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(1),
	datab => \datapath|ir|output\(6),
	datad => \datapath|ir|output\(3),
	combout => \controler|next_state.S_DECREMENT_X~0_combout\);

-- Location: LCCOMB_X23_Y25_N24
\controler|next_state.S_CALL~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_CALL~1_combout\ = (\controler|next_state.S_CALL~0_combout\ & (\controler|next_state.S_DECREMENT_X~0_combout\ & !\datapath|ir|output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|next_state.S_CALL~0_combout\,
	datac => \controler|next_state.S_DECREMENT_X~0_combout\,
	datad => \datapath|ir|output\(0),
	combout => \controler|next_state.S_CALL~1_combout\);

-- Location: FF_X23_Y25_N25
\controler|state.S_CALL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_CALL~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_CALL~q\);

-- Location: FF_X23_Y25_N19
\controler|state.S_CALL_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_CALL~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_CALL_2~q\);

-- Location: LCCOMB_X23_Y23_N28
\datapath|in_bus|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Add0~0_combout\ = (\controler|state.S_CALL_2~q\) # (!\controler|WideOr11~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controler|state.S_CALL_2~q\,
	datad => \controler|WideOr11~2_combout\,
	combout => \datapath|in_bus|Add0~0_combout\);

-- Location: LCCOMB_X26_Y22_N2
\datapath|in_bus|Mux6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|in_bus|Mux6~5_combout\ = (\controler|state.S_STORE_ACC_INDX_4~q\ & (\datapath|a|output\(1))) # (!\controler|state.S_STORE_ACC_INDX_4~q\ & ((\controler|WideOr11~2_combout\ & ((\datapath|alu|Mux6~4_combout\))) # (!\controler|WideOr11~2_combout\ & 
-- (\datapath|a|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_STORE_ACC_INDX_4~q\,
	datab => \datapath|a|output\(1),
	datac => \controler|WideOr11~2_combout\,
	datad => \datapath|alu|Mux6~4_combout\,
	combout => \datapath|in_bus|Mux6~5_combout\);

-- Location: LCCOMB_X26_Y22_N0
\datapath|pcL|output[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|pcL|output[1]~5_combout\ = (\datapath|in_bus|Add0~0_combout\ & (\datapath|in_bus|Mux6~4_combout\)) # (!\datapath|in_bus|Add0~0_combout\ & ((\datapath|in_bus|Mux6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|in_bus|Mux6~4_combout\,
	datab => \datapath|in_bus|Add0~0_combout\,
	datad => \datapath|in_bus|Mux6~5_combout\,
	combout => \datapath|pcL|output[1]~5_combout\);

-- Location: FF_X24_Y22_N3
\datapath|ir|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[1]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|state.S_FETCH_INTERNAL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|ir|output\(1));

-- Location: LCCOMB_X22_Y25_N20
\controler|next_state.S_BRANCH_NOT_Z~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_BRANCH_NOT_Z~0_combout\ = (!\datapath|ir|output\(0) & (!\datapath|ir|output\(1) & \datapath|ir|output\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ir|output\(0),
	datab => \datapath|ir|output\(1),
	datad => \datapath|ir|output\(2),
	combout => \controler|next_state.S_BRANCH_NOT_Z~0_combout\);

-- Location: LCCOMB_X21_Y22_N26
\controler|next_state.S_LOAD_ACC_INDX~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|next_state.S_LOAD_ACC_INDX~2_combout\ = (\controler|next_state.S_STORE_ACC_ABS~0_combout\ & (\controler|next_state.S_BRANCH_NOT_Z~0_combout\ & (!\datapath|ir|output\(6) & \datapath|ir|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|next_state.S_STORE_ACC_ABS~0_combout\,
	datab => \controler|next_state.S_BRANCH_NOT_Z~0_combout\,
	datac => \datapath|ir|output\(6),
	datad => \datapath|ir|output\(3),
	combout => \controler|next_state.S_LOAD_ACC_INDX~2_combout\);

-- Location: FF_X21_Y22_N27
\controler|state.S_LOAD_ACC_INDX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|next_state.S_LOAD_ACC_INDX~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_LOAD_ACC_INDX~q\);

-- Location: FF_X22_Y25_N9
\controler|state.S_LOAD_ACC_INDX_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_LOAD_ACC_INDX~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_LOAD_ACC_INDX_2~q\);

-- Location: LCCOMB_X23_Y22_N8
\controler|state.S_LOAD_ACC_INDX_3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controler|state.S_LOAD_ACC_INDX_3~feeder_combout\ = \controler|state.S_LOAD_ACC_INDX_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controler|state.S_LOAD_ACC_INDX_2~q\,
	combout => \controler|state.S_LOAD_ACC_INDX_3~feeder_combout\);

-- Location: FF_X23_Y22_N9
\controler|state.S_LOAD_ACC_INDX_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \controler|state.S_LOAD_ACC_INDX_3~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_LOAD_ACC_INDX_3~q\);

-- Location: FF_X23_Y22_N5
\controler|state.S_LOAD_ACC_INDX_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \controler|state.S_LOAD_ACC_INDX_3~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler|state.S_LOAD_ACC_INDX_4~q\);

-- Location: LCCOMB_X22_Y22_N24
\datapath|adr_bus|Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux7~3_combout\ = (\datapath|adr_bus|Mux7~1_combout\ & (\controler|Selector3~9_combout\ $ (((\controler|state.S_STORE_ACC_INDX_4~q\) # (\controler|state.S_LOAD_ACC_INDX_4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state.S_STORE_ACC_INDX_4~q\,
	datab => \controler|state.S_LOAD_ACC_INDX_4~q\,
	datac => \controler|Selector3~9_combout\,
	datad => \datapath|adr_bus|Mux7~1_combout\,
	combout => \datapath|adr_bus|Mux7~3_combout\);

-- Location: LCCOMB_X27_Y22_N4
\datapath|xH_mux|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|xH_mux|Mux0~2_combout\ = (\controler|state.S_INCREMENT_X~q\ & (\datapath|x_adder|output[15]~30_combout\)) # (!\controler|state.S_INCREMENT_X~q\ & ((\controler|state.S_DECREMENT_X~q\ & (\datapath|x_adder|output[15]~30_combout\)) # 
-- (!\controler|state.S_DECREMENT_X~q\ & ((\datapath|pcL|output[7]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|x_adder|output[15]~30_combout\,
	datab => \controler|state.S_INCREMENT_X~q\,
	datac => \datapath|pcL|output[7]~0_combout\,
	datad => \controler|state.S_DECREMENT_X~q\,
	combout => \datapath|xH_mux|Mux0~2_combout\);

-- Location: FF_X27_Y22_N5
\datapath|xH|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|xH_mux|Mux0~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \controler|WideOr32~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|xH|output\(7));

-- Location: LCCOMB_X24_Y22_N30
\datapath|x_adder|output[15]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|x_adder|output[15]~30_combout\ = \datapath|xH|output\(7) $ (\datapath|x_adder|output[14]~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|xH|output\(7),
	cin => \datapath|x_adder|output[14]~29\,
	combout => \datapath|x_adder|output[15]~30_combout\);

-- Location: FF_X27_Y22_N3
\datapath|arH|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[7]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|arH_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|arH|output\(7));

-- Location: LCCOMB_X27_Y22_N2
\datapath|adr_bus|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux0~0_combout\ = (\datapath|adr_bus|Mux7~2_combout\ & ((\datapath|spH|output\(7)) # ((\datapath|adr_bus|Mux7~3_combout\)))) # (!\datapath|adr_bus|Mux7~2_combout\ & (((\datapath|arH|output\(7) & !\datapath|adr_bus|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|spH|output\(7),
	datab => \datapath|adr_bus|Mux7~2_combout\,
	datac => \datapath|arH|output\(7),
	datad => \datapath|adr_bus|Mux7~3_combout\,
	combout => \datapath|adr_bus|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y22_N20
\datapath|adr_bus|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|adr_bus|Mux0~1_combout\ = (\datapath|adr_bus|Mux7~3_combout\ & ((\datapath|adr_bus|Mux0~0_combout\ & (\datapath|pcH|output\(7))) # (!\datapath|adr_bus|Mux0~0_combout\ & ((\datapath|x_adder|output[15]~30_combout\))))) # 
-- (!\datapath|adr_bus|Mux7~3_combout\ & (((\datapath|adr_bus|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|pcH|output\(7),
	datab => \datapath|adr_bus|Mux7~3_combout\,
	datac => \datapath|x_adder|output[15]~30_combout\,
	datad => \datapath|adr_bus|Mux0~0_combout\,
	combout => \datapath|adr_bus|Mux0~1_combout\);

-- Location: LCCOMB_X27_Y24_N6
\datapath|mem_decoder|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|mem_decoder|LessThan0~1_combout\ = (\datapath|mem_decoder|LessThan0~0_combout\ & (\datapath|adr_bus|Mux13~1_combout\ & (\datapath|adr_bus|Mux12~1_combout\ & \datapath|adr_bus|Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|mem_decoder|LessThan0~0_combout\,
	datab => \datapath|adr_bus|Mux13~1_combout\,
	datac => \datapath|adr_bus|Mux12~1_combout\,
	datad => \datapath|adr_bus|Mux14~1_combout\,
	combout => \datapath|mem_decoder|LessThan0~1_combout\);

-- Location: LCCOMB_X27_Y24_N24
\process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (\datapath|adr_bus|Mux7~5_combout\ & (\datapath|adr_bus|Mux2~1_combout\ & (\datapath|adr_bus|Mux15~1_combout\ & \datapath|mem_decoder|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|adr_bus|Mux7~5_combout\,
	datab => \datapath|adr_bus|Mux2~1_combout\,
	datac => \datapath|adr_bus|Mux15~1_combout\,
	datad => \datapath|mem_decoder|LessThan0~1_combout\,
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X27_Y24_N18
\process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (\datapath|adr_bus|Mux1~1_combout\ & (\datapath|adr_bus|Mux0~1_combout\ & (\process_0~0_combout\ & \process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|adr_bus|Mux1~1_combout\,
	datab => \datapath|adr_bus|Mux0~1_combout\,
	datac => \process_0~0_combout\,
	datad => \process_0~1_combout\,
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X24_Y24_N20
\input2[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input2[2]~0_combout\ = (\button[2]~input_o\ & (\switch[2]~input_o\ & (!\button[1]~input_o\ & \process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \switch[2]~input_o\,
	datac => \button[1]~input_o\,
	datad => \process_0~2_combout\,
	combout => \input2[2]~0_combout\);

-- Location: FF_X24_Y24_N21
\datapath|inport2_reg|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \input2[2]~0_combout\,
	ena => \controler|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|inport2_reg|output\(2));

-- Location: LCCOMB_X24_Y24_N10
\input1[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input1[2]~0_combout\ = (\in1_sel~0_combout\ & (\switch[2]~input_o\ & (\button[1]~input_o\ & !\button[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_sel~0_combout\,
	datab => \switch[2]~input_o\,
	datac => \button[1]~input_o\,
	datad => \button[2]~input_o\,
	combout => \input1[2]~0_combout\);

-- Location: FF_X24_Y24_N11
\datapath|inport1_reg|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \input1[2]~0_combout\,
	ena => \controler|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|inport1_reg|output\(2));

-- Location: FF_X28_Y24_N15
\datapath|in_to_ex_reg|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|pcL|output[2]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \controler|WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|in_to_ex_reg|output\(2));

-- Location: LCCOMB_X28_Y24_N14
\datapath|ex_bus|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|ex_bus|Mux5~0_combout\ = (\controler|Selector4~0_combout\ & ((\datapath|inport1_reg|output\(2)) # ((\controler|Selector5~1_combout\)))) # (!\controler|Selector4~0_combout\ & (((\datapath|in_to_ex_reg|output\(2) & 
-- !\controler|Selector5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|Selector4~0_combout\,
	datab => \datapath|inport1_reg|output\(2),
	datac => \datapath|in_to_ex_reg|output\(2),
	datad => \controler|Selector5~1_combout\,
	combout => \datapath|ex_bus|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y24_N8
\datapath|ex_bus|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|ex_bus|Mux5~1_combout\ = (\controler|Selector5~1_combout\ & ((\datapath|ex_bus|Mux5~0_combout\ & ((\datapath|inport2_reg|output\(2)))) # (!\datapath|ex_bus|Mux5~0_combout\ & (\datapath|ram|altsyncram_component|auto_generated|q_a\(2))))) # 
-- (!\controler|Selector5~1_combout\ & (((\datapath|ex_bus|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ram|altsyncram_component|auto_generated|q_a\(2),
	datab => \datapath|inport2_reg|output\(2),
	datac => \controler|Selector5~1_combout\,
	datad => \datapath|ex_bus|Mux5~0_combout\,
	combout => \datapath|ex_bus|Mux5~1_combout\);

-- Location: LCCOMB_X26_Y24_N8
\datapath|out1_reg_en\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|out1_reg_en~combout\ = (!\controler|WideOr6~0_combout\ & \in1_sel~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controler|WideOr6~0_combout\,
	datad => \in1_sel~0_combout\,
	combout => \datapath|out1_reg_en~combout\);

-- Location: FF_X29_Y24_N9
\datapath|outport1_reg|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|ex_bus|Mux5~1_combout\,
	ena => \datapath|out1_reg_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|outport1_reg|output\(2));

-- Location: LCCOMB_X26_Y24_N2
\datapath|outport1_reg|output[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|outport1_reg|output[1]~feeder_combout\ = \datapath|ex_bus|Mux6~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|ex_bus|Mux6~1_combout\,
	combout => \datapath|outport1_reg|output[1]~feeder_combout\);

-- Location: FF_X26_Y24_N3
\datapath|outport1_reg|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|outport1_reg|output[1]~feeder_combout\,
	ena => \datapath|out1_reg_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|outport1_reg|output\(1));

-- Location: FF_X26_Y24_N9
\datapath|outport1_reg|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|ex_bus|Mux7~1_combout\,
	sload => VCC,
	ena => \datapath|out1_reg_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|outport1_reg|output\(0));

-- Location: LCCOMB_X26_Y24_N16
\datapath|outport1_reg|output[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|outport1_reg|output[3]~feeder_combout\ = \datapath|ex_bus|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|ex_bus|Mux4~1_combout\,
	combout => \datapath|outport1_reg|output[3]~feeder_combout\);

-- Location: FF_X26_Y24_N17
\datapath|outport1_reg|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|outport1_reg|output[3]~feeder_combout\,
	ena => \datapath|out1_reg_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|outport1_reg|output\(3));

-- Location: LCCOMB_X26_Y24_N14
\U_LED0|output[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED0|output[0]~0_combout\ = (\datapath|outport1_reg|output\(0) & (!\datapath|outport1_reg|output\(3) & (\datapath|outport1_reg|output\(2) $ (!\datapath|outport1_reg|output\(1))))) # (!\datapath|outport1_reg|output\(0) & 
-- (!\datapath|outport1_reg|output\(1) & (\datapath|outport1_reg|output\(2) $ (!\datapath|outport1_reg|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outport1_reg|output\(2),
	datab => \datapath|outport1_reg|output\(1),
	datac => \datapath|outport1_reg|output\(0),
	datad => \datapath|outport1_reg|output\(3),
	combout => \U_LED0|output[0]~0_combout\);

-- Location: LCCOMB_X26_Y24_N0
\U_LED0|output[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED0|output[1]~1_combout\ = (\datapath|outport1_reg|output\(2) & (\datapath|outport1_reg|output\(0) & (\datapath|outport1_reg|output\(1) $ (\datapath|outport1_reg|output\(3))))) # (!\datapath|outport1_reg|output\(2) & 
-- (!\datapath|outport1_reg|output\(3) & ((\datapath|outport1_reg|output\(1)) # (\datapath|outport1_reg|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outport1_reg|output\(2),
	datab => \datapath|outport1_reg|output\(1),
	datac => \datapath|outport1_reg|output\(0),
	datad => \datapath|outport1_reg|output\(3),
	combout => \U_LED0|output[1]~1_combout\);

-- Location: LCCOMB_X26_Y24_N26
\U_LED0|output[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED0|output[2]~2_combout\ = (\datapath|outport1_reg|output\(1) & (((\datapath|outport1_reg|output\(0) & !\datapath|outport1_reg|output\(3))))) # (!\datapath|outport1_reg|output\(1) & ((\datapath|outport1_reg|output\(2) & 
-- ((!\datapath|outport1_reg|output\(3)))) # (!\datapath|outport1_reg|output\(2) & (\datapath|outport1_reg|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outport1_reg|output\(2),
	datab => \datapath|outport1_reg|output\(1),
	datac => \datapath|outport1_reg|output\(0),
	datad => \datapath|outport1_reg|output\(3),
	combout => \U_LED0|output[2]~2_combout\);

-- Location: LCCOMB_X26_Y24_N12
\U_LED0|output[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED0|output[3]~3_combout\ = (\datapath|outport1_reg|output\(0) & (\datapath|outport1_reg|output\(2) $ ((!\datapath|outport1_reg|output\(1))))) # (!\datapath|outport1_reg|output\(0) & ((\datapath|outport1_reg|output\(2) & 
-- (!\datapath|outport1_reg|output\(1) & !\datapath|outport1_reg|output\(3))) # (!\datapath|outport1_reg|output\(2) & (\datapath|outport1_reg|output\(1) & \datapath|outport1_reg|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outport1_reg|output\(2),
	datab => \datapath|outport1_reg|output\(1),
	datac => \datapath|outport1_reg|output\(0),
	datad => \datapath|outport1_reg|output\(3),
	combout => \U_LED0|output[3]~3_combout\);

-- Location: LCCOMB_X26_Y24_N6
\U_LED0|output[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED0|output[4]~4_combout\ = (\datapath|outport1_reg|output\(2) & (\datapath|outport1_reg|output\(3) & ((\datapath|outport1_reg|output\(1)) # (!\datapath|outport1_reg|output\(0))))) # (!\datapath|outport1_reg|output\(2) & 
-- (\datapath|outport1_reg|output\(1) & (!\datapath|outport1_reg|output\(0) & !\datapath|outport1_reg|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outport1_reg|output\(2),
	datab => \datapath|outport1_reg|output\(1),
	datac => \datapath|outport1_reg|output\(0),
	datad => \datapath|outport1_reg|output\(3),
	combout => \U_LED0|output[4]~4_combout\);

-- Location: LCCOMB_X26_Y24_N24
\U_LED0|output[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED0|output[5]~5_combout\ = (\datapath|outport1_reg|output\(1) & ((\datapath|outport1_reg|output\(0) & ((\datapath|outport1_reg|output\(3)))) # (!\datapath|outport1_reg|output\(0) & (\datapath|outport1_reg|output\(2))))) # 
-- (!\datapath|outport1_reg|output\(1) & (\datapath|outport1_reg|output\(2) & (\datapath|outport1_reg|output\(0) $ (\datapath|outport1_reg|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outport1_reg|output\(2),
	datab => \datapath|outport1_reg|output\(1),
	datac => \datapath|outport1_reg|output\(0),
	datad => \datapath|outport1_reg|output\(3),
	combout => \U_LED0|output[5]~5_combout\);

-- Location: LCCOMB_X26_Y24_N30
\U_LED0|output[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED0|output[6]~6_combout\ = (\datapath|outport1_reg|output\(2) & (!\datapath|outport1_reg|output\(1) & (\datapath|outport1_reg|output\(0) $ (!\datapath|outport1_reg|output\(3))))) # (!\datapath|outport1_reg|output\(2) & 
-- (\datapath|outport1_reg|output\(0) & (\datapath|outport1_reg|output\(1) $ (!\datapath|outport1_reg|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outport1_reg|output\(2),
	datab => \datapath|outport1_reg|output\(1),
	datac => \datapath|outport1_reg|output\(0),
	datad => \datapath|outport1_reg|output\(3),
	combout => \U_LED0|output[6]~6_combout\);

-- Location: LCCOMB_X27_Y24_N20
\datapath|outport1_reg|output[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|outport1_reg|output[4]~feeder_combout\ = \datapath|ex_bus|Mux3~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|ex_bus|Mux3~1_combout\,
	combout => \datapath|outport1_reg|output[4]~feeder_combout\);

-- Location: FF_X27_Y24_N21
\datapath|outport1_reg|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|outport1_reg|output[4]~feeder_combout\,
	ena => \datapath|out1_reg_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|outport1_reg|output\(4));

-- Location: LCCOMB_X29_Y24_N16
\datapath|outport1_reg|output[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|outport1_reg|output[5]~feeder_combout\ = \datapath|ex_bus|Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|ex_bus|Mux2~1_combout\,
	combout => \datapath|outport1_reg|output[5]~feeder_combout\);

-- Location: FF_X29_Y24_N17
\datapath|outport1_reg|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|outport1_reg|output[5]~feeder_combout\,
	ena => \datapath|out1_reg_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|outport1_reg|output\(5));

-- Location: LCCOMB_X29_Y24_N14
\datapath|outport1_reg|output[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|outport1_reg|output[7]~feeder_combout\ = \datapath|ex_bus|Mux0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|ex_bus|Mux0~1_combout\,
	combout => \datapath|outport1_reg|output[7]~feeder_combout\);

-- Location: FF_X29_Y24_N15
\datapath|outport1_reg|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|outport1_reg|output[7]~feeder_combout\,
	ena => \datapath|out1_reg_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|outport1_reg|output\(7));

-- Location: LCCOMB_X29_Y24_N6
\datapath|outport1_reg|output[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|outport1_reg|output[6]~feeder_combout\ = \datapath|ex_bus|Mux1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|ex_bus|Mux1~1_combout\,
	combout => \datapath|outport1_reg|output[6]~feeder_combout\);

-- Location: FF_X29_Y24_N7
\datapath|outport1_reg|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|outport1_reg|output[6]~feeder_combout\,
	ena => \datapath|out1_reg_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|outport1_reg|output\(6));

-- Location: LCCOMB_X29_Y24_N0
\U_LED1|output[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED1|output[0]~0_combout\ = (\datapath|outport1_reg|output\(4) & (!\datapath|outport1_reg|output\(7) & (\datapath|outport1_reg|output\(5) $ (!\datapath|outport1_reg|output\(6))))) # (!\datapath|outport1_reg|output\(4) & 
-- (!\datapath|outport1_reg|output\(5) & (\datapath|outport1_reg|output\(7) $ (!\datapath|outport1_reg|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outport1_reg|output\(4),
	datab => \datapath|outport1_reg|output\(5),
	datac => \datapath|outport1_reg|output\(7),
	datad => \datapath|outport1_reg|output\(6),
	combout => \U_LED1|output[0]~0_combout\);

-- Location: LCCOMB_X29_Y24_N10
\U_LED1|output[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED1|output[1]~1_combout\ = (\datapath|outport1_reg|output\(4) & (\datapath|outport1_reg|output\(7) $ (((\datapath|outport1_reg|output\(5)) # (!\datapath|outport1_reg|output\(6)))))) # (!\datapath|outport1_reg|output\(4) & 
-- (\datapath|outport1_reg|output\(5) & (!\datapath|outport1_reg|output\(7) & !\datapath|outport1_reg|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outport1_reg|output\(4),
	datab => \datapath|outport1_reg|output\(5),
	datac => \datapath|outport1_reg|output\(7),
	datad => \datapath|outport1_reg|output\(6),
	combout => \U_LED1|output[1]~1_combout\);

-- Location: LCCOMB_X29_Y24_N12
\U_LED1|output[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED1|output[2]~2_combout\ = (\datapath|outport1_reg|output\(5) & (\datapath|outport1_reg|output\(4) & (!\datapath|outport1_reg|output\(7)))) # (!\datapath|outport1_reg|output\(5) & ((\datapath|outport1_reg|output\(6) & 
-- ((!\datapath|outport1_reg|output\(7)))) # (!\datapath|outport1_reg|output\(6) & (\datapath|outport1_reg|output\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outport1_reg|output\(4),
	datab => \datapath|outport1_reg|output\(5),
	datac => \datapath|outport1_reg|output\(7),
	datad => \datapath|outport1_reg|output\(6),
	combout => \U_LED1|output[2]~2_combout\);

-- Location: LCCOMB_X29_Y24_N30
\U_LED1|output[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED1|output[3]~3_combout\ = (\datapath|outport1_reg|output\(4) & (\datapath|outport1_reg|output\(5) $ (((!\datapath|outport1_reg|output\(6)))))) # (!\datapath|outport1_reg|output\(4) & ((\datapath|outport1_reg|output\(5) & 
-- (\datapath|outport1_reg|output\(7) & !\datapath|outport1_reg|output\(6))) # (!\datapath|outport1_reg|output\(5) & (!\datapath|outport1_reg|output\(7) & \datapath|outport1_reg|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outport1_reg|output\(4),
	datab => \datapath|outport1_reg|output\(5),
	datac => \datapath|outport1_reg|output\(7),
	datad => \datapath|outport1_reg|output\(6),
	combout => \U_LED1|output[3]~3_combout\);

-- Location: LCCOMB_X29_Y24_N4
\U_LED1|output[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED1|output[4]~4_combout\ = (\datapath|outport1_reg|output\(7) & (\datapath|outport1_reg|output\(6) & ((\datapath|outport1_reg|output\(5)) # (!\datapath|outport1_reg|output\(4))))) # (!\datapath|outport1_reg|output\(7) & 
-- (!\datapath|outport1_reg|output\(4) & (\datapath|outport1_reg|output\(5) & !\datapath|outport1_reg|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outport1_reg|output\(4),
	datab => \datapath|outport1_reg|output\(5),
	datac => \datapath|outport1_reg|output\(7),
	datad => \datapath|outport1_reg|output\(6),
	combout => \U_LED1|output[4]~4_combout\);

-- Location: LCCOMB_X29_Y24_N26
\U_LED1|output[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED1|output[5]~5_combout\ = (\datapath|outport1_reg|output\(5) & ((\datapath|outport1_reg|output\(4) & (\datapath|outport1_reg|output\(7))) # (!\datapath|outport1_reg|output\(4) & ((\datapath|outport1_reg|output\(6)))))) # 
-- (!\datapath|outport1_reg|output\(5) & (\datapath|outport1_reg|output\(6) & (\datapath|outport1_reg|output\(4) $ (\datapath|outport1_reg|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outport1_reg|output\(4),
	datab => \datapath|outport1_reg|output\(5),
	datac => \datapath|outport1_reg|output\(7),
	datad => \datapath|outport1_reg|output\(6),
	combout => \U_LED1|output[5]~5_combout\);

-- Location: LCCOMB_X29_Y24_N28
\U_LED1|output[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED1|output[6]~6_combout\ = (\datapath|outport1_reg|output\(7) & (\datapath|outport1_reg|output\(4) & (\datapath|outport1_reg|output\(5) $ (\datapath|outport1_reg|output\(6))))) # (!\datapath|outport1_reg|output\(7) & 
-- (!\datapath|outport1_reg|output\(5) & (\datapath|outport1_reg|output\(4) $ (\datapath|outport1_reg|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outport1_reg|output\(4),
	datab => \datapath|outport1_reg|output\(5),
	datac => \datapath|outport1_reg|output\(7),
	datad => \datapath|outport1_reg|output\(6),
	combout => \U_LED1|output[6]~6_combout\);

-- Location: LCCOMB_X28_Y24_N30
\datapath|outport2_reg|output[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|outport2_reg|output[0]~feeder_combout\ = \datapath|ex_bus|Mux7~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|ex_bus|Mux7~1_combout\,
	combout => \datapath|outport2_reg|output[0]~feeder_combout\);

-- Location: LCCOMB_X28_Y24_N28
\datapath|out2_reg_en\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|out2_reg_en~combout\ = (!\controler|WideOr6~0_combout\ & \process_0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controler|WideOr6~0_combout\,
	datad => \process_0~2_combout\,
	combout => \datapath|out2_reg_en~combout\);

-- Location: FF_X28_Y24_N31
\datapath|outport2_reg|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|outport2_reg|output[0]~feeder_combout\,
	ena => \datapath|out2_reg_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|outport2_reg|output\(0));

-- Location: FF_X28_Y24_N1
\datapath|outport2_reg|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|ex_bus|Mux6~1_combout\,
	sload => VCC,
	ena => \datapath|out2_reg_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|outport2_reg|output\(1));

-- Location: FF_X28_Y24_N7
\datapath|outport2_reg|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|ex_bus|Mux4~1_combout\,
	sload => VCC,
	ena => \datapath|out2_reg_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|outport2_reg|output\(3));

-- Location: FF_X28_Y24_N29
\datapath|outport2_reg|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	asdata => \datapath|ex_bus|Mux5~1_combout\,
	sload => VCC,
	ena => \datapath|out2_reg_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|outport2_reg|output\(2));

-- Location: LCCOMB_X28_Y24_N6
\U_LED2|output[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|output[0]~0_combout\ = (\datapath|outport2_reg|output\(0) & (!\datapath|outport2_reg|output\(3) & (\datapath|outport2_reg|output\(1) $ (!\datapath|outport2_reg|output\(2))))) # (!\datapath|outport2_reg|output\(0) & 
-- (!\datapath|outport2_reg|output\(1) & (\datapath|outport2_reg|output\(3) $ (!\datapath|outport2_reg|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outport2_reg|output\(0),
	datab => \datapath|outport2_reg|output\(1),
	datac => \datapath|outport2_reg|output\(3),
	datad => \datapath|outport2_reg|output\(2),
	combout => \U_LED2|output[0]~0_combout\);

-- Location: LCCOMB_X28_Y24_N0
\U_LED2|output[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|output[1]~1_combout\ = (\datapath|outport2_reg|output\(0) & (\datapath|outport2_reg|output\(3) $ (((\datapath|outport2_reg|output\(1)) # (!\datapath|outport2_reg|output\(2)))))) # (!\datapath|outport2_reg|output\(0) & 
-- (!\datapath|outport2_reg|output\(2) & (\datapath|outport2_reg|output\(1) & !\datapath|outport2_reg|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outport2_reg|output\(0),
	datab => \datapath|outport2_reg|output\(2),
	datac => \datapath|outport2_reg|output\(1),
	datad => \datapath|outport2_reg|output\(3),
	combout => \U_LED2|output[1]~1_combout\);

-- Location: LCCOMB_X28_Y24_N20
\U_LED2|output[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|output[2]~2_combout\ = (\datapath|outport2_reg|output\(1) & (\datapath|outport2_reg|output\(0) & (!\datapath|outport2_reg|output\(3)))) # (!\datapath|outport2_reg|output\(1) & ((\datapath|outport2_reg|output\(2) & 
-- ((!\datapath|outport2_reg|output\(3)))) # (!\datapath|outport2_reg|output\(2) & (\datapath|outport2_reg|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outport2_reg|output\(0),
	datab => \datapath|outport2_reg|output\(1),
	datac => \datapath|outport2_reg|output\(3),
	datad => \datapath|outport2_reg|output\(2),
	combout => \U_LED2|output[2]~2_combout\);

-- Location: LCCOMB_X28_Y24_N18
\U_LED2|output[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|output[3]~3_combout\ = (\datapath|outport2_reg|output\(0) & (\datapath|outport2_reg|output\(1) $ (((!\datapath|outport2_reg|output\(2)))))) # (!\datapath|outport2_reg|output\(0) & ((\datapath|outport2_reg|output\(1) & 
-- (\datapath|outport2_reg|output\(3) & !\datapath|outport2_reg|output\(2))) # (!\datapath|outport2_reg|output\(1) & (!\datapath|outport2_reg|output\(3) & \datapath|outport2_reg|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outport2_reg|output\(0),
	datab => \datapath|outport2_reg|output\(1),
	datac => \datapath|outport2_reg|output\(3),
	datad => \datapath|outport2_reg|output\(2),
	combout => \U_LED2|output[3]~3_combout\);

-- Location: LCCOMB_X28_Y24_N4
\U_LED2|output[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|output[4]~4_combout\ = (\datapath|outport2_reg|output\(3) & (\datapath|outport2_reg|output\(2) & ((\datapath|outport2_reg|output\(1)) # (!\datapath|outport2_reg|output\(0))))) # (!\datapath|outport2_reg|output\(3) & 
-- (!\datapath|outport2_reg|output\(0) & (\datapath|outport2_reg|output\(1) & !\datapath|outport2_reg|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outport2_reg|output\(0),
	datab => \datapath|outport2_reg|output\(1),
	datac => \datapath|outport2_reg|output\(3),
	datad => \datapath|outport2_reg|output\(2),
	combout => \U_LED2|output[4]~4_combout\);

-- Location: LCCOMB_X28_Y24_N2
\U_LED2|output[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|output[5]~5_combout\ = (\datapath|outport2_reg|output\(1) & ((\datapath|outport2_reg|output\(0) & (\datapath|outport2_reg|output\(3))) # (!\datapath|outport2_reg|output\(0) & ((\datapath|outport2_reg|output\(2)))))) # 
-- (!\datapath|outport2_reg|output\(1) & (\datapath|outport2_reg|output\(2) & (\datapath|outport2_reg|output\(0) $ (\datapath|outport2_reg|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outport2_reg|output\(0),
	datab => \datapath|outport2_reg|output\(1),
	datac => \datapath|outport2_reg|output\(3),
	datad => \datapath|outport2_reg|output\(2),
	combout => \U_LED2|output[5]~5_combout\);

-- Location: LCCOMB_X28_Y24_N24
\U_LED2|output[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|output[6]~6_combout\ = (\datapath|outport2_reg|output\(3) & (\datapath|outport2_reg|output\(0) & (\datapath|outport2_reg|output\(1) $ (\datapath|outport2_reg|output\(2))))) # (!\datapath|outport2_reg|output\(3) & 
-- (!\datapath|outport2_reg|output\(1) & (\datapath|outport2_reg|output\(0) $ (\datapath|outport2_reg|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outport2_reg|output\(0),
	datab => \datapath|outport2_reg|output\(1),
	datac => \datapath|outport2_reg|output\(3),
	datad => \datapath|outport2_reg|output\(2),
	combout => \U_LED2|output[6]~6_combout\);

-- Location: LCCOMB_X28_Y24_N10
\datapath|outport2_reg|output[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|outport2_reg|output[5]~feeder_combout\ = \datapath|ex_bus|Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|ex_bus|Mux2~1_combout\,
	combout => \datapath|outport2_reg|output[5]~feeder_combout\);

-- Location: FF_X28_Y24_N11
\datapath|outport2_reg|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|outport2_reg|output[5]~feeder_combout\,
	ena => \datapath|out2_reg_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|outport2_reg|output\(5));

-- Location: LCCOMB_X28_Y24_N16
\datapath|outport2_reg|output[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|outport2_reg|output[4]~feeder_combout\ = \datapath|ex_bus|Mux3~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|ex_bus|Mux3~1_combout\,
	combout => \datapath|outport2_reg|output[4]~feeder_combout\);

-- Location: FF_X28_Y24_N17
\datapath|outport2_reg|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|outport2_reg|output[4]~feeder_combout\,
	ena => \datapath|out2_reg_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|outport2_reg|output\(4));

-- Location: LCCOMB_X28_Y24_N8
\datapath|outport2_reg|output[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datapath|outport2_reg|output[7]~feeder_combout\ = \datapath|ex_bus|Mux0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|ex_bus|Mux0~1_combout\,
	combout => \datapath|outport2_reg|output[7]~feeder_combout\);

-- Location: FF_X28_Y24_N9
\datapath|outport2_reg|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|outport2_reg|output[7]~feeder_combout\,
	ena => \datapath|out2_reg_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|outport2_reg|output\(7));

-- Location: FF_X28_Y24_N27
\datapath|outport2_reg|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_DIV|clk_en~clkctrl_outclk\,
	d => \datapath|ex_bus|Mux1~1_combout\,
	ena => \datapath|out2_reg_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|outport2_reg|output\(6));

-- Location: LCCOMB_X30_Y24_N8
\U_LED3|output[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|output[0]~0_combout\ = (\datapath|outport2_reg|output\(4) & (!\datapath|outport2_reg|output\(7) & (\datapath|outport2_reg|output\(5) $ (!\datapath|outport2_reg|output\(6))))) # (!\datapath|outport2_reg|output\(4) & 
-- (!\datapath|outport2_reg|output\(5) & (\datapath|outport2_reg|output\(7) $ (!\datapath|outport2_reg|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outport2_reg|output\(5),
	datab => \datapath|outport2_reg|output\(4),
	datac => \datapath|outport2_reg|output\(7),
	datad => \datapath|outport2_reg|output\(6),
	combout => \U_LED3|output[0]~0_combout\);

-- Location: LCCOMB_X30_Y24_N10
\U_LED3|output[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|output[1]~1_combout\ = (\datapath|outport2_reg|output\(5) & (!\datapath|outport2_reg|output\(7) & ((\datapath|outport2_reg|output\(4)) # (!\datapath|outport2_reg|output\(6))))) # (!\datapath|outport2_reg|output\(5) & 
-- (\datapath|outport2_reg|output\(4) & (\datapath|outport2_reg|output\(7) $ (!\datapath|outport2_reg|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outport2_reg|output\(5),
	datab => \datapath|outport2_reg|output\(4),
	datac => \datapath|outport2_reg|output\(7),
	datad => \datapath|outport2_reg|output\(6),
	combout => \U_LED3|output[1]~1_combout\);

-- Location: LCCOMB_X30_Y24_N16
\U_LED3|output[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|output[2]~2_combout\ = (\datapath|outport2_reg|output\(5) & (\datapath|outport2_reg|output\(4) & (!\datapath|outport2_reg|output\(7)))) # (!\datapath|outport2_reg|output\(5) & ((\datapath|outport2_reg|output\(6) & 
-- ((!\datapath|outport2_reg|output\(7)))) # (!\datapath|outport2_reg|output\(6) & (\datapath|outport2_reg|output\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outport2_reg|output\(5),
	datab => \datapath|outport2_reg|output\(4),
	datac => \datapath|outport2_reg|output\(7),
	datad => \datapath|outport2_reg|output\(6),
	combout => \U_LED3|output[2]~2_combout\);

-- Location: LCCOMB_X30_Y24_N26
\U_LED3|output[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|output[3]~3_combout\ = (\datapath|outport2_reg|output\(4) & (\datapath|outport2_reg|output\(5) $ (((!\datapath|outport2_reg|output\(6)))))) # (!\datapath|outport2_reg|output\(4) & ((\datapath|outport2_reg|output\(5) & 
-- (\datapath|outport2_reg|output\(7) & !\datapath|outport2_reg|output\(6))) # (!\datapath|outport2_reg|output\(5) & (!\datapath|outport2_reg|output\(7) & \datapath|outport2_reg|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outport2_reg|output\(5),
	datab => \datapath|outport2_reg|output\(4),
	datac => \datapath|outport2_reg|output\(7),
	datad => \datapath|outport2_reg|output\(6),
	combout => \U_LED3|output[3]~3_combout\);

-- Location: LCCOMB_X30_Y24_N20
\U_LED3|output[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|output[4]~4_combout\ = (\datapath|outport2_reg|output\(7) & (\datapath|outport2_reg|output\(6) & ((\datapath|outport2_reg|output\(5)) # (!\datapath|outport2_reg|output\(4))))) # (!\datapath|outport2_reg|output\(7) & 
-- (\datapath|outport2_reg|output\(5) & (!\datapath|outport2_reg|output\(4) & !\datapath|outport2_reg|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outport2_reg|output\(5),
	datab => \datapath|outport2_reg|output\(4),
	datac => \datapath|outport2_reg|output\(7),
	datad => \datapath|outport2_reg|output\(6),
	combout => \U_LED3|output[4]~4_combout\);

-- Location: LCCOMB_X30_Y24_N18
\U_LED3|output[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|output[5]~5_combout\ = (\datapath|outport2_reg|output\(5) & ((\datapath|outport2_reg|output\(4) & (\datapath|outport2_reg|output\(7))) # (!\datapath|outport2_reg|output\(4) & ((\datapath|outport2_reg|output\(6)))))) # 
-- (!\datapath|outport2_reg|output\(5) & (\datapath|outport2_reg|output\(6) & (\datapath|outport2_reg|output\(4) $ (\datapath|outport2_reg|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outport2_reg|output\(5),
	datab => \datapath|outport2_reg|output\(4),
	datac => \datapath|outport2_reg|output\(7),
	datad => \datapath|outport2_reg|output\(6),
	combout => \U_LED3|output[5]~5_combout\);

-- Location: LCCOMB_X30_Y24_N0
\U_LED3|output[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|output[6]~6_combout\ = (\datapath|outport2_reg|output\(7) & (\datapath|outport2_reg|output\(4) & (\datapath|outport2_reg|output\(5) $ (\datapath|outport2_reg|output\(6))))) # (!\datapath|outport2_reg|output\(7) & 
-- (!\datapath|outport2_reg|output\(5) & (\datapath|outport2_reg|output\(4) $ (\datapath|outport2_reg|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outport2_reg|output\(5),
	datab => \datapath|outport2_reg|output\(4),
	datac => \datapath|outport2_reg|output\(7),
	datad => \datapath|outport2_reg|output\(6),
	combout => \U_LED3|output[6]~6_combout\);

-- Location: IOIBUF_X0_Y26_N1
\switch[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(8),
	o => \switch[8]~input_o\);

-- Location: IOIBUF_X37_Y0_N22
\switch[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(9),
	o => \switch[9]~input_o\);

-- Location: IOIBUF_X0_Y21_N15
\button[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(0),
	o => \button[0]~input_o\);

ww_led0(0) <= \led0[0]~output_o\;

ww_led0(1) <= \led0[1]~output_o\;

ww_led0(2) <= \led0[2]~output_o\;

ww_led0(3) <= \led0[3]~output_o\;

ww_led0(4) <= \led0[4]~output_o\;

ww_led0(5) <= \led0[5]~output_o\;

ww_led0(6) <= \led0[6]~output_o\;

ww_led0_dp <= \led0_dp~output_o\;

ww_led1(0) <= \led1[0]~output_o\;

ww_led1(1) <= \led1[1]~output_o\;

ww_led1(2) <= \led1[2]~output_o\;

ww_led1(3) <= \led1[3]~output_o\;

ww_led1(4) <= \led1[4]~output_o\;

ww_led1(5) <= \led1[5]~output_o\;

ww_led1(6) <= \led1[6]~output_o\;

ww_led1_dp <= \led1_dp~output_o\;

ww_led2(0) <= \led2[0]~output_o\;

ww_led2(1) <= \led2[1]~output_o\;

ww_led2(2) <= \led2[2]~output_o\;

ww_led2(3) <= \led2[3]~output_o\;

ww_led2(4) <= \led2[4]~output_o\;

ww_led2(5) <= \led2[5]~output_o\;

ww_led2(6) <= \led2[6]~output_o\;

ww_led2_dp <= \led2_dp~output_o\;

ww_led3(0) <= \led3[0]~output_o\;

ww_led3(1) <= \led3[1]~output_o\;

ww_led3(2) <= \led3[2]~output_o\;

ww_led3(3) <= \led3[3]~output_o\;

ww_led3(4) <= \led3[4]~output_o\;

ww_led3(5) <= \led3[5]~output_o\;

ww_led3(6) <= \led3[6]~output_o\;

ww_led3_dp <= \led3_dp~output_o\;
END structure;


