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

-- DATE "05/12/2024 18:59:48"

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

ENTITY 	ALU IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	Sel : IN std_logic_vector(3 DOWNTO 0);
	Out_ALU : BUFFER std_logic_vector(7 DOWNTO 0);
	ZeroFlag : BUFFER std_logic;
	CarryFlag : BUFFER std_logic;
	OverflowFlag : BUFFER std_logic;
	NegativeFlag : BUFFER std_logic
	);
END ALU;

-- Design Ports Information


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Out_ALU : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ZeroFlag : std_logic;
SIGNAL ww_CarryFlag : std_logic;
SIGNAL ww_OverflowFlag : std_logic;
SIGNAL ww_NegativeFlag : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~51_cout0\ : std_logic;
SIGNAL \Add0~51COUT1_71\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Mux8~8_combout\ : std_logic;
SIGNAL \Mux8~9_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~4COUT1_72\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~9COUT1_73\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~14COUT1_74\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Add0~63_combout\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Add0~24\ : std_logic;
SIGNAL \Add0~24COUT1_75\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~64_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~29COUT1_76\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Add0~67_combout\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~34COUT1_77\ : std_logic;
SIGNAL \Add0~37_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~39COUT1_78\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Sel~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
ww_Sel <= Sel;
Out_ALU <= ww_Out_ALU;
ZeroFlag <= ww_ZeroFlag;
CarryFlag <= ww_CarryFlag;
OverflowFlag <= ww_OverflowFlag;
NegativeFlag <= ww_NegativeFlag;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sel[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Sel(2),
	combout => \Sel~combout\(2));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sel[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Sel(0),
	combout => \Sel~combout\(0));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sel[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Sel(3),
	combout => \Sel~combout\(3));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LC_X5_Y2_N4
\Add0~47\ : maxii_lcell
-- Equation(s):
-- \Add0~47_combout\ = (\Sel~combout\(3)) # ((\A~combout\(0)) # ((\Sel~combout\(2) & !\Sel~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(2),
	datab => \Sel~combout\(0),
	datac => \Sel~combout\(3),
	datad => \A~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~47_combout\);

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sel[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Sel(1),
	combout => \Sel~combout\(1));

