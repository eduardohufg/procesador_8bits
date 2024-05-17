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

-- DATE "05/17/2024 07:28:31"

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
	Flags : BUFFER std_logic_vector(3 DOWNTO 0)
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
SIGNAL ww_Flags : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Add0~51_cout0\ : std_logic;
SIGNAL \Add0~51COUT1_71\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~8_combout\ : std_logic;
SIGNAL \Mux8~9_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~4COUT1_72\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
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
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~14COUT1_74\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Add0~61_combout\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
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
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~64_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~29COUT1_76\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Add0~67_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~34COUT1_77\ : std_logic;
SIGNAL \Add0~37_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
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
Flags <= ww_Flags;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sel[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Sel(0),
	combout => \Sel~combout\(0));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sel[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Sel(2),
	combout => \Sel~combout\(2));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sel[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Sel(1),
	combout => \Sel~combout\(1));

-- Location: LC_X4_Y3_N6
\Add0~48\ : maxii_lcell
-- Equation(s):
-- \Add0~48_combout\ = (\B~combout\(0) & (((\Sel~combout\(2))) # (!\Sel~combout\(0)))) # (!\B~combout\(0) & ((\Sel~combout\(0)) # ((\Sel~combout\(2) & !\Sel~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6f6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \Sel~combout\(0),
	datac => \Sel~combout\(2),
	datad => \Sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~48_combout\);

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sel[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Sel(3),
	combout => \Sel~combout\(3));

-- Location: LC_X4_Y3_N0
\Add0~47\ : maxii_lcell
-- Equation(s):
-- \Add0~47_combout\ = (\A~combout\(0)) # ((\Sel~combout\(3)) # ((!\Sel~combout\(0) & \Sel~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \Sel~combout\(0),
	datac => \Sel~combout\(2),
	datad => \Sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~47_combout\);

-- Location: LC_X5_Y2_N0
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

-- Location: LC_X5_Y2_N1
\Add0~2\ : maxii_lcell
-- Equation(s):
-- \Add0~2_combout\ = \Add0~48_combout\ $ (\Add0~47_combout\ $ ((\Add0~51_cout0\)))
-- \Add0~4\ = CARRY((\Add0~48_combout\ & (!\Add0~47_combout\ & !\Add0~51_cout0\)) # (!\Add0~48_combout\ & ((!\Add0~51_cout0\) # (!\Add0~47_combout\))))
-- \Add0~4COUT1_72\ = CARRY((\Add0~48_combout\ & (!\Add0~47_combout\ & !\Add0~51COUT1_71\)) # (!\Add0~48_combout\ & ((!\Add0~51COUT1_71\) # (!\Add0~47_combout\))))

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
	dataa => \Add0~48_combout\,
	datab => \Add0~47_combout\,
	cin0 => \Add0~51_cout0\,
	cin1 => \Add0~51COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~2_combout\,
	cout0 => \Add0~4\,
	cout1 => \Add0~4COUT1_72\);

-- Location: LC_X5_Y1_N2
\Mux8~4\ : maxii_lcell
-- Equation(s):
-- \Mux8~4_combout\ = (\Sel~combout\(1) & (\Sel~combout\(2) & ((!\Sel~combout\(3))))) # (!\Sel~combout\(1) & ((\Sel~combout\(0) & ((!\Sel~combout\(3)))) # (!\Sel~combout\(0) & (!\Sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "01d9",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(1),
	datab => \Sel~combout\(2),
	datac => \Sel~combout\(0),
	datad => \Sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~4_combout\);

