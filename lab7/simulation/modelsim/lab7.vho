-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.2 Build 153 07/15/2015 SJ Full Version"

-- DATE "03/06/2019 15:19:50"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab7 IS
    PORT (
	A : OUT std_logic;
	rst : IN std_logic;
	clk : IN std_logic;
	T : IN std_logic;
	set : IN std_logic;
	P : OUT std_logic;
	OUTS2 : OUT std_logic;
	OUTS1 : OUT std_logic;
	OUTS0 : OUT std_logic
	);
END lab7;

-- Design Ports Information
-- A	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTS2	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTS1	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTS0	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- set	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_T : std_logic;
SIGNAL ww_set : std_logic;
SIGNAL ww_P : std_logic;
SIGNAL ww_OUTS2 : std_logic;
SIGNAL ww_OUTS1 : std_logic;
SIGNAL ww_OUTS0 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \set~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \S0~1_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \T~input_o\ : std_logic;
SIGNAL \S2~1_combout\ : std_logic;
SIGNAL \S0~0_combout\ : std_logic;
SIGNAL \S2~_emulated_q\ : std_logic;
SIGNAL \S2~0_combout\ : std_logic;
SIGNAL \inst14~combout\ : std_logic;
SIGNAL \S0~3_combout\ : std_logic;
SIGNAL \S0~_emulated_q\ : std_logic;
SIGNAL \S0~2_combout\ : std_logic;
SIGNAL \inst13~0_combout\ : std_logic;
SIGNAL \S1~1_combout\ : std_logic;
SIGNAL \S1~_emulated_q\ : std_logic;
SIGNAL \S1~0_combout\ : std_logic;
SIGNAL \inst11~0_combout\ : std_logic;
SIGNAL \inst4~0_combout\ : std_logic;
SIGNAL \ALT_INV_T~input_o\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_set~input_o\ : std_logic;
SIGNAL \ALT_INV_S0~1_combout\ : std_logic;
SIGNAL \ALT_INV_inst14~combout\ : std_logic;
SIGNAL \ALT_INV_S0~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst13~0_combout\ : std_logic;
SIGNAL \ALT_INV_S0~2_combout\ : std_logic;
SIGNAL \ALT_INV_S0~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_S2~0_combout\ : std_logic;
SIGNAL \ALT_INV_S2~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_S1~0_combout\ : std_logic;
SIGNAL \ALT_INV_S1~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_inst11~0_combout\ : std_logic;

BEGIN

A <= ww_A;
ww_rst <= rst;
ww_clk <= clk;
ww_T <= T;
ww_set <= set;
P <= ww_P;
OUTS2 <= ww_OUTS2;
OUTS1 <= ww_OUTS1;
OUTS0 <= ww_OUTS0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_T~input_o\ <= NOT \T~input_o\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_set~input_o\ <= NOT \set~input_o\;
\ALT_INV_S0~1_combout\ <= NOT \S0~1_combout\;
\ALT_INV_inst14~combout\ <= NOT \inst14~combout\;
\ALT_INV_S0~0_combout\ <= NOT \S0~0_combout\;
\ALT_INV_inst13~0_combout\ <= NOT \inst13~0_combout\;
\ALT_INV_S0~2_combout\ <= NOT \S0~2_combout\;
\ALT_INV_S0~_emulated_q\ <= NOT \S0~_emulated_q\;
\ALT_INV_S2~0_combout\ <= NOT \S2~0_combout\;
\ALT_INV_S2~_emulated_q\ <= NOT \S2~_emulated_q\;
\ALT_INV_S1~0_combout\ <= NOT \S1~0_combout\;
\ALT_INV_S1~_emulated_q\ <= NOT \S1~_emulated_q\;
\ALT_INV_inst11~0_combout\ <= NOT \inst11~0_combout\;

-- Location: IOOBUF_X89_Y38_N39
\A~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst11~0_combout\,
	devoe => ww_devoe,
	o => ww_A);

-- Location: IOOBUF_X89_Y37_N5
\P~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~0_combout\,
	devoe => ww_devoe,
	o => ww_P);

-- Location: IOOBUF_X89_Y36_N5
\OUTS2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S2~0_combout\,
	devoe => ww_devoe,
	o => ww_OUTS2);

-- Location: IOOBUF_X89_Y36_N56
\OUTS1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1~0_combout\,
	devoe => ww_devoe,
	o => ww_OUTS1);

-- Location: IOOBUF_X89_Y36_N39
\OUTS0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S0~2_combout\,
	devoe => ww_devoe,
	o => ww_OUTS0);

-- Location: IOIBUF_X89_Y37_N55
\set~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_set,
	o => \set~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LABCELL_X88_Y37_N27
\S0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0~1_combout\ = ( \S0~1_combout\ & ( \rst~input_o\ ) ) # ( !\S0~1_combout\ & ( (!\set~input_o\ & \rst~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_set~input_o\,
	datad => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_S0~1_combout\,
	combout => \S0~1_combout\);

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y37_N21
\T~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T,
	o => \T~input_o\);

