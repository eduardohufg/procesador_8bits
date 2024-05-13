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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/12/2024 17:15:55"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          BIT_SLICE
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BIT_SLICE_vhd_vec_tst IS
END BIT_SLICE_vhd_vec_tst;
ARCHITECTURE BIT_SLICE_arch OF BIT_SLICE_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL AANDB : STD_LOGIC;
SIGNAL AMASB : STD_LOGIC;
SIGNAL AORB : STD_LOGIC;
SIGNAL AXORB : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL CIN : STD_LOGIC;
SIGNAL NA : STD_LOGIC;
SIGNAL NB : STD_LOGIC;
SIGNAL NEGA : STD_LOGIC;
SIGNAL NEGB : STD_LOGIC;
SIGNAL S : STD_LOGIC;
COMPONENT BIT_SLICE
	PORT (
	A : IN STD_LOGIC;
	AANDB : IN STD_LOGIC;
	AMASB : IN STD_LOGIC;
	AORB : IN STD_LOGIC;
	AXORB : IN STD_LOGIC;
	B : IN STD_LOGIC;
	C : OUT STD_LOGIC;
	CIN : IN STD_LOGIC;
	NA : IN STD_LOGIC;
	NB : IN STD_LOGIC;
	NEGA : IN STD_LOGIC;
	NEGB : IN STD_LOGIC;
	S : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : BIT_SLICE
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	AANDB => AANDB,
	AMASB => AMASB,
	AORB => AORB,
	AXORB => AXORB,
	B => B,
	C => C,
	CIN => CIN,
	NA => NA,
	NB => NB,
	NEGA => NEGA,
	NEGB => NEGB,
	S => S
	);

-- B
t_prcs_B: PROCESS
BEGIN
	B <= '0';
	WAIT FOR 50000 ps;
	B <= '1';
	WAIT FOR 60000 ps;
	B <= '0';
WAIT;
END PROCESS t_prcs_B;

-- A
t_prcs_A: PROCESS
BEGIN
	A <= '0';
	WAIT FOR 50000 ps;
	A <= '1';
	WAIT FOR 130000 ps;
	A <= '0';
WAIT;
END PROCESS t_prcs_A;

-- AANDB
t_prcs_AANDB: PROCESS
BEGIN
	AANDB <= '0';
WAIT;
END PROCESS t_prcs_AANDB;

-- AMASB
t_prcs_AMASB: PROCESS
BEGIN
	AMASB <= '1';
WAIT;
END PROCESS t_prcs_AMASB;

-- AORB
t_prcs_AORB: PROCESS
BEGIN
	AORB <= '0';
WAIT;
END PROCESS t_prcs_AORB;

-- AXORB
t_prcs_AXORB: PROCESS
BEGIN
	AXORB <= '0';
WAIT;
END PROCESS t_prcs_AXORB;

-- CIN
t_prcs_CIN: PROCESS
BEGIN
	CIN <= '0';
WAIT;
END PROCESS t_prcs_CIN;

-- NA
t_prcs_NA: PROCESS
BEGIN
	NA <= '1';
WAIT;
END PROCESS t_prcs_NA;

-- NB
t_prcs_NB: PROCESS
BEGIN
	NB <= '1';
WAIT;
END PROCESS t_prcs_NB;

-- NEGA
t_prcs_NEGA: PROCESS
BEGIN
	NEGA <= '0';
WAIT;
END PROCESS t_prcs_NEGA;

-- NEGB
t_prcs_NEGB: PROCESS
BEGIN
	NEGB <= '0';
WAIT;
END PROCESS t_prcs_NEGB;
END BIT_SLICE_arch;