-- Location: LC_X4_Y3_N7
\Mux8~8\ : maxii_lcell
-- Equation(s):
-- \Mux8~8_combout\ = (\Sel~combout\(0) & (!\Sel~combout\(3) & ((\A~combout\(0)) # (\B~combout\(0))))) # (!\Sel~combout\(0) & ((\B~combout\(0) & (\A~combout\(0) & !\Sel~combout\(3))) # (!\B~combout\(0) & ((\Sel~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \Sel~combout\(0),
	datac => \B~combout\(0),
	datad => \Sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~8_combout\);

-- Location: LC_X4_Y3_N8
\Mux8~9\ : maxii_lcell
-- Equation(s):
-- \Mux8~9_combout\ = ((\Sel~combout\(1) & (\Mux8~8_combout\)) # (!\Sel~combout\(1) & ((!\A~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux8~8_combout\,
	datac => \A~combout\(0),
	datad => \Sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~9_combout\);

-- Location: LC_X4_Y3_N9
\Mux8~5\ : maxii_lcell
-- Equation(s):
-- \Mux8~5_combout\ = (\Mux8~4_combout\ & (\Add0~2_combout\)) # (!\Mux8~4_combout\ & (((!\Sel~combout\(2) & \Mux8~9_combout\))))

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
	dataa => \Add0~2_combout\,
	datab => \Mux8~4_combout\,
	datac => \Sel~combout\(2),
	datad => \Mux8~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~5_combout\);

-- Location: LC_X5_Y1_N1
\Mux8~6\ : maxii_lcell
-- Equation(s):
-- \Mux8~6_combout\ = (!\Sel~combout\(1) & (\Sel~combout\(2) & (!\Sel~combout\(0) & !\Sel~combout\(3))))

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
	dataa => \Sel~combout\(1),
	datab => \Sel~combout\(2),
	datac => \Sel~combout\(0),
	datad => \Sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~6_combout\);

-- Location: LC_X4_Y3_N5
\Mux8~7\ : maxii_lcell
-- Equation(s):
-- \Mux8~7_combout\ = (\Mux8~5_combout\) # ((\Mux8~6_combout\ & (\A~combout\(0) $ (\B~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "decc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \Mux8~5_combout\,
	datac => \B~combout\(0),
	datad => \Mux8~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~7_combout\);

-- Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: LC_X6_Y2_N0
\Add0~54\ : maxii_lcell
-- Equation(s):
-- \Add0~54_combout\ = (\Sel~combout\(2) & (\Sel~combout\(1) & ((\B~combout\(1)) # (\Sel~combout\(0))))) # (!\Sel~combout\(2) & (\B~combout\(1) $ ((\Sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e606",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \Sel~combout\(0),
	datac => \Sel~combout\(2),
	datad => \Sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~54_combout\);

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LC_X6_Y3_N9
\Add0~55\ : maxii_lcell
-- Equation(s):
-- \Add0~55_combout\ = (\Sel~combout\(3)) # ((\A~combout\(1) & ((\Sel~combout\(0)) # (!\Sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(3),
	datab => \Sel~combout\(0),
	datac => \Sel~combout\(2),
	datad => \A~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\);

-- Location: LC_X5_Y2_N2
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

-- Location: LC_X6_Y3_N4
\Mux7~6\ : maxii_lcell
-- Equation(s):
-- \Mux7~6_combout\ = (\Sel~combout\(0) & (!\Sel~combout\(3) & ((\B~combout\(1)) # (\A~combout\(1))))) # (!\Sel~combout\(0) & ((\B~combout\(1) & (!\Sel~combout\(3) & \A~combout\(1))) # (!\B~combout\(1) & (\Sel~combout\(3)))))

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
	dataa => \Sel~combout\(0),
	datab => \B~combout\(1),
	datac => \Sel~combout\(3),
	datad => \A~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~6_combout\);

-- Location: LC_X6_Y3_N2
\Mux7~7\ : maxii_lcell
-- Equation(s):
-- \Mux7~7_combout\ = (\Sel~combout\(1) & (((\Mux7~6_combout\)))) # (!\Sel~combout\(1) & (((!\A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0f5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(1),
	datac => \Mux7~6_combout\,
	datad => \A~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~7_combout\);

-- Location: LC_X6_Y3_N8
\Mux7~4\ : maxii_lcell
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux8~4_combout\ & (((\Add0~7_combout\)))) # (!\Mux8~4_combout\ & (!\Sel~combout\(2) & ((\Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c5c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(2),
	datab => \Add0~7_combout\,
	datac => \Mux8~4_combout\,
	datad => \Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~4_combout\);

-- Location: LC_X6_Y3_N1
\Mux7~5\ : maxii_lcell
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux7~4_combout\) # ((\Mux8~6_combout\ & (\B~combout\(1) $ (\A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "baea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~4_combout\,
	datab => \B~combout\(1),
	datac => \Mux8~6_combout\,
	datad => \A~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~5_combout\);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: LC_X4_Y1_N7
