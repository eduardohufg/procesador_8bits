-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "05/12/2024 17:15:56"

-- 
-- Device: Altera EPM240T100C3 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	BIT_SLICE IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	NA : IN std_logic;
	NB : IN std_logic;
	CIN : IN std_logic;
	AANDB : IN std_logic;
	NEGB : IN std_logic;
	NEGA : IN std_logic;
	AXORB : IN std_logic;
	AORB : IN std_logic;
	AMASB : IN std_logic;
	C : OUT std_logic;
	S : OUT std_logic
	);
END BIT_SLICE;

-- Design Ports Information


ARCHITECTURE structure OF BIT_SLICE IS
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
SIGNAL ww_B : std_logic;
SIGNAL ww_NA : std_logic;
SIGNAL ww_NB : std_logic;
SIGNAL ww_CIN : std_logic;
SIGNAL ww_AANDB : std_logic;
SIGNAL ww_NEGB : std_logic;
SIGNAL ww_NEGA : std_logic;
SIGNAL ww_AXORB : std_logic;
SIGNAL ww_AORB : std_logic;
SIGNAL ww_AMASB : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL \CIN~combout\ : std_logic;
SIGNAL \NB~combout\ : std_logic;
SIGNAL \B~combout\ : std_logic;
SIGNAL \XORBIN~combout\ : std_logic;
SIGNAL \NA~combout\ : std_logic;
SIGNAL \ORINTCONT~0_combout\ : std_logic;
SIGNAL \A~combout\ : std_logic;
SIGNAL \XORAIN~combout\ : std_logic;
SIGNAL \C~0_combout\ : std_logic;
SIGNAL \AANDB~combout\ : std_logic;
SIGNAL \NEGA~combout\ : std_logic;
SIGNAL \NEGB~combout\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \AORB~combout\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \AXORB~combout\ : std_logic;
SIGNAL \AMASB~combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_NA <= NA;
ww_NB <= NB;
ww_CIN <= CIN;
ww_AANDB <= AANDB;
ww_NEGB <= NEGB;
ww_NEGA <= NEGA;
ww_AXORB <= AXORB;
ww_AORB <= AORB;
ww_AMASB <= AMASB;
C <= ww_C;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CIN~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CIN,
	combout => \CIN~combout\);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NB~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_NB,
	combout => \NB~combout\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B,
	combout => \B~combout\);

-- Location: LC_X4_Y1_N1
XORBIN : maxii_lcell
-- Equation(s):
-- \XORBIN~combout\ = (\NB~combout\ $ (((\B~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \NB~combout\,
	datad => \B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \XORBIN~combout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NA~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_NA,
	combout => \NA~combout\);

-- Location: LC_X4_Y1_N4
\ORINTCONT~0\ : maxii_lcell
-- Equation(s):
-- \ORINTCONT~0_combout\ = ((\NB~combout\) # ((\NA~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \NB~combout\,
	datad => \NA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ORINTCONT~0_combout\);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A,
	combout => \A~combout\);

-- Location: LC_X4_Y1_N9
XORAIN : maxii_lcell
-- Equation(s):
-- \XORAIN~combout\ = \A~combout\ $ ((((\NA~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\,
	datad => \NA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \XORAIN~combout\);

-- Location: LC_X4_Y1_N5
\C~0\ : maxii_lcell
-- Equation(s):
-- \C~0_combout\ = (\XORBIN~combout\ & ((\CIN~combout\) # ((\ORINTCONT~0_combout\) # (\XORAIN~combout\)))) # (!\XORBIN~combout\ & (\XORAIN~combout\ & ((\CIN~combout\) # (\ORINTCONT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fec8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CIN~combout\,
	datab => \XORBIN~combout\,
	datac => \ORINTCONT~0_combout\,
	datad => \XORAIN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~0_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AANDB~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_AANDB,
	combout => \AANDB~combout\);

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NEGA~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_NEGA,
	combout => \NEGA~combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NEGB~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_NEGB,
	combout => \NEGB~combout\);

-- Location: LC_X4_Y1_N6
\S~0\ : maxii_lcell
-- Equation(s):
-- \S~0_combout\ = (\XORAIN~combout\ & ((\NEGA~combout\) # ((\NEGB~combout\) # (!\XORBIN~combout\)))) # (!\XORAIN~combout\ & (((\XORBIN~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \NEGA~combout\,
	datab => \XORAIN~combout\,
	datac => \NEGB~combout\,
	datad => \XORBIN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \S~0_combout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AORB~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_AORB,
	combout => \AORB~combout\);

-- Location: LC_X4_Y1_N2
\S~1\ : maxii_lcell
-- Equation(s):
-- \S~1_combout\ = (\XORAIN~combout\ & ((\NEGA~combout\) # ((\XORBIN~combout\)))) # (!\XORAIN~combout\ & (((\NEGB~combout\ & \XORBIN~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \NEGA~combout\,
	datab => \XORAIN~combout\,
	datac => \NEGB~combout\,
	datad => \XORBIN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \S~1_combout\);

-- Location: LC_X4_Y1_N3
\S~2\ : maxii_lcell
-- Equation(s):
-- \S~2_combout\ = (\S~0_combout\ & (((\AORB~combout\) # (\S~1_combout\)))) # (!\S~0_combout\ & (\S~1_combout\ & ((\AANDB~combout\) # (\AORB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fec0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AANDB~combout\,
	datab => \S~0_combout\,
	datac => \AORB~combout\,
	datad => \S~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \S~2_combout\);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AXORB~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_AXORB,
	combout => \AXORB~combout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AMASB~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_AMASB,
	combout => \AMASB~combout\);

-- Location: LC_X4_Y1_N7
\S~3\ : maxii_lcell
-- Equation(s):
-- \S~3_combout\ = (\AMASB~combout\ & (\S~0_combout\ $ (((\ORINTCONT~0_combout\) # (\CIN~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2228",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AMASB~combout\,
	datab => \S~0_combout\,
	datac => \ORINTCONT~0_combout\,
	datad => \CIN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \S~3_combout\);

-- Location: LC_X4_Y1_N8
\S~4\ : maxii_lcell
-- Equation(s):
-- \S~4_combout\ = (\S~2_combout\) # ((\S~3_combout\) # ((\AXORB~combout\ & \S~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S~2_combout\,
	datab => \AXORB~combout\,
	datac => \S~3_combout\,
	datad => \S~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \S~4_combout\);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \C~0_combout\,
	oe => VCC,
	padio => ww_C);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \S~4_combout\,
	oe => VCC,
	padio => ww_S);
END structure;