-- Location: LC_X5_Y3_N4
\Add0~48\ : maxii_lcell
-- Equation(s):
-- \Add0~48_combout\ = (\Sel~combout\(0) & (((\Sel~combout\(2)) # (!\B~combout\(0))))) # (!\Sel~combout\(0) & ((\B~combout\(0)) # ((!\Sel~combout\(1) & \Sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(0),
	datab => \Sel~combout\(1),
	datac => \B~combout\(0),
	datad => \Sel~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~48_combout\);

-- Location: LC_X4_Y3_N0
\Add0~51\ : maxii_lcell
-- Equation(s):
-- \Add0~51_cout0\ = CARRY((\Sel~combout\(0) & (!\Sel~combout\(2))))
-- \Add0~51COUT1_71\ = CARRY((\Sel~combout\(0) & (!\Sel~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(0),
	datab => \Sel~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~49\,
	cout0 => \Add0~51_cout0\,
	cout1 => \Add0~51COUT1_71\);

-- Location: LC_X4_Y3_N1
\Add0~2\ : maxii_lcell
-- Equation(s):
-- \Add0~2_combout\ = \Add0~47_combout\ $ (\Add0~48_combout\ $ ((\Add0~51_cout0\)))
-- \Add0~4\ = CARRY((\Add0~47_combout\ & (!\Add0~48_combout\ & !\Add0~51_cout0\)) # (!\Add0~47_combout\ & ((!\Add0~51_cout0\) # (!\Add0~48_combout\))))
-- \Add0~4COUT1_72\ = CARRY((\Add0~47_combout\ & (!\Add0~48_combout\ & !\Add0~51COUT1_71\)) # (!\Add0~47_combout\ & ((!\Add0~51COUT1_71\) # (!\Add0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~47_combout\,
	datab => \Add0~48_combout\,
	cin0 => \Add0~51_cout0\,
	cin1 => \Add0~51COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~2_combout\,
	cout0 => \Add0~4\,
	cout1 => \Add0~4COUT1_72\);

-- Location: LC_X5_Y2_N9
\Mux8~8\ : maxii_lcell
-- Equation(s):
-- \Mux8~8_combout\ = (\B~combout\(0) & (!\Sel~combout\(3) & ((\Sel~combout\(0)) # (\A~combout\(0))))) # (!\B~combout\(0) & ((\Sel~combout\(0) & (!\Sel~combout\(3) & \A~combout\(0))) # (!\Sel~combout\(0) & (\Sel~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1e18",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \Sel~combout\(0),
	datac => \Sel~combout\(3),
	datad => \A~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~8_combout\);

-- Location: LC_X5_Y2_N1
\Mux8~9\ : maxii_lcell
-- Equation(s):
-- \Mux8~9_combout\ = ((\Sel~combout\(1) & (\Mux8~8_combout\)) # (!\Sel~combout\(1) & ((!\A~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0cf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux8~8_combout\,
	datac => \Sel~combout\(1),
	datad => \A~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~9_combout\);

-- Location: LC_X5_Y3_N8
\Mux8~4\ : maxii_lcell
-- Equation(s):
-- \Mux8~4_combout\ = (\Sel~combout\(1) & (((\Sel~combout\(2) & !\Sel~combout\(3))))) # (!\Sel~combout\(1) & ((\Sel~combout\(0) & ((!\Sel~combout\(3)))) # (!\Sel~combout\(0) & (!\Sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c1b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(0),
	datab => \Sel~combout\(2),
	datac => \Sel~combout\(3),
	datad => \Sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~4_combout\);

-- Location: LC_X5_Y2_N2
\Mux8~5\ : maxii_lcell
-- Equation(s):
-- \Mux8~5_combout\ = (\Mux8~4_combout\ & (((\Add0~2_combout\)))) # (!\Mux8~4_combout\ & (!\Sel~combout\(2) & ((\Mux8~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(2),
	datab => \Add0~2_combout\,
	datac => \Mux8~9_combout\,
	datad => \Mux8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~5_combout\);

-- Location: LC_X5_Y3_N2
\Mux8~6\ : maxii_lcell
-- Equation(s):
-- \Mux8~6_combout\ = (!\Sel~combout\(0) & (\Sel~combout\(2) & (!\Sel~combout\(3) & !\Sel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(0),
	datab => \Sel~combout\(2),
	datac => \Sel~combout\(3),
	datad => \Sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~6_combout\);

-- Location: LC_X5_Y2_N5
\Mux8~7\ : maxii_lcell
-- Equation(s):
-- \Mux8~7_combout\ = (\Mux8~5_combout\) # ((\Mux8~6_combout\ & (\B~combout\(0) $ (\A~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dcec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \Mux8~5_combout\,
	datac => \Mux8~6_combout\,
	datad => \A~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~7_combout\);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LC_X3_Y3_N7
\Mux7~6\ : maxii_lcell
-- Equation(s):
-- \Mux7~6_combout\ = (\B~combout\(1) & (!\Sel~combout\(3) & ((\Sel~combout\(0)) # (\A~combout\(1))))) # (!\B~combout\(1) & ((\Sel~combout\(3) & (!\Sel~combout\(0))) # (!\Sel~combout\(3) & (\Sel~combout\(0) & \A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3624",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \Sel~combout\(3),
	datac => \Sel~combout\(0),
	datad => \A~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~6_combout\);

-- Location: LC_X3_Y3_N9
\Mux7~7\ : maxii_lcell
-- Equation(s):
-- \Mux7~7_combout\ = ((\Sel~combout\(1) & (\Mux7~6_combout\)) # (!\Sel~combout\(1) & ((!\A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0cf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~6_combout\,
	datac => \Sel~combout\(1),
	datad => \A~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~7_combout\);

-- Location: LC_X3_Y3_N3
\Add0~54\ : maxii_lcell
-- Equation(s):
-- \Add0~54_combout\ = (\Sel~combout\(2) & (\Sel~combout\(1) & ((\Sel~combout\(0)) # (\B~combout\(1))))) # (!\Sel~combout\(2) & (\Sel~combout\(0) $ (((\B~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b1c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(2),
	datab => \Sel~combout\(0),
	datac => \Sel~combout\(1),
	datad => \B~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~54_combout\);

-- Location: LC_X4_Y4_N3
\Add0~55\ : maxii_lcell
-- Equation(s):
-- \Add0~55_combout\ = (\Sel~combout\(3)) # ((\A~combout\(1) & ((\Sel~combout\(0)) # (!\Sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(2),
	datab => \Sel~combout\(3),
	datac => \Sel~combout\(0),
	datad => \A~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\);

-- Location: LC_X4_Y3_N2
\Add0~7\ : maxii_lcell
-- Equation(s):
-- \Add0~7_combout\ = \Add0~54_combout\ $ (\Add0~55_combout\ $ ((!\Add0~4\)))
-- \Add0~9\ = CARRY((\Add0~54_combout\ & ((\Add0~55_combout\) # (!\Add0~4\))) # (!\Add0~54_combout\ & (\Add0~55_combout\ & !\Add0~4\)))
-- \Add0~9COUT1_73\ = CARRY((\Add0~54_combout\ & ((\Add0~55_combout\) # (!\Add0~4COUT1_72\))) # (!\Add0~54_combout\ & (\Add0~55_combout\ & !\Add0~4COUT1_72\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~54_combout\,
	datab => \Add0~55_combout\,
	cin0 => \Add0~4\,
	cin1 => \Add0~4COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~7_combout\,
	cout0 => \Add0~9\,
	cout1 => \Add0~9COUT1_73\);

-- Location: LC_X3_Y3_N6
\Mux7~4\ : maxii_lcell
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux8~4_combout\ & (((\Add0~7_combout\)))) # (!\Mux8~4_combout\ & (!\Sel~combout\(2) & (\Mux7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(2),
	datab => \Mux7~7_combout\,
	datac => \Add0~7_combout\,
	datad => \Mux8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~4_combout\);

-- Location: LC_X3_Y3_N8
\Mux7~5\ : maxii_lcell
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux7~4_combout\) # ((\Mux8~6_combout\ & (\B~combout\(1) $ (\A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \Mux8~6_combout\,
	datac => \Mux7~4_combout\,
	datad => \A~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~5_combout\);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LC_X3_Y3_N1
\Mux6~6\ : maxii_lcell
-- Equation(s):
-- \Mux6~6_combout\ = (\B~combout\(2) & (!\Sel~combout\(3) & ((\A~combout\(2)) # (\Sel~combout\(0))))) # (!\B~combout\(2) & ((\Sel~combout\(0) & (\A~combout\(2) & !\Sel~combout\(3))) # (!\Sel~combout\(0) & ((\Sel~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "05e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(2),
	datac => \Sel~combout\(0),
	datad => \Sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~6_combout\);

-- Location: LC_X3_Y3_N2
\Mux6~7\ : maxii_lcell
-- Equation(s):
-- \Mux6~7_combout\ = ((\Sel~combout\(1) & (\Mux6~6_combout\)) # (!\Sel~combout\(1) & ((!\A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0cf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~6_combout\,
	datac => \Sel~combout\(1),
	datad => \A~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~7_combout\);

-- Location: LC_X3_Y3_N5
\Add0~57\ : maxii_lcell
-- Equation(s):
-- \Add0~57_combout\ = (\Sel~combout\(3)) # ((\A~combout\(2) & ((\Sel~combout\(0)) # (!\Sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(2),
	datab => \A~combout\(2),
	datac => \Sel~combout\(0),
	datad => \Sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~57_combout\);

-- Location: LC_X4_Y4_N1
\Add0~56\ : maxii_lcell
-- Equation(s):
-- \Add0~56_combout\ = (\Sel~combout\(2) & (\Sel~combout\(1) & ((\Sel~combout\(0)) # (\B~combout\(2))))) # (!\Sel~combout\(2) & (\Sel~combout\(0) $ (((\B~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c58a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(0),
	datab => \Sel~combout\(1),
	datac => \Sel~combout\(2),
	datad => \B~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~56_combout\);

-- Location: LC_X4_Y3_N3
\Add0~12\ : maxii_lcell
-- Equation(s):
-- \Add0~12_combout\ = \Add0~57_combout\ $ (\Add0~56_combout\ $ ((\Add0~9\)))
-- \Add0~14\ = CARRY((\Add0~57_combout\ & (!\Add0~56_combout\ & !\Add0~9\)) # (!\Add0~57_combout\ & ((!\Add0~9\) # (!\Add0~56_combout\))))
-- \Add0~14COUT1_74\ = CARRY((\Add0~57_combout\ & (!\Add0~56_combout\ & !\Add0~9COUT1_73\)) # (!\Add0~57_combout\ & ((!\Add0~9COUT1_73\) # (!\Add0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~57_combout\,
	datab => \Add0~56_combout\,
	cin0 => \Add0~9\,
	cin1 => \Add0~9COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~12_combout\,
	cout0 => \Add0~14\,
	cout1 => \Add0~14COUT1_74\);

-- Location: LC_X3_Y3_N0
\Mux6~4\ : maxii_lcell
-- Equation(s):
-- \Mux6~4_combout\ = (\Mux8~4_combout\ & (((\Add0~12_combout\)))) # (!\Mux8~4_combout\ & (!\Sel~combout\(2) & (\Mux6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(2),
	datab => \Mux6~7_combout\,
	datac => \Add0~12_combout\,
	datad => \Mux8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~4_combout\);

-- Location: LC_X3_Y3_N4
\Mux6~5\ : maxii_lcell
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux6~4_combout\) # ((\Mux8~6_combout\ & (\B~combout\(2) $ (\A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f6f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(2),
	datac => \Mux6~4_combout\,
	datad => \Mux8~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~5_combout\);

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: LC_X5_Y4_N6
\Add0~59\ : maxii_lcell
-- Equation(s):
-- \Add0~59_combout\ = (\Sel~combout\(3)) # ((\A~combout\(3) & ((\Sel~combout\(0)) # (!\Sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \Sel~combout\(0),
	datac => \Sel~combout\(2),
	datad => \Sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~59_combout\);

-- Location: LC_X5_Y4_N5
\Add0~58\ : maxii_lcell
-- Equation(s):
-- \Add0~58_combout\ = (\Sel~combout\(2) & (\Sel~combout\(1) & ((\Sel~combout\(0)) # (\B~combout\(3))))) # (!\Sel~combout\(2) & (\Sel~combout\(0) $ ((\B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bc14",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(2),
	datab => \Sel~combout\(0),
	datac => \B~combout\(3),
	datad => \Sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~58_combout\);

-- Location: LC_X4_Y3_N4
\Add0~17\ : maxii_lcell
-- Equation(s):
-- \Add0~17_combout\ = \Add0~59_combout\ $ (\Add0~58_combout\ $ ((!\Add0~14\)))
-- \Add0~19\ = CARRY((\Add0~59_combout\ & ((\Add0~58_combout\) # (!\Add0~14COUT1_74\))) # (!\Add0~59_combout\ & (\Add0~58_combout\ & !\Add0~14COUT1_74\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~59_combout\,
	datab => \Add0~58_combout\,
	cin0 => \Add0~14\,
	cin1 => \Add0~14COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~17_combout\,
	cout => \Add0~19\);

-- Location: LC_X5_Y4_N7
\Mux5~6\ : maxii_lcell
-- Equation(s):
-- \Mux5~6_combout\ = (\Sel~combout\(3) & (((!\B~combout\(3) & !\Sel~combout\(0))))) # (!\Sel~combout\(3) & ((\A~combout\(3) & ((\B~combout\(3)) # (\Sel~combout\(0)))) # (!\A~combout\(3) & (\B~combout\(3) & \Sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "322c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \Sel~combout\(3),
	datac => \B~combout\(3),
	datad => \Sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~6_combout\);

-- Location: LC_X5_Y4_N8
\Mux5~7\ : maxii_lcell
-- Equation(s):
-- \Mux5~7_combout\ = ((\Sel~combout\(1) & (\Mux5~6_combout\)) # (!\Sel~combout\(1) & ((!\A~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0f3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Sel~combout\(1),
	datac => \Mux5~6_combout\,
	datad => \A~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~7_combout\);

-- Location: LC_X5_Y4_N9
\Mux5~4\ : maxii_lcell
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux8~4_combout\ & (\Add0~17_combout\)) # (!\Mux8~4_combout\ & (((!\Sel~combout\(2) & \Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8b88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~17_combout\,
	datab => \Mux8~4_combout\,
	datac => \Sel~combout\(2),
	datad => \Mux5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~4_combout\);

-- Location: LC_X5_Y4_N3
\Mux5~5\ : maxii_lcell
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux5~4_combout\) # ((\Mux8~6_combout\ & (\A~combout\(3) $ (\B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \Mux8~6_combout\,
	datac => \B~combout\(3),
	datad => \Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~5_combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: LC_X4_Y4_N6
\Mux4~6\ : maxii_lcell
-- Equation(s):
-- \Mux4~6_combout\ = (\Sel~combout\(3) & (((!\B~combout\(4) & !\Sel~combout\(0))))) # (!\Sel~combout\(3) & ((\A~combout\(4) & ((\B~combout\(4)) # (\Sel~combout\(0)))) # (!\A~combout\(4) & (\B~combout\(4) & \Sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "322c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \Sel~combout\(3),
	datac => \B~combout\(4),
	datad => \Sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~6_combout\);

-- Location: LC_X4_Y4_N8
\Mux4~7\ : maxii_lcell
-- Equation(s):
-- \Mux4~7_combout\ = (\Sel~combout\(1) & (((\Mux4~6_combout\)))) # (!\Sel~combout\(1) & (!\A~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d1d1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \Sel~combout\(1),
	datac => \Mux4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~7_combout\);

-- Location: LC_X5_Y4_N0
\Add0~60\ : maxii_lcell
-- Equation(s):
-- \Add0~60_combout\ = (\Sel~combout\(2) & (\Sel~combout\(1) & ((\Sel~combout\(0)) # (\B~combout\(4))))) # (!\Sel~combout\(2) & ((\Sel~combout\(0) $ (\B~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a38c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(1),
	datab => \Sel~combout\(0),
	datac => \Sel~combout\(2),
	datad => \B~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\);

-- Location: LC_X4_Y4_N7
\Add0~61\ : maxii_lcell
-- Equation(s):
-- \Add0~61_combout\ = (\Sel~combout\(3)) # ((\A~combout\(4) & ((\Sel~combout\(0)) # (!\Sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcdc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(2),
	datab => \Sel~combout\(3),
	datac => \A~combout\(4),
	datad => \Sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~61_combout\);

-- Location: LC_X4_Y3_N5
\Add0~22\ : maxii_lcell
-- Equation(s):
-- \Add0~22_combout\ = \Add0~60_combout\ $ (\Add0~61_combout\ $ ((\Add0~19\)))
-- \Add0~24\ = CARRY((\Add0~60_combout\ & (!\Add0~61_combout\ & !\Add0~19\)) # (!\Add0~60_combout\ & ((!\Add0~19\) # (!\Add0~61_combout\))))
-- \Add0~24COUT1_75\ = CARRY((\Add0~60_combout\ & (!\Add0~61_combout\ & !\Add0~19\)) # (!\Add0~60_combout\ & ((!\Add0~19\) # (!\Add0~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~60_combout\,
	datab => \Add0~61_combout\,
	cin => \Add0~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~22_combout\,
	cout0 => \Add0~24\,
	cout1 => \Add0~24COUT1_75\);

-- Location: LC_X5_Y4_N2
\Mux4~4\ : maxii_lcell
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux8~4_combout\ & (((\Add0~22_combout\)))) # (!\Mux8~4_combout\ & (!\Sel~combout\(2) & (\Mux4~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(2),
	datab => \Mux8~4_combout\,
	datac => \Mux4~7_combout\,
	datad => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~4_combout\);

-- Location: LC_X5_Y4_N1
\Mux4~5\ : maxii_lcell
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux4~4_combout\) # ((\Mux8~6_combout\ & (\A~combout\(4) $ (\B~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff60",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \B~combout\(4),
	datac => \Mux8~6_combout\,
	datad => \Mux4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~5_combout\);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: LC_X5_Y2_N6
\Add0~63\ : maxii_lcell
-- Equation(s):
-- \Add0~63_combout\ = (\Sel~combout\(3)) # ((\A~combout\(5) & ((\Sel~combout\(0)) # (!\Sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \Sel~combout\(0),
	datac => \Sel~combout\(3),
	datad => \Sel~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~63_combout\);

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: LC_X5_Y3_N5
\Add0~62\ : maxii_lcell
-- Equation(s):
-- \Add0~62_combout\ = (\Sel~combout\(2) & (\Sel~combout\(1) & ((\Sel~combout\(0)) # (\B~combout\(5))))) # (!\Sel~combout\(2) & (\Sel~combout\(0) $ ((\B~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da12",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(0),
	datab => \Sel~combout\(2),
	datac => \B~combout\(5),
	datad => \Sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~62_combout\);

-- Location: LC_X4_Y3_N6
\Add0~27\ : maxii_lcell
-- Equation(s):
-- \Add0~27_combout\ = \Add0~63_combout\ $ (\Add0~62_combout\ $ ((!(!\Add0~19\ & \Add0~24\) # (\Add0~19\ & \Add0~24COUT1_75\))))
-- \Add0~29\ = CARRY((\Add0~63_combout\ & ((\Add0~62_combout\) # (!\Add0~24\))) # (!\Add0~63_combout\ & (\Add0~62_combout\ & !\Add0~24\)))
-- \Add0~29COUT1_76\ = CARRY((\Add0~63_combout\ & ((\Add0~62_combout\) # (!\Add0~24COUT1_75\))) # (!\Add0~63_combout\ & (\Add0~62_combout\ & !\Add0~24COUT1_75\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~63_combout\,
	datab => \Add0~62_combout\,
	cin => \Add0~19\,
	cin0 => \Add0~24\,
	cin1 => \Add0~24COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~27_combout\,
	cout0 => \Add0~29\,
	cout1 => \Add0~29COUT1_76\);

-- Location: LC_X5_Y2_N8
\Mux3~6\ : maxii_lcell
-- Equation(s):
-- \Mux3~6_combout\ = (\Sel~combout\(0) & (!\Sel~combout\(3) & ((\A~combout\(5)) # (\B~combout\(5))))) # (!\Sel~combout\(0) & ((\Sel~combout\(3) & ((!\B~combout\(5)))) # (!\Sel~combout\(3) & (\A~combout\(5) & \B~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e38",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \Sel~combout\(0),
	datac => \Sel~combout\(3),
	datad => \B~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~6_combout\);

-- Location: LC_X5_Y2_N7
\Mux3~7\ : maxii_lcell
-- Equation(s):
-- \Mux3~7_combout\ = ((\Sel~combout\(1) & ((\Mux3~6_combout\))) # (!\Sel~combout\(1) & (!\A~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datac => \Sel~combout\(1),
	datad => \Mux3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~7_combout\);

-- Location: LC_X5_Y2_N0
\Mux3~4\ : maxii_lcell
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux8~4_combout\ & (((\Add0~27_combout\)))) # (!\Mux8~4_combout\ & (!\Sel~combout\(2) & ((\Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(2),
	datab => \Add0~27_combout\,
	datac => \Mux3~7_combout\,
	datad => \Mux8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~4_combout\);

-- Location: LC_X5_Y2_N3
\Mux3~5\ : maxii_lcell
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux3~4_combout\) # ((\Mux8~6_combout\ & (\A~combout\(5) $ (\B~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \Mux8~6_combout\,
	datac => \Mux3~4_combout\,
	datad => \B~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~5_combout\);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: LC_X5_Y3_N1
\Add0~65\ : maxii_lcell
-- Equation(s):
-- \Add0~65_combout\ = (\Sel~combout\(3)) # ((\A~combout\(6) & ((\Sel~combout\(0)) # (!\Sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(3),
	datab => \Sel~combout\(2),
	datac => \Sel~combout\(0),
	datad => \A~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\);

-- Location: LC_X5_Y3_N3
\Add0~64\ : maxii_lcell
-- Equation(s):
-- \Add0~64_combout\ = (\Sel~combout\(2) & (\Sel~combout\(1) & ((\B~combout\(6)) # (\Sel~combout\(0))))) # (!\Sel~combout\(2) & ((\B~combout\(6) $ (\Sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a83c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(1),
	datab => \B~combout\(6),
	datac => \Sel~combout\(0),
	datad => \Sel~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~64_combout\);

-- Location: LC_X4_Y3_N7
\Add0~32\ : maxii_lcell
-- Equation(s):
-- \Add0~32_combout\ = \Add0~65_combout\ $ (\Add0~64_combout\ $ (((!\Add0~19\ & \Add0~29\) # (\Add0~19\ & \Add0~29COUT1_76\))))
-- \Add0~34\ = CARRY((\Add0~65_combout\ & (!\Add0~64_combout\ & !\Add0~29\)) # (!\Add0~65_combout\ & ((!\Add0~29\) # (!\Add0~64_combout\))))
-- \Add0~34COUT1_77\ = CARRY((\Add0~65_combout\ & (!\Add0~64_combout\ & !\Add0~29COUT1_76\)) # (!\Add0~65_combout\ & ((!\Add0~29COUT1_76\) # (!\Add0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~65_combout\,
	datab => \Add0~64_combout\,
	cin => \Add0~19\,
	cin0 => \Add0~29\,
	cin1 => \Add0~29COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~32_combout\,
	cout0 => \Add0~34\,
	cout1 => \Add0~34COUT1_77\);

-- Location: LC_X5_Y3_N9
\Mux2~6\ : maxii_lcell
-- Equation(s):
-- \Mux2~6_combout\ = (\Sel~combout\(3) & (!\B~combout\(6) & (!\Sel~combout\(0)))) # (!\Sel~combout\(3) & ((\B~combout\(6) & ((\Sel~combout\(0)) # (\A~combout\(6)))) # (!\B~combout\(6) & (\Sel~combout\(0) & \A~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5642",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(3),
	datab => \B~combout\(6),
	datac => \Sel~combout\(0),
	datad => \A~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~6_combout\);

-- Location: LC_X5_Y3_N0
\Mux2~7\ : maxii_lcell
-- Equation(s):
-- \Mux2~7_combout\ = (\Sel~combout\(1) & (\Mux2~6_combout\)) # (!\Sel~combout\(1) & (((!\A~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88dd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(1),
	datab => \Mux2~6_combout\,
	datad => \A~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~7_combout\);

-- Location: LC_X5_Y3_N6
\Mux2~4\ : maxii_lcell
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux8~4_combout\ & (((\Add0~32_combout\)))) # (!\Mux8~4_combout\ & (!\Sel~combout\(2) & ((\Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(2),
	datab => \Add0~32_combout\,
	datac => \Mux2~7_combout\,
	datad => \Mux8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~4_combout\);

-- Location: LC_X5_Y3_N7
\Mux2~5\ : maxii_lcell
-- Equation(s):
-- \Mux2~5_combout\ = (\Mux2~4_combout\) # ((\Mux8~6_combout\ & (\B~combout\(6) $ (\A~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datab => \Mux8~6_combout\,
	datac => \Mux2~4_combout\,
	datad => \A~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~5_combout\);

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: LC_X4_Y4_N9
\Add0~66\ : maxii_lcell
-- Equation(s):
-- \Add0~66_combout\ = ((\Sel~combout\(1) & (\Sel~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Sel~combout\(1),
	datac => \Sel~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~66_combout\);

-- Location: LC_X4_Y4_N5
\Add0~67\ : maxii_lcell
-- Equation(s):
-- \Add0~67_combout\ = (\Sel~combout\(3)) # ((\A~combout\(7) & ((\Sel~combout\(0)) # (!\Add0~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(0),
	datab => \Add0~66_combout\,
	datac => \Sel~combout\(3),
	datad => \A~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~67_combout\);

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(7),
	combout => \B~combout\(7));

-- Location: LC_X6_Y4_N5
\Add0~69\ : maxii_lcell
-- Equation(s):
-- \Add0~69_combout\ = (\Sel~combout\(2) & ((\Sel~combout\(1) & (\Sel~combout\(0) & !\B~combout\(7))) # (!\Sel~combout\(1) & ((\B~combout\(7)))))) # (!\Sel~combout\(2) & (\Sel~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ec4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(2),
	datab => \Sel~combout\(0),
	datac => \Sel~combout\(1),
	datad => \B~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~69_combout\);

-- Location: LC_X6_Y4_N7
\Add0~68\ : maxii_lcell
-- Equation(s):
-- \Add0~68_combout\ = (\B~combout\(7) $ (((!\Sel~combout\(3) & \Add0~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Sel~combout\(3),
	datac => \Add0~69_combout\,
	datad => \B~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~68_combout\);

-- Location: LC_X4_Y3_N8
\Add0~37\ : maxii_lcell
-- Equation(s):
-- \Add0~37_combout\ = \Add0~67_combout\ $ (\Add0~68_combout\ $ ((!(!\Add0~19\ & \Add0~34\) # (\Add0~19\ & \Add0~34COUT1_77\))))
-- \Add0~39\ = CARRY((\Add0~67_combout\ & ((\Add0~68_combout\) # (!\Add0~34\))) # (!\Add0~67_combout\ & (\Add0~68_combout\ & !\Add0~34\)))
-- \Add0~39COUT1_78\ = CARRY((\Add0~67_combout\ & ((\Add0~68_combout\) # (!\Add0~34COUT1_77\))) # (!\Add0~67_combout\ & (\Add0~68_combout\ & !\Add0~34COUT1_77\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~67_combout\,
	datab => \Add0~68_combout\,
	cin => \Add0~19\,
	cin0 => \Add0~34\,
	cin1 => \Add0~34COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~37_combout\,
	cout0 => \Add0~39\,
	cout1 => \Add0~39COUT1_78\);

-- Location: LC_X6_Y4_N1
\Mux1~1\ : maxii_lcell
-- Equation(s):
-- \Mux1~1_combout\ = ((\Sel~combout\(1) & ((!\B~combout\(7)))) # (!\Sel~combout\(1) & (\Add0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0afa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~37_combout\,
	datac => \Sel~combout\(1),
	datad => \B~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~1_combout\);

-- Location: LC_X6_Y4_N6
\Mux1~2\ : maxii_lcell
-- Equation(s):
-- \Mux1~2_combout\ = (\Sel~combout\(0) & (!\Sel~combout\(1) & (!\A~combout\(7)))) # (!\Sel~combout\(0) & (((\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3704",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(1),
	datab => \Sel~combout\(0),
	datac => \A~combout\(7),
	datad => \Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~2_combout\);

-- Location: LC_X6_Y4_N4
\Mux1~4\ : maxii_lcell
-- Equation(s):
-- \Mux1~4_combout\ = (\Sel~combout\(2) & ((\Sel~combout\(0) & ((\Add0~37_combout\))) # (!\Sel~combout\(0) & (\A~combout\(7))))) # (!\Sel~combout\(2) & (((\A~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f870",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(2),
	datab => \Sel~combout\(0),
	datac => \A~combout\(7),
	datad => \Add0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~4_combout\);

-- Location: LC_X6_Y4_N9
\Mux1~5\ : maxii_lcell
-- Equation(s):
-- \Mux1~5_combout\ = (\Mux1~4_combout\ & ((\Sel~combout\(0)) # (\Sel~combout\(2) $ (\B~combout\(7))))) # (!\Mux1~4_combout\ & (\B~combout\(7) & (\Sel~combout\(2) $ (\Sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d6e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(2),
	datab => \Sel~combout\(0),
	datac => \Mux1~4_combout\,
	datad => \B~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~5_combout\);

-- Location: LC_X6_Y4_N2
\Mux1~0\ : maxii_lcell
-- Equation(s):
-- \Mux1~0_combout\ = (\Sel~combout\(2) & ((\Sel~combout\(1) & ((\Add0~37_combout\))) # (!\Sel~combout\(1) & (\Mux1~5_combout\)))) # (!\Sel~combout\(2) & ((\Sel~combout\(1) & (\Mux1~5_combout\)) # (!\Sel~combout\(1) & ((\Add0~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ed48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(2),
	datab => \Mux1~5_combout\,
	datac => \Sel~combout\(1),
	datad => \Add0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: LC_X6_Y4_N0
\Mux1~3\ : maxii_lcell
-- Equation(s):
-- \Mux1~3_combout\ = (\Sel~combout\(3) & (!\Sel~combout\(2) & (\Mux1~2_combout\))) # (!\Sel~combout\(3) & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7340",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(2),
	datab => \Sel~combout\(3),
	datac => \Mux1~2_combout\,
	datad => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~3_combout\);

-- Location: LC_X6_Y4_N8
\Equal0~0\ : maxii_lcell
-- Equation(s):
-- \Equal0~0_combout\ = ((!\Mux7~5_combout\ & (!\Mux6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~5_combout\,
	datac => \Mux6~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: LC_X5_Y4_N4
\Equal0~1\ : maxii_lcell
-- Equation(s):
-- \Equal0~1_combout\ = (!\Mux3~5_combout\ & (!\Mux4~5_combout\ & (!\Mux2~5_combout\ & !\Mux5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~5_combout\,
	datab => \Mux4~5_combout\,
	datac => \Mux2~5_combout\,
	datad => \Mux5~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1_combout\);

-- Location: LC_X6_Y4_N3
\Equal0~2\ : maxii_lcell
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (!\Mux1~3_combout\ & !\Mux8~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Mux1~3_combout\,
	datad => \Mux8~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2_combout\);

-- Location: LC_X4_Y3_N9
\Add0~42\ : maxii_lcell
-- Equation(s):
-- \Add0~42_combout\ = (\Add0~67_combout\ $ ((!\Add0~19\ & \Add0~39\) # (\Add0~19\ & \Add0~39COUT1_78\) $ (\Add0~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add0~67_combout\,
	datad => \Add0~68_combout\,
	cin => \Add0~19\,
	cin0 => \Add0~39\,
	cin1 => \Add0~39COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~42_combout\);

-- Location: LC_X4_Y4_N4
\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (\Sel~combout\(1) & (((\Sel~combout\(3))) # (!\Sel~combout\(2)))) # (!\Sel~combout\(1) & ((\Sel~combout\(0) & ((\Sel~combout\(3)))) # (!\Sel~combout\(0) & (\Sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4e6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(2),
	datab => \Sel~combout\(1),
	datac => \Sel~combout\(3),
	datad => \Sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: LC_X4_Y4_N2
\Mux0~1\ : maxii_lcell
-- Equation(s):
-- \Mux0~1_combout\ = ((\Add0~42_combout\ & (!\Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add0~42_combout\,
	datac => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~1_combout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Out_ALU[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux8~7_combout\,
	oe => VCC,
	padio => ww_Out_ALU(0));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Out_ALU[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux7~5_combout\,
	oe => VCC,
	padio => ww_Out_ALU(1));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Out_ALU[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux6~5_combout\,
	oe => VCC,
	padio => ww_Out_ALU(2));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Out_ALU[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux5~5_combout\,
	oe => VCC,
	padio => ww_Out_ALU(3));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Out_ALU[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux4~5_combout\,
	oe => VCC,
	padio => ww_Out_ALU(4));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Out_ALU[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux3~5_combout\,
	oe => VCC,
	padio => ww_Out_ALU(5));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Out_ALU[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~5_combout\,
	oe => VCC,
	padio => ww_Out_ALU(6));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Out_ALU[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~3_combout\,
	oe => VCC,
	padio => ww_Out_ALU(7));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ZeroFlag~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~2_combout\,
	oe => VCC,
	padio => ww_ZeroFlag);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CarryFlag~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~1_combout\,
	oe => VCC,
	padio => ww_CarryFlag);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\OverflowFlag~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_OverflowFlag);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\NegativeFlag~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~3_combout\,
	oe => VCC,
	padio => ww_NegativeFlag);
END structure;