\Mux6~6\ : maxii_lcell
-- Equation(s):
-- \Mux6~6_combout\ = (\Sel~combout\(0) & (!\Sel~combout\(3) & ((\A~combout\(2)) # (\B~combout\(2))))) # (!\Sel~combout\(0) & ((\Sel~combout\(3) & ((!\B~combout\(2)))) # (!\Sel~combout\(3) & (\A~combout\(2) & \B~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3264",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(0),
	datab => \Sel~combout\(3),
	datac => \A~combout\(2),
	datad => \B~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~6_combout\);

-- Location: LC_X4_Y1_N9
\Mux6~7\ : maxii_lcell
-- Equation(s):
-- \Mux6~7_combout\ = ((\Sel~combout\(1) & (\Mux6~6_combout\)) # (!\Sel~combout\(1) & ((!\A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~6_combout\,
	datac => \A~combout\(2),
	datad => \Sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~7_combout\);

-- Location: LC_X4_Y1_N2
\Add0~57\ : maxii_lcell
-- Equation(s):
-- \Add0~57_combout\ = (\Sel~combout\(3)) # ((\A~combout\(2) & ((\Sel~combout\(0)) # (!\Sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffb0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(0),
	datab => \Sel~combout\(2),
	datac => \A~combout\(2),
	datad => \Sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~57_combout\);

-- Location: LC_X4_Y1_N5
\Add0~56\ : maxii_lcell
-- Equation(s):
-- \Add0~56_combout\ = (\Sel~combout\(2) & (\Sel~combout\(1) & ((\Sel~combout\(0)) # (\B~combout\(2))))) # (!\Sel~combout\(2) & ((\Sel~combout\(0) $ (\B~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8bb0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(1),
	datab => \Sel~combout\(2),
	datac => \Sel~combout\(0),
	datad => \B~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~56_combout\);

-- Location: LC_X5_Y2_N3
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

-- Location: LC_X4_Y1_N8
\Mux6~4\ : maxii_lcell
-- Equation(s):
-- \Mux6~4_combout\ = (\Mux8~4_combout\ & (((\Add0~12_combout\)))) # (!\Mux8~4_combout\ & (\Mux6~7_combout\ & ((!\Sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~4_combout\,
	datab => \Mux6~7_combout\,
	datac => \Add0~12_combout\,
	datad => \Sel~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~4_combout\);

-- Location: LC_X4_Y1_N4
\Mux6~5\ : maxii_lcell
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux6~4_combout\) # ((\Mux8~6_combout\ & (\A~combout\(2) $ (\B~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ceec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~6_combout\,
	datab => \Mux6~4_combout\,
	datac => \A~combout\(2),
	datad => \B~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~5_combout\);

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: LC_X6_Y3_N6
\Mux5~6\ : maxii_lcell
-- Equation(s):
-- \Mux5~6_combout\ = (\Sel~combout\(3) & (!\Sel~combout\(0) & ((!\B~combout\(3))))) # (!\Sel~combout\(3) & ((\Sel~combout\(0) & ((\A~combout\(3)) # (\B~combout\(3)))) # (!\Sel~combout\(0) & (\A~combout\(3) & \B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5462",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(3),
	datab => \Sel~combout\(0),
	datac => \A~combout\(3),
	datad => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~6_combout\);

-- Location: LC_X6_Y3_N7
\Mux5~7\ : maxii_lcell
-- Equation(s):
-- \Mux5~7_combout\ = ((\Sel~combout\(1) & ((\Mux5~6_combout\))) # (!\Sel~combout\(1) & (!\A~combout\(3))))

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
	dataa => \A~combout\(3),
	datac => \Sel~combout\(1),
	datad => \Mux5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~7_combout\);