-- Location: LABCELL_X88_Y37_N18
\S2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2~1_combout\ = ( \T~input_o\ & ( !\S0~1_combout\ ) ) # ( !\T~input_o\ & ( \S0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S0~1_combout\,
	dataf => \ALT_INV_T~input_o\,
	combout => \S2~1_combout\);

-- Location: LABCELL_X88_Y37_N24
\S0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0~0_combout\ = (!\set~input_o\) # (!\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_set~input_o\,
	datac => \ALT_INV_rst~input_o\,
	combout => \S0~0_combout\);

-- Location: FF_X88_Y37_N20
\S2~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \S2~1_combout\,
	clrn => \ALT_INV_S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S2~_emulated_q\);

-- Location: LABCELL_X88_Y37_N42
\S2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2~0_combout\ = ( \rst~input_o\ & ( \S2~_emulated_q\ & ( (!\S0~1_combout\) # (!\set~input_o\) ) ) ) # ( \rst~input_o\ & ( !\S2~_emulated_q\ & ( (!\set~input_o\) # (\S0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S0~1_combout\,
	datac => \ALT_INV_set~input_o\,
	datae => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_S2~_emulated_q\,
	combout => \S2~0_combout\);

-- Location: LABCELL_X88_Y37_N15
inst14 : cyclonev_lcell_comb
-- Equation(s):
-- \inst14~combout\ = ( !\S2~0_combout\ & ( !\S1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_S1~0_combout\,
	dataf => \ALT_INV_S2~0_combout\,
	combout => \inst14~combout\);

-- Location: LABCELL_X88_Y37_N30
\S0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0~3_combout\ = ( \inst14~combout\ & ( !\S0~1_combout\ ) ) # ( !\inst14~combout\ & ( \S0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S0~1_combout\,
	dataf => \ALT_INV_inst14~combout\,
	combout => \S0~3_combout\);

-- Location: FF_X88_Y37_N32
\S0~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \S0~3_combout\,
	clrn => \ALT_INV_S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0~_emulated_q\);

-- Location: LABCELL_X88_Y37_N57
\S0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0~2_combout\ = ( \S0~_emulated_q\ & ( (\rst~input_o\ & ((!\S0~1_combout\) # (!\set~input_o\))) ) ) # ( !\S0~_emulated_q\ & ( (\rst~input_o\ & ((!\set~input_o\) # (\S0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000101000011110000010100001111000010100000111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~1_combout\,
	datac => \ALT_INV_rst~input_o\,
	datad => \ALT_INV_set~input_o\,
	dataf => \ALT_INV_S0~_emulated_q\,
	combout => \S0~2_combout\);

-- Location: LABCELL_X88_Y37_N51
\inst13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13~0_combout\ = ( !\S0~2_combout\ & ( \S2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_S0~2_combout\,
	dataf => \ALT_INV_S2~0_combout\,
	combout => \inst13~0_combout\);

-- Location: LABCELL_X88_Y37_N6
\S1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1~1_combout\ = ( \inst13~0_combout\ & ( !\S0~1_combout\ ) ) # ( !\inst13~0_combout\ & ( \S0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S0~1_combout\,
	dataf => \ALT_INV_inst13~0_combout\,
	combout => \S1~1_combout\);

-- Location: FF_X88_Y37_N8
\S1~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \S1~1_combout\,
	clrn => \ALT_INV_S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S1~_emulated_q\);

-- Location: LABCELL_X88_Y37_N36
\S1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1~0_combout\ = ( \rst~input_o\ & ( \S1~_emulated_q\ & ( (!\S0~1_combout\) # (!\set~input_o\) ) ) ) # ( \rst~input_o\ & ( !\S1~_emulated_q\ & ( (!\set~input_o\) # (\S0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S0~1_combout\,
	datac => \ALT_INV_set~input_o\,
	datae => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_S1~_emulated_q\,
	combout => \S1~0_combout\);

-- Location: LABCELL_X88_Y37_N12
\inst11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11~0_combout\ = ( \S0~2_combout\ & ( (!\S2~0_combout\) # (\S1~0_combout\) ) ) # ( !\S0~2_combout\ & ( (\S1~0_combout\ & \S2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S1~0_combout\,
	datab => \ALT_INV_S2~0_combout\,
	dataf => \ALT_INV_S0~2_combout\,
	combout => \inst11~0_combout\);

-- Location: LABCELL_X88_Y37_N54
\inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4~0_combout\ = ( \S0~2_combout\ & ( (\S1~0_combout\) # (\S2~0_combout\) ) ) # ( !\S0~2_combout\ & ( (!\S2~0_combout\ & \S1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S2~0_combout\,
	datac => \ALT_INV_S1~0_combout\,
	dataf => \ALT_INV_S0~2_combout\,
	combout => \inst4~0_combout\);

-- Location: LABCELL_X19_Y53_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