-- Location: LC_X6_Y2_N7
\Add0~58\ : maxii_lcell
-- Equation(s):
-- \Add0~58_combout\ = (\Sel~combout\(2) & (\Sel~combout\(1) & ((\Sel~combout\(0)) # (\B~combout\(3))))) # (!\Sel~combout\(2) & ((\Sel~combout\(0) $ (\B~combout\(3)))))

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
	datad => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~58_combout\);

-- Location: LC_X6_Y3_N3
\Add0~59\ : maxii_lcell
-- Equation(s):
-- \Add0~59_combout\ = (\Sel~combout\(3)) # ((\A~combout\(3) & ((\Sel~combout\(0)) # (!\Sel~combout\(2)))))

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
	dataa => \A~combout\(3),
	datab => \Sel~combout\(0),
	datac => \Sel~combout\(3),
	datad => \Sel~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~59_combout\);

-- Location: LC_X5_Y2_N4
\Add0~17\ : maxii_lcell
-- Equation(s):
-- \Add0~17_combout\ = \Add0~58_combout\ $ (\Add0~59_combout\ $ ((!\Add0~14\)))
-- \Add0~19\ = CARRY((\Add0~58_combout\ & ((\Add0~59_combout\) # (!\Add0~14COUT1_74\))) # (!\Add0~58_combout\ & (\Add0~59_combout\ & !\Add0~14COUT1_74\)))

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
	dataa => \Add0~58_combout\,
	datab => \Add0~59_combout\,
	cin0 => \Add0~14\,
	cin1 => \Add0~14COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~17_combout\,
	cout => \Add0~19\);

-- Location: LC_X6_Y3_N5
\Mux5~4\ : maxii_lcell
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux8~4_combout\ & (((\Add0~17_combout\)))) # (!\Mux8~4_combout\ & (\Mux5~7_combout\ & (!\Sel~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ae04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~4_combout\,
	datab => \Mux5~7_combout\,
	datac => \Sel~combout\(2),
	datad => \Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~4_combout\);

-- Location: LC_X6_Y3_N0
\Mux5~5\ : maxii_lcell
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux5~4_combout\) # ((\Mux8~6_combout\ & (\A~combout\(3) $ (\B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aeea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~4_combout\,
	datab => \Mux8~6_combout\,
	datac => \A~combout\(3),
	datad => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~5_combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: LC_X5_Y1_N0
\Add0~61\ : maxii_lcell
-- Equation(s):
-- \Add0~61_combout\ = (\Sel~combout\(3)) # ((\A~combout\(4) & ((\Sel~combout\(0)) # (!\Sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(3),
	datab => \A~combout\(4),
	datac => \Sel~combout\(0),
	datad => \Sel~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~61_combout\);

-- Location: LC_X5_Y1_N8
\Add0~60\ : maxii_lcell
-- Equation(s):
-- \Add0~60_combout\ = (\Sel~combout\(2) & (\Sel~combout\(1) & ((\B~combout\(4)) # (\Sel~combout\(0))))) # (!\Sel~combout\(2) & (\B~combout\(4) $ ((\Sel~combout\(0)))))

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
	dataa => \B~combout\(4),
	datab => \Sel~combout\(2),
	datac => \Sel~combout\(0),
	datad => \Sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\);

-- Location: LC_X5_Y2_N5
\Add0~22\ : maxii_lcell
-- Equation(s):
-- \Add0~22_combout\ = \Add0~61_combout\ $ (\Add0~60_combout\ $ ((\Add0~19\)))
-- \Add0~24\ = CARRY((\Add0~61_combout\ & (!\Add0~60_combout\ & !\Add0~19\)) # (!\Add0~61_combout\ & ((!\Add0~19\) # (!\Add0~60_combout\))))
-- \Add0~24COUT1_75\ = CARRY((\Add0~61_combout\ & (!\Add0~60_combout\ & !\Add0~19\)) # (!\Add0~61_combout\ & ((!\Add0~19\) # (!\Add0~60_combout\))))

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
	dataa => \Add0~61_combout\,
	datab => \Add0~60_combout\,
	cin => \Add0~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~22_combout\,
	cout0 => \Add0~24\,
	cout1 => \Add0~24COUT1_75\);

-- Location: LC_X5_Y1_N6
\Mux4~6\ : maxii_lcell
-- Equation(s):
-- \Mux4~6_combout\ = (\B~combout\(4) & (!\Sel~combout\(3) & ((\A~combout\(4)) # (\Sel~combout\(0))))) # (!\B~combout\(4) & ((\Sel~combout\(0) & (\A~combout\(4) & !\Sel~combout\(3))) # (!\Sel~combout\(0) & ((\Sel~combout\(3))))))

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
	dataa => \B~combout\(4),
	datab => \A~combout\(4),
	datac => \Sel~combout\(0),
	datad => \Sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~6_combout\);

-- Location: LC_X5_Y1_N5
\Mux4~7\ : maxii_lcell
-- Equation(s):
-- \Mux4~7_combout\ = ((\Sel~combout\(1) & ((\Mux4~6_combout\))) # (!\Sel~combout\(1) & (!\A~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(4),
	datac => \Mux4~6_combout\,
	datad => \Sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~7_combout\);

-- Location: LC_X5_Y1_N4
\Mux4~4\ : maxii_lcell
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux8~4_combout\ & (\Add0~22_combout\)) # (!\Mux8~4_combout\ & (((\Mux4~7_combout\ & !\Sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \Mux8~4_combout\,
	datac => \Mux4~7_combout\,
	datad => \Sel~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~4_combout\);

-- Location: LC_X5_Y1_N7
\Mux4~5\ : maxii_lcell
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux4~4_combout\) # ((\Mux8~6_combout\ & (\B~combout\(4) $ (\A~combout\(4)))))

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
	dataa => \B~combout\(4),
	datab => \A~combout\(4),
	datac => \Mux4~4_combout\,
	datad => \Mux8~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~5_combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: LC_X6_Y2_N6
\Add0~63\ : maxii_lcell
-- Equation(s):
-- \Add0~63_combout\ = (\Sel~combout\(3)) # ((\A~combout\(5) & ((\Sel~combout\(0)) # (!\Sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffd0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(2),
	datab => \Sel~combout\(0),
	datac => \A~combout\(5),
	datad => \Sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~63_combout\);

-- Location: LC_X6_Y2_N5
\Add0~62\ : maxii_lcell
-- Equation(s):
-- \Add0~62_combout\ = (\Sel~combout\(2) & (\Sel~combout\(1) & ((\Sel~combout\(0)) # (\B~combout\(5))))) # (!\Sel~combout\(2) & ((\Sel~combout\(0) $ (\B~combout\(5)))))

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
	datad => \B~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~62_combout\);

-- Location: LC_X5_Y2_N6
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

-- Location: LC_X6_Y2_N3
\Mux3~6\ : maxii_lcell
-- Equation(s):
-- \Mux3~6_combout\ = (\B~combout\(5) & (!\Sel~combout\(3) & ((\Sel~combout\(0)) # (\A~combout\(5))))) # (!\B~combout\(5) & ((\Sel~combout\(0) & (\A~combout\(5) & !\Sel~combout\(3))) # (!\Sel~combout\(0) & ((\Sel~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "11e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \Sel~combout\(0),
	datac => \A~combout\(5),
	datad => \Sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~6_combout\);

-- Location: LC_X6_Y2_N8
\Mux3~7\ : maxii_lcell
-- Equation(s):
-- \Mux3~7_combout\ = (\Sel~combout\(1) & (((\Mux3~6_combout\)))) # (!\Sel~combout\(1) & (!\A~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb11",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(1),
	datab => \A~combout\(5),
	datad => \Mux3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~7_combout\);

-- Location: LC_X6_Y2_N9
\Mux3~4\ : maxii_lcell
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux8~4_combout\ & (\Add0~27_combout\)) # (!\Mux8~4_combout\ & (((!\Sel~combout\(2) & \Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8d88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~4_combout\,
	datab => \Add0~27_combout\,
	datac => \Sel~combout\(2),
	datad => \Mux3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~4_combout\);

-- Location: LC_X6_Y2_N4
\Mux3~5\ : maxii_lcell
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux3~4_combout\) # ((\Mux8~6_combout\ & (\B~combout\(5) $ (\A~combout\(5)))))

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
	dataa => \B~combout\(5),
	datab => \Mux8~6_combout\,
	datac => \A~combout\(5),
	datad => \Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~5_combout\);

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: LC_X4_Y1_N6
\Mux2~6\ : maxii_lcell
-- Equation(s):
-- \Mux2~6_combout\ = (\Sel~combout\(0) & (!\Sel~combout\(3) & ((\A~combout\(6)) # (\B~combout\(6))))) # (!\Sel~combout\(0) & ((\B~combout\(6) & (\A~combout\(6) & !\Sel~combout\(3))) # (!\B~combout\(6) & ((\Sel~combout\(3))))))

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
	dataa => \Sel~combout\(0),
	datab => \A~combout\(6),
	datac => \B~combout\(6),
	datad => \Sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~6_combout\);

-- Location: LC_X4_Y1_N0
\Mux2~7\ : maxii_lcell
-- Equation(s):
-- \Mux2~7_combout\ = (\Sel~combout\(1) & (((\Mux2~6_combout\)))) # (!\Sel~combout\(1) & (((!\A~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0f5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(1),
	datac => \Mux2~6_combout\,
	datad => \A~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~7_combout\);

-- Location: LC_X5_Y1_N3
\Add0~65\ : maxii_lcell
-- Equation(s):
-- \Add0~65_combout\ = (\Sel~combout\(3)) # ((\A~combout\(6) & ((\Sel~combout\(0)) # (!\Sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \Sel~combout\(2),
	datac => \Sel~combout\(0),
	datad => \Sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\);

-- Location: LC_X4_Y3_N1
\Add0~64\ : maxii_lcell
-- Equation(s):
-- \Add0~64_combout\ = (\Sel~combout\(2) & (\Sel~combout\(1) & ((\B~combout\(6)) # (\Sel~combout\(0))))) # (!\Sel~combout\(2) & (\B~combout\(6) $ ((\Sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e606",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datab => \Sel~combout\(0),
	datac => \Sel~combout\(2),
	datad => \Sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~64_combout\);

-- Location: LC_X5_Y2_N7
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

-- Location: LC_X4_Y1_N1
\Mux2~4\ : maxii_lcell
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux8~4_combout\ & (((\Add0~32_combout\)))) # (!\Mux8~4_combout\ & (!\Sel~combout\(2) & (\Mux2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~4_combout\,
	datab => \Sel~combout\(2),
	datac => \Mux2~7_combout\,
	datad => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~4_combout\);

-- Location: LC_X4_Y1_N3
\Mux2~5\ : maxii_lcell
-- Equation(s):
-- \Mux2~5_combout\ = (\Mux2~4_combout\) # ((\Mux8~6_combout\ & (\B~combout\(6) $ (\A~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ceec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~6_combout\,
	datab => \Mux2~4_combout\,
	datac => \B~combout\(6),
	datad => \A~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~5_combout\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(7),
	combout => \B~combout\(7));

-- Location: LC_X5_Y3_N6
\Add0~69\ : maxii_lcell
-- Equation(s):
-- \Add0~69_combout\ = (\Sel~combout\(2) & ((\Sel~combout\(1) & (\Sel~combout\(0) & !\B~combout\(7))) # (!\Sel~combout\(1) & ((\B~combout\(7)))))) # (!\Sel~combout\(2) & (((\Sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "72d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(2),
	datab => \Sel~combout\(1),
	datac => \Sel~combout\(0),
	datad => \B~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~69_combout\);

-- Location: LC_X5_Y3_N1
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

-- Location: LC_X5_Y3_N8
\Add0~66\ : maxii_lcell
-- Equation(s):
-- \Add0~66_combout\ = (\Sel~combout\(2) & (((\Sel~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(2),
	datac => \Sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~66_combout\);

-- Location: LC_X5_Y3_N3
\Add0~67\ : maxii_lcell
-- Equation(s):
-- \Add0~67_combout\ = (\Sel~combout\(3)) # ((\A~combout\(7) & ((\Sel~combout\(0)) # (!\Add0~66_combout\))))

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
	dataa => \Add0~66_combout\,
	datab => \A~combout\(7),
	datac => \Sel~combout\(0),
	datad => \Sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~67_combout\);

-- Location: LC_X5_Y2_N8
\Add0~37\ : maxii_lcell
-- Equation(s):
-- \Add0~37_combout\ = \Add0~68_combout\ $ (\Add0~67_combout\ $ ((!(!\Add0~19\ & \Add0~34\) # (\Add0~19\ & \Add0~34COUT1_77\))))
-- \Add0~39\ = CARRY((\Add0~68_combout\ & ((\Add0~67_combout\) # (!\Add0~34\))) # (!\Add0~68_combout\ & (\Add0~67_combout\ & !\Add0~34\)))
-- \Add0~39COUT1_78\ = CARRY((\Add0~68_combout\ & ((\Add0~67_combout\) # (!\Add0~34COUT1_77\))) # (!\Add0~68_combout\ & (\Add0~67_combout\ & !\Add0~34COUT1_77\)))

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
	dataa => \Add0~68_combout\,
	datab => \Add0~67_combout\,
	cin => \Add0~19\,
	cin0 => \Add0~34\,
	cin1 => \Add0~34COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~37_combout\,
	cout0 => \Add0~39\,
	cout1 => \Add0~39COUT1_78\);

-- Location: LC_X5_Y3_N4
\Mux1~1\ : maxii_lcell
-- Equation(s):
-- \Mux1~1_combout\ = ((\Sel~combout\(1) & ((!\B~combout\(7)))) # (!\Sel~combout\(1) & (\Add0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Sel~combout\(1),
	datac => \Add0~37_combout\,
	datad => \B~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~1_combout\);

-- Location: LC_X5_Y3_N2
\Mux1~2\ : maxii_lcell
-- Equation(s):
-- \Mux1~2_combout\ = (\Sel~combout\(0) & (!\A~combout\(7) & (!\Sel~combout\(1)))) # (!\Sel~combout\(0) & (((\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5702",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(0),
	datab => \A~combout\(7),
	datac => \Sel~combout\(1),
	datad => \Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~2_combout\);

-- Location: LC_X5_Y3_N7
\Mux1~4\ : maxii_lcell
-- Equation(s):
-- \Mux1~4_combout\ = (\Sel~combout\(0) & ((\Sel~combout\(2) & (\Add0~37_combout\)) # (!\Sel~combout\(2) & ((\A~combout\(7)))))) # (!\Sel~combout\(0) & (((\A~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "accc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~37_combout\,
	datab => \A~combout\(7),
	datac => \Sel~combout\(0),
	datad => \Sel~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~4_combout\);

-- Location: LC_X5_Y3_N0
\Mux1~5\ : maxii_lcell
-- Equation(s):
-- \Mux1~5_combout\ = (\Mux1~4_combout\ & ((\Sel~combout\(0)) # (\Sel~combout\(2) $ (\B~combout\(7))))) # (!\Mux1~4_combout\ & (\B~combout\(7) & (\Sel~combout\(2) $ (\Sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d6c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(2),
	datab => \Mux1~4_combout\,
	datac => \Sel~combout\(0),
	datad => \B~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~5_combout\);

-- Location: LC_X5_Y3_N5
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

-- Location: LC_X5_Y3_N9
\Mux1~3\ : maxii_lcell
-- Equation(s):
-- \Mux1~3_combout\ = (\Sel~combout\(3) & (!\Sel~combout\(2) & (\Mux1~2_combout\))) # (!\Sel~combout\(3) & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~combout\(2),
	datab => \Mux1~2_combout\,
	datac => \Mux1~0_combout\,
	datad => \Sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~3_combout\);

-- Location: LC_X5_Y2_N9
\Add0~42\ : maxii_lcell
-- Equation(s):
-- \Add0~42_combout\ = \Add0~68_combout\ $ ((((!\Add0~19\ & \Add0~39\) # (\Add0~19\ & \Add0~39COUT1_78\) $ (\Add0~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~68_combout\,
	datad => \Add0~67_combout\,
	cin => \Add0~19\,
	cin0 => \Add0~39\,
	cin1 => \Add0~39COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~42_combout\);

-- Location: LC_X6_Y2_N1
\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (\Sel~combout\(1) & (((\Sel~combout\(3)) # (!\Sel~combout\(2))))) # (!\Sel~combout\(1) & ((\Sel~combout\(0) & ((\Sel~combout\(3)))) # (!\Sel~combout\(0) & (\Sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe1a",
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
	datad => \Sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: LC_X6_Y2_N2
\Mux0~1\ : maxii_lcell
-- Equation(s):
-- \Mux0~1_combout\ = (((\Add0~42_combout\ & !\Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Add0~42_combout\,
	datad => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~1_combout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Out_ALU[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux8~7_combout\,
	oe => VCC,
	padio => ww_Out_ALU(0));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Out_ALU[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux7~5_combout\,
	oe => VCC,
	padio => ww_Out_ALU(1));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Out_ALU[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux6~5_combout\,
	oe => VCC,
	padio => ww_Out_ALU(2));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Out_ALU[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux5~5_combout\,
	oe => VCC,
	padio => ww_Out_ALU(3));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Out_ALU[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux4~5_combout\,
	oe => VCC,
	padio => ww_Out_ALU(4));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Out_ALU[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux3~5_combout\,
	oe => VCC,
	padio => ww_Out_ALU(5));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Out_ALU[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~5_combout\,
	oe => VCC,
	padio => ww_Out_ALU(6));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Out_ALU[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~3_combout\,
	oe => VCC,
	padio => ww_Out_ALU(7));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Flags[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Flags(0));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Flags[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~1_combout\,
	oe => VCC,
	padio => ww_Flags(1));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Flags[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Flags(2));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Flags[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~3_combout\,
	oe => VCC,
	padio => ww_Flags(3));
END structure;


