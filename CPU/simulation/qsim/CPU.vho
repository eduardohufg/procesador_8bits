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

-- DATE "05/20/2024 09:50:36"

-- 
-- Device: Altera EP4CE15F23C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CPU IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	port_in_00 : IN std_logic_vector(7 DOWNTO 0);
	port_in_01 : IN std_logic_vector(7 DOWNTO 0);
	port_in_02 : IN std_logic_vector(7 DOWNTO 0);
	port_in_03 : IN std_logic_vector(7 DOWNTO 0);
	port_in_04 : IN std_logic_vector(7 DOWNTO 0);
	port_in_05 : IN std_logic_vector(7 DOWNTO 0);
	port_in_06 : IN std_logic_vector(7 DOWNTO 0);
	port_in_07 : IN std_logic_vector(7 DOWNTO 0);
	port_in_08 : IN std_logic_vector(7 DOWNTO 0);
	port_in_09 : IN std_logic_vector(7 DOWNTO 0);
	port_in_10 : IN std_logic_vector(7 DOWNTO 0);
	port_in_11 : IN std_logic_vector(7 DOWNTO 0);
	port_in_12 : IN std_logic_vector(7 DOWNTO 0);
	port_in_13 : IN std_logic_vector(7 DOWNTO 0);
	port_in_14 : IN std_logic_vector(7 DOWNTO 0);
	port_in_15 : IN std_logic_vector(7 DOWNTO 0);
	port_out_00 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_01 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_02 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_03 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_04 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_05 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_06 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_07 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_08 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_09 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_10 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_11 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_12 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_13 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_14 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_15 : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END CPU;

-- Design Ports Information
-- port_out_00[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_00[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_00[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_00[3]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_00[4]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_00[5]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_00[6]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_00[7]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_01[0]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_01[1]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_01[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_01[3]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_01[4]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_01[5]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_01[6]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_01[7]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_02[0]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_02[1]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_02[2]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_02[3]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_02[4]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_02[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_02[6]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_02[7]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_03[0]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_03[1]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_03[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_03[3]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_03[4]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_03[5]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_03[6]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_03[7]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_04[0]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_04[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_04[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_04[3]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_04[4]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_04[5]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_04[6]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_04[7]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_05[0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_05[1]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_05[2]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_05[3]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_05[4]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_05[5]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_05[6]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_05[7]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_06[0]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_06[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_06[2]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_06[3]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_06[4]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_06[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_06[6]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_06[7]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_07[0]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_07[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_07[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_07[3]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_07[4]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_07[5]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_07[6]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_07[7]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_08[0]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_08[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_08[2]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_08[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_08[4]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_08[5]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_08[6]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_08[7]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_09[0]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_09[1]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_09[2]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_09[3]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_09[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_09[5]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_09[6]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_09[7]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_10[0]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_10[1]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_10[2]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_10[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_10[4]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_10[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_10[6]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_10[7]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_11[0]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_11[1]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_11[2]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_11[3]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_11[4]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_11[5]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_11[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_11[7]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_12[0]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_12[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_12[2]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_12[3]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_12[4]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_12[5]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_12[6]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_12[7]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_13[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_13[1]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_13[2]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_13[3]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_13[4]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_13[5]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_13[6]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_13[7]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_14[0]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_14[1]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_14[2]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_14[3]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_14[4]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_14[5]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_14[6]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_14[7]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_15[0]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_15[1]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_15[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_15[3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_15[4]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_15[5]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_15[6]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_15[7]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_05[0]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_03[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_01[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_07[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_10[0]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_12[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_08[0]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_14[0]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_02[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_04[0]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_00[0]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_06[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_13[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_11[0]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_09[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_15[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_09[1]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_10[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_08[1]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_11[1]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_05[1]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_06[1]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_04[1]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_07[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_01[1]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_02[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_00[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_03[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_13[1]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_14[1]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_12[1]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_15[1]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_12[2]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_09[2]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_08[2]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_13[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_03[2]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_06[2]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_02[2]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_07[2]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_04[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_01[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_00[2]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_05[2]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_11[2]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_14[2]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_10[2]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_15[2]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_10[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_12[3]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_08[3]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_14[3]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_03[3]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_05[3]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_01[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_07[3]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_02[3]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_04[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_00[3]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_06[3]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_13[3]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_11[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_09[3]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_15[3]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_12[4]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_05[4]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_04[4]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_13[4]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_10[4]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_03[4]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_02[4]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_11[4]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_08[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_01[4]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_00[4]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_09[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_14[4]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_07[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_06[4]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_15[4]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_12[5]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_10[5]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_08[5]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_14[5]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_03[5]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_05[5]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_01[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_07[5]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_02[5]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_04[5]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_00[5]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_06[5]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_11[5]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_13[5]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_09[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_15[5]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_12[6]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_05[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_04[6]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_13[6]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_10[6]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_03[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_02[6]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_11[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_08[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_01[6]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_00[6]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_09[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_14[6]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_07[6]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_06[6]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_15[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_05[7]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_03[7]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_01[7]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_07[7]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_10[7]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_12[7]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_08[7]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_14[7]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_02[7]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_04[7]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_00[7]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_06[7]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_13[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_11[7]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_09[7]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_15[7]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_port_in_00 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_01 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_02 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_03 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_04 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_05 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_06 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_07 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_08 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_09 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_10 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_11 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_12 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_13 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_14 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_15 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_00 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_01 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_02 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_03 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_04 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_05 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_06 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_07 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_08 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_09 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_10 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_11 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_12 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_13 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_14 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_15 : std_logic_vector(7 DOWNTO 0);
SIGNAL \C2|progmem|ROM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \C2|progmem|ROM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \C1|C1|WideOr26~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|C1|EDO.Decode~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \port_out_00[0]~output_o\ : std_logic;
SIGNAL \port_out_00[1]~output_o\ : std_logic;
SIGNAL \port_out_00[2]~output_o\ : std_logic;
SIGNAL \port_out_00[3]~output_o\ : std_logic;
SIGNAL \port_out_00[4]~output_o\ : std_logic;
SIGNAL \port_out_00[5]~output_o\ : std_logic;
SIGNAL \port_out_00[6]~output_o\ : std_logic;
SIGNAL \port_out_00[7]~output_o\ : std_logic;
SIGNAL \port_out_01[0]~output_o\ : std_logic;
SIGNAL \port_out_01[1]~output_o\ : std_logic;
SIGNAL \port_out_01[2]~output_o\ : std_logic;
SIGNAL \port_out_01[3]~output_o\ : std_logic;
SIGNAL \port_out_01[4]~output_o\ : std_logic;
SIGNAL \port_out_01[5]~output_o\ : std_logic;
SIGNAL \port_out_01[6]~output_o\ : std_logic;
SIGNAL \port_out_01[7]~output_o\ : std_logic;
SIGNAL \port_out_02[0]~output_o\ : std_logic;
SIGNAL \port_out_02[1]~output_o\ : std_logic;
SIGNAL \port_out_02[2]~output_o\ : std_logic;
SIGNAL \port_out_02[3]~output_o\ : std_logic;
SIGNAL \port_out_02[4]~output_o\ : std_logic;
SIGNAL \port_out_02[5]~output_o\ : std_logic;
SIGNAL \port_out_02[6]~output_o\ : std_logic;
SIGNAL \port_out_02[7]~output_o\ : std_logic;
SIGNAL \port_out_03[0]~output_o\ : std_logic;
SIGNAL \port_out_03[1]~output_o\ : std_logic;
SIGNAL \port_out_03[2]~output_o\ : std_logic;
SIGNAL \port_out_03[3]~output_o\ : std_logic;
SIGNAL \port_out_03[4]~output_o\ : std_logic;
SIGNAL \port_out_03[5]~output_o\ : std_logic;
SIGNAL \port_out_03[6]~output_o\ : std_logic;
SIGNAL \port_out_03[7]~output_o\ : std_logic;
SIGNAL \port_out_04[0]~output_o\ : std_logic;
SIGNAL \port_out_04[1]~output_o\ : std_logic;
SIGNAL \port_out_04[2]~output_o\ : std_logic;
SIGNAL \port_out_04[3]~output_o\ : std_logic;
SIGNAL \port_out_04[4]~output_o\ : std_logic;
SIGNAL \port_out_04[5]~output_o\ : std_logic;
SIGNAL \port_out_04[6]~output_o\ : std_logic;
SIGNAL \port_out_04[7]~output_o\ : std_logic;
SIGNAL \port_out_05[0]~output_o\ : std_logic;
SIGNAL \port_out_05[1]~output_o\ : std_logic;
SIGNAL \port_out_05[2]~output_o\ : std_logic;
SIGNAL \port_out_05[3]~output_o\ : std_logic;
SIGNAL \port_out_05[4]~output_o\ : std_logic;
SIGNAL \port_out_05[5]~output_o\ : std_logic;
SIGNAL \port_out_05[6]~output_o\ : std_logic;
SIGNAL \port_out_05[7]~output_o\ : std_logic;
SIGNAL \port_out_06[0]~output_o\ : std_logic;
SIGNAL \port_out_06[1]~output_o\ : std_logic;
SIGNAL \port_out_06[2]~output_o\ : std_logic;
SIGNAL \port_out_06[3]~output_o\ : std_logic;
SIGNAL \port_out_06[4]~output_o\ : std_logic;
SIGNAL \port_out_06[5]~output_o\ : std_logic;
SIGNAL \port_out_06[6]~output_o\ : std_logic;
SIGNAL \port_out_06[7]~output_o\ : std_logic;
SIGNAL \port_out_07[0]~output_o\ : std_logic;
SIGNAL \port_out_07[1]~output_o\ : std_logic;
SIGNAL \port_out_07[2]~output_o\ : std_logic;
SIGNAL \port_out_07[3]~output_o\ : std_logic;
SIGNAL \port_out_07[4]~output_o\ : std_logic;
SIGNAL \port_out_07[5]~output_o\ : std_logic;
SIGNAL \port_out_07[6]~output_o\ : std_logic;
SIGNAL \port_out_07[7]~output_o\ : std_logic;
SIGNAL \port_out_08[0]~output_o\ : std_logic;
SIGNAL \port_out_08[1]~output_o\ : std_logic;
SIGNAL \port_out_08[2]~output_o\ : std_logic;
SIGNAL \port_out_08[3]~output_o\ : std_logic;
SIGNAL \port_out_08[4]~output_o\ : std_logic;
SIGNAL \port_out_08[5]~output_o\ : std_logic;
SIGNAL \port_out_08[6]~output_o\ : std_logic;
SIGNAL \port_out_08[7]~output_o\ : std_logic;
SIGNAL \port_out_09[0]~output_o\ : std_logic;
SIGNAL \port_out_09[1]~output_o\ : std_logic;
SIGNAL \port_out_09[2]~output_o\ : std_logic;
SIGNAL \port_out_09[3]~output_o\ : std_logic;
SIGNAL \port_out_09[4]~output_o\ : std_logic;
SIGNAL \port_out_09[5]~output_o\ : std_logic;
SIGNAL \port_out_09[6]~output_o\ : std_logic;
SIGNAL \port_out_09[7]~output_o\ : std_logic;
SIGNAL \port_out_10[0]~output_o\ : std_logic;
SIGNAL \port_out_10[1]~output_o\ : std_logic;
SIGNAL \port_out_10[2]~output_o\ : std_logic;
SIGNAL \port_out_10[3]~output_o\ : std_logic;
SIGNAL \port_out_10[4]~output_o\ : std_logic;
SIGNAL \port_out_10[5]~output_o\ : std_logic;
SIGNAL \port_out_10[6]~output_o\ : std_logic;
SIGNAL \port_out_10[7]~output_o\ : std_logic;
SIGNAL \port_out_11[0]~output_o\ : std_logic;
SIGNAL \port_out_11[1]~output_o\ : std_logic;
SIGNAL \port_out_11[2]~output_o\ : std_logic;
SIGNAL \port_out_11[3]~output_o\ : std_logic;
SIGNAL \port_out_11[4]~output_o\ : std_logic;
SIGNAL \port_out_11[5]~output_o\ : std_logic;
SIGNAL \port_out_11[6]~output_o\ : std_logic;
SIGNAL \port_out_11[7]~output_o\ : std_logic;
SIGNAL \port_out_12[0]~output_o\ : std_logic;
SIGNAL \port_out_12[1]~output_o\ : std_logic;
SIGNAL \port_out_12[2]~output_o\ : std_logic;
SIGNAL \port_out_12[3]~output_o\ : std_logic;
SIGNAL \port_out_12[4]~output_o\ : std_logic;
SIGNAL \port_out_12[5]~output_o\ : std_logic;
SIGNAL \port_out_12[6]~output_o\ : std_logic;
SIGNAL \port_out_12[7]~output_o\ : std_logic;
SIGNAL \port_out_13[0]~output_o\ : std_logic;
SIGNAL \port_out_13[1]~output_o\ : std_logic;
SIGNAL \port_out_13[2]~output_o\ : std_logic;
SIGNAL \port_out_13[3]~output_o\ : std_logic;
SIGNAL \port_out_13[4]~output_o\ : std_logic;
SIGNAL \port_out_13[5]~output_o\ : std_logic;
SIGNAL \port_out_13[6]~output_o\ : std_logic;
SIGNAL \port_out_13[7]~output_o\ : std_logic;
SIGNAL \port_out_14[0]~output_o\ : std_logic;
SIGNAL \port_out_14[1]~output_o\ : std_logic;
SIGNAL \port_out_14[2]~output_o\ : std_logic;
SIGNAL \port_out_14[3]~output_o\ : std_logic;
SIGNAL \port_out_14[4]~output_o\ : std_logic;
SIGNAL \port_out_14[5]~output_o\ : std_logic;
SIGNAL \port_out_14[6]~output_o\ : std_logic;
SIGNAL \port_out_14[7]~output_o\ : std_logic;
SIGNAL \port_out_15[0]~output_o\ : std_logic;
SIGNAL \port_out_15[1]~output_o\ : std_logic;
SIGNAL \port_out_15[2]~output_o\ : std_logic;
SIGNAL \port_out_15[3]~output_o\ : std_logic;
SIGNAL \port_out_15[4]~output_o\ : std_logic;
SIGNAL \port_out_15[5]~output_o\ : std_logic;
SIGNAL \port_out_15[6]~output_o\ : std_logic;
SIGNAL \port_out_15[7]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \C1|C1|EDO.Decode~clkctrl_outclk\ : std_logic;
SIGNAL \C1|C2|CR|IR_reg[0]~feeder_combout\ : std_logic;
SIGNAL \C1|C2|C1|cuenta[0]~8_combout\ : std_logic;
SIGNAL \C1|C1|FUT.STOREA~0_combout\ : std_logic;
SIGNAL \C1|C1|EDO.STOREA~q\ : std_logic;
SIGNAL \C1|C1|EDO.STOREA2~q\ : std_logic;
SIGNAL \C1|C1|WideOr9~0_combout\ : std_logic;
SIGNAL \C1|C2|CR|B_reg[7]~feeder_combout\ : std_logic;
SIGNAL \C1|C2|C1|cuenta[4]~18\ : std_logic;
SIGNAL \C1|C2|C1|cuenta[5]~19_combout\ : std_logic;
SIGNAL \C1|C1|Selector10~2_combout\ : std_logic;
SIGNAL \C1|C1|FUT.JCC1_NZ~4_combout\ : std_logic;
SIGNAL \C1|C1|EDO.JCC1_NZ~q\ : std_logic;
SIGNAL \C1|C1|WideOr1~3_combout\ : std_logic;
SIGNAL \C1|C1|WideOr26~0_combout\ : std_logic;
SIGNAL \C1|C1|WideOr26~0clkctrl_outclk\ : std_logic;
SIGNAL \C1|C1|Equal23~0_combout\ : std_logic;
SIGNAL \C1|C1|Equal6~3_combout\ : std_logic;
SIGNAL \C1|C1|Equal24~0_combout\ : std_logic;
SIGNAL \C1|C1|FUT.NOT_B~0_combout\ : std_logic;
SIGNAL \C1|C1|EDO.NOT_B~q\ : std_logic;
SIGNAL \C1|C1|WideOr34~combout\ : std_logic;
SIGNAL \C1|C1|FUT.NOT_A~0_combout\ : std_logic;
SIGNAL \C1|C1|EDO.NOT_A~q\ : std_logic;
SIGNAL \C1|C1|ALU_Select~0_combout\ : std_logic;
SIGNAL \C1|C1|Equal17~0_combout\ : std_logic;
SIGNAL \C1|C1|FUT.OR_AB~0_combout\ : std_logic;
SIGNAL \C1|C1|EDO.OR_AB~q\ : std_logic;
SIGNAL \C1|C1|Equal8~0_combout\ : std_logic;
SIGNAL \C1|C1|Equal15~0_combout\ : std_logic;
SIGNAL \C1|C1|FUT.DEC_A~0_combout\ : std_logic;
SIGNAL \C1|C1|EDO.DEC_A~q\ : std_logic;
SIGNAL \C1|C1|FUT.INC_B~0_combout\ : std_logic;
SIGNAL \C1|C1|EDO.INC_B~q\ : std_logic;
SIGNAL \C1|C1|WideOr32~0_combout\ : std_logic;
SIGNAL \C1|C1|FUT.XOR_AB~0_combout\ : std_logic;
SIGNAL \C1|C1|EDO.XOR_AB~q\ : std_logic;
SIGNAL \C1|C1|WideOr30~0_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~12_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux8~0_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux6~0_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux7~0_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux8~3_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux8~2_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux8~5_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux8~4_combout\ : std_logic;
SIGNAL \C1|C2|Mux6~0_combout\ : std_logic;
SIGNAL \C1|C2|C2|TempResult~2_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~14_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~48_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~21_combout\ : std_logic;
SIGNAL \C1|C2|Mux7~2_combout\ : std_logic;
SIGNAL \C1|C2|Mux7~3_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~15_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~13_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~16_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~18_cout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~20\ : std_logic;
SIGNAL \C1|C2|C2|Add0~23_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux7~1_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux7~2_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux7~3_combout\ : std_logic;
SIGNAL \C1|C2|C2|TempResult~3_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~25_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~49_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~24\ : std_logic;
SIGNAL \C1|C2|C2|Add0~26_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux6~1_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux6~2_combout\ : std_logic;
SIGNAL \C1|C2|C2|Equal0~0_combout\ : std_logic;
SIGNAL \C1|C2|Mux7~4_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux8~1_combout\ : std_logic;
SIGNAL \C1|C2|C2|TempResult~9_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~19_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux8~6_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux8~7_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux8~8_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux4~0_combout\ : std_logic;
SIGNAL \C1|C2|C2|TempResult~5_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~51_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~31_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~50_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~28_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~27\ : std_logic;
SIGNAL \C1|C2|C2|Add0~30\ : std_logic;
SIGNAL \C1|C2|C2|Add0~32_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux4~1_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux4~2_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux4~3_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux3~0_combout\ : std_logic;
SIGNAL \C1|C2|Mux2~0_combout\ : std_logic;
SIGNAL \C1|C2|C2|TempResult~6_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~52_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~34_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~33\ : std_logic;
SIGNAL \C1|C2|C2|Add0~35_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux3~1_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux3~2_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux3~3_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux1~0_combout\ : std_logic;
SIGNAL \C1|C2|C2|TempResult~8_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~22_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~42_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~43_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~40_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~41_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~37_combout\ : std_logic;
SIGNAL \C1|C2|Mux1~0_combout\ : std_logic;
SIGNAL \C1|C2|Mux1~1_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~53_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~36\ : std_logic;
SIGNAL \C1|C2|C2|Add0~39\ : std_logic;
SIGNAL \C1|C2|C2|Add0~44_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux1~1_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux1~2_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux1~3_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux2~0_combout\ : std_logic;
SIGNAL \C1|C2|C2|TempResult~7_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~38_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux2~1_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux2~2_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux2~3_combout\ : std_logic;
SIGNAL \C1|C2|C2|Equal0~1_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux5~0_combout\ : std_logic;
SIGNAL \C1|C2|C2|TempResult~4_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~29_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux5~1_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux5~2_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux5~3_combout\ : std_logic;
SIGNAL \C1|C2|C2|Equal0~2_combout\ : std_logic;
SIGNAL \C1|C1|CCR_Load~combout\ : std_logic;
SIGNAL \C1|C1|P2~10_combout\ : std_logic;
SIGNAL \C1|C1|FUT.JCC1_C~0_combout\ : std_logic;
SIGNAL \C1|C1|EDO.JCC1_C~q\ : std_logic;
SIGNAL \C1|C1|P2~9_combout\ : std_logic;
SIGNAL \C1|C1|FUT.JCC1_NC~0_combout\ : std_logic;
SIGNAL \C1|C1|EDO.JCC1_NC~q\ : std_logic;
SIGNAL \C1|C1|Equal13~0_combout\ : std_logic;
SIGNAL \C1|C1|FUT.JCC1_NN~0_combout\ : std_logic;
SIGNAL \C1|C1|EDO.JCC1_NN~q\ : std_logic;
SIGNAL \C1|C2|C2|Mux0~0_combout\ : std_logic;
SIGNAL \C1|C2|C2|Add0~45\ : std_logic;
SIGNAL \C1|C2|C2|Add0~46_combout\ : std_logic;
SIGNAL \C1|C2|C2|Mux0~1_combout\ : std_logic;
SIGNAL \C1|C1|Equal9~2_combout\ : std_logic;
SIGNAL \C1|C1|FUT.JCC1_V~0_combout\ : std_logic;
SIGNAL \C1|C1|EDO.JCC1_V~q\ : std_logic;
SIGNAL \C1|C1|P2~7_combout\ : std_logic;
SIGNAL \C1|C1|FUT.JCC1_N~0_combout\ : std_logic;
SIGNAL \C1|C1|EDO.JCC1_N~q\ : std_logic;
SIGNAL \C1|C1|P2~8_combout\ : std_logic;
SIGNAL \C1|C1|FUT.JCC1_NV~0_combout\ : std_logic;
SIGNAL \C1|C1|EDO.JCC1_NV~q\ : std_logic;
SIGNAL \C1|C1|WideOr3~0_combout\ : std_logic;
SIGNAL \C1|C1|WideOr3~1_combout\ : std_logic;
SIGNAL \C1|C1|EDO.JCC2~q\ : std_logic;
SIGNAL \C1|C1|EDO.JCC3~q\ : std_logic;
SIGNAL \C1|C1|Equal6~4_combout\ : std_logic;
SIGNAL \C1|C1|FUT.JMP1~4_combout\ : std_logic;
SIGNAL \C1|C1|EDO.JMP1~q\ : std_logic;
SIGNAL \C1|C1|EDO.JMP2~q\ : std_logic;
SIGNAL \C1|C1|EDO.JMP3~q\ : std_logic;
SIGNAL \C1|C1|PC_Load~0_combout\ : std_logic;
SIGNAL \C1|C1|PC_Load~combout\ : std_logic;
SIGNAL \C1|C2|C1|cuenta[0]~10_combout\ : std_logic;
SIGNAL \C1|C2|C1|cuenta[5]~20\ : std_logic;
SIGNAL \C1|C2|C1|cuenta[6]~21_combout\ : std_logic;
SIGNAL \C1|C2|C1|cuenta[6]~22\ : std_logic;
SIGNAL \C1|C2|C1|cuenta[7]~23_combout\ : std_logic;
SIGNAL \C1|C2|Mux0~0_combout\ : std_logic;
SIGNAL \C1|C2|Mux0~1_combout\ : std_logic;
SIGNAL \C1|C1|EDO.STOREA3~q\ : std_logic;
SIGNAL \C1|C1|WideOr6~0_combout\ : std_logic;
SIGNAL \C1|C1|WideOr6~1_combout\ : std_logic;
SIGNAL \C1|C1|WideOr6~2_combout\ : std_logic;
SIGNAL \C1|C1|MAR_Load~combout\ : std_logic;
SIGNAL \C1|C2|Mux14~3_combout\ : std_logic;
SIGNAL \C1|C2|Mux14~17_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~16feeder_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~16_q\ : std_logic;
SIGNAL \C1|C1|wr~1_combout\ : std_logic;
SIGNAL \C1|C1|FUT.STOREA4~0_combout\ : std_logic;
SIGNAL \C1|C1|EDO.STOREA4~q\ : std_logic;
SIGNAL \C1|C1|wr~0_combout\ : std_logic;
SIGNAL \C1|C1|wr~combout\ : std_logic;
SIGNAL \C2|datamm|RAM~46_combout\ : std_logic;
SIGNAL \C1|C2|CR|MAR_reg[3]~feeder_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~47_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~48_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~24_q\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \C2|datamm|RAM~44_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~27_combout\ : std_logic;
SIGNAL \C2|datamm|RAM_rtl_0_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~29_combout\ : std_logic;
SIGNAL \C2|datamm|RAM_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~28_combout\ : std_logic;
SIGNAL \C2|datamm|RAM_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~26_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~30_combout\ : std_logic;
SIGNAL \C2|datamm|RAM_rtl_0_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \C2|datamm|RAM_rtl_0_bypass[29]~feeder_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~45_combout\ : std_logic;
SIGNAL \port_in_05[7]~input_o\ : std_logic;
SIGNAL \port_in_07[7]~input_o\ : std_logic;
SIGNAL \port_in_03[7]~input_o\ : std_logic;
SIGNAL \port_in_01[7]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux8~0_combout\ : std_logic;
SIGNAL \C1|C2|Mux8~1_combout\ : std_logic;
SIGNAL \port_in_15[7]~input_o\ : std_logic;
SIGNAL \port_in_13[7]~input_o\ : std_logic;
SIGNAL \port_in_09[7]~input_o\ : std_logic;
SIGNAL \port_in_11[7]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux8~7_combout\ : std_logic;
SIGNAL \C1|C2|Mux8~8_combout\ : std_logic;
SIGNAL \port_in_10[7]~input_o\ : std_logic;
SIGNAL \port_in_14[7]~input_o\ : std_logic;
SIGNAL \port_in_08[7]~input_o\ : std_logic;
SIGNAL \port_in_12[7]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux8~2_combout\ : std_logic;
SIGNAL \C1|C2|Mux8~3_combout\ : std_logic;
SIGNAL \port_in_02[7]~input_o\ : std_logic;
SIGNAL \port_in_06[7]~input_o\ : std_logic;
SIGNAL \port_in_04[7]~input_o\ : std_logic;
SIGNAL \port_in_00[7]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux8~4_combout\ : std_logic;
SIGNAL \C1|C2|Mux8~5_combout\ : std_logic;
SIGNAL \C1|C2|Mux8~6_combout\ : std_logic;
SIGNAL \C1|C2|Mux8~9_combout\ : std_logic;
SIGNAL \C1|C2|Mux14~2_combout\ : std_logic;
SIGNAL \C1|C2|Mux8~10_combout\ : std_logic;
SIGNAL \C2|progmem|ROM_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \C1|C2|Mux8~11_combout\ : std_logic;
SIGNAL \C1|C2|Mux8~12_combout\ : std_logic;
SIGNAL \C1|C2|Mux8~13_combout\ : std_logic;
SIGNAL \C1|C1|Equal6~0_combout\ : std_logic;
SIGNAL \C1|C1|Equal6~1_combout\ : std_logic;
SIGNAL \C1|C1|Equal6~2_combout\ : std_logic;
SIGNAL \C1|C1|FUT.JCC4~0_combout\ : std_logic;
SIGNAL \C1|C1|FUT.JCC4~1_combout\ : std_logic;
SIGNAL \C1|C1|FUT.JCC4~2_combout\ : std_logic;
SIGNAL \C1|C1|FUT.JCC4~3_combout\ : std_logic;
SIGNAL \C1|C1|FUT.JCC4~4_combout\ : std_logic;
SIGNAL \C1|C1|EDO.JCC4~q\ : std_logic;
SIGNAL \C1|C1|WideOr9~combout\ : std_logic;
SIGNAL \C1|C1|PC_Inc~combout\ : std_logic;
SIGNAL \C1|C2|C1|prev_increment~q\ : std_logic;
SIGNAL \C1|C2|C1|process_0~0_combout\ : std_logic;
SIGNAL \C1|C2|C1|cuenta[0]~9\ : std_logic;
SIGNAL \C1|C2|C1|cuenta[1]~11_combout\ : std_logic;
SIGNAL \C1|C2|C1|cuenta[1]~12\ : std_logic;
SIGNAL \C1|C2|C1|cuenta[2]~13_combout\ : std_logic;
SIGNAL \C1|C2|C1|cuenta[2]~14\ : std_logic;
SIGNAL \C1|C2|C1|cuenta[3]~15_combout\ : std_logic;
SIGNAL \C1|C2|C1|cuenta[3]~16\ : std_logic;
SIGNAL \C1|C2|C1|cuenta[4]~17_combout\ : std_logic;
SIGNAL \C1|C2|Mux3~0_combout\ : std_logic;
SIGNAL \C1|C2|Mux3~1_combout\ : std_logic;
SIGNAL \port_in_13[4]~input_o\ : std_logic;
SIGNAL \port_in_12[4]~input_o\ : std_logic;
SIGNAL \port_in_05[4]~input_o\ : std_logic;
SIGNAL \port_in_04[4]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux11~0_combout\ : std_logic;
SIGNAL \C1|C2|Mux11~1_combout\ : std_logic;
SIGNAL \port_in_14[4]~input_o\ : std_logic;
SIGNAL \port_in_07[4]~input_o\ : std_logic;
SIGNAL \port_in_06[4]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux11~7_combout\ : std_logic;
SIGNAL \port_in_15[4]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux11~8_combout\ : std_logic;
SIGNAL \port_in_10[4]~input_o\ : std_logic;
SIGNAL \port_in_03[4]~input_o\ : std_logic;
SIGNAL \port_in_02[4]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux11~2_combout\ : std_logic;
SIGNAL \port_in_11[4]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux11~3_combout\ : std_logic;
SIGNAL \port_in_08[4]~input_o\ : std_logic;
SIGNAL \port_in_09[4]~input_o\ : std_logic;
SIGNAL \port_in_01[4]~input_o\ : std_logic;
SIGNAL \port_in_00[4]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux11~4_combout\ : std_logic;
SIGNAL \C1|C2|Mux11~5_combout\ : std_logic;
SIGNAL \C1|C2|Mux11~6_combout\ : std_logic;
SIGNAL \C1|C2|Mux11~9_combout\ : std_logic;
SIGNAL \C2|datamm|RAM_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \C2|datamm|RAM_rtl_0_bypass[23]~feeder_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~21_q\ : std_logic;
SIGNAL \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \C2|datamm|RAM~38_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~39_combout\ : std_logic;
SIGNAL \C2|progmem|ROM_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \C1|C2|Mux11~10_combout\ : std_logic;
SIGNAL \C1|C2|Mux11~11_combout\ : std_logic;
SIGNAL \C1|C2|Mux11~12_combout\ : std_logic;
SIGNAL \C1|C1|P2~2_combout\ : std_logic;
SIGNAL \C1|C1|P2~3_combout\ : std_logic;
SIGNAL \C1|C1|FUT.Load_inmA3~0_combout\ : std_logic;
SIGNAL \C1|C1|EDO.Load_inmA3~q\ : std_logic;
SIGNAL \C1|C1|WideOr11~combout\ : std_logic;
SIGNAL \C1|C1|A_Load~combout\ : std_logic;
SIGNAL \C1|C2|Mux4~0_combout\ : std_logic;
SIGNAL \C1|C2|Mux4~1_combout\ : std_logic;
SIGNAL \port_in_15[3]~input_o\ : std_logic;
SIGNAL \port_in_13[3]~input_o\ : std_logic;
SIGNAL \port_in_11[3]~input_o\ : std_logic;
SIGNAL \port_in_09[3]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux12~7_combout\ : std_logic;
SIGNAL \C1|C2|Mux12~8_combout\ : std_logic;
SIGNAL \port_in_06[3]~input_o\ : std_logic;
SIGNAL \port_in_02[3]~input_o\ : std_logic;
SIGNAL \port_in_04[3]~input_o\ : std_logic;
SIGNAL \port_in_00[3]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux12~4_combout\ : std_logic;
SIGNAL \C1|C2|Mux12~5_combout\ : std_logic;
SIGNAL \port_in_03[3]~input_o\ : std_logic;
SIGNAL \port_in_07[3]~input_o\ : std_logic;
SIGNAL \port_in_01[3]~input_o\ : std_logic;
SIGNAL \port_in_05[3]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux12~2_combout\ : std_logic;
SIGNAL \C1|C2|Mux12~3_combout\ : std_logic;
SIGNAL \C1|C2|Mux12~6_combout\ : std_logic;
SIGNAL \port_in_14[3]~input_o\ : std_logic;
SIGNAL \port_in_10[3]~input_o\ : std_logic;
SIGNAL \port_in_12[3]~input_o\ : std_logic;
SIGNAL \port_in_08[3]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux12~0_combout\ : std_logic;
SIGNAL \C1|C2|Mux12~1_combout\ : std_logic;
SIGNAL \C1|C2|Mux12~9_combout\ : std_logic;
SIGNAL \C2|datamm|RAM_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~20feeder_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~20_q\ : std_logic;
SIGNAL \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \C2|datamm|RAM~36_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~37_combout\ : std_logic;
SIGNAL \C2|progmem|ROM_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \C1|C2|Mux12~10_combout\ : std_logic;
SIGNAL \C1|C2|Mux12~11_combout\ : std_logic;
SIGNAL \C1|C2|Mux12~12_combout\ : std_logic;
SIGNAL \C1|C1|P2~4_combout\ : std_logic;
SIGNAL \C1|C1|FUT.STOREB~0_combout\ : std_logic;
SIGNAL \C1|C1|EDO.STOREB~q\ : std_logic;
SIGNAL \C1|C1|WideOr23~1_combout\ : std_logic;
SIGNAL \C1|C1|WideOr23~0_combout\ : std_logic;
SIGNAL \C1|C1|WideOr23~2_combout\ : std_logic;
SIGNAL \C1|C2|Mux5~0_combout\ : std_logic;
SIGNAL \C1|C2|Mux5~1_combout\ : std_logic;
SIGNAL \C2|datamm|RAM_rtl_0_bypass[19]~0_combout\ : std_logic;
SIGNAL \C2|datamm|RAM_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~49_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~19_q\ : std_logic;
SIGNAL \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \C2|datamm|RAM~34_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~35_combout\ : std_logic;
SIGNAL \port_in_15[2]~input_o\ : std_logic;
SIGNAL \port_in_11[2]~input_o\ : std_logic;
SIGNAL \port_in_14[2]~input_o\ : std_logic;
SIGNAL \port_in_10[2]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux13~7_combout\ : std_logic;
SIGNAL \C1|C2|Mux13~8_combout\ : std_logic;
SIGNAL \port_in_13[2]~input_o\ : std_logic;
SIGNAL \port_in_12[2]~input_o\ : std_logic;
SIGNAL \port_in_08[2]~input_o\ : std_logic;
SIGNAL \port_in_09[2]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux13~0_combout\ : std_logic;
SIGNAL \C1|C2|Mux13~1_combout\ : std_logic;
SIGNAL \port_in_04[2]~input_o\ : std_logic;
SIGNAL \port_in_05[2]~input_o\ : std_logic;
SIGNAL \port_in_00[2]~input_o\ : std_logic;
SIGNAL \port_in_01[2]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux13~4_combout\ : std_logic;
SIGNAL \C1|C2|Mux13~5_combout\ : std_logic;
SIGNAL \port_in_07[2]~input_o\ : std_logic;
SIGNAL \port_in_03[2]~input_o\ : std_logic;
SIGNAL \port_in_02[2]~input_o\ : std_logic;
SIGNAL \port_in_06[2]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux13~2_combout\ : std_logic;
SIGNAL \C1|C2|Mux13~3_combout\ : std_logic;
SIGNAL \C1|C2|Mux13~6_combout\ : std_logic;
SIGNAL \C1|C2|Mux13~9_combout\ : std_logic;
SIGNAL \C2|progmem|ROM_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \C1|C2|C2|Mux6~3_combout\ : std_logic;
SIGNAL \C1|C2|Mux13~10_combout\ : std_logic;
SIGNAL \C1|C2|Mux13~11_combout\ : std_logic;
SIGNAL \C1|C2|Mux13~12_combout\ : std_logic;
SIGNAL \C1|C2|CR|IR_reg[2]~feeder_combout\ : std_logic;
SIGNAL \C1|C1|Equal11~0_combout\ : std_logic;
SIGNAL \C1|C1|FUT.INC_A~0_combout\ : std_logic;
SIGNAL \C1|C1|EDO.INC_A~q\ : std_logic;
SIGNAL \C1|C1|FUT.SUB_AB~0_combout\ : std_logic;
SIGNAL \C1|C1|EDO.SUB_AB~q\ : std_logic;
SIGNAL \C1|C1|WideOr34~0_combout\ : std_logic;
SIGNAL \C1|C1|WideOr1~4_combout\ : std_logic;
SIGNAL \C1|C1|WideOr1~combout\ : std_logic;
SIGNAL \C1|C1|EDO.IDLE~q\ : std_logic;
SIGNAL \C1|C1|EDO.Fetch1~0_combout\ : std_logic;
SIGNAL \C1|C1|EDO.Fetch1~q\ : std_logic;
SIGNAL \C1|C1|EDO.Fetch2~q\ : std_logic;
SIGNAL \C1|C1|IR_Load~combout\ : std_logic;
SIGNAL \C1|C1|Equal7~0_combout\ : std_logic;
SIGNAL \C1|C1|Equal7~1_combout\ : std_logic;
SIGNAL \C1|C1|FUT.DEC_B~2_combout\ : std_logic;
SIGNAL \C1|C1|EDO.DEC_B~q\ : std_logic;
SIGNAL \C1|C1|WideOr13~5_combout\ : std_logic;
SIGNAL \C1|C1|WideOr21~0_combout\ : std_logic;
SIGNAL \C1|C1|WideOr17~0_combout\ : std_logic;
SIGNAL \C1|C1|WideOr17~1_combout\ : std_logic;
SIGNAL \C1|C1|WideOr21~combout\ : std_logic;
SIGNAL \C1|C2|Mux2~1_combout\ : std_logic;
SIGNAL \C2|datamm|RAM_rtl_0_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \C2|datamm|RAM_rtl_0_bypass[25]~feeder_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~22feeder_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~22_q\ : std_logic;
SIGNAL \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \C2|datamm|RAM~40_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~41_combout\ : std_logic;
SIGNAL \port_in_15[5]~input_o\ : std_logic;
SIGNAL \port_in_11[5]~input_o\ : std_logic;
SIGNAL \port_in_13[5]~input_o\ : std_logic;
SIGNAL \port_in_09[5]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux10~7_combout\ : std_logic;
SIGNAL \C1|C2|Mux10~8_combout\ : std_logic;
SIGNAL \port_in_14[5]~input_o\ : std_logic;
SIGNAL \port_in_12[5]~input_o\ : std_logic;
SIGNAL \port_in_08[5]~input_o\ : std_logic;
SIGNAL \port_in_10[5]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux10~0_combout\ : std_logic;
SIGNAL \C1|C2|Mux10~1_combout\ : std_logic;
SIGNAL \port_in_03[5]~input_o\ : std_logic;
SIGNAL \port_in_07[5]~input_o\ : std_logic;
SIGNAL \port_in_01[5]~input_o\ : std_logic;
SIGNAL \port_in_05[5]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux10~2_combout\ : std_logic;
SIGNAL \C1|C2|Mux10~3_combout\ : std_logic;
SIGNAL \port_in_02[5]~input_o\ : std_logic;
SIGNAL \port_in_06[5]~input_o\ : std_logic;
SIGNAL \port_in_04[5]~input_o\ : std_logic;
SIGNAL \port_in_00[5]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux10~4_combout\ : std_logic;
SIGNAL \C1|C2|Mux10~5_combout\ : std_logic;
SIGNAL \C1|C2|Mux10~6_combout\ : std_logic;
SIGNAL \C1|C2|Mux10~9_combout\ : std_logic;
SIGNAL \C2|progmem|ROM_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \C1|C2|Mux10~10_combout\ : std_logic;
SIGNAL \C1|C2|Mux10~11_combout\ : std_logic;
SIGNAL \C1|C2|Mux10~12_combout\ : std_logic;
SIGNAL \C1|C1|P2~11_combout\ : std_logic;
SIGNAL \C1|C1|FUT.Load_DIR_A~0_combout\ : std_logic;
SIGNAL \C1|C1|EDO.Load_DIR_A~q\ : std_logic;
SIGNAL \C1|C1|EDO.Load_DIR_A2~q\ : std_logic;
SIGNAL \C1|C1|EDO.Load_DIR_A3~q\ : std_logic;
SIGNAL \C1|C1|EDO.Load_DIR_A4~q\ : std_logic;
SIGNAL \C1|C1|FUT.Load_DIR_A5~0_combout\ : std_logic;
SIGNAL \C1|C1|EDO.Load_DIR_A5~q\ : std_logic;
SIGNAL \C1|C1|FUT.Load_DIR_B~0_combout\ : std_logic;
SIGNAL \C1|C1|EDO.Load_DIR_B~q\ : std_logic;
SIGNAL \C1|C1|WideOr13~4_combout\ : std_logic;
SIGNAL \C1|C1|WideOr19~0_combout\ : std_logic;
SIGNAL \C1|C1|WideOr17~combout\ : std_logic;
SIGNAL \port_in_15[6]~input_o\ : std_logic;
SIGNAL \port_in_14[6]~input_o\ : std_logic;
SIGNAL \port_in_06[6]~input_o\ : std_logic;
SIGNAL \port_in_07[6]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux9~7_combout\ : std_logic;
SIGNAL \C1|C2|Mux9~8_combout\ : std_logic;
SIGNAL \port_in_12[6]~input_o\ : std_logic;
SIGNAL \port_in_13[6]~input_o\ : std_logic;
SIGNAL \port_in_05[6]~input_o\ : std_logic;
SIGNAL \port_in_04[6]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux9~0_combout\ : std_logic;
SIGNAL \C1|C2|Mux9~1_combout\ : std_logic;
SIGNAL \port_in_10[6]~input_o\ : std_logic;
SIGNAL \port_in_11[6]~input_o\ : std_logic;
SIGNAL \port_in_03[6]~input_o\ : std_logic;
SIGNAL \port_in_02[6]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux9~2_combout\ : std_logic;
SIGNAL \C1|C2|Mux9~3_combout\ : std_logic;
SIGNAL \port_in_08[6]~input_o\ : std_logic;
SIGNAL \port_in_09[6]~input_o\ : std_logic;
SIGNAL \port_in_01[6]~input_o\ : std_logic;
SIGNAL \port_in_00[6]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux9~4_combout\ : std_logic;
SIGNAL \C1|C2|Mux9~5_combout\ : std_logic;
SIGNAL \C1|C2|Mux9~6_combout\ : std_logic;
SIGNAL \C1|C2|Mux9~9_combout\ : std_logic;
SIGNAL \C2|progmem|ROM_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \C1|C2|Mux9~10_combout\ : std_logic;
SIGNAL \C2|datamm|RAM_rtl_0_bypass[27]~1_combout\ : std_logic;
SIGNAL \C2|datamm|RAM_rtl_0_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~50_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~23_q\ : std_logic;
SIGNAL \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \C2|datamm|RAM~42_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~43_combout\ : std_logic;
SIGNAL \C1|C2|Mux9~11_combout\ : std_logic;
SIGNAL \C1|C2|Mux9~12_combout\ : std_logic;
SIGNAL \C1|C1|P2~5_combout\ : std_logic;
SIGNAL \C1|C1|P2~6_combout\ : std_logic;
SIGNAL \C1|C1|Selector10~3_combout\ : std_logic;
SIGNAL \C1|C1|Selector10~5_combout\ : std_logic;
SIGNAL \C1|C1|Selector10~4_combout\ : std_logic;
SIGNAL \C1|C1|EDO.Decode~q\ : std_logic;
SIGNAL \C1|C1|FUT.Load_inmA1~0_combout\ : std_logic;
SIGNAL \C1|C1|EDO.Load_inmA1~q\ : std_logic;
SIGNAL \C1|C1|EDO.Load_inmA2~q\ : std_logic;
SIGNAL \C1|C1|FUT.Load_inmB~0_combout\ : std_logic;
SIGNAL \C1|C1|EDO.Load_inmB~q\ : std_logic;
SIGNAL \C1|C1|WideOr13~combout\ : std_logic;
SIGNAL \C1|C1|B_Load~combout\ : std_logic;
SIGNAL \C1|C2|Mux6~1_combout\ : std_logic;
SIGNAL \C2|datamm|RAM_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~18_q\ : std_logic;
SIGNAL \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \C2|datamm|RAM~32_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~33_combout\ : std_logic;
SIGNAL \port_in_15[1]~input_o\ : std_logic;
SIGNAL \port_in_12[1]~input_o\ : std_logic;
SIGNAL \port_in_14[1]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux14~11_combout\ : std_logic;
SIGNAL \port_in_13[1]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux14~12_combout\ : std_logic;
SIGNAL \port_in_01[1]~input_o\ : std_logic;
SIGNAL \port_in_03[1]~input_o\ : std_logic;
SIGNAL \port_in_00[1]~input_o\ : std_logic;
SIGNAL \port_in_02[1]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux14~8_combout\ : std_logic;
SIGNAL \C1|C2|Mux14~9_combout\ : std_logic;
SIGNAL \port_in_06[1]~input_o\ : std_logic;
SIGNAL \port_in_04[1]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux14~6_combout\ : std_logic;
SIGNAL \port_in_07[1]~input_o\ : std_logic;
SIGNAL \port_in_05[1]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux14~7_combout\ : std_logic;
SIGNAL \C1|C2|Mux14~10_combout\ : std_logic;
SIGNAL \port_in_11[1]~input_o\ : std_logic;
SIGNAL \port_in_09[1]~input_o\ : std_logic;
SIGNAL \port_in_08[1]~input_o\ : std_logic;
SIGNAL \port_in_10[1]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux14~4_combout\ : std_logic;
SIGNAL \C1|C2|Mux14~5_combout\ : std_logic;
SIGNAL \C1|C2|Mux14~13_combout\ : std_logic;
SIGNAL \C2|progmem|ROM_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \C1|C2|Mux14~14_combout\ : std_logic;
SIGNAL \C1|C2|Mux14~15_combout\ : std_logic;
SIGNAL \C1|C2|Mux14~16_combout\ : std_logic;
SIGNAL \C1|C2|CR|IR_reg[1]~feeder_combout\ : std_logic;
SIGNAL \C1|C1|FUT.AND_AB~0_combout\ : std_logic;
SIGNAL \C1|C1|EDO.AND_AB~q\ : std_logic;
SIGNAL \C1|C1|FUT.ADD_AB~0_combout\ : std_logic;
SIGNAL \C1|C1|FUT.ADD_AB~1_combout\ : std_logic;
SIGNAL \C1|C1|EDO.ADD_AB~q\ : std_logic;
SIGNAL \C1|C1|WideOr1~2_combout\ : std_logic;
SIGNAL \C1|C1|WideOr19~1_combout\ : std_logic;
SIGNAL \C1|C1|WideOr19~2_combout\ : std_logic;
SIGNAL \C1|C1|WideOr19~combout\ : std_logic;
SIGNAL \C2|datamm|RAM_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~17_q\ : std_logic;
SIGNAL \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \C2|datamm|RAM~25_combout\ : std_logic;
SIGNAL \C2|datamm|RAM~31_combout\ : std_logic;
SIGNAL \port_in_07[0]~input_o\ : std_logic;
SIGNAL \port_in_05[0]~input_o\ : std_logic;
SIGNAL \port_in_03[0]~input_o\ : std_logic;
SIGNAL \port_in_01[0]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux15~0_combout\ : std_logic;
SIGNAL \C1|C2|Mux15~1_combout\ : std_logic;
SIGNAL \port_in_13[0]~input_o\ : std_logic;
SIGNAL \port_in_11[0]~input_o\ : std_logic;
SIGNAL \port_in_09[0]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux15~7_combout\ : std_logic;
SIGNAL \port_in_15[0]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux15~8_combout\ : std_logic;
SIGNAL \port_in_10[0]~input_o\ : std_logic;
SIGNAL \port_in_14[0]~input_o\ : std_logic;
SIGNAL \port_in_12[0]~input_o\ : std_logic;
SIGNAL \port_in_08[0]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux15~2_combout\ : std_logic;
SIGNAL \C1|C2|Mux15~3_combout\ : std_logic;
SIGNAL \port_in_06[0]~input_o\ : std_logic;
SIGNAL \port_in_02[0]~input_o\ : std_logic;
SIGNAL \port_in_04[0]~input_o\ : std_logic;
SIGNAL \port_in_00[0]~input_o\ : std_logic;
SIGNAL \C1|C2|Mux15~4_combout\ : std_logic;
SIGNAL \C1|C2|Mux15~5_combout\ : std_logic;
SIGNAL \C1|C2|Mux15~6_combout\ : std_logic;
SIGNAL \C1|C2|Mux15~9_combout\ : std_logic;
SIGNAL \C2|progmem|ROM_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \C1|C2|Mux15~10_combout\ : std_logic;
SIGNAL \C1|C2|Mux15~11_combout\ : std_logic;
SIGNAL \C1|C2|Mux15~12_combout\ : std_logic;
SIGNAL \C2|ports|RAM~25_combout\ : std_logic;
SIGNAL \C2|ports|RAM[0][0]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|Decoder0~0_combout\ : std_logic;
SIGNAL \C2|ports|RAM[0][6]~2_combout\ : std_logic;
SIGNAL \C2|ports|RAM[0][0]~q\ : std_logic;
SIGNAL \C2|ports|RAM~3_combout\ : std_logic;
SIGNAL \C2|ports|RAM[0][1]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[0][1]~q\ : std_logic;
SIGNAL \C2|ports|RAM~4_combout\ : std_logic;
SIGNAL \C2|ports|RAM[0][2]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[0][2]~q\ : std_logic;
SIGNAL \C2|ports|RAM~5_combout\ : std_logic;
SIGNAL \C2|ports|RAM[0][3]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[0][3]~q\ : std_logic;
SIGNAL \C2|ports|RAM~6_combout\ : std_logic;
SIGNAL \C2|ports|RAM[0][4]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[0][4]~q\ : std_logic;
SIGNAL \C2|ports|RAM~7_combout\ : std_logic;
SIGNAL \C2|ports|RAM[0][5]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[0][5]~q\ : std_logic;
SIGNAL \C2|ports|RAM~8_combout\ : std_logic;
SIGNAL \C2|ports|RAM[0][6]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[0][6]~q\ : std_logic;
SIGNAL \C2|ports|RAM~9_combout\ : std_logic;
SIGNAL \C2|ports|RAM[0][7]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[0][7]~q\ : std_logic;
SIGNAL \C2|ports|Decoder0~1_combout\ : std_logic;
SIGNAL \C2|ports|RAM[1][4]~10_combout\ : std_logic;
SIGNAL \C2|ports|RAM[1][0]~q\ : std_logic;
SIGNAL \C2|ports|RAM[1][1]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[1][1]~q\ : std_logic;
SIGNAL \C2|ports|RAM[1][2]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[1][2]~q\ : std_logic;
SIGNAL \C2|ports|RAM[1][3]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[1][3]~q\ : std_logic;
SIGNAL \C2|ports|RAM[1][4]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[1][4]~q\ : std_logic;
SIGNAL \C2|ports|RAM[1][5]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[1][5]~q\ : std_logic;
SIGNAL \C2|ports|RAM[1][6]~q\ : std_logic;
SIGNAL \C2|ports|RAM[1][7]~q\ : std_logic;
SIGNAL \C2|ports|RAM[2][0]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|Decoder0~2_combout\ : std_logic;
SIGNAL \C2|ports|RAM[2][2]~11_combout\ : std_logic;
SIGNAL \C2|ports|RAM[2][0]~q\ : std_logic;
SIGNAL \C2|ports|RAM[2][1]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[2][1]~q\ : std_logic;
SIGNAL \C2|ports|RAM[2][2]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[2][2]~q\ : std_logic;
SIGNAL \C2|ports|RAM[2][3]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[2][3]~q\ : std_logic;
SIGNAL \C2|ports|RAM[2][4]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[2][4]~q\ : std_logic;
SIGNAL \C2|ports|RAM[2][5]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[2][5]~q\ : std_logic;
SIGNAL \C2|ports|RAM[2][6]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[2][6]~q\ : std_logic;
SIGNAL \C2|ports|RAM[2][7]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[2][7]~q\ : std_logic;
SIGNAL \C2|ports|RAM[3][0]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|Decoder0~3_combout\ : std_logic;
SIGNAL \C2|ports|RAM[3][2]~12_combout\ : std_logic;
SIGNAL \C2|ports|RAM[3][0]~q\ : std_logic;
SIGNAL \C2|ports|RAM[3][1]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[3][1]~q\ : std_logic;
SIGNAL \C2|ports|RAM[3][2]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[3][2]~q\ : std_logic;
SIGNAL \C2|ports|RAM[3][3]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[3][3]~q\ : std_logic;
SIGNAL \C2|ports|RAM[3][4]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[3][4]~q\ : std_logic;
SIGNAL \C2|ports|RAM[3][5]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[3][5]~q\ : std_logic;
SIGNAL \C2|ports|RAM[3][6]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[3][6]~q\ : std_logic;
SIGNAL \C2|ports|RAM[3][7]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[3][7]~q\ : std_logic;
SIGNAL \C2|ports|RAM[4][0]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|Decoder0~4_combout\ : std_logic;
SIGNAL \C2|ports|RAM[4][4]~13_combout\ : std_logic;
SIGNAL \C2|ports|RAM[4][0]~q\ : std_logic;
SIGNAL \C2|ports|RAM[4][1]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[4][1]~q\ : std_logic;
SIGNAL \C2|ports|RAM[4][2]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[4][2]~q\ : std_logic;
SIGNAL \C2|ports|RAM[4][3]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[4][3]~q\ : std_logic;
SIGNAL \C2|ports|RAM[4][4]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[4][4]~q\ : std_logic;
SIGNAL \C2|ports|RAM[4][5]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[4][5]~q\ : std_logic;
SIGNAL \C2|ports|RAM[4][6]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[4][6]~q\ : std_logic;
SIGNAL \C2|ports|RAM[4][7]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[4][7]~q\ : std_logic;
SIGNAL \C2|ports|RAM[5][0]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|Decoder0~5_combout\ : std_logic;
SIGNAL \C2|ports|RAM[5][1]~14_combout\ : std_logic;
SIGNAL \C2|ports|RAM[5][0]~q\ : std_logic;
SIGNAL \C2|ports|RAM[5][1]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[5][1]~q\ : std_logic;
SIGNAL \C2|ports|RAM[5][2]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[5][2]~q\ : std_logic;
SIGNAL \C2|ports|RAM[5][3]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[5][3]~q\ : std_logic;
SIGNAL \C2|ports|RAM[5][4]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[5][4]~q\ : std_logic;
SIGNAL \C2|ports|RAM[5][5]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[5][5]~q\ : std_logic;
SIGNAL \C2|ports|RAM[5][6]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[5][6]~q\ : std_logic;
SIGNAL \C2|ports|RAM[5][7]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[5][7]~q\ : std_logic;
SIGNAL \C2|ports|RAM[6][0]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|Decoder0~6_combout\ : std_logic;
SIGNAL \C2|ports|RAM[6][7]~15_combout\ : std_logic;
SIGNAL \C2|ports|RAM[6][0]~q\ : std_logic;
SIGNAL \C2|ports|RAM[6][1]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[6][1]~q\ : std_logic;
SIGNAL \C2|ports|RAM[6][2]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[6][2]~q\ : std_logic;
SIGNAL \C2|ports|RAM[6][3]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[6][3]~q\ : std_logic;
SIGNAL \C2|ports|RAM[6][4]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[6][4]~q\ : std_logic;
SIGNAL \C2|ports|RAM[6][5]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[6][5]~q\ : std_logic;
SIGNAL \C2|ports|RAM[6][6]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[6][6]~q\ : std_logic;
SIGNAL \C2|ports|RAM[6][7]~q\ : std_logic;
SIGNAL \C2|ports|RAM[7][0]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|Decoder0~7_combout\ : std_logic;
SIGNAL \C2|ports|RAM[7][4]~16_combout\ : std_logic;
SIGNAL \C2|ports|RAM[7][0]~q\ : std_logic;
SIGNAL \C2|ports|RAM[7][1]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[7][1]~q\ : std_logic;
SIGNAL \C2|ports|RAM[7][2]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[7][2]~q\ : std_logic;
SIGNAL \C2|ports|RAM[7][3]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[7][3]~q\ : std_logic;
SIGNAL \C2|ports|RAM[7][4]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[7][4]~q\ : std_logic;
SIGNAL \C2|ports|RAM[7][5]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[7][5]~q\ : std_logic;
SIGNAL \C2|ports|RAM[7][6]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[7][6]~q\ : std_logic;
SIGNAL \C2|ports|RAM[7][7]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[7][7]~q\ : std_logic;
SIGNAL \C2|ports|RAM[8][0]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[8][2]~17_combout\ : std_logic;
SIGNAL \C2|ports|RAM[8][0]~q\ : std_logic;
SIGNAL \C2|ports|RAM[8][1]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[8][1]~q\ : std_logic;
SIGNAL \C2|ports|RAM[8][2]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[8][2]~q\ : std_logic;
SIGNAL \C2|ports|RAM[8][3]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[8][3]~q\ : std_logic;
SIGNAL \C2|ports|RAM[8][4]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[8][4]~q\ : std_logic;
SIGNAL \C2|ports|RAM[8][5]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[8][5]~q\ : std_logic;
SIGNAL \C2|ports|RAM[8][6]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[8][6]~q\ : std_logic;
SIGNAL \C2|ports|RAM[8][7]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[8][7]~q\ : std_logic;
SIGNAL \C2|ports|RAM[9][0]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[9][7]~18_combout\ : std_logic;
SIGNAL \C2|ports|RAM[9][0]~q\ : std_logic;
SIGNAL \C2|ports|RAM[9][1]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[9][1]~q\ : std_logic;
SIGNAL \C2|ports|RAM[9][2]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[9][2]~q\ : std_logic;
SIGNAL \C2|ports|RAM[9][3]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[9][3]~q\ : std_logic;
SIGNAL \C2|ports|RAM[9][4]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[9][4]~q\ : std_logic;
SIGNAL \C2|ports|RAM[9][5]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[9][5]~q\ : std_logic;
SIGNAL \C2|ports|RAM[9][6]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[9][6]~q\ : std_logic;
SIGNAL \C2|ports|RAM[9][7]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[9][7]~q\ : std_logic;
SIGNAL \C2|ports|RAM[10][0]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[10][0]~19_combout\ : std_logic;
SIGNAL \C2|ports|RAM[10][0]~q\ : std_logic;
SIGNAL \C2|ports|RAM[10][1]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[10][1]~q\ : std_logic;
SIGNAL \C2|ports|RAM[10][2]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[10][2]~q\ : std_logic;
SIGNAL \C2|ports|RAM[10][3]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[10][3]~q\ : std_logic;
SIGNAL \C2|ports|RAM[10][4]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[10][4]~q\ : std_logic;
SIGNAL \C2|ports|RAM[10][5]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[10][5]~q\ : std_logic;
SIGNAL \C2|ports|RAM[10][6]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[10][6]~q\ : std_logic;
SIGNAL \C2|ports|RAM[10][7]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[10][7]~q\ : std_logic;
SIGNAL \C2|ports|RAM[11][0]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[11][4]~20_combout\ : std_logic;
SIGNAL \C2|ports|RAM[11][0]~q\ : std_logic;
SIGNAL \C2|ports|RAM[11][1]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[11][1]~q\ : std_logic;
SIGNAL \C2|ports|RAM[11][2]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[11][2]~q\ : std_logic;
SIGNAL \C2|ports|RAM[11][3]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[11][3]~q\ : std_logic;
SIGNAL \C2|ports|RAM[11][4]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[11][4]~q\ : std_logic;
SIGNAL \C2|ports|RAM[11][5]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[11][5]~q\ : std_logic;
SIGNAL \C2|ports|RAM[11][6]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[11][6]~q\ : std_logic;
SIGNAL \C2|ports|RAM[11][7]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[11][7]~q\ : std_logic;
SIGNAL \C2|ports|RAM[12][0]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[12][4]~21_combout\ : std_logic;
SIGNAL \C2|ports|RAM[12][0]~q\ : std_logic;
SIGNAL \C2|ports|RAM[12][1]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[12][1]~q\ : std_logic;
SIGNAL \C2|ports|RAM[12][2]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[12][2]~q\ : std_logic;
SIGNAL \C2|ports|RAM[12][3]~q\ : std_logic;
SIGNAL \C2|ports|RAM[12][4]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[12][4]~q\ : std_logic;
SIGNAL \C2|ports|RAM[12][5]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[12][5]~q\ : std_logic;
SIGNAL \C2|ports|RAM[12][6]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[12][6]~q\ : std_logic;
SIGNAL \C2|ports|RAM[12][7]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[12][7]~q\ : std_logic;
SIGNAL \C2|ports|RAM[13][0]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[13][5]~22_combout\ : std_logic;
SIGNAL \C2|ports|RAM[13][0]~q\ : std_logic;
SIGNAL \C2|ports|RAM[13][1]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[13][1]~q\ : std_logic;
SIGNAL \C2|ports|RAM[13][2]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[13][2]~q\ : std_logic;
SIGNAL \C2|ports|RAM[13][3]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[13][3]~q\ : std_logic;
SIGNAL \C2|ports|RAM[13][4]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[13][4]~q\ : std_logic;
SIGNAL \C2|ports|RAM[13][5]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[13][5]~q\ : std_logic;
SIGNAL \C2|ports|RAM[13][6]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[13][6]~q\ : std_logic;
SIGNAL \C2|ports|RAM[13][7]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[13][7]~q\ : std_logic;
SIGNAL \C2|ports|RAM[14][0]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[14][0]~23_combout\ : std_logic;
SIGNAL \C2|ports|RAM[14][0]~q\ : std_logic;
SIGNAL \C2|ports|RAM[14][1]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[14][1]~q\ : std_logic;
SIGNAL \C2|ports|RAM[14][2]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[14][2]~q\ : std_logic;
SIGNAL \C2|ports|RAM[14][3]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[14][3]~q\ : std_logic;
SIGNAL \C2|ports|RAM[14][4]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[14][4]~q\ : std_logic;
SIGNAL \C2|ports|RAM[14][5]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[14][5]~q\ : std_logic;
SIGNAL \C2|ports|RAM[14][6]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[14][6]~q\ : std_logic;
SIGNAL \C2|ports|RAM[14][7]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[14][7]~q\ : std_logic;
SIGNAL \C2|ports|RAM[15][0]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[15][0]~24_combout\ : std_logic;
SIGNAL \C2|ports|RAM[15][0]~q\ : std_logic;
SIGNAL \C2|ports|RAM[15][1]~q\ : std_logic;
SIGNAL \C2|ports|RAM[15][2]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[15][2]~q\ : std_logic;
SIGNAL \C2|ports|RAM[15][3]~feeder_combout\ : std_logic;
SIGNAL \C2|ports|RAM[15][3]~q\ : std_logic;
SIGNAL \C2|ports|RAM[15][4]~q\ : std_logic;
SIGNAL \C2|ports|RAM[15][5]~q\ : std_logic;
SIGNAL \C2|ports|RAM[15][6]~q\ : std_logic;
SIGNAL \C2|ports|RAM[15][7]~q\ : std_logic;
SIGNAL \C1|C2|CR|MAR_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C1|C2|C1|cuenta\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C1|C2|CR|B_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C1|C1|Bus1_Sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C1|C2|CR|A_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C2|datamm|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C1|C2|CR|IR_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C1|C2|CR|CCR_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C2|datamm|RAM_rtl_0_bypass\ : std_logic_vector(0 TO 30);
SIGNAL \C1|C1|Bus2_Sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C1|C1|ALU_Select\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_RST~input_o\ : std_logic;
SIGNAL \C1|C1|ALT_INV_MAR_Load~combout\ : std_logic;
SIGNAL \C1|C1|ALT_INV_wr~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
ww_port_in_00 <= port_in_00;
ww_port_in_01 <= port_in_01;
ww_port_in_02 <= port_in_02;
ww_port_in_03 <= port_in_03;
ww_port_in_04 <= port_in_04;
ww_port_in_05 <= port_in_05;
ww_port_in_06 <= port_in_06;
ww_port_in_07 <= port_in_07;
ww_port_in_08 <= port_in_08;
ww_port_in_09 <= port_in_09;
ww_port_in_10 <= port_in_10;
ww_port_in_11 <= port_in_11;
ww_port_in_12 <= port_in_12;
ww_port_in_13 <= port_in_13;
ww_port_in_14 <= port_in_14;
ww_port_in_15 <= port_in_15;
port_out_00 <= ww_port_out_00;
port_out_01 <= ww_port_out_01;
port_out_02 <= ww_port_out_02;
port_out_03 <= ww_port_out_03;
port_out_04 <= ww_port_out_04;
port_out_05 <= ww_port_out_05;
port_out_06 <= ww_port_out_06;
port_out_07 <= ww_port_out_07;
port_out_08 <= ww_port_out_08;
port_out_09 <= ww_port_out_09;
port_out_10 <= ww_port_out_10;
port_out_11 <= ww_port_out_11;
port_out_12 <= ww_port_out_12;
port_out_13 <= ww_port_out_13;
port_out_14 <= ww_port_out_14;
port_out_15 <= ww_port_out_15;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\C2|progmem|ROM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\C1|C2|CR|MAR_reg\(6) & \C1|C2|CR|MAR_reg\(5) & \C1|C2|CR|MAR_reg\(4) & \C1|C2|CR|MAR_reg\(3) & \C1|C2|CR|MAR_reg\(2) & \C1|C2|CR|MAR_reg\(1) & \C1|C2|CR|MAR_reg\(0));

\C2|progmem|ROM_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \C2|progmem|ROM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\C2|progmem|ROM_rtl_0|auto_generated|ram_block1a1\ <= \C2|progmem|ROM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\C2|progmem|ROM_rtl_0|auto_generated|ram_block1a2\ <= \C2|progmem|ROM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\C2|progmem|ROM_rtl_0|auto_generated|ram_block1a3\ <= \C2|progmem|ROM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\C2|progmem|ROM_rtl_0|auto_generated|ram_block1a4\ <= \C2|progmem|ROM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\C2|progmem|ROM_rtl_0|auto_generated|ram_block1a5\ <= \C2|progmem|ROM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\C2|progmem|ROM_rtl_0|auto_generated|ram_block1a6\ <= \C2|progmem|ROM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\C2|progmem|ROM_rtl_0|auto_generated|ram_block1a7\ <= \C2|progmem|ROM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\C2|datamm|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\C1|C2|Mux0~1_combout\ & \C1|C2|Mux1~1_combout\ & \C1|C2|Mux2~1_combout\ & \C1|C2|Mux3~1_combout\ & \C1|C2|Mux4~1_combout\ & \C1|C2|Mux5~1_combout\ & \C1|C2|Mux6~1_combout\ & \C1|C2|Mux7~4_combout\);

\C2|datamm|RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\C1|C2|CR|MAR_reg\(6) & \C1|C2|CR|MAR_reg\(5) & \C1|C2|CR|MAR_reg\(4) & \C1|C2|CR|MAR_reg\(3) & \C1|C2|CR|MAR_reg\(2) & \C1|C2|CR|MAR_reg\(1) & \C1|C2|CR|MAR_reg\(0));

\C2|datamm|RAM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\C1|C2|Mux9~12_combout\ & \C1|C2|Mux10~12_combout\ & \C1|C2|Mux11~12_combout\ & \C1|C2|Mux12~12_combout\ & \C1|C2|Mux13~12_combout\ & \C1|C2|Mux14~16_combout\ & \C1|C2|Mux15~12_combout\);

\C2|datamm|RAM_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\C2|datamm|RAM_rtl_0|auto_generated|ram_block1a1\ <= \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\C2|datamm|RAM_rtl_0|auto_generated|ram_block1a2\ <= \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\C2|datamm|RAM_rtl_0|auto_generated|ram_block1a3\ <= \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\C2|datamm|RAM_rtl_0|auto_generated|ram_block1a4\ <= \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\C2|datamm|RAM_rtl_0|auto_generated|ram_block1a5\ <= \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\C2|datamm|RAM_rtl_0|auto_generated|ram_block1a6\ <= \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\C2|datamm|RAM_rtl_0|auto_generated|ram_block1a7\ <= \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\C1|C1|WideOr26~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \C1|C1|WideOr26~0_combout\);

\C1|C1|EDO.Decode~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \C1|C1|EDO.Decode~q\);

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;
\ALT_INV_RST~input_o\ <= NOT \RST~input_o\;
\C1|C1|ALT_INV_MAR_Load~combout\ <= NOT \C1|C1|MAR_Load~combout\;
\C1|C1|ALT_INV_wr~combout\ <= NOT \C1|C1|wr~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y22_N9
\port_out_00[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[0][0]~q\,
	devoe => ww_devoe,
	o => \port_out_00[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N9
\port_out_00[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[0][1]~q\,
	devoe => ww_devoe,
	o => \port_out_00[1]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\port_out_00[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[0][2]~q\,
	devoe => ww_devoe,
	o => \port_out_00[2]~output_o\);

-- Location: IOOBUF_X41_Y14_N9
\port_out_00[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[0][3]~q\,
	devoe => ww_devoe,
	o => \port_out_00[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\port_out_00[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[0][4]~q\,
	devoe => ww_devoe,
	o => \port_out_00[4]~output_o\);

-- Location: IOOBUF_X19_Y29_N30
\port_out_00[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[0][5]~q\,
	devoe => ww_devoe,
	o => \port_out_00[5]~output_o\);

-- Location: IOOBUF_X9_Y29_N2
\port_out_00[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[0][6]~q\,
	devoe => ww_devoe,
	o => \port_out_00[6]~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\port_out_00[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[0][7]~q\,
	devoe => ww_devoe,
	o => \port_out_00[7]~output_o\);

-- Location: IOOBUF_X11_Y29_N16
\port_out_01[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[1][0]~q\,
	devoe => ww_devoe,
	o => \port_out_01[0]~output_o\);

-- Location: IOOBUF_X1_Y29_N30
\port_out_01[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[1][1]~q\,
	devoe => ww_devoe,
	o => \port_out_01[1]~output_o\);

-- Location: IOOBUF_X5_Y29_N2
\port_out_01[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[1][2]~q\,
	devoe => ww_devoe,
	o => \port_out_01[2]~output_o\);

-- Location: IOOBUF_X1_Y29_N2
\port_out_01[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[1][3]~q\,
	devoe => ww_devoe,
	o => \port_out_01[3]~output_o\);

-- Location: IOOBUF_X7_Y29_N16
\port_out_01[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[1][4]~q\,
	devoe => ww_devoe,
	o => \port_out_01[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\port_out_01[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[1][5]~q\,
	devoe => ww_devoe,
	o => \port_out_01[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\port_out_01[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[1][6]~q\,
	devoe => ww_devoe,
	o => \port_out_01[6]~output_o\);

-- Location: IOOBUF_X5_Y29_N9
\port_out_01[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[1][7]~q\,
	devoe => ww_devoe,
	o => \port_out_01[7]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\port_out_02[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[2][0]~q\,
	devoe => ww_devoe,
	o => \port_out_02[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\port_out_02[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[2][1]~q\,
	devoe => ww_devoe,
	o => \port_out_02[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\port_out_02[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[2][2]~q\,
	devoe => ww_devoe,
	o => \port_out_02[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\port_out_02[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[2][3]~q\,
	devoe => ww_devoe,
	o => \port_out_02[3]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\port_out_02[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[2][4]~q\,
	devoe => ww_devoe,
	o => \port_out_02[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\port_out_02[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[2][5]~q\,
	devoe => ww_devoe,
	o => \port_out_02[5]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\port_out_02[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[2][6]~q\,
	devoe => ww_devoe,
	o => \port_out_02[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\port_out_02[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[2][7]~q\,
	devoe => ww_devoe,
	o => \port_out_02[7]~output_o\);

-- Location: IOOBUF_X3_Y29_N2
\port_out_03[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[3][0]~q\,
	devoe => ww_devoe,
	o => \port_out_03[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\port_out_03[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[3][1]~q\,
	devoe => ww_devoe,
	o => \port_out_03[1]~output_o\);

-- Location: IOOBUF_X0_Y2_N2
\port_out_03[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[3][2]~q\,
	devoe => ww_devoe,
	o => \port_out_03[2]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\port_out_03[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[3][3]~q\,
	devoe => ww_devoe,
	o => \port_out_03[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\port_out_03[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[3][4]~q\,
	devoe => ww_devoe,
	o => \port_out_03[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\port_out_03[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[3][5]~q\,
	devoe => ww_devoe,
	o => \port_out_03[5]~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\port_out_03[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[3][6]~q\,
	devoe => ww_devoe,
	o => \port_out_03[6]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\port_out_03[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[3][7]~q\,
	devoe => ww_devoe,
	o => \port_out_03[7]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\port_out_04[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[4][0]~q\,
	devoe => ww_devoe,
	o => \port_out_04[0]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\port_out_04[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[4][1]~q\,
	devoe => ww_devoe,
	o => \port_out_04[1]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\port_out_04[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[4][2]~q\,
	devoe => ww_devoe,
	o => \port_out_04[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N2
\port_out_04[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[4][3]~q\,
	devoe => ww_devoe,
	o => \port_out_04[3]~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\port_out_04[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[4][4]~q\,
	devoe => ww_devoe,
	o => \port_out_04[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\port_out_04[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[4][5]~q\,
	devoe => ww_devoe,
	o => \port_out_04[5]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\port_out_04[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[4][6]~q\,
	devoe => ww_devoe,
	o => \port_out_04[6]~output_o\);

-- Location: IOOBUF_X1_Y29_N23
\port_out_04[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[4][7]~q\,
	devoe => ww_devoe,
	o => \port_out_04[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\port_out_05[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[5][0]~q\,
	devoe => ww_devoe,
	o => \port_out_05[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\port_out_05[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[5][1]~q\,
	devoe => ww_devoe,
	o => \port_out_05[1]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\port_out_05[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[5][2]~q\,
	devoe => ww_devoe,
	o => \port_out_05[2]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\port_out_05[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[5][3]~q\,
	devoe => ww_devoe,
	o => \port_out_05[3]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\port_out_05[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[5][4]~q\,
	devoe => ww_devoe,
	o => \port_out_05[4]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\port_out_05[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[5][5]~q\,
	devoe => ww_devoe,
	o => \port_out_05[5]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\port_out_05[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[5][6]~q\,
	devoe => ww_devoe,
	o => \port_out_05[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\port_out_05[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[5][7]~q\,
	devoe => ww_devoe,
	o => \port_out_05[7]~output_o\);

-- Location: IOOBUF_X41_Y12_N23
\port_out_06[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[6][0]~q\,
	devoe => ww_devoe,
	o => \port_out_06[0]~output_o\);

-- Location: IOOBUF_X9_Y29_N16
\port_out_06[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[6][1]~q\,
	devoe => ww_devoe,
	o => \port_out_06[1]~output_o\);

-- Location: IOOBUF_X7_Y29_N23
\port_out_06[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[6][2]~q\,
	devoe => ww_devoe,
	o => \port_out_06[2]~output_o\);

-- Location: IOOBUF_X5_Y29_N16
\port_out_06[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[6][3]~q\,
	devoe => ww_devoe,
	o => \port_out_06[3]~output_o\);

-- Location: IOOBUF_X41_Y13_N9
\port_out_06[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[6][4]~q\,
	devoe => ww_devoe,
	o => \port_out_06[4]~output_o\);

-- Location: IOOBUF_X11_Y29_N9
\port_out_06[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[6][5]~q\,
	devoe => ww_devoe,
	o => \port_out_06[5]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\port_out_06[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[6][6]~q\,
	devoe => ww_devoe,
	o => \port_out_06[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\port_out_06[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[6][7]~q\,
	devoe => ww_devoe,
	o => \port_out_06[7]~output_o\);

-- Location: IOOBUF_X5_Y29_N23
\port_out_07[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[7][0]~q\,
	devoe => ww_devoe,
	o => \port_out_07[0]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\port_out_07[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[7][1]~q\,
	devoe => ww_devoe,
	o => \port_out_07[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\port_out_07[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[7][2]~q\,
	devoe => ww_devoe,
	o => \port_out_07[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\port_out_07[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[7][3]~q\,
	devoe => ww_devoe,
	o => \port_out_07[3]~output_o\);

-- Location: IOOBUF_X3_Y29_N23
\port_out_07[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[7][4]~q\,
	devoe => ww_devoe,
	o => \port_out_07[4]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\port_out_07[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[7][5]~q\,
	devoe => ww_devoe,
	o => \port_out_07[5]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\port_out_07[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[7][6]~q\,
	devoe => ww_devoe,
	o => \port_out_07[6]~output_o\);

-- Location: IOOBUF_X1_Y29_N9
\port_out_07[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[7][7]~q\,
	devoe => ww_devoe,
	o => \port_out_07[7]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\port_out_08[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[8][0]~q\,
	devoe => ww_devoe,
	o => \port_out_08[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\port_out_08[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[8][1]~q\,
	devoe => ww_devoe,
	o => \port_out_08[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\port_out_08[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[8][2]~q\,
	devoe => ww_devoe,
	o => \port_out_08[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\port_out_08[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[8][3]~q\,
	devoe => ww_devoe,
	o => \port_out_08[3]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\port_out_08[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[8][4]~q\,
	devoe => ww_devoe,
	o => \port_out_08[4]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\port_out_08[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[8][5]~q\,
	devoe => ww_devoe,
	o => \port_out_08[5]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\port_out_08[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[8][6]~q\,
	devoe => ww_devoe,
	o => \port_out_08[6]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\port_out_08[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[8][7]~q\,
	devoe => ww_devoe,
	o => \port_out_08[7]~output_o\);

-- Location: IOOBUF_X9_Y29_N23
\port_out_09[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[9][0]~q\,
	devoe => ww_devoe,
	o => \port_out_09[0]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\port_out_09[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[9][1]~q\,
	devoe => ww_devoe,
	o => \port_out_09[1]~output_o\);

-- Location: IOOBUF_X1_Y29_N16
\port_out_09[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[9][2]~q\,
	devoe => ww_devoe,
	o => \port_out_09[2]~output_o\);

-- Location: IOOBUF_X41_Y13_N2
\port_out_09[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[9][3]~q\,
	devoe => ww_devoe,
	o => \port_out_09[3]~output_o\);

-- Location: IOOBUF_X7_Y29_N9
\port_out_09[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[9][4]~q\,
	devoe => ww_devoe,
	o => \port_out_09[4]~output_o\);

-- Location: IOOBUF_X7_Y29_N2
\port_out_09[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[9][5]~q\,
	devoe => ww_devoe,
	o => \port_out_09[5]~output_o\);

-- Location: IOOBUF_X9_Y29_N30
\port_out_09[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[9][6]~q\,
	devoe => ww_devoe,
	o => \port_out_09[6]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\port_out_09[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[9][7]~q\,
	devoe => ww_devoe,
	o => \port_out_09[7]~output_o\);

-- Location: IOOBUF_X14_Y29_N16
\port_out_10[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[10][0]~q\,
	devoe => ww_devoe,
	o => \port_out_10[0]~output_o\);

-- Location: IOOBUF_X9_Y29_N9
\port_out_10[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[10][1]~q\,
	devoe => ww_devoe,
	o => \port_out_10[1]~output_o\);

-- Location: IOOBUF_X41_Y17_N2
\port_out_10[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[10][2]~q\,
	devoe => ww_devoe,
	o => \port_out_10[2]~output_o\);

-- Location: IOOBUF_X14_Y29_N30
\port_out_10[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[10][3]~q\,
	devoe => ww_devoe,
	o => \port_out_10[3]~output_o\);

-- Location: IOOBUF_X41_Y17_N9
\port_out_10[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[10][4]~q\,
	devoe => ww_devoe,
	o => \port_out_10[4]~output_o\);

-- Location: IOOBUF_X14_Y29_N23
\port_out_10[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[10][5]~q\,
	devoe => ww_devoe,
	o => \port_out_10[5]~output_o\);

-- Location: IOOBUF_X41_Y13_N23
\port_out_10[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[10][6]~q\,
	devoe => ww_devoe,
	o => \port_out_10[6]~output_o\);

-- Location: IOOBUF_X14_Y29_N9
\port_out_10[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[10][7]~q\,
	devoe => ww_devoe,
	o => \port_out_10[7]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\port_out_11[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[11][0]~q\,
	devoe => ww_devoe,
	o => \port_out_11[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\port_out_11[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[11][1]~q\,
	devoe => ww_devoe,
	o => \port_out_11[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\port_out_11[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[11][2]~q\,
	devoe => ww_devoe,
	o => \port_out_11[2]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\port_out_11[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[11][3]~q\,
	devoe => ww_devoe,
	o => \port_out_11[3]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\port_out_11[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[11][4]~q\,
	devoe => ww_devoe,
	o => \port_out_11[4]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\port_out_11[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[11][5]~q\,
	devoe => ww_devoe,
	o => \port_out_11[5]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\port_out_11[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[11][6]~q\,
	devoe => ww_devoe,
	o => \port_out_11[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\port_out_11[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[11][7]~q\,
	devoe => ww_devoe,
	o => \port_out_11[7]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\port_out_12[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[12][0]~q\,
	devoe => ww_devoe,
	o => \port_out_12[0]~output_o\);

-- Location: IOOBUF_X41_Y10_N16
\port_out_12[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[12][1]~q\,
	devoe => ww_devoe,
	o => \port_out_12[1]~output_o\);

-- Location: IOOBUF_X41_Y14_N16
\port_out_12[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[12][2]~q\,
	devoe => ww_devoe,
	o => \port_out_12[2]~output_o\);

-- Location: IOOBUF_X41_Y10_N2
\port_out_12[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[12][3]~q\,
	devoe => ww_devoe,
	o => \port_out_12[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\port_out_12[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[12][4]~q\,
	devoe => ww_devoe,
	o => \port_out_12[4]~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\port_out_12[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[12][5]~q\,
	devoe => ww_devoe,
	o => \port_out_12[5]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\port_out_12[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[12][6]~q\,
	devoe => ww_devoe,
	o => \port_out_12[6]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\port_out_12[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[12][7]~q\,
	devoe => ww_devoe,
	o => \port_out_12[7]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\port_out_13[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[13][0]~q\,
	devoe => ww_devoe,
	o => \port_out_13[0]~output_o\);

-- Location: IOOBUF_X7_Y29_N30
\port_out_13[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[13][1]~q\,
	devoe => ww_devoe,
	o => \port_out_13[1]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\port_out_13[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[13][2]~q\,
	devoe => ww_devoe,
	o => \port_out_13[2]~output_o\);

-- Location: IOOBUF_X3_Y29_N9
\port_out_13[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[13][3]~q\,
	devoe => ww_devoe,
	o => \port_out_13[3]~output_o\);

-- Location: IOOBUF_X3_Y29_N30
\port_out_13[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[13][4]~q\,
	devoe => ww_devoe,
	o => \port_out_13[4]~output_o\);

-- Location: IOOBUF_X5_Y29_N30
\port_out_13[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[13][5]~q\,
	devoe => ww_devoe,
	o => \port_out_13[5]~output_o\);

-- Location: IOOBUF_X3_Y29_N16
\port_out_13[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[13][6]~q\,
	devoe => ww_devoe,
	o => \port_out_13[6]~output_o\);

-- Location: IOOBUF_X41_Y13_N16
\port_out_13[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[13][7]~q\,
	devoe => ww_devoe,
	o => \port_out_13[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\port_out_14[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[14][0]~q\,
	devoe => ww_devoe,
	o => \port_out_14[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\port_out_14[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[14][1]~q\,
	devoe => ww_devoe,
	o => \port_out_14[1]~output_o\);

-- Location: IOOBUF_X0_Y25_N2
\port_out_14[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[14][2]~q\,
	devoe => ww_devoe,
	o => \port_out_14[2]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\port_out_14[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[14][3]~q\,
	devoe => ww_devoe,
	o => \port_out_14[3]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\port_out_14[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[14][4]~q\,
	devoe => ww_devoe,
	o => \port_out_14[4]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\port_out_14[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[14][5]~q\,
	devoe => ww_devoe,
	o => \port_out_14[5]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\port_out_14[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[14][6]~q\,
	devoe => ww_devoe,
	o => \port_out_14[6]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\port_out_14[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[14][7]~q\,
	devoe => ww_devoe,
	o => \port_out_14[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\port_out_15[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[15][0]~q\,
	devoe => ww_devoe,
	o => \port_out_15[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\port_out_15[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[15][1]~q\,
	devoe => ww_devoe,
	o => \port_out_15[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\port_out_15[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[15][2]~q\,
	devoe => ww_devoe,
	o => \port_out_15[2]~output_o\);

-- Location: IOOBUF_X11_Y29_N2
\port_out_15[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[15][3]~q\,
	devoe => ww_devoe,
	o => \port_out_15[3]~output_o\);

-- Location: IOOBUF_X41_Y11_N2
\port_out_15[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[15][4]~q\,
	devoe => ww_devoe,
	o => \port_out_15[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\port_out_15[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[15][5]~q\,
	devoe => ww_devoe,
	o => \port_out_15[5]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\port_out_15[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[15][6]~q\,
	devoe => ww_devoe,
	o => \port_out_15[6]~output_o\);

-- Location: IOOBUF_X14_Y29_N2
\port_out_15[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|ports|RAM[15][7]~q\,
	devoe => ww_devoe,
	o => \port_out_15[7]~output_o\);

-- Location: IOIBUF_X0_Y14_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y14_N15
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G1
\RST~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: FF_X10_Y9_N29
\C1|C2|CR|B_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux10~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \C1|C1|B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|B_reg\(5));

-- Location: CLKCTRL_G4
\C1|C1|EDO.Decode~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C1|C1|EDO.Decode~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C1|C1|EDO.Decode~clkctrl_outclk\);

-- Location: LCCOMB_X8_Y8_N12
\C1|C2|CR|IR_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|CR|IR_reg[0]~feeder_combout\ = \C1|C2|Mux15~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|C2|Mux15~12_combout\,
	combout => \C1|C2|CR|IR_reg[0]~feeder_combout\);

-- Location: FF_X10_Y8_N23
\C1|C2|CR|B_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux13~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \C1|C1|B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|B_reg\(2));

-- Location: FF_X10_Y8_N1
\C1|C2|CR|B_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux12~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \C1|C1|B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|B_reg\(3));

-- Location: FF_X10_Y9_N3
\C1|C2|CR|B_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux11~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \C1|C1|B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|B_reg\(4));

-- Location: FF_X9_Y8_N23
\C1|C2|CR|A_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux11~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \C1|C1|A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|A_reg\(4));

-- Location: LCCOMB_X11_Y8_N14
\C1|C2|C1|cuenta[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C1|cuenta[0]~8_combout\ = \C1|C2|C1|cuenta\(0) $ (VCC)
-- \C1|C2|C1|cuenta[0]~9\ = CARRY(\C1|C2|C1|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C2|C1|cuenta\(0),
	datad => VCC,
	combout => \C1|C2|C1|cuenta[0]~8_combout\,
	cout => \C1|C2|C1|cuenta[0]~9\);

-- Location: LCCOMB_X7_Y10_N18
\C1|C1|FUT.STOREA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.STOREA~0_combout\ = (!\C1|C1|P2~11_combout\ & (\C1|C1|P2~4_combout\ & (\C1|C1|EDO.Decode~q\ & !\C1|C1|P2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|P2~11_combout\,
	datab => \C1|C1|P2~4_combout\,
	datac => \C1|C1|EDO.Decode~q\,
	datad => \C1|C1|P2~3_combout\,
	combout => \C1|C1|FUT.STOREA~0_combout\);

-- Location: FF_X7_Y10_N19
\C1|C1|EDO.STOREA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C1|FUT.STOREA~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.STOREA~q\);

-- Location: FF_X7_Y8_N27
\C1|C1|EDO.STOREA2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C1|EDO.STOREA~q\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.STOREA2~q\);

-- Location: LCCOMB_X7_Y8_N16
\C1|C1|WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr9~0_combout\ = (!\C1|C1|EDO.Load_DIR_A2~q\ & (!\C1|C1|EDO.STOREA2~q\ & (!\C1|C1|EDO.Load_inmA2~q\ & !\C1|C1|EDO.Fetch1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EDO.Load_DIR_A2~q\,
	datab => \C1|C1|EDO.STOREA2~q\,
	datac => \C1|C1|EDO.Load_inmA2~q\,
	datad => \C1|C1|EDO.Fetch1~q\,
	combout => \C1|C1|WideOr9~0_combout\);

-- Location: LCCOMB_X12_Y9_N12
\C1|C2|CR|B_reg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|CR|B_reg[7]~feeder_combout\ = \C1|C2|Mux8~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|C2|Mux8~13_combout\,
	combout => \C1|C2|CR|B_reg[7]~feeder_combout\);

-- Location: FF_X12_Y9_N13
\C1|C2|CR|B_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C2|CR|B_reg[7]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \C1|C1|B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|B_reg\(7));

-- Location: FF_X10_Y8_N13
\C1|C2|CR|A_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux8~13_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \C1|C1|A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|A_reg\(7));

-- Location: LCCOMB_X11_Y8_N22
\C1|C2|C1|cuenta[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C1|cuenta[4]~17_combout\ = (\C1|C2|C1|cuenta\(4) & (\C1|C2|C1|cuenta[3]~16\ $ (GND))) # (!\C1|C2|C1|cuenta\(4) & (!\C1|C2|C1|cuenta[3]~16\ & VCC))
-- \C1|C2|C1|cuenta[4]~18\ = CARRY((\C1|C2|C1|cuenta\(4) & !\C1|C2|C1|cuenta[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C2|C1|cuenta\(4),
	datad => VCC,
	cin => \C1|C2|C1|cuenta[3]~16\,
	combout => \C1|C2|C1|cuenta[4]~17_combout\,
	cout => \C1|C2|C1|cuenta[4]~18\);

-- Location: LCCOMB_X11_Y8_N24
\C1|C2|C1|cuenta[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C1|cuenta[5]~19_combout\ = (\C1|C2|C1|cuenta\(5) & (!\C1|C2|C1|cuenta[4]~18\)) # (!\C1|C2|C1|cuenta\(5) & ((\C1|C2|C1|cuenta[4]~18\) # (GND)))
-- \C1|C2|C1|cuenta[5]~20\ = CARRY((!\C1|C2|C1|cuenta[4]~18\) # (!\C1|C2|C1|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C2|C1|cuenta\(5),
	datad => VCC,
	cin => \C1|C2|C1|cuenta[4]~18\,
	combout => \C1|C2|C1|cuenta[5]~19_combout\,
	cout => \C1|C2|C1|cuenta[5]~20\);

-- Location: LCCOMB_X7_Y9_N20
\C1|C1|Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|Selector10~2_combout\ = (!\C1|C1|P2~3_combout\ & (!\C1|C1|P2~11_combout\ & (\C1|C1|EDO.Decode~q\ & !\C1|C1|P2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|P2~3_combout\,
	datab => \C1|C1|P2~11_combout\,
	datac => \C1|C1|EDO.Decode~q\,
	datad => \C1|C1|P2~4_combout\,
	combout => \C1|C1|Selector10~2_combout\);

-- Location: LCCOMB_X8_Y10_N12
\C1|C1|FUT.JCC1_NZ~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.JCC1_NZ~4_combout\ = (!\C1|C2|CR|IR_reg\(0) & (\C1|C1|Equal11~0_combout\ & (\C1|C1|Selector10~2_combout\ & \C1|C1|Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|IR_reg\(0),
	datab => \C1|C1|Equal11~0_combout\,
	datac => \C1|C1|Selector10~2_combout\,
	datad => \C1|C1|Equal6~1_combout\,
	combout => \C1|C1|FUT.JCC1_NZ~4_combout\);

-- Location: FF_X8_Y10_N13
\C1|C1|EDO.JCC1_NZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C1|FUT.JCC1_NZ~4_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.JCC1_NZ~q\);

-- Location: LCCOMB_X6_Y9_N18
\C1|C1|WideOr1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr1~3_combout\ = (\C1|C1|WideOr34~0_combout\ & (\C1|C1|WideOr13~5_combout\ & \C1|C1|WideOr1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|WideOr34~0_combout\,
	datac => \C1|C1|WideOr13~5_combout\,
	datad => \C1|C1|WideOr1~2_combout\,
	combout => \C1|C1|WideOr1~3_combout\);

-- Location: LCCOMB_X6_Y9_N0
\C1|C1|WideOr26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr26~0_combout\ = (\C1|C1|EDO.Fetch2~q\) # ((\C1|C1|EDO.Fetch1~q\) # ((!\C1|C1|WideOr1~3_combout\) # (!\C1|C1|EDO.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EDO.Fetch2~q\,
	datab => \C1|C1|EDO.Fetch1~q\,
	datac => \C1|C1|EDO.IDLE~q\,
	datad => \C1|C1|WideOr1~3_combout\,
	combout => \C1|C1|WideOr26~0_combout\);

-- Location: CLKCTRL_G0
\C1|C1|WideOr26~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C1|C1|WideOr26~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C1|C1|WideOr26~0clkctrl_outclk\);

-- Location: LCCOMB_X8_Y8_N26
\C1|C1|Equal23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|Equal23~0_combout\ = (!\C1|C2|CR|IR_reg\(5) & \C1|C2|CR|IR_reg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|IR_reg\(5),
	datad => \C1|C2|CR|IR_reg\(6),
	combout => \C1|C1|Equal23~0_combout\);

-- Location: LCCOMB_X8_Y9_N30
\C1|C1|Equal6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|Equal6~3_combout\ = (!\C1|C2|CR|IR_reg\(2) & !\C1|C2|CR|IR_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C2|CR|IR_reg\(2),
	datac => \C1|C2|CR|IR_reg\(1),
	combout => \C1|C1|Equal6~3_combout\);

-- Location: LCCOMB_X8_Y8_N28
\C1|C1|Equal24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|Equal24~0_combout\ = (\C1|C1|Equal23~0_combout\ & (\C1|C2|CR|IR_reg\(4) & (\C1|C1|Equal6~3_combout\ & \C1|C1|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Equal23~0_combout\,
	datab => \C1|C2|CR|IR_reg\(4),
	datac => \C1|C1|Equal6~3_combout\,
	datad => \C1|C1|Equal6~0_combout\,
	combout => \C1|C1|Equal24~0_combout\);

-- Location: LCCOMB_X7_Y9_N2
\C1|C1|FUT.NOT_B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.NOT_B~0_combout\ = (\C1|C2|CR|IR_reg\(0) & (\C1|C1|Equal24~0_combout\ & \C1|C1|EDO.Decode~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|IR_reg\(0),
	datab => \C1|C1|Equal24~0_combout\,
	datad => \C1|C1|EDO.Decode~q\,
	combout => \C1|C1|FUT.NOT_B~0_combout\);

-- Location: FF_X7_Y9_N3
\C1|C1|EDO.NOT_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \C1|C1|FUT.NOT_B~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.NOT_B~q\);

-- Location: LCCOMB_X8_Y9_N28
\C1|C1|WideOr34\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr34~combout\ = (\C1|C1|EDO.NOT_B~q\) # (!\C1|C1|WideOr34~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|C1|WideOr34~0_combout\,
	datad => \C1|C1|EDO.NOT_B~q\,
	combout => \C1|C1|WideOr34~combout\);

-- Location: LCCOMB_X8_Y9_N14
\C1|C1|ALU_Select[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|ALU_Select\(0) = (GLOBAL(\C1|C1|WideOr26~0clkctrl_outclk\) & ((\C1|C1|WideOr34~combout\))) # (!GLOBAL(\C1|C1|WideOr26~0clkctrl_outclk\) & (\C1|C1|ALU_Select\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|ALU_Select\(0),
	datac => \C1|C1|WideOr26~0clkctrl_outclk\,
	datad => \C1|C1|WideOr34~combout\,
	combout => \C1|C1|ALU_Select\(0));

-- Location: LCCOMB_X6_Y9_N20
\C1|C1|FUT.NOT_A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.NOT_A~0_combout\ = (!\C1|C2|CR|IR_reg\(0) & (\C1|C1|EDO.Decode~q\ & \C1|C1|Equal24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C2|CR|IR_reg\(0),
	datac => \C1|C1|EDO.Decode~q\,
	datad => \C1|C1|Equal24~0_combout\,
	combout => \C1|C1|FUT.NOT_A~0_combout\);

-- Location: FF_X6_Y9_N21
\C1|C1|EDO.NOT_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \C1|C1|FUT.NOT_A~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.NOT_A~q\);

-- Location: LCCOMB_X7_Y9_N18
\C1|C1|ALU_Select~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|ALU_Select~0_combout\ = (\C1|C1|EDO.NOT_B~q\) # (\C1|C1|EDO.NOT_A~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EDO.NOT_B~q\,
	datab => \C1|C1|EDO.NOT_A~q\,
	combout => \C1|C1|ALU_Select~0_combout\);

-- Location: LCCOMB_X7_Y9_N8
\C1|C1|ALU_Select[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|ALU_Select\(4) = (GLOBAL(\C1|C1|WideOr26~0clkctrl_outclk\) & (\C1|C1|ALU_Select~0_combout\)) # (!GLOBAL(\C1|C1|WideOr26~0clkctrl_outclk\) & ((\C1|C1|ALU_Select\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|ALU_Select~0_combout\,
	datac => \C1|C1|WideOr26~0clkctrl_outclk\,
	datad => \C1|C1|ALU_Select\(4),
	combout => \C1|C1|ALU_Select\(4));

-- Location: LCCOMB_X8_Y8_N2
\C1|C1|Equal17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|Equal17~0_combout\ = (\C1|C1|Equal23~0_combout\ & (!\C1|C2|CR|IR_reg\(4) & (!\C1|C2|CR|IR_reg\(2) & \C1|C1|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Equal23~0_combout\,
	datab => \C1|C2|CR|IR_reg\(4),
	datac => \C1|C2|CR|IR_reg\(2),
	datad => \C1|C1|Equal6~0_combout\,
	combout => \C1|C1|Equal17~0_combout\);

-- Location: LCCOMB_X8_Y9_N22
\C1|C1|FUT.OR_AB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.OR_AB~0_combout\ = (\C1|C2|CR|IR_reg\(0) & (\C1|C2|CR|IR_reg\(1) & (\C1|C1|EDO.Decode~q\ & \C1|C1|Equal17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|IR_reg\(0),
	datab => \C1|C2|CR|IR_reg\(1),
	datac => \C1|C1|EDO.Decode~q\,
	datad => \C1|C1|Equal17~0_combout\,
	combout => \C1|C1|FUT.OR_AB~0_combout\);

-- Location: FF_X8_Y9_N23
\C1|C1|EDO.OR_AB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \C1|C1|FUT.OR_AB~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.OR_AB~q\);

-- Location: LCCOMB_X8_Y10_N20
\C1|C1|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|Equal8~0_combout\ = (\C1|C2|CR|IR_reg\(1) & \C1|C2|CR|IR_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|C2|CR|IR_reg\(1),
	datad => \C1|C2|CR|IR_reg\(2),
	combout => \C1|C1|Equal8~0_combout\);

-- Location: LCCOMB_X8_Y8_N30
\C1|C1|Equal15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|Equal15~0_combout\ = (!\C1|C2|CR|IR_reg\(5) & (!\C1|C2|CR|IR_reg\(4) & (\C1|C2|CR|IR_reg\(6) & \C1|C1|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|IR_reg\(5),
	datab => \C1|C2|CR|IR_reg\(4),
	datac => \C1|C2|CR|IR_reg\(6),
	datad => \C1|C1|Equal6~0_combout\,
	combout => \C1|C1|Equal15~0_combout\);

-- Location: LCCOMB_X8_Y9_N2
\C1|C1|FUT.DEC_A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.DEC_A~0_combout\ = (\C1|C2|CR|IR_reg\(0) & (\C1|C1|Equal8~0_combout\ & (\C1|C1|Equal15~0_combout\ & \C1|C1|EDO.Decode~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|IR_reg\(0),
	datab => \C1|C1|Equal8~0_combout\,
	datac => \C1|C1|Equal15~0_combout\,
	datad => \C1|C1|EDO.Decode~q\,
	combout => \C1|C1|FUT.DEC_A~0_combout\);

-- Location: FF_X8_Y9_N3
\C1|C1|EDO.DEC_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \C1|C1|FUT.DEC_A~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.DEC_A~q\);

-- Location: LCCOMB_X9_Y9_N8
\C1|C1|FUT.INC_B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.INC_B~0_combout\ = (\C1|C1|Equal8~0_combout\ & (!\C1|C2|CR|IR_reg\(0) & (\C1|C1|Equal15~0_combout\ & \C1|C1|EDO.Decode~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Equal8~0_combout\,
	datab => \C1|C2|CR|IR_reg\(0),
	datac => \C1|C1|Equal15~0_combout\,
	datad => \C1|C1|EDO.Decode~q\,
	combout => \C1|C1|FUT.INC_B~0_combout\);

-- Location: FF_X9_Y9_N9
\C1|C1|EDO.INC_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \C1|C1|FUT.INC_B~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.INC_B~q\);

-- Location: LCCOMB_X9_Y9_N22
\C1|C1|WideOr32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr32~0_combout\ = (\C1|C1|EDO.OR_AB~q\) # ((\C1|C1|EDO.DEC_A~q\) # ((\C1|C1|EDO.INC_B~q\) # (\C1|C1|EDO.AND_AB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EDO.OR_AB~q\,
	datab => \C1|C1|EDO.DEC_A~q\,
	datac => \C1|C1|EDO.INC_B~q\,
	datad => \C1|C1|EDO.AND_AB~q\,
	combout => \C1|C1|WideOr32~0_combout\);

-- Location: LCCOMB_X9_Y9_N14
\C1|C1|ALU_Select[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|ALU_Select\(1) = (GLOBAL(\C1|C1|WideOr26~0clkctrl_outclk\) & ((\C1|C1|WideOr32~0_combout\))) # (!GLOBAL(\C1|C1|WideOr26~0clkctrl_outclk\) & (\C1|C1|ALU_Select\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|WideOr26~0clkctrl_outclk\,
	datac => \C1|C1|ALU_Select\(1),
	datad => \C1|C1|WideOr32~0_combout\,
	combout => \C1|C1|ALU_Select\(1));

-- Location: LCCOMB_X9_Y9_N12
\C1|C1|ALU_Select[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|ALU_Select\(3) = (GLOBAL(\C1|C1|WideOr26~0clkctrl_outclk\) & ((\C1|C1|EDO.DEC_B~q\))) # (!GLOBAL(\C1|C1|WideOr26~0clkctrl_outclk\) & (\C1|C1|ALU_Select\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(3),
	datac => \C1|C1|EDO.DEC_B~q\,
	datad => \C1|C1|WideOr26~0clkctrl_outclk\,
	combout => \C1|C1|ALU_Select\(3));

-- Location: LCCOMB_X6_Y9_N14
\C1|C1|FUT.XOR_AB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.XOR_AB~0_combout\ = (\C1|C1|Equal11~0_combout\ & (!\C1|C2|CR|IR_reg\(0) & (\C1|C1|EDO.Decode~q\ & \C1|C1|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Equal11~0_combout\,
	datab => \C1|C2|CR|IR_reg\(0),
	datac => \C1|C1|EDO.Decode~q\,
	datad => \C1|C1|Equal15~0_combout\,
	combout => \C1|C1|FUT.XOR_AB~0_combout\);

-- Location: FF_X6_Y9_N15
\C1|C1|EDO.XOR_AB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \C1|C1|FUT.XOR_AB~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.XOR_AB~q\);

-- Location: LCCOMB_X9_Y9_N30
\C1|C1|WideOr30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr30~0_combout\ = (\C1|C1|EDO.INC_A~q\) # ((\C1|C1|EDO.INC_B~q\) # ((\C1|C1|EDO.DEC_A~q\) # (\C1|C1|EDO.XOR_AB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EDO.INC_A~q\,
	datab => \C1|C1|EDO.INC_B~q\,
	datac => \C1|C1|EDO.DEC_A~q\,
	datad => \C1|C1|EDO.XOR_AB~q\,
	combout => \C1|C1|WideOr30~0_combout\);

-- Location: LCCOMB_X9_Y9_N2
\C1|C1|ALU_Select[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|ALU_Select\(2) = (GLOBAL(\C1|C1|WideOr26~0clkctrl_outclk\) & ((\C1|C1|WideOr30~0_combout\))) # (!GLOBAL(\C1|C1|WideOr26~0clkctrl_outclk\) & (\C1|C1|ALU_Select\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|ALU_Select\(2),
	datac => \C1|C1|WideOr30~0_combout\,
	datad => \C1|C1|WideOr26~0clkctrl_outclk\,
	combout => \C1|C1|ALU_Select\(2));

-- Location: LCCOMB_X12_Y9_N30
\C1|C2|C2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~12_combout\ = (!\C1|C1|ALU_Select\(3) & !\C1|C1|ALU_Select\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|ALU_Select\(3),
	datad => \C1|C1|ALU_Select\(2),
	combout => \C1|C2|C2|Add0~12_combout\);

-- Location: LCCOMB_X6_Y9_N2
\C1|C1|ALU_Select[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|ALU_Select\(6) = (GLOBAL(\C1|C1|WideOr26~0clkctrl_outclk\) & (!\C1|C1|WideOr1~3_combout\)) # (!GLOBAL(\C1|C1|WideOr26~0clkctrl_outclk\) & ((\C1|C1|ALU_Select\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|WideOr1~3_combout\,
	datac => \C1|C1|WideOr26~0clkctrl_outclk\,
	datad => \C1|C1|ALU_Select\(6),
	combout => \C1|C1|ALU_Select\(6));

-- Location: LCCOMB_X12_Y9_N0
\C1|C2|C2|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux8~0_combout\ = (\C1|C1|ALU_Select\(4) & (!\C1|C1|ALU_Select\(1) & (\C1|C2|C2|Add0~12_combout\ & \C1|C1|ALU_Select\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(4),
	datab => \C1|C1|ALU_Select\(1),
	datac => \C1|C2|C2|Add0~12_combout\,
	datad => \C1|C1|ALU_Select\(6),
	combout => \C1|C2|C2|Mux8~0_combout\);

-- Location: LCCOMB_X9_Y8_N16
\C1|C2|C2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux6~0_combout\ = (\C1|C2|C2|Mux8~0_combout\ & ((\C1|C1|ALU_Select\(0) & ((!\C1|C2|Mux5~1_combout\))) # (!\C1|C1|ALU_Select\(0) & (!\C1|C2|CR|B_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|B_reg\(2),
	datab => \C1|C2|Mux5~1_combout\,
	datac => \C1|C1|ALU_Select\(0),
	datad => \C1|C2|C2|Mux8~0_combout\,
	combout => \C1|C2|C2|Mux6~0_combout\);

-- Location: LCCOMB_X11_Y9_N22
\C1|C2|C2|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux7~0_combout\ = (\C1|C2|C2|Mux8~0_combout\ & ((\C1|C1|ALU_Select\(0) & ((!\C1|C2|Mux6~1_combout\))) # (!\C1|C1|ALU_Select\(0) & (!\C1|C2|CR|B_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|B_reg\(1),
	datab => \C1|C2|Mux6~1_combout\,
	datac => \C1|C2|C2|Mux8~0_combout\,
	datad => \C1|C1|ALU_Select\(0),
	combout => \C1|C2|C2|Mux7~0_combout\);

-- Location: LCCOMB_X11_Y9_N26
\C1|C2|C2|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux8~3_combout\ = (!\C1|C1|ALU_Select\(2) & (\C1|C1|ALU_Select\(1) & (!\C1|C1|ALU_Select\(3) & \C1|C1|ALU_Select\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(2),
	datab => \C1|C1|ALU_Select\(1),
	datac => \C1|C1|ALU_Select\(3),
	datad => \C1|C1|ALU_Select\(6),
	combout => \C1|C2|C2|Mux8~3_combout\);

-- Location: LCCOMB_X9_Y9_N20
\C1|C2|C2|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux8~2_combout\ = (\C1|C1|ALU_Select\(0) & (!\C1|C1|ALU_Select\(3))) # (!\C1|C1|ALU_Select\(0) & ((\C1|C1|ALU_Select\(1) & (!\C1|C1|ALU_Select\(3) & \C1|C1|ALU_Select\(2))) # (!\C1|C1|ALU_Select\(1) & ((!\C1|C1|ALU_Select\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(3),
	datab => \C1|C1|ALU_Select\(1),
	datac => \C1|C1|ALU_Select\(0),
	datad => \C1|C1|ALU_Select\(2),
	combout => \C1|C2|C2|Mux8~2_combout\);

-- Location: LCCOMB_X11_Y9_N10
\C1|C2|C2|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux8~5_combout\ = (\C1|C2|C2|Mux8~2_combout\ & \C1|C1|ALU_Select\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|C2|C2|Mux8~2_combout\,
	datad => \C1|C1|ALU_Select\(6),
	combout => \C1|C2|C2|Mux8~5_combout\);

-- Location: LCCOMB_X11_Y9_N28
\C1|C2|C2|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux8~4_combout\ = (!\C1|C2|C2|Mux8~3_combout\ & (\C1|C1|ALU_Select\(6) & ((\C1|C2|C2|Mux8~2_combout\) # (!\C1|C1|ALU_Select\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(3),
	datab => \C1|C2|C2|Mux8~2_combout\,
	datac => \C1|C2|C2|Mux8~3_combout\,
	datad => \C1|C1|ALU_Select\(6),
	combout => \C1|C2|C2|Mux8~4_combout\);

-- Location: FF_X10_Y8_N15
\C1|C2|CR|A_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux14~16_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \C1|C1|A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|A_reg\(1));

-- Location: LCCOMB_X10_Y8_N14
\C1|C2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux6~0_combout\ = (!\C1|C1|Bus1_Sel\(1) & ((\C1|C1|Bus1_Sel\(0) & (\C1|C2|CR|A_reg\(1))) # (!\C1|C1|Bus1_Sel\(0) & ((\C1|C2|C1|cuenta\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Bus1_Sel\(0),
	datab => \C1|C1|Bus1_Sel\(1),
	datac => \C1|C2|CR|A_reg\(1),
	datad => \C1|C2|C1|cuenta\(1),
	combout => \C1|C2|Mux6~0_combout\);

-- Location: LCCOMB_X11_Y9_N8
\C1|C2|C2|TempResult~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|TempResult~2_combout\ = (\C1|C2|CR|B_reg\(1) & (!\C1|C1|Bus1_Sel\(1) & !\C1|C2|Mux6~0_combout\)) # (!\C1|C2|CR|B_reg\(1) & ((\C1|C2|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Bus1_Sel\(1),
	datab => \C1|C2|CR|B_reg\(1),
	datad => \C1|C2|Mux6~0_combout\,
	combout => \C1|C2|C2|TempResult~2_combout\);

-- Location: LCCOMB_X9_Y9_N6
\C1|C2|C2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~14_combout\ = (\C1|C1|ALU_Select\(3)) # ((!\C1|C1|ALU_Select\(0) & ((\C1|C1|ALU_Select\(1)) # (!\C1|C1|ALU_Select\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(3),
	datab => \C1|C1|ALU_Select\(2),
	datac => \C1|C1|ALU_Select\(1),
	datad => \C1|C1|ALU_Select\(0),
	combout => \C1|C2|C2|Add0~14_combout\);

-- Location: LCCOMB_X11_Y9_N6
\C1|C2|C2|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~48_combout\ = (\C1|C2|C2|Add0~14_combout\ & (((\C1|C2|Mux6~1_combout\)))) # (!\C1|C2|C2|Add0~14_combout\ & ((\C1|C1|ALU_Select\(2) & (\C1|C1|ALU_Select\(1))) # (!\C1|C1|ALU_Select\(2) & ((!\C1|C2|Mux6~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(2),
	datab => \C1|C1|ALU_Select\(1),
	datac => \C1|C2|C2|Add0~14_combout\,
	datad => \C1|C2|Mux6~1_combout\,
	combout => \C1|C2|C2|Add0~48_combout\);

-- Location: LCCOMB_X10_Y9_N0
\C1|C2|C2|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~21_combout\ = (\C1|C1|ALU_Select\(3)) # ((\C1|C2|CR|B_reg\(1) & ((\C1|C1|ALU_Select\(0)) # (!\C1|C1|ALU_Select\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(3),
	datab => \C1|C1|ALU_Select\(0),
	datac => \C1|C2|CR|B_reg\(1),
	datad => \C1|C1|ALU_Select\(2),
	combout => \C1|C2|C2|Add0~21_combout\);

-- Location: LCCOMB_X12_Y9_N18
\C1|C2|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux7~2_combout\ = (\C1|C1|Bus1_Sel\(1) & \C1|C2|CR|B_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|C1|Bus1_Sel\(1),
	datad => \C1|C2|CR|B_reg\(0),
	combout => \C1|C2|Mux7~2_combout\);

-- Location: FF_X10_Y8_N17
\C1|C2|CR|A_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux15~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \C1|C1|A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|A_reg\(0));

-- Location: LCCOMB_X10_Y8_N16
\C1|C2|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux7~3_combout\ = (!\C1|C1|Bus1_Sel\(1) & ((\C1|C1|Bus1_Sel\(0) & (\C1|C2|CR|A_reg\(0))) # (!\C1|C1|Bus1_Sel\(0) & ((\C1|C2|C1|cuenta\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Bus1_Sel\(0),
	datab => \C1|C1|Bus1_Sel\(1),
	datac => \C1|C2|CR|A_reg\(0),
	datad => \C1|C2|C1|cuenta\(0),
	combout => \C1|C2|Mux7~3_combout\);

-- Location: LCCOMB_X10_Y9_N30
\C1|C2|C2|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~15_combout\ = (\C1|C2|C2|Add0~14_combout\ & (((\C1|C2|Mux7~2_combout\) # (\C1|C2|Mux7~3_combout\)))) # (!\C1|C2|C2|Add0~14_combout\ & ((\C1|C1|ALU_Select\(2)) # ((!\C1|C2|Mux7~2_combout\ & !\C1|C2|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(2),
	datab => \C1|C2|C2|Add0~14_combout\,
	datac => \C1|C2|Mux7~2_combout\,
	datad => \C1|C2|Mux7~3_combout\,
	combout => \C1|C2|C2|Add0~15_combout\);

-- Location: LCCOMB_X11_Y9_N24
\C1|C2|C2|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~13_combout\ = (\C1|C1|ALU_Select\(3)) # ((\C1|C2|CR|B_reg\(0)) # ((!\C1|C1|ALU_Select\(0) & \C1|C1|ALU_Select\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(3),
	datab => \C1|C2|CR|B_reg\(0),
	datac => \C1|C1|ALU_Select\(0),
	datad => \C1|C1|ALU_Select\(2),
	combout => \C1|C2|C2|Add0~13_combout\);

-- Location: LCCOMB_X9_Y9_N24
\C1|C2|C2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~16_combout\ = (!\C1|C1|ALU_Select\(2) & (!\C1|C1|ALU_Select\(1) & \C1|C1|ALU_Select\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|ALU_Select\(2),
	datac => \C1|C1|ALU_Select\(1),
	datad => \C1|C1|ALU_Select\(0),
	combout => \C1|C2|C2|Add0~16_combout\);

-- Location: LCCOMB_X10_Y9_N6
\C1|C2|C2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~18_cout\ = CARRY(\C1|C2|C2|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C2|C2|Add0~16_combout\,
	datad => VCC,
	cout => \C1|C2|C2|Add0~18_cout\);

-- Location: LCCOMB_X10_Y9_N8
\C1|C2|C2|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~19_combout\ = (\C1|C2|C2|Add0~15_combout\ & ((\C1|C2|C2|Add0~13_combout\ & (\C1|C2|C2|Add0~18_cout\ & VCC)) # (!\C1|C2|C2|Add0~13_combout\ & (!\C1|C2|C2|Add0~18_cout\)))) # (!\C1|C2|C2|Add0~15_combout\ & ((\C1|C2|C2|Add0~13_combout\ & 
-- (!\C1|C2|C2|Add0~18_cout\)) # (!\C1|C2|C2|Add0~13_combout\ & ((\C1|C2|C2|Add0~18_cout\) # (GND)))))
-- \C1|C2|C2|Add0~20\ = CARRY((\C1|C2|C2|Add0~15_combout\ & (!\C1|C2|C2|Add0~13_combout\ & !\C1|C2|C2|Add0~18_cout\)) # (!\C1|C2|C2|Add0~15_combout\ & ((!\C1|C2|C2|Add0~18_cout\) # (!\C1|C2|C2|Add0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|C2|Add0~15_combout\,
	datab => \C1|C2|C2|Add0~13_combout\,
	datad => VCC,
	cin => \C1|C2|C2|Add0~18_cout\,
	combout => \C1|C2|C2|Add0~19_combout\,
	cout => \C1|C2|C2|Add0~20\);

-- Location: LCCOMB_X10_Y9_N10
\C1|C2|C2|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~23_combout\ = ((\C1|C2|C2|Add0~48_combout\ $ (\C1|C2|C2|Add0~21_combout\ $ (!\C1|C2|C2|Add0~20\)))) # (GND)
-- \C1|C2|C2|Add0~24\ = CARRY((\C1|C2|C2|Add0~48_combout\ & ((\C1|C2|C2|Add0~21_combout\) # (!\C1|C2|C2|Add0~20\))) # (!\C1|C2|C2|Add0~48_combout\ & (\C1|C2|C2|Add0~21_combout\ & !\C1|C2|C2|Add0~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|C2|Add0~48_combout\,
	datab => \C1|C2|C2|Add0~21_combout\,
	datad => VCC,
	cin => \C1|C2|C2|Add0~20\,
	combout => \C1|C2|C2|Add0~23_combout\,
	cout => \C1|C2|C2|Add0~24\);

-- Location: LCCOMB_X11_Y9_N2
\C1|C2|C2|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux7~1_combout\ = (\C1|C2|C2|Mux8~5_combout\ & (((\C1|C2|C2|Add0~23_combout\)) # (!\C1|C2|C2|Mux8~4_combout\))) # (!\C1|C2|C2|Mux8~5_combout\ & (\C1|C2|C2|Mux8~4_combout\ & (\C1|C2|C2|TempResult~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|C2|Mux8~5_combout\,
	datab => \C1|C2|C2|Mux8~4_combout\,
	datac => \C1|C2|C2|TempResult~2_combout\,
	datad => \C1|C2|C2|Add0~23_combout\,
	combout => \C1|C2|C2|Mux7~1_combout\);

-- Location: LCCOMB_X11_Y9_N16
\C1|C2|C2|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux7~2_combout\ = (\C1|C2|CR|B_reg\(1) & ((\C1|C2|C2|Mux7~1_combout\) # ((\C1|C2|Mux6~1_combout\ & \C1|C2|C2|Mux8~3_combout\)))) # (!\C1|C2|CR|B_reg\(1) & (\C1|C2|C2|Mux7~1_combout\ & ((\C1|C2|Mux6~1_combout\) # (!\C1|C2|C2|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|B_reg\(1),
	datab => \C1|C2|Mux6~1_combout\,
	datac => \C1|C2|C2|Mux8~3_combout\,
	datad => \C1|C2|C2|Mux7~1_combout\,
	combout => \C1|C2|C2|Mux7~2_combout\);

-- Location: LCCOMB_X11_Y9_N30
\C1|C2|C2|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux7~3_combout\ = (\C1|C2|C2|Mux7~0_combout\) # ((!\C1|C1|ALU_Select\(4) & \C1|C2|C2|Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(4),
	datac => \C1|C2|C2|Mux7~0_combout\,
	datad => \C1|C2|C2|Mux7~2_combout\,
	combout => \C1|C2|C2|Mux7~3_combout\);

-- Location: LCCOMB_X10_Y8_N22
\C1|C2|C2|TempResult~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|TempResult~3_combout\ = (\C1|C2|Mux5~0_combout\ & (!\C1|C2|CR|B_reg\(2))) # (!\C1|C2|Mux5~0_combout\ & (\C1|C2|CR|B_reg\(2) & !\C1|C1|Bus1_Sel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C2|Mux5~0_combout\,
	datac => \C1|C2|CR|B_reg\(2),
	datad => \C1|C1|Bus1_Sel\(1),
	combout => \C1|C2|C2|TempResult~3_combout\);

-- Location: LCCOMB_X9_Y9_N26
\C1|C2|C2|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~25_combout\ = (\C1|C1|ALU_Select\(3)) # ((\C1|C2|CR|B_reg\(2) & ((\C1|C1|ALU_Select\(0)) # (!\C1|C1|ALU_Select\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(3),
	datab => \C1|C2|CR|B_reg\(2),
	datac => \C1|C1|ALU_Select\(2),
	datad => \C1|C1|ALU_Select\(0),
	combout => \C1|C2|C2|Add0~25_combout\);

-- Location: LCCOMB_X10_Y9_N4
\C1|C2|C2|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~49_combout\ = (\C1|C2|C2|Add0~14_combout\ & (((\C1|C2|Mux5~1_combout\)))) # (!\C1|C2|C2|Add0~14_combout\ & ((\C1|C1|ALU_Select\(2) & (\C1|C1|ALU_Select\(1))) # (!\C1|C1|ALU_Select\(2) & ((!\C1|C2|Mux5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(1),
	datab => \C1|C1|ALU_Select\(2),
	datac => \C1|C2|C2|Add0~14_combout\,
	datad => \C1|C2|Mux5~1_combout\,
	combout => \C1|C2|C2|Add0~49_combout\);

-- Location: LCCOMB_X10_Y9_N12
\C1|C2|C2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~26_combout\ = (\C1|C2|C2|Add0~25_combout\ & ((\C1|C2|C2|Add0~49_combout\ & (\C1|C2|C2|Add0~24\ & VCC)) # (!\C1|C2|C2|Add0~49_combout\ & (!\C1|C2|C2|Add0~24\)))) # (!\C1|C2|C2|Add0~25_combout\ & ((\C1|C2|C2|Add0~49_combout\ & 
-- (!\C1|C2|C2|Add0~24\)) # (!\C1|C2|C2|Add0~49_combout\ & ((\C1|C2|C2|Add0~24\) # (GND)))))
-- \C1|C2|C2|Add0~27\ = CARRY((\C1|C2|C2|Add0~25_combout\ & (!\C1|C2|C2|Add0~49_combout\ & !\C1|C2|C2|Add0~24\)) # (!\C1|C2|C2|Add0~25_combout\ & ((!\C1|C2|C2|Add0~24\) # (!\C1|C2|C2|Add0~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|C2|Add0~25_combout\,
	datab => \C1|C2|C2|Add0~49_combout\,
	datad => VCC,
	cin => \C1|C2|C2|Add0~24\,
	combout => \C1|C2|C2|Add0~26_combout\,
	cout => \C1|C2|C2|Add0~27\);

-- Location: LCCOMB_X10_Y8_N24
\C1|C2|C2|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux6~1_combout\ = (\C1|C2|C2|Mux8~4_combout\ & ((\C1|C2|C2|Mux8~5_combout\ & ((\C1|C2|C2|Add0~26_combout\))) # (!\C1|C2|C2|Mux8~5_combout\ & (\C1|C2|C2|TempResult~3_combout\)))) # (!\C1|C2|C2|Mux8~4_combout\ & (((\C1|C2|C2|Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|C2|Mux8~4_combout\,
	datab => \C1|C2|C2|TempResult~3_combout\,
	datac => \C1|C2|C2|Mux8~5_combout\,
	datad => \C1|C2|C2|Add0~26_combout\,
	combout => \C1|C2|C2|Mux6~1_combout\);

-- Location: LCCOMB_X10_Y8_N10
\C1|C2|C2|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux6~2_combout\ = (\C1|C2|CR|B_reg\(2) & ((\C1|C2|C2|Mux6~1_combout\) # ((\C1|C2|Mux5~1_combout\ & \C1|C2|C2|Mux8~3_combout\)))) # (!\C1|C2|CR|B_reg\(2) & (\C1|C2|C2|Mux6~1_combout\ & ((\C1|C2|Mux5~1_combout\) # (!\C1|C2|C2|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|B_reg\(2),
	datab => \C1|C2|Mux5~1_combout\,
	datac => \C1|C2|C2|Mux8~3_combout\,
	datad => \C1|C2|C2|Mux6~1_combout\,
	combout => \C1|C2|C2|Mux6~2_combout\);

-- Location: LCCOMB_X10_Y8_N18
\C1|C2|C2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Equal0~0_combout\ = (!\C1|C2|C2|Mux6~0_combout\ & (!\C1|C2|C2|Mux7~3_combout\ & ((\C1|C1|ALU_Select\(4)) # (!\C1|C2|C2|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|C2|Mux6~0_combout\,
	datab => \C1|C1|ALU_Select\(4),
	datac => \C1|C2|C2|Mux7~3_combout\,
	datad => \C1|C2|C2|Mux6~2_combout\,
	combout => \C1|C2|C2|Equal0~0_combout\);

-- Location: LCCOMB_X12_Y9_N8
\C1|C2|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux7~4_combout\ = (\C1|C2|Mux7~3_combout\) # ((\C1|C1|Bus1_Sel\(1) & \C1|C2|CR|B_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Bus1_Sel\(1),
	datac => \C1|C2|CR|B_reg\(0),
	datad => \C1|C2|Mux7~3_combout\,
	combout => \C1|C2|Mux7~4_combout\);

-- Location: LCCOMB_X12_Y9_N22
\C1|C2|C2|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux8~1_combout\ = (\C1|C2|C2|Mux8~0_combout\ & ((\C1|C1|ALU_Select\(0) & ((!\C1|C2|Mux7~4_combout\))) # (!\C1|C1|ALU_Select\(0) & (!\C1|C2|CR|B_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(0),
	datab => \C1|C2|CR|B_reg\(0),
	datac => \C1|C2|Mux7~4_combout\,
	datad => \C1|C2|C2|Mux8~0_combout\,
	combout => \C1|C2|C2|Mux8~1_combout\);

-- Location: LCCOMB_X12_Y9_N26
\C1|C2|C2|TempResult~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|TempResult~9_combout\ = (\C1|C2|CR|B_reg\(0) & (!\C1|C1|Bus1_Sel\(1) & !\C1|C2|Mux7~3_combout\)) # (!\C1|C2|CR|B_reg\(0) & ((\C1|C2|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Bus1_Sel\(1),
	datab => \C1|C2|CR|B_reg\(0),
	datad => \C1|C2|Mux7~3_combout\,
	combout => \C1|C2|C2|TempResult~9_combout\);

-- Location: LCCOMB_X12_Y9_N28
\C1|C2|C2|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux8~6_combout\ = (\C1|C2|C2|Mux8~5_combout\ & (((\C1|C2|C2|Add0~19_combout\)) # (!\C1|C2|C2|Mux8~4_combout\))) # (!\C1|C2|C2|Mux8~5_combout\ & (\C1|C2|C2|Mux8~4_combout\ & (\C1|C2|C2|TempResult~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|C2|Mux8~5_combout\,
	datab => \C1|C2|C2|Mux8~4_combout\,
	datac => \C1|C2|C2|TempResult~9_combout\,
	datad => \C1|C2|C2|Add0~19_combout\,
	combout => \C1|C2|C2|Mux8~6_combout\);

-- Location: LCCOMB_X12_Y9_N10
\C1|C2|C2|Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux8~7_combout\ = (\C1|C2|CR|B_reg\(0) & ((\C1|C2|C2|Mux8~6_combout\) # ((\C1|C2|C2|Mux8~3_combout\ & \C1|C2|Mux7~4_combout\)))) # (!\C1|C2|CR|B_reg\(0) & (\C1|C2|C2|Mux8~6_combout\ & ((\C1|C2|Mux7~4_combout\) # (!\C1|C2|C2|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|B_reg\(0),
	datab => \C1|C2|C2|Mux8~3_combout\,
	datac => \C1|C2|Mux7~4_combout\,
	datad => \C1|C2|C2|Mux8~6_combout\,
	combout => \C1|C2|C2|Mux8~7_combout\);

-- Location: LCCOMB_X12_Y9_N20
\C1|C2|C2|Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux8~8_combout\ = (\C1|C2|C2|Mux8~1_combout\) # ((!\C1|C1|ALU_Select\(4) & \C1|C2|C2|Mux8~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(4),
	datac => \C1|C2|C2|Mux8~1_combout\,
	datad => \C1|C2|C2|Mux8~7_combout\,
	combout => \C1|C2|C2|Mux8~8_combout\);

-- Location: LCCOMB_X10_Y10_N10
\C1|C2|C2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux4~0_combout\ = (\C1|C2|C2|Mux8~0_combout\ & ((\C1|C1|ALU_Select\(0) & ((!\C1|C2|Mux3~1_combout\))) # (!\C1|C1|ALU_Select\(0) & (!\C1|C2|CR|B_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|B_reg\(4),
	datab => \C1|C1|ALU_Select\(0),
	datac => \C1|C2|Mux3~1_combout\,
	datad => \C1|C2|C2|Mux8~0_combout\,
	combout => \C1|C2|C2|Mux4~0_combout\);

-- Location: LCCOMB_X9_Y8_N12
\C1|C2|C2|TempResult~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|TempResult~5_combout\ = (\C1|C2|Mux3~0_combout\ & ((!\C1|C2|CR|B_reg\(4)))) # (!\C1|C2|Mux3~0_combout\ & (!\C1|C1|Bus1_Sel\(1) & \C1|C2|CR|B_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux3~0_combout\,
	datab => \C1|C1|Bus1_Sel\(1),
	datac => \C1|C2|CR|B_reg\(4),
	combout => \C1|C2|C2|TempResult~5_combout\);

-- Location: LCCOMB_X9_Y9_N0
\C1|C2|C2|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~51_combout\ = (\C1|C2|C2|Add0~14_combout\ & (((\C1|C2|Mux3~1_combout\)))) # (!\C1|C2|C2|Add0~14_combout\ & ((\C1|C1|ALU_Select\(2) & (\C1|C1|ALU_Select\(1))) # (!\C1|C1|ALU_Select\(2) & ((!\C1|C2|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|C2|Add0~14_combout\,
	datab => \C1|C1|ALU_Select\(1),
	datac => \C1|C2|Mux3~1_combout\,
	datad => \C1|C1|ALU_Select\(2),
	combout => \C1|C2|C2|Add0~51_combout\);

-- Location: LCCOMB_X10_Y9_N2
\C1|C2|C2|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~31_combout\ = (\C1|C1|ALU_Select\(3)) # ((\C1|C2|CR|B_reg\(4) & ((\C1|C1|ALU_Select\(0)) # (!\C1|C1|ALU_Select\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(3),
	datab => \C1|C1|ALU_Select\(0),
	datac => \C1|C2|CR|B_reg\(4),
	datad => \C1|C1|ALU_Select\(2),
	combout => \C1|C2|C2|Add0~31_combout\);

-- Location: LCCOMB_X10_Y9_N26
\C1|C2|C2|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~50_combout\ = (\C1|C2|C2|Add0~14_combout\ & (((\C1|C2|Mux4~1_combout\)))) # (!\C1|C2|C2|Add0~14_combout\ & ((\C1|C1|ALU_Select\(2) & (\C1|C1|ALU_Select\(1))) # (!\C1|C1|ALU_Select\(2) & ((!\C1|C2|Mux4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(1),
	datab => \C1|C1|ALU_Select\(2),
	datac => \C1|C2|C2|Add0~14_combout\,
	datad => \C1|C2|Mux4~1_combout\,
	combout => \C1|C2|C2|Add0~50_combout\);

-- Location: LCCOMB_X9_Y9_N18
\C1|C2|C2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~28_combout\ = (\C1|C1|ALU_Select\(3)) # ((\C1|C2|CR|B_reg\(3) & ((\C1|C1|ALU_Select\(0)) # (!\C1|C1|ALU_Select\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(3),
	datab => \C1|C1|ALU_Select\(0),
	datac => \C1|C2|CR|B_reg\(3),
	datad => \C1|C1|ALU_Select\(2),
	combout => \C1|C2|C2|Add0~28_combout\);

-- Location: LCCOMB_X10_Y9_N14
\C1|C2|C2|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~29_combout\ = ((\C1|C2|C2|Add0~50_combout\ $ (\C1|C2|C2|Add0~28_combout\ $ (!\C1|C2|C2|Add0~27\)))) # (GND)
-- \C1|C2|C2|Add0~30\ = CARRY((\C1|C2|C2|Add0~50_combout\ & ((\C1|C2|C2|Add0~28_combout\) # (!\C1|C2|C2|Add0~27\))) # (!\C1|C2|C2|Add0~50_combout\ & (\C1|C2|C2|Add0~28_combout\ & !\C1|C2|C2|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|C2|Add0~50_combout\,
	datab => \C1|C2|C2|Add0~28_combout\,
	datad => VCC,
	cin => \C1|C2|C2|Add0~27\,
	combout => \C1|C2|C2|Add0~29_combout\,
	cout => \C1|C2|C2|Add0~30\);

-- Location: LCCOMB_X10_Y9_N16
\C1|C2|C2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~32_combout\ = (\C1|C2|C2|Add0~51_combout\ & ((\C1|C2|C2|Add0~31_combout\ & (\C1|C2|C2|Add0~30\ & VCC)) # (!\C1|C2|C2|Add0~31_combout\ & (!\C1|C2|C2|Add0~30\)))) # (!\C1|C2|C2|Add0~51_combout\ & ((\C1|C2|C2|Add0~31_combout\ & 
-- (!\C1|C2|C2|Add0~30\)) # (!\C1|C2|C2|Add0~31_combout\ & ((\C1|C2|C2|Add0~30\) # (GND)))))
-- \C1|C2|C2|Add0~33\ = CARRY((\C1|C2|C2|Add0~51_combout\ & (!\C1|C2|C2|Add0~31_combout\ & !\C1|C2|C2|Add0~30\)) # (!\C1|C2|C2|Add0~51_combout\ & ((!\C1|C2|C2|Add0~30\) # (!\C1|C2|C2|Add0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|C2|Add0~51_combout\,
	datab => \C1|C2|C2|Add0~31_combout\,
	datad => VCC,
	cin => \C1|C2|C2|Add0~30\,
	combout => \C1|C2|C2|Add0~32_combout\,
	cout => \C1|C2|C2|Add0~33\);

-- Location: LCCOMB_X11_Y10_N2
\C1|C2|C2|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux4~1_combout\ = (\C1|C2|C2|Mux8~5_combout\ & (((\C1|C2|C2|Add0~32_combout\) # (!\C1|C2|C2|Mux8~4_combout\)))) # (!\C1|C2|C2|Mux8~5_combout\ & (\C1|C2|C2|TempResult~5_combout\ & (\C1|C2|C2|Mux8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|C2|Mux8~5_combout\,
	datab => \C1|C2|C2|TempResult~5_combout\,
	datac => \C1|C2|C2|Mux8~4_combout\,
	datad => \C1|C2|C2|Add0~32_combout\,
	combout => \C1|C2|C2|Mux4~1_combout\);

-- Location: LCCOMB_X11_Y10_N0
\C1|C2|C2|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux4~2_combout\ = (\C1|C2|CR|B_reg\(4) & ((\C1|C2|C2|Mux4~1_combout\) # ((\C1|C2|C2|Mux8~3_combout\ & \C1|C2|Mux3~1_combout\)))) # (!\C1|C2|CR|B_reg\(4) & (\C1|C2|C2|Mux4~1_combout\ & ((\C1|C2|Mux3~1_combout\) # (!\C1|C2|C2|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|B_reg\(4),
	datab => \C1|C2|C2|Mux8~3_combout\,
	datac => \C1|C2|Mux3~1_combout\,
	datad => \C1|C2|C2|Mux4~1_combout\,
	combout => \C1|C2|C2|Mux4~2_combout\);

-- Location: LCCOMB_X11_Y10_N6
\C1|C2|C2|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux4~3_combout\ = (\C1|C2|C2|Mux4~0_combout\) # ((!\C1|C1|ALU_Select\(4) & \C1|C2|C2|Mux4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C2|C2|Mux4~0_combout\,
	datac => \C1|C1|ALU_Select\(4),
	datad => \C1|C2|C2|Mux4~2_combout\,
	combout => \C1|C2|C2|Mux4~3_combout\);

-- Location: LCCOMB_X12_Y9_N14
\C1|C2|C2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux3~0_combout\ = (\C1|C2|C2|Mux8~0_combout\ & ((\C1|C1|ALU_Select\(0) & ((!\C1|C2|Mux2~1_combout\))) # (!\C1|C1|ALU_Select\(0) & (!\C1|C2|CR|B_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|B_reg\(5),
	datab => \C1|C2|C2|Mux8~0_combout\,
	datac => \C1|C2|Mux2~1_combout\,
	datad => \C1|C1|ALU_Select\(0),
	combout => \C1|C2|C2|Mux3~0_combout\);

-- Location: FF_X10_Y8_N7
\C1|C2|CR|A_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux10~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \C1|C1|A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|A_reg\(5));

-- Location: LCCOMB_X10_Y8_N6
\C1|C2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux2~0_combout\ = (!\C1|C1|Bus1_Sel\(1) & ((\C1|C1|Bus1_Sel\(0) & (\C1|C2|CR|A_reg\(5))) # (!\C1|C1|Bus1_Sel\(0) & ((\C1|C2|C1|cuenta\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Bus1_Sel\(0),
	datab => \C1|C1|Bus1_Sel\(1),
	datac => \C1|C2|CR|A_reg\(5),
	datad => \C1|C2|C1|cuenta\(5),
	combout => \C1|C2|Mux2~0_combout\);

-- Location: LCCOMB_X11_Y9_N4
\C1|C2|C2|TempResult~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|TempResult~6_combout\ = (\C1|C2|CR|B_reg\(5) & (!\C1|C1|Bus1_Sel\(1) & !\C1|C2|Mux2~0_combout\)) # (!\C1|C2|CR|B_reg\(5) & ((\C1|C2|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C2|CR|B_reg\(5),
	datac => \C1|C1|Bus1_Sel\(1),
	datad => \C1|C2|Mux2~0_combout\,
	combout => \C1|C2|C2|TempResult~6_combout\);

-- Location: LCCOMB_X9_Y9_N10
\C1|C2|C2|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~52_combout\ = (\C1|C2|C2|Add0~14_combout\ & (((\C1|C2|Mux2~1_combout\)))) # (!\C1|C2|C2|Add0~14_combout\ & ((\C1|C1|ALU_Select\(2) & (\C1|C1|ALU_Select\(1))) # (!\C1|C1|ALU_Select\(2) & ((!\C1|C2|Mux2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(2),
	datab => \C1|C1|ALU_Select\(1),
	datac => \C1|C2|Mux2~1_combout\,
	datad => \C1|C2|C2|Add0~14_combout\,
	combout => \C1|C2|C2|Add0~52_combout\);

-- Location: LCCOMB_X10_Y9_N28
\C1|C2|C2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~34_combout\ = (\C1|C1|ALU_Select\(3)) # ((\C1|C2|CR|B_reg\(5) & ((\C1|C1|ALU_Select\(0)) # (!\C1|C1|ALU_Select\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(3),
	datab => \C1|C1|ALU_Select\(0),
	datac => \C1|C2|CR|B_reg\(5),
	datad => \C1|C1|ALU_Select\(2),
	combout => \C1|C2|C2|Add0~34_combout\);

-- Location: LCCOMB_X10_Y9_N18
\C1|C2|C2|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~35_combout\ = ((\C1|C2|C2|Add0~52_combout\ $ (\C1|C2|C2|Add0~34_combout\ $ (!\C1|C2|C2|Add0~33\)))) # (GND)
-- \C1|C2|C2|Add0~36\ = CARRY((\C1|C2|C2|Add0~52_combout\ & ((\C1|C2|C2|Add0~34_combout\) # (!\C1|C2|C2|Add0~33\))) # (!\C1|C2|C2|Add0~52_combout\ & (\C1|C2|C2|Add0~34_combout\ & !\C1|C2|C2|Add0~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|C2|Add0~52_combout\,
	datab => \C1|C2|C2|Add0~34_combout\,
	datad => VCC,
	cin => \C1|C2|C2|Add0~33\,
	combout => \C1|C2|C2|Add0~35_combout\,
	cout => \C1|C2|C2|Add0~36\);

-- Location: LCCOMB_X11_Y9_N18
\C1|C2|C2|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux3~1_combout\ = (\C1|C2|C2|Mux8~5_combout\ & (((\C1|C2|C2|Add0~35_combout\)) # (!\C1|C2|C2|Mux8~4_combout\))) # (!\C1|C2|C2|Mux8~5_combout\ & (\C1|C2|C2|Mux8~4_combout\ & (\C1|C2|C2|TempResult~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|C2|Mux8~5_combout\,
	datab => \C1|C2|C2|Mux8~4_combout\,
	datac => \C1|C2|C2|TempResult~6_combout\,
	datad => \C1|C2|C2|Add0~35_combout\,
	combout => \C1|C2|C2|Mux3~1_combout\);

-- Location: LCCOMB_X11_Y9_N0
\C1|C2|C2|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux3~2_combout\ = (\C1|C2|Mux2~1_combout\ & ((\C1|C2|C2|Mux3~1_combout\) # ((\C1|C2|CR|B_reg\(5) & \C1|C2|C2|Mux8~3_combout\)))) # (!\C1|C2|Mux2~1_combout\ & (\C1|C2|C2|Mux3~1_combout\ & ((\C1|C2|CR|B_reg\(5)) # (!\C1|C2|C2|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux2~1_combout\,
	datab => \C1|C2|CR|B_reg\(5),
	datac => \C1|C2|C2|Mux8~3_combout\,
	datad => \C1|C2|C2|Mux3~1_combout\,
	combout => \C1|C2|C2|Mux3~2_combout\);

-- Location: LCCOMB_X11_Y10_N14
\C1|C2|C2|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux3~3_combout\ = (\C1|C2|C2|Mux3~0_combout\) # ((!\C1|C1|ALU_Select\(4) & \C1|C2|C2|Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(4),
	datac => \C1|C2|C2|Mux3~0_combout\,
	datad => \C1|C2|C2|Mux3~2_combout\,
	combout => \C1|C2|C2|Mux3~3_combout\);

-- Location: LCCOMB_X11_Y8_N8
\C1|C2|C2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux1~0_combout\ = (\C1|C2|C2|Mux8~0_combout\ & ((\C1|C1|ALU_Select\(0) & (!\C1|C2|Mux0~1_combout\)) # (!\C1|C1|ALU_Select\(0) & ((!\C1|C2|CR|B_reg\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux0~1_combout\,
	datab => \C1|C2|CR|B_reg\(7),
	datac => \C1|C1|ALU_Select\(0),
	datad => \C1|C2|C2|Mux8~0_combout\,
	combout => \C1|C2|C2|Mux1~0_combout\);

-- Location: LCCOMB_X11_Y8_N30
\C1|C2|C2|TempResult~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|TempResult~8_combout\ = (\C1|C2|Mux0~0_combout\ & ((!\C1|C2|CR|B_reg\(7)))) # (!\C1|C2|Mux0~0_combout\ & (!\C1|C1|Bus1_Sel\(1) & \C1|C2|CR|B_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux0~0_combout\,
	datab => \C1|C1|Bus1_Sel\(1),
	datad => \C1|C2|CR|B_reg\(7),
	combout => \C1|C2|C2|TempResult~8_combout\);

-- Location: LCCOMB_X9_Y9_N16
\C1|C2|C2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~22_combout\ = (\C1|C1|ALU_Select\(1) & \C1|C1|ALU_Select\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|C1|ALU_Select\(1),
	datad => \C1|C1|ALU_Select\(2),
	combout => \C1|C2|C2|Add0~22_combout\);

-- Location: LCCOMB_X12_Y9_N6
\C1|C2|C2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~42_combout\ = (\C1|C1|ALU_Select\(3) & (((\C1|C2|Mux0~1_combout\)))) # (!\C1|C1|ALU_Select\(3) & (\C1|C2|C2|Add0~22_combout\ & ((\C1|C1|ALU_Select\(0)) # (\C1|C2|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(0),
	datab => \C1|C1|ALU_Select\(3),
	datac => \C1|C2|C2|Add0~22_combout\,
	datad => \C1|C2|Mux0~1_combout\,
	combout => \C1|C2|C2|Add0~42_combout\);

-- Location: LCCOMB_X12_Y9_N4
\C1|C2|C2|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~43_combout\ = (\C1|C2|C2|Add0~42_combout\) # ((\C1|C2|C2|Add0~12_combout\ & (\C1|C1|ALU_Select\(0) $ (\C1|C2|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(0),
	datab => \C1|C2|Mux0~1_combout\,
	datac => \C1|C2|C2|Add0~12_combout\,
	datad => \C1|C2|C2|Add0~42_combout\,
	combout => \C1|C2|C2|Add0~43_combout\);

-- Location: LCCOMB_X12_Y9_N2
\C1|C2|C2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~40_combout\ = (\C1|C2|CR|B_reg\(7) & (((\C1|C1|ALU_Select\(0)) # (!\C1|C1|ALU_Select\(2))) # (!\C1|C1|ALU_Select\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|B_reg\(7),
	datab => \C1|C1|ALU_Select\(1),
	datac => \C1|C1|ALU_Select\(2),
	datad => \C1|C1|ALU_Select\(0),
	combout => \C1|C2|C2|Add0~40_combout\);

-- Location: LCCOMB_X12_Y9_N24
\C1|C2|C2|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~41_combout\ = (\C1|C1|ALU_Select\(3)) # (\C1|C2|C2|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|C1|ALU_Select\(3),
	datad => \C1|C2|C2|Add0~40_combout\,
	combout => \C1|C2|C2|Add0~41_combout\);

-- Location: FF_X10_Y8_N3
\C1|C2|CR|B_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux9~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \C1|C1|B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|B_reg\(6));

-- Location: LCCOMB_X9_Y9_N28
\C1|C2|C2|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~37_combout\ = (\C1|C1|ALU_Select\(3)) # ((\C1|C2|CR|B_reg\(6) & ((\C1|C1|ALU_Select\(0)) # (!\C1|C1|ALU_Select\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(3),
	datab => \C1|C2|CR|B_reg\(6),
	datac => \C1|C1|ALU_Select\(2),
	datad => \C1|C1|ALU_Select\(0),
	combout => \C1|C2|C2|Add0~37_combout\);

-- Location: FF_X10_Y8_N21
\C1|C2|CR|A_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux9~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \C1|C1|A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|A_reg\(6));

-- Location: LCCOMB_X10_Y8_N20
\C1|C2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux1~0_combout\ = (!\C1|C1|Bus1_Sel\(1) & ((\C1|C1|Bus1_Sel\(0) & (\C1|C2|CR|A_reg\(6))) # (!\C1|C1|Bus1_Sel\(0) & ((\C1|C2|C1|cuenta\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Bus1_Sel\(0),
	datab => \C1|C1|Bus1_Sel\(1),
	datac => \C1|C2|CR|A_reg\(6),
	datad => \C1|C2|C1|cuenta\(6),
	combout => \C1|C2|Mux1~0_combout\);

-- Location: LCCOMB_X10_Y8_N2
\C1|C2|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux1~1_combout\ = (\C1|C2|Mux1~0_combout\) # ((\C1|C1|Bus1_Sel\(1) & \C1|C2|CR|B_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|Bus1_Sel\(1),
	datac => \C1|C2|CR|B_reg\(6),
	datad => \C1|C2|Mux1~0_combout\,
	combout => \C1|C2|Mux1~1_combout\);

-- Location: LCCOMB_X10_Y8_N4
\C1|C2|C2|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~53_combout\ = (\C1|C2|C2|Add0~14_combout\ & (((\C1|C2|Mux1~1_combout\)))) # (!\C1|C2|C2|Add0~14_combout\ & ((\C1|C1|ALU_Select\(2) & (\C1|C1|ALU_Select\(1))) # (!\C1|C1|ALU_Select\(2) & ((!\C1|C2|Mux1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(2),
	datab => \C1|C1|ALU_Select\(1),
	datac => \C1|C2|C2|Add0~14_combout\,
	datad => \C1|C2|Mux1~1_combout\,
	combout => \C1|C2|C2|Add0~53_combout\);

-- Location: LCCOMB_X10_Y9_N20
\C1|C2|C2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~38_combout\ = (\C1|C2|C2|Add0~37_combout\ & ((\C1|C2|C2|Add0~53_combout\ & (\C1|C2|C2|Add0~36\ & VCC)) # (!\C1|C2|C2|Add0~53_combout\ & (!\C1|C2|C2|Add0~36\)))) # (!\C1|C2|C2|Add0~37_combout\ & ((\C1|C2|C2|Add0~53_combout\ & 
-- (!\C1|C2|C2|Add0~36\)) # (!\C1|C2|C2|Add0~53_combout\ & ((\C1|C2|C2|Add0~36\) # (GND)))))
-- \C1|C2|C2|Add0~39\ = CARRY((\C1|C2|C2|Add0~37_combout\ & (!\C1|C2|C2|Add0~53_combout\ & !\C1|C2|C2|Add0~36\)) # (!\C1|C2|C2|Add0~37_combout\ & ((!\C1|C2|C2|Add0~36\) # (!\C1|C2|C2|Add0~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|C2|Add0~37_combout\,
	datab => \C1|C2|C2|Add0~53_combout\,
	datad => VCC,
	cin => \C1|C2|C2|Add0~36\,
	combout => \C1|C2|C2|Add0~38_combout\,
	cout => \C1|C2|C2|Add0~39\);

-- Location: LCCOMB_X10_Y9_N22
\C1|C2|C2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~44_combout\ = ((\C1|C2|C2|Add0~43_combout\ $ (\C1|C2|C2|Add0~41_combout\ $ (!\C1|C2|C2|Add0~39\)))) # (GND)
-- \C1|C2|C2|Add0~45\ = CARRY((\C1|C2|C2|Add0~43_combout\ & ((\C1|C2|C2|Add0~41_combout\) # (!\C1|C2|C2|Add0~39\))) # (!\C1|C2|C2|Add0~43_combout\ & (\C1|C2|C2|Add0~41_combout\ & !\C1|C2|C2|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|C2|Add0~43_combout\,
	datab => \C1|C2|C2|Add0~41_combout\,
	datad => VCC,
	cin => \C1|C2|C2|Add0~39\,
	combout => \C1|C2|C2|Add0~44_combout\,
	cout => \C1|C2|C2|Add0~45\);

-- Location: LCCOMB_X11_Y8_N12
\C1|C2|C2|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux1~1_combout\ = (\C1|C2|C2|Mux8~5_combout\ & (((\C1|C2|C2|Add0~44_combout\) # (!\C1|C2|C2|Mux8~4_combout\)))) # (!\C1|C2|C2|Mux8~5_combout\ & (\C1|C2|C2|TempResult~8_combout\ & (\C1|C2|C2|Mux8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|C2|TempResult~8_combout\,
	datab => \C1|C2|C2|Mux8~5_combout\,
	datac => \C1|C2|C2|Mux8~4_combout\,
	datad => \C1|C2|C2|Add0~44_combout\,
	combout => \C1|C2|C2|Mux1~1_combout\);

-- Location: LCCOMB_X11_Y8_N10
\C1|C2|C2|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux1~2_combout\ = (\C1|C2|Mux0~1_combout\ & ((\C1|C2|C2|Mux1~1_combout\) # ((\C1|C2|CR|B_reg\(7) & \C1|C2|C2|Mux8~3_combout\)))) # (!\C1|C2|Mux0~1_combout\ & (\C1|C2|C2|Mux1~1_combout\ & ((\C1|C2|CR|B_reg\(7)) # (!\C1|C2|C2|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux0~1_combout\,
	datab => \C1|C2|CR|B_reg\(7),
	datac => \C1|C2|C2|Mux8~3_combout\,
	datad => \C1|C2|C2|Mux1~1_combout\,
	combout => \C1|C2|C2|Mux1~2_combout\);

-- Location: LCCOMB_X11_Y10_N26
\C1|C2|C2|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux1~3_combout\ = (\C1|C2|C2|Mux1~0_combout\) # ((!\C1|C1|ALU_Select\(4) & \C1|C2|C2|Mux1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(4),
	datac => \C1|C2|C2|Mux1~0_combout\,
	datad => \C1|C2|C2|Mux1~2_combout\,
	combout => \C1|C2|C2|Mux1~3_combout\);

-- Location: LCCOMB_X10_Y10_N4
\C1|C2|C2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux2~0_combout\ = (\C1|C2|C2|Mux8~0_combout\ & ((\C1|C1|ALU_Select\(0) & ((!\C1|C2|Mux1~1_combout\))) # (!\C1|C1|ALU_Select\(0) & (!\C1|C2|CR|B_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(0),
	datab => \C1|C2|CR|B_reg\(6),
	datac => \C1|C2|Mux1~1_combout\,
	datad => \C1|C2|C2|Mux8~0_combout\,
	combout => \C1|C2|C2|Mux2~0_combout\);

-- Location: LCCOMB_X10_Y10_N18
\C1|C2|C2|TempResult~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|TempResult~7_combout\ = (\C1|C2|CR|B_reg\(6) & (!\C1|C1|Bus1_Sel\(1) & !\C1|C2|Mux1~0_combout\)) # (!\C1|C2|CR|B_reg\(6) & ((\C1|C2|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Bus1_Sel\(1),
	datac => \C1|C2|CR|B_reg\(6),
	datad => \C1|C2|Mux1~0_combout\,
	combout => \C1|C2|C2|TempResult~7_combout\);

-- Location: LCCOMB_X10_Y10_N0
\C1|C2|C2|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux2~1_combout\ = (\C1|C2|C2|Mux8~5_combout\ & (((\C1|C2|C2|Add0~38_combout\) # (!\C1|C2|C2|Mux8~4_combout\)))) # (!\C1|C2|C2|Mux8~5_combout\ & (\C1|C2|C2|TempResult~7_combout\ & (\C1|C2|C2|Mux8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|C2|Mux8~5_combout\,
	datab => \C1|C2|C2|TempResult~7_combout\,
	datac => \C1|C2|C2|Mux8~4_combout\,
	datad => \C1|C2|C2|Add0~38_combout\,
	combout => \C1|C2|C2|Mux2~1_combout\);

-- Location: LCCOMB_X10_Y10_N2
\C1|C2|C2|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux2~2_combout\ = (\C1|C2|C2|Mux8~3_combout\ & ((\C1|C2|CR|B_reg\(6) & ((\C1|C2|Mux1~1_combout\) # (\C1|C2|C2|Mux2~1_combout\))) # (!\C1|C2|CR|B_reg\(6) & (\C1|C2|Mux1~1_combout\ & \C1|C2|C2|Mux2~1_combout\)))) # (!\C1|C2|C2|Mux8~3_combout\ & 
-- (((\C1|C2|C2|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|C2|Mux8~3_combout\,
	datab => \C1|C2|CR|B_reg\(6),
	datac => \C1|C2|Mux1~1_combout\,
	datad => \C1|C2|C2|Mux2~1_combout\,
	combout => \C1|C2|C2|Mux2~2_combout\);

-- Location: LCCOMB_X10_Y10_N24
\C1|C2|C2|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux2~3_combout\ = (\C1|C2|C2|Mux2~0_combout\) # ((!\C1|C1|ALU_Select\(4) & \C1|C2|C2|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(4),
	datac => \C1|C2|C2|Mux2~0_combout\,
	datad => \C1|C2|C2|Mux2~2_combout\,
	combout => \C1|C2|C2|Mux2~3_combout\);

-- Location: LCCOMB_X11_Y10_N22
\C1|C2|C2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Equal0~1_combout\ = (!\C1|C2|C2|Mux4~3_combout\ & (!\C1|C2|C2|Mux3~3_combout\ & (!\C1|C2|C2|Mux1~3_combout\ & !\C1|C2|C2|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|C2|Mux4~3_combout\,
	datab => \C1|C2|C2|Mux3~3_combout\,
	datac => \C1|C2|C2|Mux1~3_combout\,
	datad => \C1|C2|C2|Mux2~3_combout\,
	combout => \C1|C2|C2|Equal0~1_combout\);

-- Location: LCCOMB_X12_Y10_N26
\C1|C2|C2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux5~0_combout\ = (\C1|C2|C2|Mux8~0_combout\ & ((\C1|C1|ALU_Select\(0) & (!\C1|C2|Mux4~1_combout\)) # (!\C1|C1|ALU_Select\(0) & ((!\C1|C2|CR|B_reg\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux4~1_combout\,
	datab => \C1|C2|CR|B_reg\(3),
	datac => \C1|C1|ALU_Select\(0),
	datad => \C1|C2|C2|Mux8~0_combout\,
	combout => \C1|C2|C2|Mux5~0_combout\);

-- Location: LCCOMB_X10_Y10_N8
\C1|C2|C2|TempResult~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|TempResult~4_combout\ = (\C1|C2|Mux4~0_combout\ & ((!\C1|C2|CR|B_reg\(3)))) # (!\C1|C2|Mux4~0_combout\ & (!\C1|C1|Bus1_Sel\(1) & \C1|C2|CR|B_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Bus1_Sel\(1),
	datac => \C1|C2|Mux4~0_combout\,
	datad => \C1|C2|CR|B_reg\(3),
	combout => \C1|C2|C2|TempResult~4_combout\);

-- Location: LCCOMB_X10_Y10_N6
\C1|C2|C2|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux5~1_combout\ = (\C1|C2|C2|Mux8~5_combout\ & (((\C1|C2|C2|Add0~29_combout\) # (!\C1|C2|C2|Mux8~4_combout\)))) # (!\C1|C2|C2|Mux8~5_combout\ & (\C1|C2|C2|TempResult~4_combout\ & (\C1|C2|C2|Mux8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|C2|Mux8~5_combout\,
	datab => \C1|C2|C2|TempResult~4_combout\,
	datac => \C1|C2|C2|Mux8~4_combout\,
	datad => \C1|C2|C2|Add0~29_combout\,
	combout => \C1|C2|C2|Mux5~1_combout\);

-- Location: LCCOMB_X10_Y10_N20
\C1|C2|C2|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux5~2_combout\ = (\C1|C2|CR|B_reg\(3) & ((\C1|C2|C2|Mux5~1_combout\) # ((\C1|C2|Mux4~1_combout\ & \C1|C2|C2|Mux8~3_combout\)))) # (!\C1|C2|CR|B_reg\(3) & (\C1|C2|C2|Mux5~1_combout\ & ((\C1|C2|Mux4~1_combout\) # (!\C1|C2|C2|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|B_reg\(3),
	datab => \C1|C2|Mux4~1_combout\,
	datac => \C1|C2|C2|Mux8~3_combout\,
	datad => \C1|C2|C2|Mux5~1_combout\,
	combout => \C1|C2|C2|Mux5~2_combout\);

-- Location: LCCOMB_X11_Y10_N28
\C1|C2|C2|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux5~3_combout\ = (\C1|C2|C2|Mux5~0_combout\) # ((!\C1|C1|ALU_Select\(4) & \C1|C2|C2|Mux5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C2|C2|Mux5~0_combout\,
	datac => \C1|C1|ALU_Select\(4),
	datad => \C1|C2|C2|Mux5~2_combout\,
	combout => \C1|C2|C2|Mux5~3_combout\);

-- Location: LCCOMB_X11_Y10_N8
\C1|C2|C2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Equal0~2_combout\ = (\C1|C2|C2|Equal0~0_combout\ & (!\C1|C2|C2|Mux8~8_combout\ & (\C1|C2|C2|Equal0~1_combout\ & !\C1|C2|C2|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|C2|Equal0~0_combout\,
	datab => \C1|C2|C2|Mux8~8_combout\,
	datac => \C1|C2|C2|Equal0~1_combout\,
	datad => \C1|C2|C2|Mux5~3_combout\,
	combout => \C1|C2|C2|Equal0~2_combout\);

-- Location: LCCOMB_X6_Y9_N12
\C1|C1|CCR_Load\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|CCR_Load~combout\ = (GLOBAL(\C1|C1|EDO.Decode~clkctrl_outclk\) & (\C1|C1|CCR_Load~combout\)) # (!GLOBAL(\C1|C1|EDO.Decode~clkctrl_outclk\) & ((!\C1|C1|WideOr1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|CCR_Load~combout\,
	datac => \C1|C1|WideOr1~3_combout\,
	datad => \C1|C1|EDO.Decode~clkctrl_outclk\,
	combout => \C1|C1|CCR_Load~combout\);

-- Location: FF_X11_Y10_N9
\C1|C2|CR|CCR_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C2|C2|Equal0~2_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \C1|C1|CCR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|CCR_reg\(0));

-- Location: LCCOMB_X7_Y9_N24
\C1|C1|P2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|P2~10_combout\ = (\C1|C1|Equal7~1_combout\ & (\C1|C2|CR|IR_reg\(5) & (!\C1|C2|CR|CCR_reg\(0) & !\C1|C2|CR|IR_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Equal7~1_combout\,
	datab => \C1|C2|CR|IR_reg\(5),
	datac => \C1|C2|CR|CCR_reg\(0),
	datad => \C1|C2|CR|IR_reg\(6),
	combout => \C1|C1|P2~10_combout\);

-- Location: LCCOMB_X8_Y10_N22
\C1|C1|FUT.JCC1_C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.JCC1_C~0_combout\ = (\C1|C1|Selector10~2_combout\ & \C1|C1|P2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Selector10~2_combout\,
	datac => \C1|C1|P2~10_combout\,
	combout => \C1|C1|FUT.JCC1_C~0_combout\);

-- Location: FF_X8_Y10_N23
\C1|C1|EDO.JCC1_C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C1|FUT.JCC1_C~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.JCC1_C~q\);

-- Location: LCCOMB_X9_Y10_N24
\C1|C1|P2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|P2~9_combout\ = (\C1|C1|Equal8~0_combout\ & (\C1|C2|CR|IR_reg\(0) & (\C1|C1|Equal6~1_combout\ & \C1|C2|CR|CCR_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Equal8~0_combout\,
	datab => \C1|C2|CR|IR_reg\(0),
	datac => \C1|C1|Equal6~1_combout\,
	datad => \C1|C2|CR|CCR_reg\(0),
	combout => \C1|C1|P2~9_combout\);

-- Location: LCCOMB_X8_Y10_N0
\C1|C1|FUT.JCC1_NC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.JCC1_NC~0_combout\ = (\C1|C1|Selector10~2_combout\ & \C1|C1|P2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Selector10~2_combout\,
	datad => \C1|C1|P2~9_combout\,
	combout => \C1|C1|FUT.JCC1_NC~0_combout\);

-- Location: FF_X8_Y10_N1
\C1|C1|EDO.JCC1_NC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C1|FUT.JCC1_NC~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.JCC1_NC~q\);

-- Location: FF_X11_Y10_N27
\C1|C2|CR|CCR_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C2|C2|Mux1~3_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \C1|C1|CCR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|CCR_reg\(3));

-- Location: LCCOMB_X8_Y9_N24
\C1|C1|Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|Equal13~0_combout\ = (!\C1|C2|CR|IR_reg\(0) & (\C1|C2|CR|IR_reg\(1) & (!\C1|C2|CR|IR_reg\(2) & \C1|C1|Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|IR_reg\(0),
	datab => \C1|C2|CR|IR_reg\(1),
	datac => \C1|C2|CR|IR_reg\(2),
	datad => \C1|C1|Equal6~1_combout\,
	combout => \C1|C1|Equal13~0_combout\);

-- Location: LCCOMB_X7_Y10_N10
\C1|C1|FUT.JCC1_NN~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.JCC1_NN~0_combout\ = (\C1|C1|Selector10~2_combout\ & (!\C1|C2|CR|CCR_reg\(3) & \C1|C1|Equal13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Selector10~2_combout\,
	datac => \C1|C2|CR|CCR_reg\(3),
	datad => \C1|C1|Equal13~0_combout\,
	combout => \C1|C1|FUT.JCC1_NN~0_combout\);

-- Location: FF_X7_Y10_N11
\C1|C1|EDO.JCC1_NN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C1|FUT.JCC1_NN~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.JCC1_NN~q\);

-- Location: LCCOMB_X8_Y9_N18
\C1|C2|C2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux0~0_combout\ = (\C1|C1|ALU_Select\(1) & ((\C1|C1|ALU_Select\(3)) # ((!\C1|C1|ALU_Select\(2))))) # (!\C1|C1|ALU_Select\(1) & ((\C1|C1|ALU_Select\(0) & (\C1|C1|ALU_Select\(3))) # (!\C1|C1|ALU_Select\(0) & ((\C1|C1|ALU_Select\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(3),
	datab => \C1|C1|ALU_Select\(1),
	datac => \C1|C1|ALU_Select\(0),
	datad => \C1|C1|ALU_Select\(2),
	combout => \C1|C2|C2|Mux0~0_combout\);

-- Location: LCCOMB_X10_Y9_N24
\C1|C2|C2|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Add0~46_combout\ = \C1|C2|C2|Add0~41_combout\ $ (\C1|C2|C2|Add0~45\ $ (\C1|C2|C2|Add0~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C2|C2|Add0~41_combout\,
	datad => \C1|C2|C2|Add0~43_combout\,
	cin => \C1|C2|C2|Add0~45\,
	combout => \C1|C2|C2|Add0~46_combout\);

-- Location: LCCOMB_X8_Y9_N12
\C1|C2|C2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux0~1_combout\ = (\C1|C1|ALU_Select\(6) & (!\C1|C2|C2|Mux0~0_combout\ & (!\C1|C1|ALU_Select\(4) & \C1|C2|C2|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(6),
	datab => \C1|C2|C2|Mux0~0_combout\,
	datac => \C1|C1|ALU_Select\(4),
	datad => \C1|C2|C2|Add0~46_combout\,
	combout => \C1|C2|C2|Mux0~1_combout\);

-- Location: FF_X8_Y9_N13
\C1|C2|CR|CCR_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C2|C2|Mux0~1_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \C1|C1|CCR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|CCR_reg\(1));

-- Location: LCCOMB_X7_Y9_N14
\C1|C1|Equal9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|Equal9~2_combout\ = (\C1|C2|CR|IR_reg\(1) & (\C1|C1|Equal6~1_combout\ & (\C1|C2|CR|IR_reg\(2) & !\C1|C2|CR|IR_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|IR_reg\(1),
	datab => \C1|C1|Equal6~1_combout\,
	datac => \C1|C2|CR|IR_reg\(2),
	datad => \C1|C2|CR|IR_reg\(0),
	combout => \C1|C1|Equal9~2_combout\);

-- Location: LCCOMB_X7_Y10_N24
\C1|C1|FUT.JCC1_V~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.JCC1_V~0_combout\ = (\C1|C1|Selector10~2_combout\ & (!\C1|C2|CR|CCR_reg\(1) & \C1|C1|Equal9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Selector10~2_combout\,
	datab => \C1|C2|CR|CCR_reg\(1),
	datad => \C1|C1|Equal9~2_combout\,
	combout => \C1|C1|FUT.JCC1_V~0_combout\);

-- Location: FF_X7_Y10_N25
\C1|C1|EDO.JCC1_V\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C1|FUT.JCC1_V~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.JCC1_V~q\);

-- Location: LCCOMB_X8_Y9_N0
\C1|C1|P2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|P2~7_combout\ = (\C1|C2|CR|IR_reg\(0) & (\C1|C2|CR|CCR_reg\(3) & (\C1|C1|Equal6~3_combout\ & \C1|C1|Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|IR_reg\(0),
	datab => \C1|C2|CR|CCR_reg\(3),
	datac => \C1|C1|Equal6~3_combout\,
	datad => \C1|C1|Equal6~1_combout\,
	combout => \C1|C1|P2~7_combout\);

-- Location: LCCOMB_X7_Y10_N22
\C1|C1|FUT.JCC1_N~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.JCC1_N~0_combout\ = (\C1|C1|Selector10~2_combout\ & \C1|C1|P2~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Selector10~2_combout\,
	datac => \C1|C1|P2~7_combout\,
	combout => \C1|C1|FUT.JCC1_N~0_combout\);

-- Location: FF_X7_Y10_N23
\C1|C1|EDO.JCC1_N\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C1|FUT.JCC1_N~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.JCC1_N~q\);

-- Location: LCCOMB_X7_Y10_N14
\C1|C1|P2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|P2~8_combout\ = (\C1|C2|CR|IR_reg\(0) & (\C1|C2|CR|CCR_reg\(1) & (\C1|C1|Equal6~1_combout\ & \C1|C1|Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|IR_reg\(0),
	datab => \C1|C2|CR|CCR_reg\(1),
	datac => \C1|C1|Equal6~1_combout\,
	datad => \C1|C1|Equal11~0_combout\,
	combout => \C1|C1|P2~8_combout\);

-- Location: LCCOMB_X7_Y10_N16
\C1|C1|FUT.JCC1_NV~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.JCC1_NV~0_combout\ = (\C1|C1|Selector10~2_combout\ & \C1|C1|P2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Selector10~2_combout\,
	datab => \C1|C1|P2~8_combout\,
	combout => \C1|C1|FUT.JCC1_NV~0_combout\);

-- Location: FF_X7_Y10_N17
\C1|C1|EDO.JCC1_NV\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C1|FUT.JCC1_NV~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.JCC1_NV~q\);

-- Location: LCCOMB_X7_Y10_N2
\C1|C1|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr3~0_combout\ = (!\C1|C1|EDO.JCC1_NN~q\ & (!\C1|C1|EDO.JCC1_V~q\ & (!\C1|C1|EDO.JCC1_N~q\ & !\C1|C1|EDO.JCC1_NV~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EDO.JCC1_NN~q\,
	datab => \C1|C1|EDO.JCC1_V~q\,
	datac => \C1|C1|EDO.JCC1_N~q\,
	datad => \C1|C1|EDO.JCC1_NV~q\,
	combout => \C1|C1|WideOr3~0_combout\);

-- Location: LCCOMB_X7_Y10_N20
\C1|C1|WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr3~1_combout\ = (\C1|C1|EDO.JCC1_NZ~q\) # ((\C1|C1|EDO.JCC1_C~q\) # ((\C1|C1|EDO.JCC1_NC~q\) # (!\C1|C1|WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EDO.JCC1_NZ~q\,
	datab => \C1|C1|EDO.JCC1_C~q\,
	datac => \C1|C1|EDO.JCC1_NC~q\,
	datad => \C1|C1|WideOr3~0_combout\,
	combout => \C1|C1|WideOr3~1_combout\);

-- Location: FF_X7_Y10_N5
\C1|C1|EDO.JCC2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C1|WideOr3~1_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.JCC2~q\);

-- Location: FF_X7_Y8_N21
\C1|C1|EDO.JCC3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C1|EDO.JCC2~q\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.JCC3~q\);

-- Location: LCCOMB_X7_Y10_N4
\C1|C1|Equal6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|Equal6~4_combout\ = (\C1|C1|Equal6~1_combout\ & !\C1|C2|CR|IR_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|Equal6~1_combout\,
	datad => \C1|C2|CR|IR_reg\(0),
	combout => \C1|C1|Equal6~4_combout\);

-- Location: LCCOMB_X8_Y10_N2
\C1|C1|FUT.JMP1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.JMP1~4_combout\ = (\C1|C1|Selector10~2_combout\ & (!\C1|C2|CR|IR_reg\(1) & (\C1|C1|Equal6~4_combout\ & !\C1|C2|CR|IR_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Selector10~2_combout\,
	datab => \C1|C2|CR|IR_reg\(1),
	datac => \C1|C1|Equal6~4_combout\,
	datad => \C1|C2|CR|IR_reg\(2),
	combout => \C1|C1|FUT.JMP1~4_combout\);

-- Location: FF_X8_Y10_N3
\C1|C1|EDO.JMP1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C1|FUT.JMP1~4_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.JMP1~q\);

-- Location: FF_X7_Y8_N15
\C1|C1|EDO.JMP2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C1|EDO.JMP1~q\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.JMP2~q\);

-- Location: FF_X7_Y8_N31
\C1|C1|EDO.JMP3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C1|EDO.JMP2~q\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.JMP3~q\);

-- Location: LCCOMB_X7_Y8_N20
\C1|C1|PC_Load~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|PC_Load~0_combout\ = (!\C1|C1|EDO.JCC3~q\ & !\C1|C1|EDO.JMP3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|C1|EDO.JCC3~q\,
	datad => \C1|C1|EDO.JMP3~q\,
	combout => \C1|C1|PC_Load~0_combout\);

-- Location: LCCOMB_X7_Y8_N22
\C1|C1|PC_Load\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|PC_Load~combout\ = (GLOBAL(\C1|C1|EDO.Decode~clkctrl_outclk\) & (\C1|C1|PC_Load~combout\)) # (!GLOBAL(\C1|C1|EDO.Decode~clkctrl_outclk\) & ((!\C1|C1|PC_Load~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|PC_Load~combout\,
	datab => \C1|C1|PC_Load~0_combout\,
	datad => \C1|C1|EDO.Decode~clkctrl_outclk\,
	combout => \C1|C1|PC_Load~combout\);

-- Location: LCCOMB_X7_Y11_N8
\C1|C2|C1|cuenta[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C1|cuenta[0]~10_combout\ = (\C1|C1|PC_Load~combout\) # ((\C1|C1|PC_Inc~combout\ & !\C1|C2|C1|prev_increment~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|PC_Inc~combout\,
	datac => \C1|C2|C1|prev_increment~q\,
	datad => \C1|C1|PC_Load~combout\,
	combout => \C1|C2|C1|cuenta[0]~10_combout\);

-- Location: FF_X11_Y8_N25
\C1|C2|C1|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C2|C1|cuenta[5]~19_combout\,
	asdata => \C1|C2|Mux10~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \C1|C2|C1|process_0~0_combout\,
	ena => \C1|C2|C1|cuenta[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|C1|cuenta\(5));

-- Location: LCCOMB_X11_Y8_N26
\C1|C2|C1|cuenta[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C1|cuenta[6]~21_combout\ = (\C1|C2|C1|cuenta\(6) & (\C1|C2|C1|cuenta[5]~20\ $ (GND))) # (!\C1|C2|C1|cuenta\(6) & (!\C1|C2|C1|cuenta[5]~20\ & VCC))
-- \C1|C2|C1|cuenta[6]~22\ = CARRY((\C1|C2|C1|cuenta\(6) & !\C1|C2|C1|cuenta[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|C1|cuenta\(6),
	datad => VCC,
	cin => \C1|C2|C1|cuenta[5]~20\,
	combout => \C1|C2|C1|cuenta[6]~21_combout\,
	cout => \C1|C2|C1|cuenta[6]~22\);

-- Location: FF_X11_Y8_N27
\C1|C2|C1|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C2|C1|cuenta[6]~21_combout\,
	asdata => \C1|C2|Mux9~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \C1|C2|C1|process_0~0_combout\,
	ena => \C1|C2|C1|cuenta[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|C1|cuenta\(6));

-- Location: LCCOMB_X11_Y8_N28
\C1|C2|C1|cuenta[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C1|cuenta[7]~23_combout\ = \C1|C2|C1|cuenta[6]~22\ $ (\C1|C2|C1|cuenta\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C1|C2|C1|cuenta\(7),
	cin => \C1|C2|C1|cuenta[6]~22\,
	combout => \C1|C2|C1|cuenta[7]~23_combout\);

-- Location: FF_X11_Y8_N29
\C1|C2|C1|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C2|C1|cuenta[7]~23_combout\,
	asdata => \C1|C2|Mux8~13_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \C1|C2|C1|process_0~0_combout\,
	ena => \C1|C2|C1|cuenta[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|C1|cuenta\(7));

-- Location: LCCOMB_X10_Y8_N12
\C1|C2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux0~0_combout\ = (!\C1|C1|Bus1_Sel\(1) & ((\C1|C1|Bus1_Sel\(0) & (\C1|C2|CR|A_reg\(7))) # (!\C1|C1|Bus1_Sel\(0) & ((\C1|C2|C1|cuenta\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Bus1_Sel\(0),
	datab => \C1|C1|Bus1_Sel\(1),
	datac => \C1|C2|CR|A_reg\(7),
	datad => \C1|C2|C1|cuenta\(7),
	combout => \C1|C2|Mux0~0_combout\);

-- Location: LCCOMB_X12_Y9_N16
\C1|C2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux0~1_combout\ = (\C1|C2|Mux0~0_combout\) # ((\C1|C2|CR|B_reg\(7) & \C1|C1|Bus1_Sel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|B_reg\(7),
	datac => \C1|C1|Bus1_Sel\(1),
	datad => \C1|C2|Mux0~0_combout\,
	combout => \C1|C2|Mux0~1_combout\);

-- Location: FF_X7_Y8_N3
\C1|C1|EDO.STOREA3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C1|EDO.STOREA2~q\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.STOREA3~q\);

-- Location: LCCOMB_X7_Y10_N28
\C1|C1|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr6~0_combout\ = (!\C1|C1|EDO.STOREA~q\ & (!\C1|C1|EDO.Load_DIR_A~q\ & (!\C1|C1|EDO.Load_inmA1~q\ & \C1|C1|EDO.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EDO.STOREA~q\,
	datab => \C1|C1|EDO.Load_DIR_A~q\,
	datac => \C1|C1|EDO.Load_inmA1~q\,
	datad => \C1|C1|EDO.IDLE~q\,
	combout => \C1|C1|WideOr6~0_combout\);

-- Location: LCCOMB_X7_Y10_N30
\C1|C1|WideOr6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr6~1_combout\ = (!\C1|C1|EDO.JMP1~q\ & \C1|C1|WideOr6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|C1|EDO.JMP1~q\,
	datad => \C1|C1|WideOr6~0_combout\,
	combout => \C1|C1|WideOr6~1_combout\);

-- Location: LCCOMB_X7_Y10_N8
\C1|C1|WideOr6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr6~2_combout\ = (\C1|C1|EDO.Load_DIR_A3~q\) # ((\C1|C1|EDO.STOREA3~q\) # ((\C1|C1|WideOr3~1_combout\) # (!\C1|C1|WideOr6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EDO.Load_DIR_A3~q\,
	datab => \C1|C1|EDO.STOREA3~q\,
	datac => \C1|C1|WideOr6~1_combout\,
	datad => \C1|C1|WideOr3~1_combout\,
	combout => \C1|C1|WideOr6~2_combout\);

-- Location: LCCOMB_X7_Y10_N6
\C1|C1|MAR_Load\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|MAR_Load~combout\ = (GLOBAL(\C1|C1|EDO.Decode~clkctrl_outclk\) & (\C1|C1|MAR_Load~combout\)) # (!GLOBAL(\C1|C1|EDO.Decode~clkctrl_outclk\) & ((\C1|C1|WideOr6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|MAR_Load~combout\,
	datac => \C1|C1|WideOr6~2_combout\,
	datad => \C1|C1|EDO.Decode~clkctrl_outclk\,
	combout => \C1|C1|MAR_Load~combout\);

-- Location: FF_X12_Y8_N23
\C1|C2|CR|MAR_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux8~13_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \C1|C1|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|MAR_reg\(7));

-- Location: FF_X11_Y10_N31
\C1|C2|CR|MAR_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux10~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \C1|C1|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|MAR_reg\(5));

-- Location: FF_X10_Y10_N15
\C1|C2|CR|MAR_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux9~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \C1|C1|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|MAR_reg\(6));

-- Location: LCCOMB_X11_Y10_N30
\C1|C2|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux14~3_combout\ = (\C1|C1|Bus2_Sel\(1) & (((!\C1|C2|CR|MAR_reg\(6)) # (!\C1|C2|CR|MAR_reg\(5))) # (!\C1|C2|CR|MAR_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Bus2_Sel\(1),
	datab => \C1|C2|CR|MAR_reg\(7),
	datac => \C1|C2|CR|MAR_reg\(5),
	datad => \C1|C2|CR|MAR_reg\(6),
	combout => \C1|C2|Mux14~3_combout\);

-- Location: FF_X11_Y10_N21
\C1|C2|CR|MAR_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux11~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \C1|C1|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|MAR_reg\(4));

-- Location: LCCOMB_X11_Y10_N20
\C1|C2|Mux14~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux14~17_combout\ = (\C1|C2|CR|MAR_reg\(7) & (\C1|C1|Bus2_Sel\(1) & ((\C1|C2|Mux14~3_combout\) # (\C1|C2|CR|MAR_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux14~3_combout\,
	datab => \C1|C2|CR|MAR_reg\(7),
	datac => \C1|C2|CR|MAR_reg\(4),
	datad => \C1|C1|Bus2_Sel\(1),
	combout => \C1|C2|Mux14~17_combout\);

-- Location: LCCOMB_X9_Y10_N18
\C2|datamm|RAM~16feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~16feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \C2|datamm|RAM~16feeder_combout\);

-- Location: FF_X9_Y10_N19
\C2|datamm|RAM~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|datamm|RAM~16feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \C1|C1|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM~16_q\);

-- Location: LCCOMB_X7_Y9_N4
\C1|C1|wr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|wr~1_combout\ = (\C1|C1|EDO.Decode~q\) # (\C1|C1|EDO.NOT_B~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|C1|EDO.Decode~q\,
	datad => \C1|C1|EDO.NOT_B~q\,
	combout => \C1|C1|wr~1_combout\);

-- Location: LCCOMB_X8_Y10_N24
\C1|C1|FUT.STOREA4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.STOREA4~0_combout\ = (!\C1|C2|CR|IR_reg\(0) & (\C1|C1|P2~4_combout\ & \C1|C1|EDO.STOREA3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|IR_reg\(0),
	datab => \C1|C1|P2~4_combout\,
	datac => \C1|C1|EDO.STOREA3~q\,
	combout => \C1|C1|FUT.STOREA4~0_combout\);

-- Location: FF_X8_Y10_N25
\C1|C1|EDO.STOREA4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C1|FUT.STOREA4~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.STOREA4~q\);

-- Location: LCCOMB_X8_Y10_N10
\C1|C1|wr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|wr~0_combout\ = (\C1|C1|EDO.STOREB~q\) # (\C1|C1|EDO.STOREA4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|C1|EDO.STOREB~q\,
	datad => \C1|C1|EDO.STOREA4~q\,
	combout => \C1|C1|wr~0_combout\);

-- Location: LCCOMB_X8_Y10_N30
\C1|C1|wr\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|wr~combout\ = (\C1|C1|wr~1_combout\ & (\C1|C1|wr~combout\)) # (!\C1|C1|wr~1_combout\ & ((\C1|C1|wr~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|wr~1_combout\,
	datac => \C1|C1|wr~combout\,
	datad => \C1|C1|wr~0_combout\,
	combout => \C1|C1|wr~combout\);

-- Location: LCCOMB_X10_Y10_N14
\C2|datamm|RAM~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~46_combout\ = (!\C1|C2|CR|MAR_reg\(4) & (!\C1|C2|CR|MAR_reg\(5) & (!\C1|C2|CR|MAR_reg\(6) & \C1|C1|wr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(4),
	datab => \C1|C2|CR|MAR_reg\(5),
	datac => \C1|C2|CR|MAR_reg\(6),
	datad => \C1|C1|wr~combout\,
	combout => \C2|datamm|RAM~46_combout\);

-- Location: FF_X12_Y8_N27
\C1|C2|CR|MAR_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux14~16_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \C1|C1|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|MAR_reg\(1));

-- Location: LCCOMB_X16_Y8_N4
\C1|C2|CR|MAR_reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|CR|MAR_reg[3]~feeder_combout\ = \C1|C2|Mux12~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|C2|Mux12~12_combout\,
	combout => \C1|C2|CR|MAR_reg[3]~feeder_combout\);

-- Location: FF_X16_Y8_N5
\C1|C2|CR|MAR_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C2|CR|MAR_reg[3]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \C1|C1|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|MAR_reg\(3));

-- Location: FF_X12_Y8_N13
\C1|C2|CR|MAR_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux13~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \C1|C1|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|MAR_reg\(2));

-- Location: FF_X12_Y8_N25
\C1|C2|CR|MAR_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux15~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \C1|C1|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|MAR_reg\(0));

-- Location: LCCOMB_X9_Y11_N30
\C2|datamm|RAM~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~47_combout\ = (!\C1|C2|CR|MAR_reg\(1) & (!\C1|C2|CR|MAR_reg\(3) & (!\C1|C2|CR|MAR_reg\(2) & !\C1|C2|CR|MAR_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(1),
	datab => \C1|C2|CR|MAR_reg\(3),
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|CR|MAR_reg\(0),
	combout => \C2|datamm|RAM~47_combout\);

-- Location: LCCOMB_X9_Y10_N30
\C2|datamm|RAM~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~48_combout\ = (\C2|datamm|RAM~46_combout\ & \C2|datamm|RAM~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|datamm|RAM~46_combout\,
	datac => \C2|datamm|RAM~47_combout\,
	combout => \C2|datamm|RAM~48_combout\);

-- Location: FF_X12_Y9_N31
\C2|datamm|RAM~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux0~1_combout\,
	sload => VCC,
	ena => \C2|datamm|RAM~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM~24_q\);

-- Location: LCCOMB_X14_Y11_N4
\~QUARTUS_CREATED_GND~I\ : cycloneive_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: M9K_X13_Y8_N0
\C2|datamm|RAM_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000EE0000000CC0000000AA0000000FF00000007700000008800000004500000002300000005500000008700000004E0000000780000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000000022000000044",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/CPU.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Memory:C2|DataMemory:datamm|altsyncram:RAM_rtl_0|altsyncram_apm1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 96,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 7,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 127,
	port_b_logical_ram_depth => 96,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \C1|C1|wr~combout\,
	portbre => VCC,
	portbaddrstall => \C1|C1|ALT_INV_MAR_Load~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X14_Y10_N30
\C2|datamm|RAM~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~44_combout\ = (\C2|datamm|RAM~16_q\ & ((\C2|datamm|RAM_rtl_0|auto_generated|ram_block1a7\))) # (!\C2|datamm|RAM~16_q\ & (\C2|datamm|RAM~24_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|datamm|RAM~16_q\,
	datac => \C2|datamm|RAM~24_q\,
	datad => \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a7\,
	combout => \C2|datamm|RAM~44_combout\);

-- Location: FF_X16_Y8_N27
\C2|datamm|RAM_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|CR|MAR_reg\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(7));

-- Location: FF_X12_Y8_N21
\C2|datamm|RAM_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C2|Mux13~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \C1|C1|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(6));

-- Location: FF_X16_Y8_N31
\C2|datamm|RAM_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|CR|MAR_reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(5));

-- Location: FF_X12_Y8_N19
\C2|datamm|RAM_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C2|Mux12~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \C1|C1|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(8));

-- Location: LCCOMB_X16_Y8_N30
\C2|datamm|RAM~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~27_combout\ = (\C2|datamm|RAM_rtl_0_bypass\(7) & (\C2|datamm|RAM_rtl_0_bypass\(8) & (\C2|datamm|RAM_rtl_0_bypass\(6) $ (!\C2|datamm|RAM_rtl_0_bypass\(5))))) # (!\C2|datamm|RAM_rtl_0_bypass\(7) & (!\C2|datamm|RAM_rtl_0_bypass\(8) & 
-- (\C2|datamm|RAM_rtl_0_bypass\(6) $ (!\C2|datamm|RAM_rtl_0_bypass\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|datamm|RAM_rtl_0_bypass\(7),
	datab => \C2|datamm|RAM_rtl_0_bypass\(6),
	datac => \C2|datamm|RAM_rtl_0_bypass\(5),
	datad => \C2|datamm|RAM_rtl_0_bypass\(8),
	combout => \C2|datamm|RAM~27_combout\);

-- Location: FF_X10_Y10_N23
\C2|datamm|RAM_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C2|Mux9~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \C1|C1|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(14));

-- Location: FF_X14_Y10_N7
\C2|datamm|RAM_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|CR|MAR_reg\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(13));

-- Location: LCCOMB_X14_Y10_N0
\C2|datamm|RAM_rtl_0_bypass[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM_rtl_0_bypass[0]~feeder_combout\ = \C1|C1|wr~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|C1|wr~combout\,
	combout => \C2|datamm|RAM_rtl_0_bypass[0]~feeder_combout\);

-- Location: FF_X14_Y10_N1
\C2|datamm|RAM_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|datamm|RAM_rtl_0_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(0));

-- Location: LCCOMB_X14_Y10_N6
\C2|datamm|RAM~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~29_combout\ = (\C2|datamm|RAM_rtl_0_bypass\(0) & (\C2|datamm|RAM_rtl_0_bypass\(14) $ (!\C2|datamm|RAM_rtl_0_bypass\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|datamm|RAM_rtl_0_bypass\(14),
	datac => \C2|datamm|RAM_rtl_0_bypass\(13),
	datad => \C2|datamm|RAM_rtl_0_bypass\(0),
	combout => \C2|datamm|RAM~29_combout\);

-- Location: LCCOMB_X12_Y10_N0
\C2|datamm|RAM_rtl_0_bypass[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM_rtl_0_bypass[11]~feeder_combout\ = \C1|C2|CR|MAR_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|C2|CR|MAR_reg\(5),
	combout => \C2|datamm|RAM_rtl_0_bypass[11]~feeder_combout\);

-- Location: FF_X12_Y10_N1
\C2|datamm|RAM_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|datamm|RAM_rtl_0_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(11));

-- Location: FF_X11_Y10_N5
\C2|datamm|RAM_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C2|Mux11~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \C1|C1|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(10));

-- Location: FF_X12_Y10_N11
\C2|datamm|RAM_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|CR|MAR_reg\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(9));

-- Location: FF_X11_Y10_N25
\C2|datamm|RAM_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C2|Mux10~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \C1|C1|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(12));

-- Location: LCCOMB_X12_Y10_N10
\C2|datamm|RAM~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~28_combout\ = (\C2|datamm|RAM_rtl_0_bypass\(11) & (\C2|datamm|RAM_rtl_0_bypass\(12) & (\C2|datamm|RAM_rtl_0_bypass\(10) $ (!\C2|datamm|RAM_rtl_0_bypass\(9))))) # (!\C2|datamm|RAM_rtl_0_bypass\(11) & (!\C2|datamm|RAM_rtl_0_bypass\(12) & 
-- (\C2|datamm|RAM_rtl_0_bypass\(10) $ (!\C2|datamm|RAM_rtl_0_bypass\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|datamm|RAM_rtl_0_bypass\(11),
	datab => \C2|datamm|RAM_rtl_0_bypass\(10),
	datac => \C2|datamm|RAM_rtl_0_bypass\(9),
	datad => \C2|datamm|RAM_rtl_0_bypass\(12),
	combout => \C2|datamm|RAM~28_combout\);

-- Location: FF_X12_Y8_N15
\C2|datamm|RAM_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C2|Mux14~16_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \C1|C1|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(4));

-- Location: LCCOMB_X15_Y10_N18
\C2|datamm|RAM_rtl_0_bypass[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM_rtl_0_bypass[3]~feeder_combout\ = \C1|C2|CR|MAR_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|C2|CR|MAR_reg\(1),
	combout => \C2|datamm|RAM_rtl_0_bypass[3]~feeder_combout\);

-- Location: FF_X15_Y10_N19
\C2|datamm|RAM_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|datamm|RAM_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(3));

-- Location: FF_X15_Y10_N17
\C2|datamm|RAM_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|CR|MAR_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(1));

-- Location: FF_X12_Y8_N9
\C2|datamm|RAM_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C2|Mux15~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \C1|C1|MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(2));

-- Location: LCCOMB_X15_Y10_N16
\C2|datamm|RAM~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~26_combout\ = (\C2|datamm|RAM_rtl_0_bypass\(4) & (\C2|datamm|RAM_rtl_0_bypass\(3) & (\C2|datamm|RAM_rtl_0_bypass\(1) $ (!\C2|datamm|RAM_rtl_0_bypass\(2))))) # (!\C2|datamm|RAM_rtl_0_bypass\(4) & (!\C2|datamm|RAM_rtl_0_bypass\(3) & 
-- (\C2|datamm|RAM_rtl_0_bypass\(1) $ (!\C2|datamm|RAM_rtl_0_bypass\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|datamm|RAM_rtl_0_bypass\(4),
	datab => \C2|datamm|RAM_rtl_0_bypass\(3),
	datac => \C2|datamm|RAM_rtl_0_bypass\(1),
	datad => \C2|datamm|RAM_rtl_0_bypass\(2),
	combout => \C2|datamm|RAM~26_combout\);

-- Location: LCCOMB_X15_Y10_N12
\C2|datamm|RAM~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~30_combout\ = (\C2|datamm|RAM~27_combout\ & (\C2|datamm|RAM~29_combout\ & (\C2|datamm|RAM~28_combout\ & \C2|datamm|RAM~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|datamm|RAM~27_combout\,
	datab => \C2|datamm|RAM~29_combout\,
	datac => \C2|datamm|RAM~28_combout\,
	datad => \C2|datamm|RAM~26_combout\,
	combout => \C2|datamm|RAM~30_combout\);

-- Location: LCCOMB_X15_Y10_N30
\C2|datamm|RAM_rtl_0_bypass[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM_rtl_0_bypass[30]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \C2|datamm|RAM_rtl_0_bypass[30]~feeder_combout\);

-- Location: FF_X15_Y10_N31
\C2|datamm|RAM_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|datamm|RAM_rtl_0_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(30));

-- Location: LCCOMB_X14_Y10_N28
\C2|datamm|RAM_rtl_0_bypass[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM_rtl_0_bypass[29]~feeder_combout\ = \C1|C2|Mux0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|C2|Mux0~1_combout\,
	combout => \C2|datamm|RAM_rtl_0_bypass[29]~feeder_combout\);

-- Location: FF_X14_Y10_N29
\C2|datamm|RAM_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|datamm|RAM_rtl_0_bypass[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(29));

-- Location: LCCOMB_X14_Y10_N26
\C2|datamm|RAM~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~45_combout\ = (\C2|datamm|RAM~30_combout\ & (((\C2|datamm|RAM_rtl_0_bypass\(29))))) # (!\C2|datamm|RAM~30_combout\ & ((\C2|datamm|RAM_rtl_0_bypass\(30) & (\C2|datamm|RAM~44_combout\)) # (!\C2|datamm|RAM_rtl_0_bypass\(30) & 
-- ((\C2|datamm|RAM_rtl_0_bypass\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|datamm|RAM~44_combout\,
	datab => \C2|datamm|RAM~30_combout\,
	datac => \C2|datamm|RAM_rtl_0_bypass\(30),
	datad => \C2|datamm|RAM_rtl_0_bypass\(29),
	combout => \C2|datamm|RAM~45_combout\);

-- Location: FF_X14_Y10_N27
\C2|datamm|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|datamm|RAM~45_combout\,
	ena => \C1|C1|ALT_INV_wr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|data_out\(7));

-- Location: IOIBUF_X39_Y0_N15
\port_in_05[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_05(7),
	o => \port_in_05[7]~input_o\);

-- Location: IOIBUF_X41_Y5_N22
\port_in_07[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_07(7),
	o => \port_in_07[7]~input_o\);

-- Location: IOIBUF_X35_Y0_N1
\port_in_03[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_03(7),
	o => \port_in_03[7]~input_o\);

-- Location: IOIBUF_X41_Y3_N22
\port_in_01[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(7),
	o => \port_in_01[7]~input_o\);

-- Location: LCCOMB_X35_Y4_N24
\C1|C2|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux8~0_combout\ = (\C1|C2|CR|MAR_reg\(2) & (((\C1|C2|CR|MAR_reg\(1))))) # (!\C1|C2|CR|MAR_reg\(2) & ((\C1|C2|CR|MAR_reg\(1) & (\port_in_03[7]~input_o\)) # (!\C1|C2|CR|MAR_reg\(1) & ((\port_in_01[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_03[7]~input_o\,
	datab => \port_in_01[7]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|CR|MAR_reg\(1),
	combout => \C1|C2|Mux8~0_combout\);

-- Location: LCCOMB_X35_Y4_N2
\C1|C2|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux8~1_combout\ = (\C1|C2|CR|MAR_reg\(2) & ((\C1|C2|Mux8~0_combout\ & ((\port_in_07[7]~input_o\))) # (!\C1|C2|Mux8~0_combout\ & (\port_in_05[7]~input_o\)))) # (!\C1|C2|CR|MAR_reg\(2) & (((\C1|C2|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_05[7]~input_o\,
	datab => \port_in_07[7]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|Mux8~0_combout\,
	combout => \C1|C2|Mux8~1_combout\);

-- Location: IOIBUF_X37_Y0_N22
\port_in_15[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_15(7),
	o => \port_in_15[7]~input_o\);

-- Location: IOIBUF_X41_Y3_N15
\port_in_13[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_13(7),
	o => \port_in_13[7]~input_o\);

-- Location: IOIBUF_X41_Y5_N1
\port_in_09[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_09(7),
	o => \port_in_09[7]~input_o\);

-- Location: IOIBUF_X41_Y6_N22
\port_in_11[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_11(7),
	o => \port_in_11[7]~input_o\);

-- Location: LCCOMB_X35_Y4_N10
\C1|C2|Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux8~7_combout\ = (\C1|C2|CR|MAR_reg\(2) & (((\C1|C2|CR|MAR_reg\(1))))) # (!\C1|C2|CR|MAR_reg\(2) & ((\C1|C2|CR|MAR_reg\(1) & ((\port_in_11[7]~input_o\))) # (!\C1|C2|CR|MAR_reg\(1) & (\port_in_09[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_09[7]~input_o\,
	datab => \port_in_11[7]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|CR|MAR_reg\(1),
	combout => \C1|C2|Mux8~7_combout\);

-- Location: LCCOMB_X35_Y4_N8
\C1|C2|Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux8~8_combout\ = (\C1|C2|CR|MAR_reg\(2) & ((\C1|C2|Mux8~7_combout\ & (\port_in_15[7]~input_o\)) # (!\C1|C2|Mux8~7_combout\ & ((\port_in_13[7]~input_o\))))) # (!\C1|C2|CR|MAR_reg\(2) & (((\C1|C2|Mux8~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_15[7]~input_o\,
	datab => \port_in_13[7]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|Mux8~7_combout\,
	combout => \C1|C2|Mux8~8_combout\);

-- Location: IOIBUF_X32_Y0_N15
\port_in_10[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_10(7),
	o => \port_in_10[7]~input_o\);

-- Location: IOIBUF_X35_Y0_N8
\port_in_14[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_14(7),
	o => \port_in_14[7]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\port_in_08[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_08(7),
	o => \port_in_08[7]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\port_in_12[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_12(7),
	o => \port_in_12[7]~input_o\);

-- Location: LCCOMB_X31_Y4_N8
\C1|C2|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux8~2_combout\ = (\C1|C2|CR|MAR_reg\(2) & (((\port_in_12[7]~input_o\) # (\C1|C2|CR|MAR_reg\(1))))) # (!\C1|C2|CR|MAR_reg\(2) & (\port_in_08[7]~input_o\ & ((!\C1|C2|CR|MAR_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_08[7]~input_o\,
	datab => \port_in_12[7]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|CR|MAR_reg\(1),
	combout => \C1|C2|Mux8~2_combout\);

-- Location: LCCOMB_X31_Y4_N14
\C1|C2|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux8~3_combout\ = (\C1|C2|Mux8~2_combout\ & (((\port_in_14[7]~input_o\) # (!\C1|C2|CR|MAR_reg\(1))))) # (!\C1|C2|Mux8~2_combout\ & (\port_in_10[7]~input_o\ & ((\C1|C2|CR|MAR_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_10[7]~input_o\,
	datab => \port_in_14[7]~input_o\,
	datac => \C1|C2|Mux8~2_combout\,
	datad => \C1|C2|CR|MAR_reg\(1),
	combout => \C1|C2|Mux8~3_combout\);

-- Location: IOIBUF_X16_Y29_N1
\port_in_02[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_02(7),
	o => \port_in_02[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\port_in_06[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_06(7),
	o => \port_in_06[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\port_in_04[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_04(7),
	o => \port_in_04[7]~input_o\);

-- Location: IOIBUF_X41_Y12_N1
\port_in_00[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(7),
	o => \port_in_00[7]~input_o\);

-- Location: LCCOMB_X16_Y8_N12
\C1|C2|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux8~4_combout\ = (\C1|C2|CR|MAR_reg\(2) & ((\port_in_04[7]~input_o\) # ((\C1|C2|CR|MAR_reg\(1))))) # (!\C1|C2|CR|MAR_reg\(2) & (((\port_in_00[7]~input_o\ & !\C1|C2|CR|MAR_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_04[7]~input_o\,
	datab => \port_in_00[7]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|CR|MAR_reg\(1),
	combout => \C1|C2|Mux8~4_combout\);

-- Location: LCCOMB_X16_Y8_N6
\C1|C2|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux8~5_combout\ = (\C1|C2|CR|MAR_reg\(1) & ((\C1|C2|Mux8~4_combout\ & ((\port_in_06[7]~input_o\))) # (!\C1|C2|Mux8~4_combout\ & (\port_in_02[7]~input_o\)))) # (!\C1|C2|CR|MAR_reg\(1) & (((\C1|C2|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_02[7]~input_o\,
	datab => \port_in_06[7]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(1),
	datad => \C1|C2|Mux8~4_combout\,
	combout => \C1|C2|Mux8~5_combout\);

-- Location: LCCOMB_X35_Y4_N16
\C1|C2|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux8~6_combout\ = (\C1|C2|CR|MAR_reg\(0) & (((\C1|C2|CR|MAR_reg\(3))))) # (!\C1|C2|CR|MAR_reg\(0) & ((\C1|C2|CR|MAR_reg\(3) & (\C1|C2|Mux8~3_combout\)) # (!\C1|C2|CR|MAR_reg\(3) & ((\C1|C2|Mux8~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(0),
	datab => \C1|C2|Mux8~3_combout\,
	datac => \C1|C2|CR|MAR_reg\(3),
	datad => \C1|C2|Mux8~5_combout\,
	combout => \C1|C2|Mux8~6_combout\);

-- Location: LCCOMB_X35_Y4_N22
\C1|C2|Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux8~9_combout\ = (\C1|C2|CR|MAR_reg\(0) & ((\C1|C2|Mux8~6_combout\ & ((\C1|C2|Mux8~8_combout\))) # (!\C1|C2|Mux8~6_combout\ & (\C1|C2|Mux8~1_combout\)))) # (!\C1|C2|CR|MAR_reg\(0) & (((\C1|C2|Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(0),
	datab => \C1|C2|Mux8~1_combout\,
	datac => \C1|C2|Mux8~8_combout\,
	datad => \C1|C2|Mux8~6_combout\,
	combout => \C1|C2|Mux8~9_combout\);

-- Location: LCCOMB_X12_Y8_N22
\C1|C2|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux14~2_combout\ = (\C1|C2|CR|MAR_reg\(7) & \C1|C1|Bus2_Sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|C2|CR|MAR_reg\(7),
	datad => \C1|C1|Bus2_Sel\(1),
	combout => \C1|C2|Mux14~2_combout\);

-- Location: LCCOMB_X11_Y8_N4
\C1|C2|Mux8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux8~10_combout\ = (\C1|C2|C2|Mux1~0_combout\) # ((!\C1|C1|ALU_Select\(4) & \C1|C2|C2|Mux1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALU_Select\(4),
	datac => \C1|C2|C2|Mux1~0_combout\,
	datad => \C1|C2|C2|Mux1~2_combout\,
	combout => \C1|C2|Mux8~10_combout\);

-- Location: M9K_X13_Y10_N0
\C2|progmem|ROM_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000E5002580040003840097000080087003800096003C00088",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/CPU.ram0_ProgramMemory_85930c83.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Memory:C2|ProgramMemory:progmem|altsyncram:ROM_rtl_0|altsyncram_j371:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 7,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	portaaddr => \C2|progmem|ROM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \C2|progmem|ROM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X11_Y8_N2
\C1|C2|Mux8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux8~11_combout\ = (\C1|C2|Mux14~3_combout\ & ((\C1|C2|Mux14~2_combout\) # ((\C2|progmem|ROM_rtl_0|auto_generated|ram_block1a7\)))) # (!\C1|C2|Mux14~3_combout\ & (!\C1|C2|Mux14~2_combout\ & (\C1|C2|Mux8~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux14~3_combout\,
	datab => \C1|C2|Mux14~2_combout\,
	datac => \C1|C2|Mux8~10_combout\,
	datad => \C2|progmem|ROM_rtl_0|auto_generated|ram_block1a7\,
	combout => \C1|C2|Mux8~11_combout\);

-- Location: LCCOMB_X11_Y8_N0
\C1|C2|Mux8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux8~12_combout\ = (\C1|C2|Mux14~17_combout\ & ((\C1|C2|Mux8~11_combout\ & (\C2|datamm|data_out\(7))) # (!\C1|C2|Mux8~11_combout\ & ((\C1|C2|Mux8~9_combout\))))) # (!\C1|C2|Mux14~17_combout\ & (((\C1|C2|Mux8~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux14~17_combout\,
	datab => \C2|datamm|data_out\(7),
	datac => \C1|C2|Mux8~9_combout\,
	datad => \C1|C2|Mux8~11_combout\,
	combout => \C1|C2|Mux8~12_combout\);

-- Location: LCCOMB_X11_Y8_N6
\C1|C2|Mux8~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux8~13_combout\ = (\C1|C1|Bus2_Sel\(0) & ((\C1|C1|Bus2_Sel\(1) & ((\C1|C2|Mux8~12_combout\))) # (!\C1|C1|Bus2_Sel\(1) & (\C1|C2|Mux0~1_combout\)))) # (!\C1|C1|Bus2_Sel\(0) & (((\C1|C2|Mux8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux0~1_combout\,
	datab => \C1|C1|Bus2_Sel\(0),
	datac => \C1|C1|Bus2_Sel\(1),
	datad => \C1|C2|Mux8~12_combout\,
	combout => \C1|C2|Mux8~13_combout\);

-- Location: FF_X11_Y8_N7
\C1|C2|CR|IR_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C2|Mux8~13_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \C1|C1|IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|IR_reg\(7));

-- Location: LCCOMB_X8_Y8_N6
\C1|C1|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|Equal6~0_combout\ = (!\C1|C2|CR|IR_reg\(3) & !\C1|C2|CR|IR_reg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|C2|CR|IR_reg\(3),
	datad => \C1|C2|CR|IR_reg\(7),
	combout => \C1|C1|Equal6~0_combout\);

-- Location: LCCOMB_X8_Y8_N20
\C1|C1|Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|Equal6~1_combout\ = (\C1|C2|CR|IR_reg\(5) & (!\C1|C2|CR|IR_reg\(6) & (!\C1|C2|CR|IR_reg\(4) & \C1|C1|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|IR_reg\(5),
	datab => \C1|C2|CR|IR_reg\(6),
	datac => \C1|C2|CR|IR_reg\(4),
	datad => \C1|C1|Equal6~0_combout\,
	combout => \C1|C1|Equal6~1_combout\);

-- Location: LCCOMB_X7_Y9_N16
\C1|C1|Equal6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|Equal6~2_combout\ = (!\C1|C2|CR|IR_reg\(1) & (\C1|C1|Equal6~1_combout\ & (!\C1|C2|CR|IR_reg\(2) & !\C1|C2|CR|IR_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|IR_reg\(1),
	datab => \C1|C1|Equal6~1_combout\,
	datac => \C1|C2|CR|IR_reg\(2),
	datad => \C1|C2|CR|IR_reg\(0),
	combout => \C1|C1|Equal6~2_combout\);

-- Location: LCCOMB_X8_Y9_N16
\C1|C1|FUT.JCC4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.JCC4~0_combout\ = (\C1|C1|Equal9~2_combout\ & (\C1|C2|CR|CCR_reg\(1) & ((\C1|C2|CR|CCR_reg\(3)) # (!\C1|C1|Equal13~0_combout\)))) # (!\C1|C1|Equal9~2_combout\ & ((\C1|C2|CR|CCR_reg\(3)) # ((!\C1|C1|Equal13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Equal9~2_combout\,
	datab => \C1|C2|CR|CCR_reg\(3),
	datac => \C1|C1|Equal13~0_combout\,
	datad => \C1|C2|CR|CCR_reg\(1),
	combout => \C1|C1|FUT.JCC4~0_combout\);

-- Location: LCCOMB_X8_Y9_N26
\C1|C1|FUT.JCC4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.JCC4~1_combout\ = (!\C1|C1|P2~11_combout\ & (!\C1|C1|P2~3_combout\ & (!\C1|C1|P2~4_combout\ & \C1|C1|FUT.JCC4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|P2~11_combout\,
	datab => \C1|C1|P2~3_combout\,
	datac => \C1|C1|P2~4_combout\,
	datad => \C1|C1|FUT.JCC4~0_combout\,
	combout => \C1|C1|FUT.JCC4~1_combout\);

-- Location: LCCOMB_X7_Y9_N22
\C1|C1|FUT.JCC4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.JCC4~2_combout\ = (\C1|C1|P2~6_combout\ & (!\C1|C1|Equal6~2_combout\ & (\C1|C1|EDO.Decode~q\ & \C1|C1|FUT.JCC4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|P2~6_combout\,
	datab => \C1|C1|Equal6~2_combout\,
	datac => \C1|C1|EDO.Decode~q\,
	datad => \C1|C1|FUT.JCC4~1_combout\,
	combout => \C1|C1|FUT.JCC4~2_combout\);

-- Location: LCCOMB_X8_Y10_N28
\C1|C1|FUT.JCC4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.JCC4~3_combout\ = (!\C1|C1|P2~8_combout\ & (!\C1|C1|P2~7_combout\ & (!\C1|C1|P2~10_combout\ & !\C1|C1|P2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|P2~8_combout\,
	datab => \C1|C1|P2~7_combout\,
	datac => \C1|C1|P2~10_combout\,
	datad => \C1|C1|P2~9_combout\,
	combout => \C1|C1|FUT.JCC4~3_combout\);

-- Location: LCCOMB_X8_Y10_N18
\C1|C1|FUT.JCC4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.JCC4~4_combout\ = (\C1|C1|FUT.JCC4~2_combout\ & (\C1|C1|FUT.JCC4~3_combout\ & ((!\C1|C1|Equal11~0_combout\) # (!\C1|C1|Equal6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|FUT.JCC4~2_combout\,
	datab => \C1|C1|Equal6~4_combout\,
	datac => \C1|C1|Equal11~0_combout\,
	datad => \C1|C1|FUT.JCC4~3_combout\,
	combout => \C1|C1|FUT.JCC4~4_combout\);

-- Location: FF_X8_Y10_N19
\C1|C1|EDO.JCC4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C1|FUT.JCC4~4_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.JCC4~q\);

-- Location: LCCOMB_X7_Y8_N2
\C1|C1|WideOr9\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr9~combout\ = (\C1|C1|EDO.JCC4~q\) # (!\C1|C1|WideOr9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|WideOr9~0_combout\,
	datad => \C1|C1|EDO.JCC4~q\,
	combout => \C1|C1|WideOr9~combout\);

-- Location: LCCOMB_X7_Y8_N24
\C1|C1|PC_Inc\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|PC_Inc~combout\ = (GLOBAL(\C1|C1|EDO.Decode~clkctrl_outclk\) & (\C1|C1|PC_Inc~combout\)) # (!GLOBAL(\C1|C1|EDO.Decode~clkctrl_outclk\) & ((\C1|C1|WideOr9~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|PC_Inc~combout\,
	datab => \C1|C1|WideOr9~combout\,
	datad => \C1|C1|EDO.Decode~clkctrl_outclk\,
	combout => \C1|C1|PC_Inc~combout\);

-- Location: FF_X7_Y11_N9
\C1|C2|C1|prev_increment\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C1|PC_Inc~combout\,
	sload => VCC,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|C1|prev_increment~q\);

-- Location: LCCOMB_X7_Y11_N10
\C1|C2|C1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C1|process_0~0_combout\ = (\C1|C2|C1|prev_increment~q\) # (!\C1|C1|PC_Inc~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C2|C1|prev_increment~q\,
	datac => \C1|C1|PC_Inc~combout\,
	combout => \C1|C2|C1|process_0~0_combout\);

-- Location: FF_X11_Y8_N15
\C1|C2|C1|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C2|C1|cuenta[0]~8_combout\,
	asdata => \C1|C2|Mux15~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \C1|C2|C1|process_0~0_combout\,
	ena => \C1|C2|C1|cuenta[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|C1|cuenta\(0));

-- Location: LCCOMB_X11_Y8_N16
\C1|C2|C1|cuenta[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C1|cuenta[1]~11_combout\ = (\C1|C2|C1|cuenta\(1) & (!\C1|C2|C1|cuenta[0]~9\)) # (!\C1|C2|C1|cuenta\(1) & ((\C1|C2|C1|cuenta[0]~9\) # (GND)))
-- \C1|C2|C1|cuenta[1]~12\ = CARRY((!\C1|C2|C1|cuenta[0]~9\) # (!\C1|C2|C1|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C2|C1|cuenta\(1),
	datad => VCC,
	cin => \C1|C2|C1|cuenta[0]~9\,
	combout => \C1|C2|C1|cuenta[1]~11_combout\,
	cout => \C1|C2|C1|cuenta[1]~12\);

-- Location: FF_X11_Y8_N17
\C1|C2|C1|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C2|C1|cuenta[1]~11_combout\,
	asdata => \C1|C2|Mux14~16_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \C1|C2|C1|process_0~0_combout\,
	ena => \C1|C2|C1|cuenta[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|C1|cuenta\(1));

-- Location: LCCOMB_X11_Y8_N18
\C1|C2|C1|cuenta[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C1|cuenta[2]~13_combout\ = (\C1|C2|C1|cuenta\(2) & (\C1|C2|C1|cuenta[1]~12\ $ (GND))) # (!\C1|C2|C1|cuenta\(2) & (!\C1|C2|C1|cuenta[1]~12\ & VCC))
-- \C1|C2|C1|cuenta[2]~14\ = CARRY((\C1|C2|C1|cuenta\(2) & !\C1|C2|C1|cuenta[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C2|C1|cuenta\(2),
	datad => VCC,
	cin => \C1|C2|C1|cuenta[1]~12\,
	combout => \C1|C2|C1|cuenta[2]~13_combout\,
	cout => \C1|C2|C1|cuenta[2]~14\);

-- Location: FF_X11_Y8_N19
\C1|C2|C1|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C2|C1|cuenta[2]~13_combout\,
	asdata => \C1|C2|Mux13~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \C1|C2|C1|process_0~0_combout\,
	ena => \C1|C2|C1|cuenta[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|C1|cuenta\(2));

-- Location: LCCOMB_X11_Y8_N20
\C1|C2|C1|cuenta[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C1|cuenta[3]~15_combout\ = (\C1|C2|C1|cuenta\(3) & (!\C1|C2|C1|cuenta[2]~14\)) # (!\C1|C2|C1|cuenta\(3) & ((\C1|C2|C1|cuenta[2]~14\) # (GND)))
-- \C1|C2|C1|cuenta[3]~16\ = CARRY((!\C1|C2|C1|cuenta[2]~14\) # (!\C1|C2|C1|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|C2|C1|cuenta\(3),
	datad => VCC,
	cin => \C1|C2|C1|cuenta[2]~14\,
	combout => \C1|C2|C1|cuenta[3]~15_combout\,
	cout => \C1|C2|C1|cuenta[3]~16\);

-- Location: FF_X11_Y8_N21
\C1|C2|C1|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C2|C1|cuenta[3]~15_combout\,
	asdata => \C1|C2|Mux12~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \C1|C2|C1|process_0~0_combout\,
	ena => \C1|C2|C1|cuenta[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|C1|cuenta\(3));

-- Location: FF_X11_Y8_N23
\C1|C2|C1|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C2|C1|cuenta[4]~17_combout\,
	asdata => \C1|C2|Mux11~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \C1|C2|C1|process_0~0_combout\,
	ena => \C1|C2|C1|cuenta[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|C1|cuenta\(4));

-- Location: LCCOMB_X9_Y8_N22
\C1|C2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux3~0_combout\ = (!\C1|C1|Bus1_Sel\(1) & ((\C1|C1|Bus1_Sel\(0) & (\C1|C2|CR|A_reg\(4))) # (!\C1|C1|Bus1_Sel\(0) & ((\C1|C2|C1|cuenta\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Bus1_Sel\(0),
	datab => \C1|C1|Bus1_Sel\(1),
	datac => \C1|C2|CR|A_reg\(4),
	datad => \C1|C2|C1|cuenta\(4),
	combout => \C1|C2|Mux3~0_combout\);

-- Location: LCCOMB_X9_Y9_N4
\C1|C2|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux3~1_combout\ = (\C1|C2|Mux3~0_combout\) # ((\C1|C2|CR|B_reg\(4) & \C1|C1|Bus1_Sel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|B_reg\(4),
	datac => \C1|C1|Bus1_Sel\(1),
	datad => \C1|C2|Mux3~0_combout\,
	combout => \C1|C2|Mux3~1_combout\);

-- Location: IOIBUF_X14_Y0_N22
\port_in_13[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_13(4),
	o => \port_in_13[4]~input_o\);

-- Location: IOIBUF_X23_Y29_N15
\port_in_12[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_12(4),
	o => \port_in_12[4]~input_o\);

-- Location: IOIBUF_X41_Y9_N22
\port_in_05[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_05(4),
	o => \port_in_05[4]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\port_in_04[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_04(4),
	o => \port_in_04[4]~input_o\);

-- Location: LCCOMB_X16_Y8_N26
\C1|C2|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux11~0_combout\ = (\C1|C2|CR|MAR_reg\(0) & ((\port_in_05[4]~input_o\) # ((\C1|C2|CR|MAR_reg\(3))))) # (!\C1|C2|CR|MAR_reg\(0) & (((!\C1|C2|CR|MAR_reg\(3) & \port_in_04[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(0),
	datab => \port_in_05[4]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(3),
	datad => \port_in_04[4]~input_o\,
	combout => \C1|C2|Mux11~0_combout\);

-- Location: LCCOMB_X16_Y8_N10
\C1|C2|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux11~1_combout\ = (\C1|C2|Mux11~0_combout\ & ((\port_in_13[4]~input_o\) # ((!\C1|C2|CR|MAR_reg\(3))))) # (!\C1|C2|Mux11~0_combout\ & (((\port_in_12[4]~input_o\ & \C1|C2|CR|MAR_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_13[4]~input_o\,
	datab => \port_in_12[4]~input_o\,
	datac => \C1|C2|Mux11~0_combout\,
	datad => \C1|C2|CR|MAR_reg\(3),
	combout => \C1|C2|Mux11~1_combout\);

-- Location: IOIBUF_X16_Y29_N29
\port_in_14[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_14(4),
	o => \port_in_14[4]~input_o\);

-- Location: IOIBUF_X16_Y29_N15
\port_in_07[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_07(4),
	o => \port_in_07[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\port_in_06[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_06(4),
	o => \port_in_06[4]~input_o\);

-- Location: LCCOMB_X16_Y8_N24
\C1|C2|Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux11~7_combout\ = (\C1|C2|CR|MAR_reg\(0) & ((\port_in_07[4]~input_o\) # ((\C1|C2|CR|MAR_reg\(3))))) # (!\C1|C2|CR|MAR_reg\(0) & (((\port_in_06[4]~input_o\ & !\C1|C2|CR|MAR_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_07[4]~input_o\,
	datab => \port_in_06[4]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(0),
	datad => \C1|C2|CR|MAR_reg\(3),
	combout => \C1|C2|Mux11~7_combout\);

-- Location: IOIBUF_X41_Y10_N8
\port_in_15[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_15(4),
	o => \port_in_15[4]~input_o\);

-- Location: LCCOMB_X16_Y8_N8
\C1|C2|Mux11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux11~8_combout\ = (\C1|C2|Mux11~7_combout\ & (((\port_in_15[4]~input_o\) # (!\C1|C2|CR|MAR_reg\(3))))) # (!\C1|C2|Mux11~7_combout\ & (\port_in_14[4]~input_o\ & ((\C1|C2|CR|MAR_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_14[4]~input_o\,
	datab => \C1|C2|Mux11~7_combout\,
	datac => \port_in_15[4]~input_o\,
	datad => \C1|C2|CR|MAR_reg\(3),
	combout => \C1|C2|Mux11~8_combout\);

-- Location: IOIBUF_X16_Y0_N1
\port_in_10[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_10(4),
	o => \port_in_10[4]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\port_in_03[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_03(4),
	o => \port_in_03[4]~input_o\);

-- Location: IOIBUF_X41_Y12_N8
\port_in_02[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_02(4),
	o => \port_in_02[4]~input_o\);

-- Location: LCCOMB_X16_Y8_N2
\C1|C2|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux11~2_combout\ = (\C1|C2|CR|MAR_reg\(0) & ((\port_in_03[4]~input_o\) # ((\C1|C2|CR|MAR_reg\(3))))) # (!\C1|C2|CR|MAR_reg\(0) & (((\port_in_02[4]~input_o\ & !\C1|C2|CR|MAR_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_03[4]~input_o\,
	datab => \port_in_02[4]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(0),
	datad => \C1|C2|CR|MAR_reg\(3),
	combout => \C1|C2|Mux11~2_combout\);

-- Location: IOIBUF_X41_Y18_N22
\port_in_11[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_11(4),
	o => \port_in_11[4]~input_o\);

-- Location: LCCOMB_X16_Y8_N22
\C1|C2|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux11~3_combout\ = (\C1|C2|Mux11~2_combout\ & (((\port_in_11[4]~input_o\) # (!\C1|C2|CR|MAR_reg\(3))))) # (!\C1|C2|Mux11~2_combout\ & (\port_in_10[4]~input_o\ & ((\C1|C2|CR|MAR_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_10[4]~input_o\,
	datab => \C1|C2|Mux11~2_combout\,
	datac => \port_in_11[4]~input_o\,
	datad => \C1|C2|CR|MAR_reg\(3),
	combout => \C1|C2|Mux11~3_combout\);

-- Location: IOIBUF_X16_Y29_N22
\port_in_08[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_08(4),
	o => \port_in_08[4]~input_o\);

-- Location: IOIBUF_X23_Y29_N1
\port_in_09[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_09(4),
	o => \port_in_09[4]~input_o\);

-- Location: IOIBUF_X11_Y0_N29
\port_in_01[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(4),
	o => \port_in_01[4]~input_o\);

-- Location: IOIBUF_X21_Y29_N15
\port_in_00[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(4),
	o => \port_in_00[4]~input_o\);

-- Location: LCCOMB_X16_Y8_N0
\C1|C2|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux11~4_combout\ = (\C1|C2|CR|MAR_reg\(0) & ((\port_in_01[4]~input_o\) # ((\C1|C2|CR|MAR_reg\(3))))) # (!\C1|C2|CR|MAR_reg\(0) & (((\port_in_00[4]~input_o\ & !\C1|C2|CR|MAR_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_01[4]~input_o\,
	datab => \port_in_00[4]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(0),
	datad => \C1|C2|CR|MAR_reg\(3),
	combout => \C1|C2|Mux11~4_combout\);

-- Location: LCCOMB_X16_Y8_N16
\C1|C2|Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux11~5_combout\ = (\C1|C2|CR|MAR_reg\(3) & ((\C1|C2|Mux11~4_combout\ & ((\port_in_09[4]~input_o\))) # (!\C1|C2|Mux11~4_combout\ & (\port_in_08[4]~input_o\)))) # (!\C1|C2|CR|MAR_reg\(3) & (((\C1|C2|Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_08[4]~input_o\,
	datab => \port_in_09[4]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(3),
	datad => \C1|C2|Mux11~4_combout\,
	combout => \C1|C2|Mux11~5_combout\);

-- Location: LCCOMB_X16_Y8_N28
\C1|C2|Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux11~6_combout\ = (\C1|C2|CR|MAR_reg\(1) & ((\C1|C2|Mux11~3_combout\) # ((\C1|C2|CR|MAR_reg\(2))))) # (!\C1|C2|CR|MAR_reg\(1) & (((!\C1|C2|CR|MAR_reg\(2) & \C1|C2|Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux11~3_combout\,
	datab => \C1|C2|CR|MAR_reg\(1),
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|Mux11~5_combout\,
	combout => \C1|C2|Mux11~6_combout\);

-- Location: LCCOMB_X16_Y8_N14
\C1|C2|Mux11~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux11~9_combout\ = (\C1|C2|CR|MAR_reg\(2) & ((\C1|C2|Mux11~6_combout\ & ((\C1|C2|Mux11~8_combout\))) # (!\C1|C2|Mux11~6_combout\ & (\C1|C2|Mux11~1_combout\)))) # (!\C1|C2|CR|MAR_reg\(2) & (((\C1|C2|Mux11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux11~1_combout\,
	datab => \C1|C2|CR|MAR_reg\(2),
	datac => \C1|C2|Mux11~8_combout\,
	datad => \C1|C2|Mux11~6_combout\,
	combout => \C1|C2|Mux11~9_combout\);

-- Location: LCCOMB_X14_Y10_N12
\C2|datamm|RAM_rtl_0_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM_rtl_0_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \C2|datamm|RAM_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X14_Y10_N13
\C2|datamm|RAM_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|datamm|RAM_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(24));

-- Location: LCCOMB_X14_Y10_N4
\C2|datamm|RAM_rtl_0_bypass[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM_rtl_0_bypass[23]~feeder_combout\ = \C1|C2|Mux3~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|C2|Mux3~1_combout\,
	combout => \C2|datamm|RAM_rtl_0_bypass[23]~feeder_combout\);

-- Location: FF_X14_Y10_N5
\C2|datamm|RAM_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|datamm|RAM_rtl_0_bypass[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(23));

-- Location: FF_X9_Y9_N5
\C2|datamm|RAM~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C2|Mux3~1_combout\,
	ena => \C2|datamm|RAM~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM~21_q\);

-- Location: LCCOMB_X14_Y10_N18
\C2|datamm|RAM~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~38_combout\ = (\C2|datamm|RAM~16_q\ & ((\C2|datamm|RAM_rtl_0|auto_generated|ram_block1a4\))) # (!\C2|datamm|RAM~16_q\ & (\C2|datamm|RAM~21_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|datamm|RAM~16_q\,
	datac => \C2|datamm|RAM~21_q\,
	datad => \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a4\,
	combout => \C2|datamm|RAM~38_combout\);

-- Location: LCCOMB_X14_Y10_N2
\C2|datamm|RAM~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~39_combout\ = (\C2|datamm|RAM_rtl_0_bypass\(24) & ((\C2|datamm|RAM~30_combout\ & (\C2|datamm|RAM_rtl_0_bypass\(23))) # (!\C2|datamm|RAM~30_combout\ & ((\C2|datamm|RAM~38_combout\))))) # (!\C2|datamm|RAM_rtl_0_bypass\(24) & 
-- (((\C2|datamm|RAM_rtl_0_bypass\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|datamm|RAM_rtl_0_bypass\(24),
	datab => \C2|datamm|RAM~30_combout\,
	datac => \C2|datamm|RAM_rtl_0_bypass\(23),
	datad => \C2|datamm|RAM~38_combout\,
	combout => \C2|datamm|RAM~39_combout\);

-- Location: FF_X14_Y10_N3
\C2|datamm|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|datamm|RAM~39_combout\,
	ena => \C1|C1|ALT_INV_wr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|data_out\(4));

-- Location: LCCOMB_X11_Y10_N12
\C1|C2|Mux11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux11~10_combout\ = (\C1|C2|Mux14~3_combout\ & ((\C1|C2|Mux14~2_combout\) # ((\C2|progmem|ROM_rtl_0|auto_generated|ram_block1a4\)))) # (!\C1|C2|Mux14~3_combout\ & (!\C1|C2|Mux14~2_combout\ & ((\C1|C2|C2|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux14~3_combout\,
	datab => \C1|C2|Mux14~2_combout\,
	datac => \C2|progmem|ROM_rtl_0|auto_generated|ram_block1a4\,
	datad => \C1|C2|C2|Mux4~3_combout\,
	combout => \C1|C2|Mux11~10_combout\);

-- Location: LCCOMB_X11_Y10_N18
\C1|C2|Mux11~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux11~11_combout\ = (\C1|C2|Mux14~17_combout\ & ((\C1|C2|Mux11~10_combout\ & ((\C2|datamm|data_out\(4)))) # (!\C1|C2|Mux11~10_combout\ & (\C1|C2|Mux11~9_combout\)))) # (!\C1|C2|Mux14~17_combout\ & (((\C1|C2|Mux11~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux11~9_combout\,
	datab => \C1|C2|Mux14~17_combout\,
	datac => \C2|datamm|data_out\(4),
	datad => \C1|C2|Mux11~10_combout\,
	combout => \C1|C2|Mux11~11_combout\);

-- Location: LCCOMB_X11_Y10_N4
\C1|C2|Mux11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux11~12_combout\ = (\C1|C1|Bus2_Sel\(1) & (((\C1|C2|Mux11~11_combout\)))) # (!\C1|C1|Bus2_Sel\(1) & ((\C1|C1|Bus2_Sel\(0) & (\C1|C2|Mux3~1_combout\)) # (!\C1|C1|Bus2_Sel\(0) & ((\C1|C2|Mux11~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Bus2_Sel\(1),
	datab => \C1|C1|Bus2_Sel\(0),
	datac => \C1|C2|Mux3~1_combout\,
	datad => \C1|C2|Mux11~11_combout\,
	combout => \C1|C2|Mux11~12_combout\);

-- Location: FF_X8_Y8_N21
\C1|C2|CR|IR_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux11~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \C1|C1|IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|IR_reg\(4));

-- Location: LCCOMB_X8_Y8_N10
\C1|C1|P2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|P2~2_combout\ = (\C1|C2|CR|IR_reg\(7) & (!\C1|C2|CR|IR_reg\(5) & !\C1|C2|CR|IR_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|IR_reg\(7),
	datac => \C1|C2|CR|IR_reg\(5),
	datad => \C1|C2|CR|IR_reg\(6),
	combout => \C1|C1|P2~2_combout\);

-- Location: LCCOMB_X8_Y8_N24
\C1|C1|P2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|P2~3_combout\ = (!\C1|C2|CR|IR_reg\(3) & (!\C1|C2|CR|IR_reg\(4) & (\C1|C1|Equal8~0_combout\ & \C1|C1|P2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|IR_reg\(3),
	datab => \C1|C2|CR|IR_reg\(4),
	datac => \C1|C1|Equal8~0_combout\,
	datad => \C1|C1|P2~2_combout\,
	combout => \C1|C1|P2~3_combout\);

-- Location: LCCOMB_X7_Y8_N0
\C1|C1|FUT.Load_inmA3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.Load_inmA3~0_combout\ = (\C1|C1|EDO.Load_inmA2~q\ & (!\C1|C2|CR|IR_reg\(0) & \C1|C1|P2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EDO.Load_inmA2~q\,
	datab => \C1|C2|CR|IR_reg\(0),
	datad => \C1|C1|P2~3_combout\,
	combout => \C1|C1|FUT.Load_inmA3~0_combout\);

-- Location: FF_X7_Y8_N1
\C1|C1|EDO.Load_inmA3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C1|FUT.Load_inmA3~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.Load_inmA3~q\);

-- Location: LCCOMB_X6_Y9_N28
\C1|C1|WideOr11\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr11~combout\ = ((\C1|C1|EDO.Load_DIR_A5~q\) # ((\C1|C1|EDO.Load_inmA3~q\) # (!\C1|C1|WideOr1~2_combout\))) # (!\C1|C1|WideOr34~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|WideOr34~0_combout\,
	datab => \C1|C1|EDO.Load_DIR_A5~q\,
	datac => \C1|C1|WideOr1~2_combout\,
	datad => \C1|C1|EDO.Load_inmA3~q\,
	combout => \C1|C1|WideOr11~combout\);

-- Location: LCCOMB_X6_Y9_N4
\C1|C1|A_Load\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|A_Load~combout\ = (GLOBAL(\C1|C1|EDO.Decode~clkctrl_outclk\) & (\C1|C1|A_Load~combout\)) # (!GLOBAL(\C1|C1|EDO.Decode~clkctrl_outclk\) & ((\C1|C1|WideOr11~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|A_Load~combout\,
	datac => \C1|C1|WideOr11~combout\,
	datad => \C1|C1|EDO.Decode~clkctrl_outclk\,
	combout => \C1|C1|A_Load~combout\);

-- Location: FF_X9_Y8_N21
\C1|C2|CR|A_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux12~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \C1|C1|A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|A_reg\(3));

-- Location: LCCOMB_X9_Y8_N20
\C1|C2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux4~0_combout\ = (!\C1|C1|Bus1_Sel\(1) & ((\C1|C1|Bus1_Sel\(0) & (\C1|C2|CR|A_reg\(3))) # (!\C1|C1|Bus1_Sel\(0) & ((\C1|C2|C1|cuenta\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Bus1_Sel\(0),
	datab => \C1|C1|Bus1_Sel\(1),
	datac => \C1|C2|CR|A_reg\(3),
	datad => \C1|C2|C1|cuenta\(3),
	combout => \C1|C2|Mux4~0_combout\);

-- Location: LCCOMB_X9_Y8_N18
\C1|C2|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux4~1_combout\ = (\C1|C2|Mux4~0_combout\) # ((\C1|C1|Bus1_Sel\(1) & \C1|C2|CR|B_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|Bus1_Sel\(1),
	datac => \C1|C2|CR|B_reg\(3),
	datad => \C1|C2|Mux4~0_combout\,
	combout => \C1|C2|Mux4~1_combout\);

-- Location: IOIBUF_X28_Y0_N8
\port_in_15[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_15(3),
	o => \port_in_15[3]~input_o\);

-- Location: IOIBUF_X28_Y0_N15
\port_in_13[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_13(3),
	o => \port_in_13[3]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\port_in_11[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_11(3),
	o => \port_in_11[3]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\port_in_09[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_09(3),
	o => \port_in_09[3]~input_o\);

-- Location: LCCOMB_X27_Y4_N2
\C1|C2|Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux12~7_combout\ = (\C1|C2|CR|MAR_reg\(2) & (((\C1|C2|CR|MAR_reg\(1))))) # (!\C1|C2|CR|MAR_reg\(2) & ((\C1|C2|CR|MAR_reg\(1) & (\port_in_11[3]~input_o\)) # (!\C1|C2|CR|MAR_reg\(1) & ((\port_in_09[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(2),
	datab => \port_in_11[3]~input_o\,
	datac => \port_in_09[3]~input_o\,
	datad => \C1|C2|CR|MAR_reg\(1),
	combout => \C1|C2|Mux12~7_combout\);

-- Location: LCCOMB_X27_Y4_N28
\C1|C2|Mux12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux12~8_combout\ = (\C1|C2|CR|MAR_reg\(2) & ((\C1|C2|Mux12~7_combout\ & (\port_in_15[3]~input_o\)) # (!\C1|C2|Mux12~7_combout\ & ((\port_in_13[3]~input_o\))))) # (!\C1|C2|CR|MAR_reg\(2) & (((\C1|C2|Mux12~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_15[3]~input_o\,
	datab => \port_in_13[3]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|Mux12~7_combout\,
	combout => \C1|C2|Mux12~8_combout\);

-- Location: IOIBUF_X30_Y0_N29
\port_in_06[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_06(3),
	o => \port_in_06[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\port_in_02[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_02(3),
	o => \port_in_02[3]~input_o\);

-- Location: IOIBUF_X28_Y29_N22
\port_in_04[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_04(3),
	o => \port_in_04[3]~input_o\);

-- Location: IOIBUF_X37_Y0_N8
\port_in_00[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(3),
	o => \port_in_00[3]~input_o\);

-- Location: LCCOMB_X27_Y4_N16
\C1|C2|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux12~4_combout\ = (\C1|C2|CR|MAR_reg\(2) & ((\port_in_04[3]~input_o\) # ((\C1|C2|CR|MAR_reg\(1))))) # (!\C1|C2|CR|MAR_reg\(2) & (((\port_in_00[3]~input_o\ & !\C1|C2|CR|MAR_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_04[3]~input_o\,
	datab => \port_in_00[3]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|CR|MAR_reg\(1),
	combout => \C1|C2|Mux12~4_combout\);

-- Location: LCCOMB_X27_Y4_N30
\C1|C2|Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux12~5_combout\ = (\C1|C2|CR|MAR_reg\(1) & ((\C1|C2|Mux12~4_combout\ & (\port_in_06[3]~input_o\)) # (!\C1|C2|Mux12~4_combout\ & ((\port_in_02[3]~input_o\))))) # (!\C1|C2|CR|MAR_reg\(1) & (((\C1|C2|Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_06[3]~input_o\,
	datab => \C1|C2|CR|MAR_reg\(1),
	datac => \port_in_02[3]~input_o\,
	datad => \C1|C2|Mux12~4_combout\,
	combout => \C1|C2|Mux12~5_combout\);

-- Location: IOIBUF_X26_Y0_N29
\port_in_03[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_03(3),
	o => \port_in_03[3]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\port_in_07[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_07(3),
	o => \port_in_07[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\port_in_01[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(3),
	o => \port_in_01[3]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\port_in_05[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_05(3),
	o => \port_in_05[3]~input_o\);

-- Location: LCCOMB_X27_Y4_N4
\C1|C2|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux12~2_combout\ = (\C1|C2|CR|MAR_reg\(2) & (((\port_in_05[3]~input_o\) # (\C1|C2|CR|MAR_reg\(1))))) # (!\C1|C2|CR|MAR_reg\(2) & (\port_in_01[3]~input_o\ & ((!\C1|C2|CR|MAR_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_01[3]~input_o\,
	datab => \port_in_05[3]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|CR|MAR_reg\(1),
	combout => \C1|C2|Mux12~2_combout\);

-- Location: LCCOMB_X27_Y4_N10
\C1|C2|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux12~3_combout\ = (\C1|C2|Mux12~2_combout\ & (((\port_in_07[3]~input_o\) # (!\C1|C2|CR|MAR_reg\(1))))) # (!\C1|C2|Mux12~2_combout\ & (\port_in_03[3]~input_o\ & ((\C1|C2|CR|MAR_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_03[3]~input_o\,
	datab => \port_in_07[3]~input_o\,
	datac => \C1|C2|Mux12~2_combout\,
	datad => \C1|C2|CR|MAR_reg\(1),
	combout => \C1|C2|Mux12~3_combout\);

-- Location: LCCOMB_X27_Y4_N8
\C1|C2|Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux12~6_combout\ = (\C1|C2|CR|MAR_reg\(3) & (\C1|C2|CR|MAR_reg\(0))) # (!\C1|C2|CR|MAR_reg\(3) & ((\C1|C2|CR|MAR_reg\(0) & ((\C1|C2|Mux12~3_combout\))) # (!\C1|C2|CR|MAR_reg\(0) & (\C1|C2|Mux12~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(3),
	datab => \C1|C2|CR|MAR_reg\(0),
	datac => \C1|C2|Mux12~5_combout\,
	datad => \C1|C2|Mux12~3_combout\,
	combout => \C1|C2|Mux12~6_combout\);

-- Location: IOIBUF_X28_Y0_N22
\port_in_14[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_14(3),
	o => \port_in_14[3]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\port_in_10[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_10(3),
	o => \port_in_10[3]~input_o\);

-- Location: IOIBUF_X30_Y0_N15
\port_in_12[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_12(3),
	o => \port_in_12[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N29
\port_in_08[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_08(3),
	o => \port_in_08[3]~input_o\);

-- Location: LCCOMB_X27_Y4_N20
\C1|C2|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux12~0_combout\ = (\C1|C2|CR|MAR_reg\(2) & ((\port_in_12[3]~input_o\) # ((\C1|C2|CR|MAR_reg\(1))))) # (!\C1|C2|CR|MAR_reg\(2) & (((\port_in_08[3]~input_o\ & !\C1|C2|CR|MAR_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(2),
	datab => \port_in_12[3]~input_o\,
	datac => \port_in_08[3]~input_o\,
	datad => \C1|C2|CR|MAR_reg\(1),
	combout => \C1|C2|Mux12~0_combout\);

-- Location: LCCOMB_X27_Y4_N18
\C1|C2|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux12~1_combout\ = (\C1|C2|CR|MAR_reg\(1) & ((\C1|C2|Mux12~0_combout\ & (\port_in_14[3]~input_o\)) # (!\C1|C2|Mux12~0_combout\ & ((\port_in_10[3]~input_o\))))) # (!\C1|C2|CR|MAR_reg\(1) & (((\C1|C2|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_14[3]~input_o\,
	datab => \C1|C2|CR|MAR_reg\(1),
	datac => \port_in_10[3]~input_o\,
	datad => \C1|C2|Mux12~0_combout\,
	combout => \C1|C2|Mux12~1_combout\);

-- Location: LCCOMB_X27_Y4_N22
\C1|C2|Mux12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux12~9_combout\ = (\C1|C2|CR|MAR_reg\(3) & ((\C1|C2|Mux12~6_combout\ & (\C1|C2|Mux12~8_combout\)) # (!\C1|C2|Mux12~6_combout\ & ((\C1|C2|Mux12~1_combout\))))) # (!\C1|C2|CR|MAR_reg\(3) & (((\C1|C2|Mux12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(3),
	datab => \C1|C2|Mux12~8_combout\,
	datac => \C1|C2|Mux12~6_combout\,
	datad => \C1|C2|Mux12~1_combout\,
	combout => \C1|C2|Mux12~9_combout\);

-- Location: LCCOMB_X14_Y10_N22
\C2|datamm|RAM_rtl_0_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \C2|datamm|RAM_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X14_Y10_N23
\C2|datamm|RAM_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|datamm|RAM_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(22));

-- Location: FF_X14_Y10_N9
\C2|datamm|RAM_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux4~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(21));

-- Location: LCCOMB_X9_Y8_N28
\C2|datamm|RAM~20feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~20feeder_combout\ = \C1|C2|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|C2|Mux4~1_combout\,
	combout => \C2|datamm|RAM~20feeder_combout\);

-- Location: FF_X9_Y8_N29
\C2|datamm|RAM~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|datamm|RAM~20feeder_combout\,
	ena => \C2|datamm|RAM~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM~20_q\);

-- Location: LCCOMB_X14_Y10_N8
\C2|datamm|RAM~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~36_combout\ = (\C2|datamm|RAM~16_q\ & ((\C2|datamm|RAM_rtl_0|auto_generated|ram_block1a3\))) # (!\C2|datamm|RAM~16_q\ & (\C2|datamm|RAM~20_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|datamm|RAM~16_q\,
	datab => \C2|datamm|RAM~20_q\,
	datad => \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a3\,
	combout => \C2|datamm|RAM~36_combout\);

-- Location: LCCOMB_X14_Y10_N24
\C2|datamm|RAM~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~37_combout\ = (\C2|datamm|RAM_rtl_0_bypass\(22) & ((\C2|datamm|RAM~30_combout\ & (\C2|datamm|RAM_rtl_0_bypass\(21))) # (!\C2|datamm|RAM~30_combout\ & ((\C2|datamm|RAM~36_combout\))))) # (!\C2|datamm|RAM_rtl_0_bypass\(22) & 
-- (((\C2|datamm|RAM_rtl_0_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|datamm|RAM_rtl_0_bypass\(22),
	datab => \C2|datamm|RAM~30_combout\,
	datac => \C2|datamm|RAM_rtl_0_bypass\(21),
	datad => \C2|datamm|RAM~36_combout\,
	combout => \C2|datamm|RAM~37_combout\);

-- Location: FF_X14_Y10_N25
\C2|datamm|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|datamm|RAM~37_combout\,
	ena => \C1|C1|ALT_INV_wr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|data_out\(3));

-- Location: LCCOMB_X12_Y8_N10
\C1|C2|Mux12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux12~10_combout\ = (\C1|C2|Mux14~2_combout\ & (\C1|C2|Mux14~3_combout\)) # (!\C1|C2|Mux14~2_combout\ & ((\C1|C2|Mux14~3_combout\ & (\C2|progmem|ROM_rtl_0|auto_generated|ram_block1a3\)) # (!\C1|C2|Mux14~3_combout\ & ((\C1|C2|C2|Mux5~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux14~2_combout\,
	datab => \C1|C2|Mux14~3_combout\,
	datac => \C2|progmem|ROM_rtl_0|auto_generated|ram_block1a3\,
	datad => \C1|C2|C2|Mux5~3_combout\,
	combout => \C1|C2|Mux12~10_combout\);

-- Location: LCCOMB_X12_Y8_N0
\C1|C2|Mux12~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux12~11_combout\ = (\C1|C2|Mux14~17_combout\ & ((\C1|C2|Mux12~10_combout\ & ((\C2|datamm|data_out\(3)))) # (!\C1|C2|Mux12~10_combout\ & (\C1|C2|Mux12~9_combout\)))) # (!\C1|C2|Mux14~17_combout\ & (((\C1|C2|Mux12~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux12~9_combout\,
	datab => \C1|C2|Mux14~17_combout\,
	datac => \C2|datamm|data_out\(3),
	datad => \C1|C2|Mux12~10_combout\,
	combout => \C1|C2|Mux12~11_combout\);

-- Location: LCCOMB_X12_Y8_N18
\C1|C2|Mux12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux12~12_combout\ = (\C1|C1|Bus2_Sel\(0) & ((\C1|C1|Bus2_Sel\(1) & ((\C1|C2|Mux12~11_combout\))) # (!\C1|C1|Bus2_Sel\(1) & (\C1|C2|Mux4~1_combout\)))) # (!\C1|C1|Bus2_Sel\(0) & (((\C1|C2|Mux12~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Bus2_Sel\(0),
	datab => \C1|C2|Mux4~1_combout\,
	datac => \C1|C1|Bus2_Sel\(1),
	datad => \C1|C2|Mux12~11_combout\,
	combout => \C1|C2|Mux12~12_combout\);

-- Location: FF_X8_Y8_N27
\C1|C2|CR|IR_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux12~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \C1|C1|IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|IR_reg\(3));

-- Location: LCCOMB_X8_Y8_N0
\C1|C1|P2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|P2~4_combout\ = (!\C1|C2|CR|IR_reg\(3) & (\C1|C2|CR|IR_reg\(4) & (\C1|C1|Equal8~0_combout\ & \C1|C1|P2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|IR_reg\(3),
	datab => \C1|C2|CR|IR_reg\(4),
	datac => \C1|C1|Equal8~0_combout\,
	datad => \C1|C1|P2~2_combout\,
	combout => \C1|C1|P2~4_combout\);

-- Location: LCCOMB_X8_Y10_N4
\C1|C1|FUT.STOREB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.STOREB~0_combout\ = (\C1|C1|EDO.STOREA3~q\ & ((\C1|C2|CR|IR_reg\(0)) # (!\C1|C1|P2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|IR_reg\(0),
	datab => \C1|C1|P2~4_combout\,
	datac => \C1|C1|EDO.STOREA3~q\,
	combout => \C1|C1|FUT.STOREB~0_combout\);

-- Location: FF_X8_Y10_N5
\C1|C1|EDO.STOREB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C1|FUT.STOREB~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.STOREB~q\);

-- Location: LCCOMB_X7_Y10_N12
\C1|C1|WideOr23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr23~1_combout\ = (\C1|C1|EDO.STOREB~q\) # (!\C1|C1|WideOr3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EDO.STOREB~q\,
	datad => \C1|C1|WideOr3~0_combout\,
	combout => \C1|C1|WideOr23~1_combout\);

-- Location: LCCOMB_X8_Y10_N14
\C1|C1|WideOr23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr23~0_combout\ = (\C1|C1|EDO.JCC1_NZ~q\) # ((\C1|C1|EDO.JMP1~q\) # ((\C1|C1|EDO.JCC1_C~q\) # (\C1|C1|EDO.JCC1_NC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EDO.JCC1_NZ~q\,
	datab => \C1|C1|EDO.JMP1~q\,
	datac => \C1|C1|EDO.JCC1_C~q\,
	datad => \C1|C1|EDO.JCC1_NC~q\,
	combout => \C1|C1|WideOr23~0_combout\);

-- Location: LCCOMB_X7_Y10_N0
\C1|C1|WideOr23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr23~2_combout\ = (\C1|C1|WideOr23~1_combout\) # (((\C1|C1|WideOr23~0_combout\) # (!\C1|C1|WideOr13~5_combout\)) # (!\C1|C1|WideOr6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|WideOr23~1_combout\,
	datab => \C1|C1|WideOr6~0_combout\,
	datac => \C1|C1|WideOr23~0_combout\,
	datad => \C1|C1|WideOr13~5_combout\,
	combout => \C1|C1|WideOr23~2_combout\);

-- Location: LCCOMB_X10_Y8_N30
\C1|C1|Bus1_Sel[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|Bus1_Sel\(0) = (GLOBAL(\C1|C1|EDO.Decode~clkctrl_outclk\) & ((\C1|C1|Bus1_Sel\(0)))) # (!GLOBAL(\C1|C1|EDO.Decode~clkctrl_outclk\) & (!\C1|C1|WideOr23~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|WideOr23~2_combout\,
	datac => \C1|C1|Bus1_Sel\(0),
	datad => \C1|C1|EDO.Decode~clkctrl_outclk\,
	combout => \C1|C1|Bus1_Sel\(0));

-- Location: FF_X10_Y8_N29
\C1|C2|CR|A_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux13~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \C1|C1|A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|A_reg\(2));

-- Location: LCCOMB_X10_Y8_N28
\C1|C2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux5~0_combout\ = (!\C1|C1|Bus1_Sel\(1) & ((\C1|C1|Bus1_Sel\(0) & (\C1|C2|CR|A_reg\(2))) # (!\C1|C1|Bus1_Sel\(0) & ((\C1|C2|C1|cuenta\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Bus1_Sel\(0),
	datab => \C1|C1|Bus1_Sel\(1),
	datac => \C1|C2|CR|A_reg\(2),
	datad => \C1|C2|C1|cuenta\(2),
	combout => \C1|C2|Mux5~0_combout\);

-- Location: LCCOMB_X10_Y8_N26
\C1|C2|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux5~1_combout\ = (\C1|C2|Mux5~0_combout\) # ((\C1|C1|Bus1_Sel\(1) & \C1|C2|CR|B_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|Bus1_Sel\(1),
	datac => \C1|C2|CR|B_reg\(2),
	datad => \C1|C2|Mux5~0_combout\,
	combout => \C1|C2|Mux5~1_combout\);

-- Location: LCCOMB_X12_Y10_N18
\C2|datamm|RAM_rtl_0_bypass[19]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM_rtl_0_bypass[19]~0_combout\ = !\C1|C2|Mux5~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|C2|Mux5~1_combout\,
	combout => \C2|datamm|RAM_rtl_0_bypass[19]~0_combout\);

-- Location: FF_X12_Y10_N19
\C2|datamm|RAM_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|datamm|RAM_rtl_0_bypass[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(19));

-- Location: LCCOMB_X12_Y10_N4
\C2|datamm|RAM_rtl_0_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \C2|datamm|RAM_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X12_Y10_N5
\C2|datamm|RAM_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|datamm|RAM_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(20));

-- Location: LCCOMB_X9_Y10_N4
\C2|datamm|RAM~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~49_combout\ = !\C1|C2|Mux5~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|C2|Mux5~1_combout\,
	combout => \C2|datamm|RAM~49_combout\);

-- Location: FF_X9_Y10_N5
\C2|datamm|RAM~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|datamm|RAM~49_combout\,
	ena => \C2|datamm|RAM~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM~19_q\);

-- Location: LCCOMB_X12_Y10_N2
\C2|datamm|RAM~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~34_combout\ = (\C2|datamm|RAM~16_q\ & ((\C2|datamm|RAM_rtl_0|auto_generated|ram_block1a2\))) # (!\C2|datamm|RAM~16_q\ & (!\C2|datamm|RAM~19_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|datamm|RAM~19_q\,
	datac => \C2|datamm|RAM~16_q\,
	datad => \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a2\,
	combout => \C2|datamm|RAM~34_combout\);

-- Location: LCCOMB_X12_Y10_N16
\C2|datamm|RAM~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~35_combout\ = (\C2|datamm|RAM~30_combout\ & (!\C2|datamm|RAM_rtl_0_bypass\(19))) # (!\C2|datamm|RAM~30_combout\ & ((\C2|datamm|RAM_rtl_0_bypass\(20) & ((\C2|datamm|RAM~34_combout\))) # (!\C2|datamm|RAM_rtl_0_bypass\(20) & 
-- (!\C2|datamm|RAM_rtl_0_bypass\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|datamm|RAM~30_combout\,
	datab => \C2|datamm|RAM_rtl_0_bypass\(19),
	datac => \C2|datamm|RAM_rtl_0_bypass\(20),
	datad => \C2|datamm|RAM~34_combout\,
	combout => \C2|datamm|RAM~35_combout\);

-- Location: FF_X12_Y10_N17
\C2|datamm|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|datamm|RAM~35_combout\,
	ena => \C1|C1|ALT_INV_wr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|data_out\(2));

-- Location: IOIBUF_X37_Y0_N1
\port_in_15[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_15(2),
	o => \port_in_15[2]~input_o\);

-- Location: IOIBUF_X37_Y0_N29
\port_in_11[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_11(2),
	o => \port_in_11[2]~input_o\);

-- Location: IOIBUF_X41_Y2_N8
\port_in_14[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_14(2),
	o => \port_in_14[2]~input_o\);

-- Location: IOIBUF_X41_Y4_N8
\port_in_10[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_10(2),
	o => \port_in_10[2]~input_o\);

-- Location: LCCOMB_X35_Y4_N26
\C1|C2|Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux13~7_combout\ = (\C1|C2|CR|MAR_reg\(2) & ((\port_in_14[2]~input_o\) # ((\C1|C2|CR|MAR_reg\(0))))) # (!\C1|C2|CR|MAR_reg\(2) & (((\port_in_10[2]~input_o\ & !\C1|C2|CR|MAR_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_14[2]~input_o\,
	datab => \port_in_10[2]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|CR|MAR_reg\(0),
	combout => \C1|C2|Mux13~7_combout\);

-- Location: LCCOMB_X35_Y4_N12
\C1|C2|Mux13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux13~8_combout\ = (\C1|C2|Mux13~7_combout\ & ((\port_in_15[2]~input_o\) # ((!\C1|C2|CR|MAR_reg\(0))))) # (!\C1|C2|Mux13~7_combout\ & (((\port_in_11[2]~input_o\ & \C1|C2|CR|MAR_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_15[2]~input_o\,
	datab => \port_in_11[2]~input_o\,
	datac => \C1|C2|Mux13~7_combout\,
	datad => \C1|C2|CR|MAR_reg\(0),
	combout => \C1|C2|Mux13~8_combout\);

-- Location: IOIBUF_X35_Y0_N22
\port_in_13[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_13(2),
	o => \port_in_13[2]~input_o\);

-- Location: IOIBUF_X39_Y0_N22
\port_in_12[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_12(2),
	o => \port_in_12[2]~input_o\);

-- Location: IOIBUF_X41_Y3_N1
\port_in_08[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_08(2),
	o => \port_in_08[2]~input_o\);

-- Location: IOIBUF_X39_Y0_N8
\port_in_09[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_09(2),
	o => \port_in_09[2]~input_o\);

-- Location: LCCOMB_X35_Y4_N28
\C1|C2|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux13~0_combout\ = (\C1|C2|CR|MAR_reg\(2) & (((\C1|C2|CR|MAR_reg\(0))))) # (!\C1|C2|CR|MAR_reg\(2) & ((\C1|C2|CR|MAR_reg\(0) & ((\port_in_09[2]~input_o\))) # (!\C1|C2|CR|MAR_reg\(0) & (\port_in_08[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_08[2]~input_o\,
	datab => \port_in_09[2]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|CR|MAR_reg\(0),
	combout => \C1|C2|Mux13~0_combout\);

-- Location: LCCOMB_X35_Y4_N14
\C1|C2|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux13~1_combout\ = (\C1|C2|CR|MAR_reg\(2) & ((\C1|C2|Mux13~0_combout\ & (\port_in_13[2]~input_o\)) # (!\C1|C2|Mux13~0_combout\ & ((\port_in_12[2]~input_o\))))) # (!\C1|C2|CR|MAR_reg\(2) & (((\C1|C2|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_13[2]~input_o\,
	datab => \port_in_12[2]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|Mux13~0_combout\,
	combout => \C1|C2|Mux13~1_combout\);

-- Location: IOIBUF_X41_Y5_N8
\port_in_04[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_04(2),
	o => \port_in_04[2]~input_o\);

-- Location: IOIBUF_X41_Y7_N8
\port_in_05[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_05(2),
	o => \port_in_05[2]~input_o\);

-- Location: IOIBUF_X41_Y5_N15
\port_in_00[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(2),
	o => \port_in_00[2]~input_o\);

-- Location: IOIBUF_X37_Y0_N15
\port_in_01[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(2),
	o => \port_in_01[2]~input_o\);

-- Location: LCCOMB_X35_Y4_N20
\C1|C2|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux13~4_combout\ = (\C1|C2|CR|MAR_reg\(2) & (((\C1|C2|CR|MAR_reg\(0))))) # (!\C1|C2|CR|MAR_reg\(2) & ((\C1|C2|CR|MAR_reg\(0) & ((\port_in_01[2]~input_o\))) # (!\C1|C2|CR|MAR_reg\(0) & (\port_in_00[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(2),
	datab => \port_in_00[2]~input_o\,
	datac => \port_in_01[2]~input_o\,
	datad => \C1|C2|CR|MAR_reg\(0),
	combout => \C1|C2|Mux13~4_combout\);

-- Location: LCCOMB_X35_Y4_N18
\C1|C2|Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux13~5_combout\ = (\C1|C2|CR|MAR_reg\(2) & ((\C1|C2|Mux13~4_combout\ & ((\port_in_05[2]~input_o\))) # (!\C1|C2|Mux13~4_combout\ & (\port_in_04[2]~input_o\)))) # (!\C1|C2|CR|MAR_reg\(2) & (((\C1|C2|Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_04[2]~input_o\,
	datab => \port_in_05[2]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|Mux13~4_combout\,
	combout => \C1|C2|Mux13~5_combout\);

-- Location: IOIBUF_X41_Y4_N1
\port_in_07[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_07(2),
	o => \port_in_07[2]~input_o\);

-- Location: IOIBUF_X39_Y0_N29
\port_in_03[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_03(2),
	o => \port_in_03[2]~input_o\);

-- Location: IOIBUF_X35_Y0_N29
\port_in_02[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_02(2),
	o => \port_in_02[2]~input_o\);

-- Location: IOIBUF_X41_Y3_N8
\port_in_06[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_06(2),
	o => \port_in_06[2]~input_o\);

-- Location: LCCOMB_X35_Y4_N4
\C1|C2|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux13~2_combout\ = (\C1|C2|CR|MAR_reg\(2) & (((\port_in_06[2]~input_o\) # (\C1|C2|CR|MAR_reg\(0))))) # (!\C1|C2|CR|MAR_reg\(2) & (\port_in_02[2]~input_o\ & ((!\C1|C2|CR|MAR_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_02[2]~input_o\,
	datab => \port_in_06[2]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|CR|MAR_reg\(0),
	combout => \C1|C2|Mux13~2_combout\);

-- Location: LCCOMB_X35_Y4_N6
\C1|C2|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux13~3_combout\ = (\C1|C2|Mux13~2_combout\ & ((\port_in_07[2]~input_o\) # ((!\C1|C2|CR|MAR_reg\(0))))) # (!\C1|C2|Mux13~2_combout\ & (((\port_in_03[2]~input_o\ & \C1|C2|CR|MAR_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_07[2]~input_o\,
	datab => \port_in_03[2]~input_o\,
	datac => \C1|C2|Mux13~2_combout\,
	datad => \C1|C2|CR|MAR_reg\(0),
	combout => \C1|C2|Mux13~3_combout\);

-- Location: LCCOMB_X35_Y4_N0
\C1|C2|Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux13~6_combout\ = (\C1|C2|CR|MAR_reg\(1) & (((\C1|C2|CR|MAR_reg\(3)) # (\C1|C2|Mux13~3_combout\)))) # (!\C1|C2|CR|MAR_reg\(1) & (\C1|C2|Mux13~5_combout\ & (!\C1|C2|CR|MAR_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(1),
	datab => \C1|C2|Mux13~5_combout\,
	datac => \C1|C2|CR|MAR_reg\(3),
	datad => \C1|C2|Mux13~3_combout\,
	combout => \C1|C2|Mux13~6_combout\);

-- Location: LCCOMB_X35_Y4_N30
\C1|C2|Mux13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux13~9_combout\ = (\C1|C2|CR|MAR_reg\(3) & ((\C1|C2|Mux13~6_combout\ & (\C1|C2|Mux13~8_combout\)) # (!\C1|C2|Mux13~6_combout\ & ((\C1|C2|Mux13~1_combout\))))) # (!\C1|C2|CR|MAR_reg\(3) & (((\C1|C2|Mux13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux13~8_combout\,
	datab => \C1|C2|Mux13~1_combout\,
	datac => \C1|C2|CR|MAR_reg\(3),
	datad => \C1|C2|Mux13~6_combout\,
	combout => \C1|C2|Mux13~9_combout\);

-- Location: LCCOMB_X10_Y8_N8
\C1|C2|C2|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|C2|Mux6~3_combout\ = (\C1|C2|C2|Mux6~0_combout\) # ((!\C1|C1|ALU_Select\(4) & \C1|C2|C2|Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|ALU_Select\(4),
	datac => \C1|C2|C2|Mux6~0_combout\,
	datad => \C1|C2|C2|Mux6~2_combout\,
	combout => \C1|C2|C2|Mux6~3_combout\);

-- Location: LCCOMB_X12_Y8_N28
\C1|C2|Mux13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux13~10_combout\ = (\C1|C2|Mux14~3_combout\ & ((\C2|progmem|ROM_rtl_0|auto_generated|ram_block1a2\) # ((\C1|C2|Mux14~2_combout\)))) # (!\C1|C2|Mux14~3_combout\ & (((!\C1|C2|Mux14~2_combout\ & \C1|C2|C2|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux14~3_combout\,
	datab => \C2|progmem|ROM_rtl_0|auto_generated|ram_block1a2\,
	datac => \C1|C2|Mux14~2_combout\,
	datad => \C1|C2|C2|Mux6~3_combout\,
	combout => \C1|C2|Mux13~10_combout\);

-- Location: LCCOMB_X12_Y8_N2
\C1|C2|Mux13~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux13~11_combout\ = (\C1|C2|Mux14~17_combout\ & ((\C1|C2|Mux13~10_combout\ & (\C2|datamm|data_out\(2))) # (!\C1|C2|Mux13~10_combout\ & ((\C1|C2|Mux13~9_combout\))))) # (!\C1|C2|Mux14~17_combout\ & (((\C1|C2|Mux13~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|datamm|data_out\(2),
	datab => \C1|C2|Mux14~17_combout\,
	datac => \C1|C2|Mux13~9_combout\,
	datad => \C1|C2|Mux13~10_combout\,
	combout => \C1|C2|Mux13~11_combout\);

-- Location: LCCOMB_X12_Y8_N20
\C1|C2|Mux13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux13~12_combout\ = (\C1|C1|Bus2_Sel\(0) & ((\C1|C1|Bus2_Sel\(1) & ((\C1|C2|Mux13~11_combout\))) # (!\C1|C1|Bus2_Sel\(1) & (\C1|C2|Mux5~1_combout\)))) # (!\C1|C1|Bus2_Sel\(0) & (((\C1|C2|Mux13~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Bus2_Sel\(0),
	datab => \C1|C2|Mux5~1_combout\,
	datac => \C1|C1|Bus2_Sel\(1),
	datad => \C1|C2|Mux13~11_combout\,
	combout => \C1|C2|Mux13~12_combout\);

-- Location: LCCOMB_X12_Y8_N4
\C1|C2|CR|IR_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|CR|IR_reg[2]~feeder_combout\ = \C1|C2|Mux13~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|C2|Mux13~12_combout\,
	combout => \C1|C2|CR|IR_reg[2]~feeder_combout\);

-- Location: FF_X12_Y8_N5
\C1|C2|CR|IR_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C2|CR|IR_reg[2]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \C1|C1|IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|IR_reg\(2));

-- Location: LCCOMB_X8_Y10_N26
\C1|C1|Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|Equal11~0_combout\ = (!\C1|C2|CR|IR_reg\(1) & \C1|C2|CR|IR_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|C2|CR|IR_reg\(1),
	datad => \C1|C2|CR|IR_reg\(2),
	combout => \C1|C1|Equal11~0_combout\);

-- Location: LCCOMB_X8_Y9_N10
\C1|C1|FUT.INC_A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.INC_A~0_combout\ = (\C1|C2|CR|IR_reg\(0) & (\C1|C1|Equal11~0_combout\ & (\C1|C1|EDO.Decode~q\ & \C1|C1|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|IR_reg\(0),
	datab => \C1|C1|Equal11~0_combout\,
	datac => \C1|C1|EDO.Decode~q\,
	datad => \C1|C1|Equal15~0_combout\,
	combout => \C1|C1|FUT.INC_A~0_combout\);

-- Location: FF_X8_Y9_N11
\C1|C1|EDO.INC_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \C1|C1|FUT.INC_A~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.INC_A~q\);

-- Location: LCCOMB_X8_Y9_N4
\C1|C1|FUT.SUB_AB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.SUB_AB~0_combout\ = (\C1|C1|Equal6~3_combout\ & (\C1|C1|Equal15~0_combout\ & (\C1|C1|EDO.Decode~q\ & \C1|C2|CR|IR_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Equal6~3_combout\,
	datab => \C1|C1|Equal15~0_combout\,
	datac => \C1|C1|EDO.Decode~q\,
	datad => \C1|C2|CR|IR_reg\(0),
	combout => \C1|C1|FUT.SUB_AB~0_combout\);

-- Location: FF_X8_Y9_N5
\C1|C1|EDO.SUB_AB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \C1|C1|FUT.SUB_AB~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.SUB_AB~q\);

-- Location: LCCOMB_X8_Y9_N8
\C1|C1|WideOr34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr34~0_combout\ = (!\C1|C1|EDO.INC_A~q\ & (!\C1|C1|EDO.SUB_AB~q\ & (!\C1|C1|EDO.OR_AB~q\ & !\C1|C1|EDO.DEC_A~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EDO.INC_A~q\,
	datab => \C1|C1|EDO.SUB_AB~q\,
	datac => \C1|C1|EDO.OR_AB~q\,
	datad => \C1|C1|EDO.DEC_A~q\,
	combout => \C1|C1|WideOr34~0_combout\);

-- Location: LCCOMB_X8_Y10_N16
\C1|C1|WideOr1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr1~4_combout\ = (\C1|C1|EDO.STOREA4~q\) # ((\C1|C1|EDO.STOREB~q\) # ((\C1|C1|EDO.JCC4~q\) # (!\C1|C1|WideOr19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EDO.STOREA4~q\,
	datab => \C1|C1|EDO.STOREB~q\,
	datac => \C1|C1|WideOr19~0_combout\,
	datad => \C1|C1|EDO.JCC4~q\,
	combout => \C1|C1|WideOr1~4_combout\);

-- Location: LCCOMB_X6_Y9_N22
\C1|C1|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr1~combout\ = (\C1|C1|WideOr34~0_combout\ & (!\C1|C1|WideOr1~4_combout\ & (\C1|C1|WideOr13~5_combout\ & \C1|C1|WideOr1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|WideOr34~0_combout\,
	datab => \C1|C1|WideOr1~4_combout\,
	datac => \C1|C1|WideOr13~5_combout\,
	datad => \C1|C1|WideOr1~2_combout\,
	combout => \C1|C1|WideOr1~combout\);

-- Location: FF_X6_Y9_N23
\C1|C1|EDO.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \C1|C1|WideOr1~combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.IDLE~q\);

-- Location: LCCOMB_X6_Y9_N8
\C1|C1|EDO.Fetch1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|EDO.Fetch1~0_combout\ = !\C1|C1|EDO.IDLE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|C1|EDO.IDLE~q\,
	combout => \C1|C1|EDO.Fetch1~0_combout\);

-- Location: FF_X6_Y9_N9
\C1|C1|EDO.Fetch1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \C1|C1|EDO.Fetch1~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.Fetch1~q\);

-- Location: FF_X6_Y9_N31
\C1|C1|EDO.Fetch2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \C1|C1|EDO.Fetch1~q\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.Fetch2~q\);

-- Location: LCCOMB_X8_Y8_N14
\C1|C1|IR_Load\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|IR_Load~combout\ = (GLOBAL(\C1|C1|EDO.Decode~clkctrl_outclk\) & ((\C1|C1|IR_Load~combout\))) # (!GLOBAL(\C1|C1|EDO.Decode~clkctrl_outclk\) & (\C1|C1|EDO.Fetch2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|EDO.Fetch2~q\,
	datac => \C1|C1|IR_Load~combout\,
	datad => \C1|C1|EDO.Decode~clkctrl_outclk\,
	combout => \C1|C1|IR_Load~combout\);

-- Location: FF_X8_Y8_N13
\C1|C2|CR|IR_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C2|CR|IR_reg[0]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \C1|C1|IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|IR_reg\(0));

-- Location: LCCOMB_X8_Y8_N18
\C1|C1|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|Equal7~0_combout\ = (\C1|C2|CR|IR_reg\(3) & (!\C1|C2|CR|IR_reg\(1) & (!\C1|C2|CR|IR_reg\(2) & !\C1|C2|CR|IR_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|IR_reg\(3),
	datab => \C1|C2|CR|IR_reg\(1),
	datac => \C1|C2|CR|IR_reg\(2),
	datad => \C1|C2|CR|IR_reg\(4),
	combout => \C1|C1|Equal7~0_combout\);

-- Location: LCCOMB_X8_Y8_N16
\C1|C1|Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|Equal7~1_combout\ = (!\C1|C2|CR|IR_reg\(0) & (\C1|C1|Equal7~0_combout\ & !\C1|C2|CR|IR_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|IR_reg\(0),
	datab => \C1|C1|Equal7~0_combout\,
	datad => \C1|C2|CR|IR_reg\(7),
	combout => \C1|C1|Equal7~1_combout\);

-- Location: LCCOMB_X7_Y9_N10
\C1|C1|FUT.DEC_B~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.DEC_B~2_combout\ = (\C1|C1|Equal7~1_combout\ & (!\C1|C2|CR|IR_reg\(5) & (\C1|C1|EDO.Decode~q\ & \C1|C2|CR|IR_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Equal7~1_combout\,
	datab => \C1|C2|CR|IR_reg\(5),
	datac => \C1|C1|EDO.Decode~q\,
	datad => \C1|C2|CR|IR_reg\(6),
	combout => \C1|C1|FUT.DEC_B~2_combout\);

-- Location: FF_X7_Y9_N11
\C1|C1|EDO.DEC_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \C1|C1|FUT.DEC_B~2_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.DEC_B~q\);

-- Location: LCCOMB_X7_Y9_N30
\C1|C1|WideOr13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr13~5_combout\ = (!\C1|C1|EDO.DEC_B~q\ & (!\C1|C1|EDO.INC_B~q\ & !\C1|C1|EDO.NOT_B~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EDO.DEC_B~q\,
	datac => \C1|C1|EDO.INC_B~q\,
	datad => \C1|C1|EDO.NOT_B~q\,
	combout => \C1|C1|WideOr13~5_combout\);

-- Location: LCCOMB_X8_Y10_N8
\C1|C1|WideOr21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr21~0_combout\ = (!\C1|C1|EDO.STOREB~q\ & !\C1|C1|EDO.JCC4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|C1|EDO.STOREB~q\,
	datad => \C1|C1|EDO.JCC4~q\,
	combout => \C1|C1|WideOr21~0_combout\);

-- Location: LCCOMB_X7_Y8_N8
\C1|C1|WideOr17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr17~0_combout\ = (!\C1|C1|EDO.Load_DIR_A4~q\ & (!\C1|C1|EDO.STOREA3~q\ & (!\C1|C1|EDO.Load_DIR_A3~q\ & !\C1|C1|EDO.Fetch2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EDO.Load_DIR_A4~q\,
	datab => \C1|C1|EDO.STOREA3~q\,
	datac => \C1|C1|EDO.Load_DIR_A3~q\,
	datad => \C1|C1|EDO.Fetch2~q\,
	combout => \C1|C1|WideOr17~0_combout\);

-- Location: LCCOMB_X7_Y8_N14
\C1|C1|WideOr17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr17~1_combout\ = (!\C1|C1|EDO.JCC2~q\ & (\C1|C1|WideOr17~0_combout\ & (!\C1|C1|EDO.JMP2~q\ & \C1|C1|WideOr9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EDO.JCC2~q\,
	datab => \C1|C1|WideOr17~0_combout\,
	datac => \C1|C1|EDO.JMP2~q\,
	datad => \C1|C1|WideOr9~0_combout\,
	combout => \C1|C1|WideOr17~1_combout\);

-- Location: LCCOMB_X7_Y8_N4
\C1|C1|WideOr21\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr21~combout\ = (((!\C1|C1|WideOr19~0_combout\) # (!\C1|C1|WideOr17~1_combout\)) # (!\C1|C1|WideOr21~0_combout\)) # (!\C1|C1|WideOr13~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|WideOr13~5_combout\,
	datab => \C1|C1|WideOr21~0_combout\,
	datac => \C1|C1|WideOr17~1_combout\,
	datad => \C1|C1|WideOr19~0_combout\,
	combout => \C1|C1|WideOr21~combout\);

-- Location: LCCOMB_X10_Y8_N0
\C1|C1|Bus1_Sel[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|Bus1_Sel\(1) = (GLOBAL(\C1|C1|EDO.Decode~clkctrl_outclk\) & (\C1|C1|Bus1_Sel\(1))) # (!GLOBAL(\C1|C1|EDO.Decode~clkctrl_outclk\) & ((\C1|C1|WideOr21~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EDO.Decode~clkctrl_outclk\,
	datab => \C1|C1|Bus1_Sel\(1),
	datad => \C1|C1|WideOr21~combout\,
	combout => \C1|C1|Bus1_Sel\(1));

-- Location: LCCOMB_X9_Y8_N26
\C1|C2|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux2~1_combout\ = (\C1|C2|Mux2~0_combout\) # ((\C1|C2|CR|B_reg\(5) & \C1|C1|Bus1_Sel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|B_reg\(5),
	datab => \C1|C1|Bus1_Sel\(1),
	datad => \C1|C2|Mux2~0_combout\,
	combout => \C1|C2|Mux2~1_combout\);

-- Location: LCCOMB_X14_Y10_N10
\C2|datamm|RAM_rtl_0_bypass[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM_rtl_0_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \C2|datamm|RAM_rtl_0_bypass[26]~feeder_combout\);

-- Location: FF_X14_Y10_N11
\C2|datamm|RAM_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|datamm|RAM_rtl_0_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(26));

-- Location: LCCOMB_X14_Y10_N14
\C2|datamm|RAM_rtl_0_bypass[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM_rtl_0_bypass[25]~feeder_combout\ = \C1|C2|Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|C2|Mux2~1_combout\,
	combout => \C2|datamm|RAM_rtl_0_bypass[25]~feeder_combout\);

-- Location: FF_X14_Y10_N15
\C2|datamm|RAM_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|datamm|RAM_rtl_0_bypass[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(25));

-- Location: LCCOMB_X9_Y10_N14
\C2|datamm|RAM~22feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~22feeder_combout\ = \C1|C2|Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|C2|Mux2~1_combout\,
	combout => \C2|datamm|RAM~22feeder_combout\);

-- Location: FF_X9_Y10_N15
\C2|datamm|RAM~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|datamm|RAM~22feeder_combout\,
	ena => \C2|datamm|RAM~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM~22_q\);

-- Location: LCCOMB_X14_Y10_N16
\C2|datamm|RAM~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~40_combout\ = (\C2|datamm|RAM~16_q\ & ((\C2|datamm|RAM_rtl_0|auto_generated|ram_block1a5\))) # (!\C2|datamm|RAM~16_q\ & (\C2|datamm|RAM~22_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|datamm|RAM~22_q\,
	datac => \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a5\,
	datad => \C2|datamm|RAM~16_q\,
	combout => \C2|datamm|RAM~40_combout\);

-- Location: LCCOMB_X14_Y10_N20
\C2|datamm|RAM~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~41_combout\ = (\C2|datamm|RAM_rtl_0_bypass\(26) & ((\C2|datamm|RAM~30_combout\ & (\C2|datamm|RAM_rtl_0_bypass\(25))) # (!\C2|datamm|RAM~30_combout\ & ((\C2|datamm|RAM~40_combout\))))) # (!\C2|datamm|RAM_rtl_0_bypass\(26) & 
-- (((\C2|datamm|RAM_rtl_0_bypass\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|datamm|RAM_rtl_0_bypass\(26),
	datab => \C2|datamm|RAM~30_combout\,
	datac => \C2|datamm|RAM_rtl_0_bypass\(25),
	datad => \C2|datamm|RAM~40_combout\,
	combout => \C2|datamm|RAM~41_combout\);

-- Location: FF_X14_Y10_N21
\C2|datamm|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|datamm|RAM~41_combout\,
	ena => \C1|C1|ALT_INV_wr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|data_out\(5));

-- Location: IOIBUF_X19_Y0_N15
\port_in_15[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_15(5),
	o => \port_in_15[5]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\port_in_11[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_11(5),
	o => \port_in_11[5]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\port_in_13[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_13(5),
	o => \port_in_13[5]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\port_in_09[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_09(5),
	o => \port_in_09[5]~input_o\);

-- Location: LCCOMB_X16_Y4_N8
\C1|C2|Mux10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux10~7_combout\ = (\C1|C2|CR|MAR_reg\(2) & ((\port_in_13[5]~input_o\) # ((\C1|C2|CR|MAR_reg\(1))))) # (!\C1|C2|CR|MAR_reg\(2) & (((\port_in_09[5]~input_o\ & !\C1|C2|CR|MAR_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_13[5]~input_o\,
	datab => \port_in_09[5]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|CR|MAR_reg\(1),
	combout => \C1|C2|Mux10~7_combout\);

-- Location: LCCOMB_X16_Y4_N22
\C1|C2|Mux10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux10~8_combout\ = (\C1|C2|Mux10~7_combout\ & ((\port_in_15[5]~input_o\) # ((!\C1|C2|CR|MAR_reg\(1))))) # (!\C1|C2|Mux10~7_combout\ & (((\port_in_11[5]~input_o\ & \C1|C2|CR|MAR_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_15[5]~input_o\,
	datab => \port_in_11[5]~input_o\,
	datac => \C1|C2|Mux10~7_combout\,
	datad => \C1|C2|CR|MAR_reg\(1),
	combout => \C1|C2|Mux10~8_combout\);

-- Location: IOIBUF_X9_Y0_N8
\port_in_14[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_14(5),
	o => \port_in_14[5]~input_o\);

-- Location: IOIBUF_X5_Y0_N29
\port_in_12[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_12(5),
	o => \port_in_12[5]~input_o\);

-- Location: IOIBUF_X7_Y0_N29
\port_in_08[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_08(5),
	o => \port_in_08[5]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\port_in_10[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_10(5),
	o => \port_in_10[5]~input_o\);

-- Location: LCCOMB_X10_Y4_N2
\C1|C2|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux10~0_combout\ = (\C1|C2|CR|MAR_reg\(2) & (((\C1|C2|CR|MAR_reg\(1))))) # (!\C1|C2|CR|MAR_reg\(2) & ((\C1|C2|CR|MAR_reg\(1) & ((\port_in_10[5]~input_o\))) # (!\C1|C2|CR|MAR_reg\(1) & (\port_in_08[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(2),
	datab => \port_in_08[5]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(1),
	datad => \port_in_10[5]~input_o\,
	combout => \C1|C2|Mux10~0_combout\);

-- Location: LCCOMB_X10_Y4_N28
\C1|C2|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux10~1_combout\ = (\C1|C2|CR|MAR_reg\(2) & ((\C1|C2|Mux10~0_combout\ & (\port_in_14[5]~input_o\)) # (!\C1|C2|Mux10~0_combout\ & ((\port_in_12[5]~input_o\))))) # (!\C1|C2|CR|MAR_reg\(2) & (((\C1|C2|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_14[5]~input_o\,
	datab => \port_in_12[5]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|Mux10~0_combout\,
	combout => \C1|C2|Mux10~1_combout\);

-- Location: IOIBUF_X9_Y0_N22
\port_in_03[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_03(5),
	o => \port_in_03[5]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\port_in_07[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_07(5),
	o => \port_in_07[5]~input_o\);

-- Location: IOIBUF_X11_Y29_N22
\port_in_01[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(5),
	o => \port_in_01[5]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\port_in_05[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_05(5),
	o => \port_in_05[5]~input_o\);

-- Location: LCCOMB_X10_Y4_N6
\C1|C2|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux10~2_combout\ = (\C1|C2|CR|MAR_reg\(2) & (((\C1|C2|CR|MAR_reg\(1)) # (\port_in_05[5]~input_o\)))) # (!\C1|C2|CR|MAR_reg\(2) & (\port_in_01[5]~input_o\ & (!\C1|C2|CR|MAR_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(2),
	datab => \port_in_01[5]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(1),
	datad => \port_in_05[5]~input_o\,
	combout => \C1|C2|Mux10~2_combout\);

-- Location: LCCOMB_X10_Y4_N4
\C1|C2|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux10~3_combout\ = (\C1|C2|CR|MAR_reg\(1) & ((\C1|C2|Mux10~2_combout\ & ((\port_in_07[5]~input_o\))) # (!\C1|C2|Mux10~2_combout\ & (\port_in_03[5]~input_o\)))) # (!\C1|C2|CR|MAR_reg\(1) & (((\C1|C2|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_03[5]~input_o\,
	datab => \port_in_07[5]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(1),
	datad => \C1|C2|Mux10~2_combout\,
	combout => \C1|C2|Mux10~3_combout\);

-- Location: IOIBUF_X21_Y0_N22
\port_in_02[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_02(5),
	o => \port_in_02[5]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\port_in_06[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_06(5),
	o => \port_in_06[5]~input_o\);

-- Location: IOIBUF_X21_Y0_N15
\port_in_04[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_04(5),
	o => \port_in_04[5]~input_o\);

-- Location: IOIBUF_X41_Y7_N15
\port_in_00[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(5),
	o => \port_in_00[5]~input_o\);

-- Location: LCCOMB_X12_Y8_N12
\C1|C2|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux10~4_combout\ = (\C1|C2|CR|MAR_reg\(1) & (((\C1|C2|CR|MAR_reg\(2))))) # (!\C1|C2|CR|MAR_reg\(1) & ((\C1|C2|CR|MAR_reg\(2) & (\port_in_04[5]~input_o\)) # (!\C1|C2|CR|MAR_reg\(2) & ((\port_in_00[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(1),
	datab => \port_in_04[5]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \port_in_00[5]~input_o\,
	combout => \C1|C2|Mux10~4_combout\);

-- Location: LCCOMB_X10_Y4_N30
\C1|C2|Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux10~5_combout\ = (\C1|C2|CR|MAR_reg\(1) & ((\C1|C2|Mux10~4_combout\ & ((\port_in_06[5]~input_o\))) # (!\C1|C2|Mux10~4_combout\ & (\port_in_02[5]~input_o\)))) # (!\C1|C2|CR|MAR_reg\(1) & (((\C1|C2|Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(1),
	datab => \port_in_02[5]~input_o\,
	datac => \port_in_06[5]~input_o\,
	datad => \C1|C2|Mux10~4_combout\,
	combout => \C1|C2|Mux10~5_combout\);

-- Location: LCCOMB_X10_Y4_N20
\C1|C2|Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux10~6_combout\ = (\C1|C2|CR|MAR_reg\(0) & ((\C1|C2|CR|MAR_reg\(3)) # ((\C1|C2|Mux10~3_combout\)))) # (!\C1|C2|CR|MAR_reg\(0) & (!\C1|C2|CR|MAR_reg\(3) & ((\C1|C2|Mux10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(0),
	datab => \C1|C2|CR|MAR_reg\(3),
	datac => \C1|C2|Mux10~3_combout\,
	datad => \C1|C2|Mux10~5_combout\,
	combout => \C1|C2|Mux10~6_combout\);

-- Location: LCCOMB_X10_Y4_N14
\C1|C2|Mux10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux10~9_combout\ = (\C1|C2|CR|MAR_reg\(3) & ((\C1|C2|Mux10~6_combout\ & (\C1|C2|Mux10~8_combout\)) # (!\C1|C2|Mux10~6_combout\ & ((\C1|C2|Mux10~1_combout\))))) # (!\C1|C2|CR|MAR_reg\(3) & (((\C1|C2|Mux10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux10~8_combout\,
	datab => \C1|C2|Mux10~1_combout\,
	datac => \C1|C2|CR|MAR_reg\(3),
	datad => \C1|C2|Mux10~6_combout\,
	combout => \C1|C2|Mux10~9_combout\);

-- Location: LCCOMB_X11_Y10_N16
\C1|C2|Mux10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux10~10_combout\ = (\C1|C2|Mux14~3_combout\ & ((\C1|C2|Mux14~2_combout\) # ((\C2|progmem|ROM_rtl_0|auto_generated|ram_block1a5\)))) # (!\C1|C2|Mux14~3_combout\ & (!\C1|C2|Mux14~2_combout\ & (\C1|C2|C2|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux14~3_combout\,
	datab => \C1|C2|Mux14~2_combout\,
	datac => \C1|C2|C2|Mux3~3_combout\,
	datad => \C2|progmem|ROM_rtl_0|auto_generated|ram_block1a5\,
	combout => \C1|C2|Mux10~10_combout\);

-- Location: LCCOMB_X11_Y10_N10
\C1|C2|Mux10~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux10~11_combout\ = (\C1|C2|Mux14~17_combout\ & ((\C1|C2|Mux10~10_combout\ & (\C2|datamm|data_out\(5))) # (!\C1|C2|Mux10~10_combout\ & ((\C1|C2|Mux10~9_combout\))))) # (!\C1|C2|Mux14~17_combout\ & (((\C1|C2|Mux10~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|datamm|data_out\(5),
	datab => \C1|C2|Mux14~17_combout\,
	datac => \C1|C2|Mux10~9_combout\,
	datad => \C1|C2|Mux10~10_combout\,
	combout => \C1|C2|Mux10~11_combout\);

-- Location: LCCOMB_X11_Y10_N24
\C1|C2|Mux10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux10~12_combout\ = (\C1|C1|Bus2_Sel\(0) & ((\C1|C1|Bus2_Sel\(1) & ((\C1|C2|Mux10~11_combout\))) # (!\C1|C1|Bus2_Sel\(1) & (\C1|C2|Mux2~1_combout\)))) # (!\C1|C1|Bus2_Sel\(0) & (((\C1|C2|Mux10~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux2~1_combout\,
	datab => \C1|C1|Bus2_Sel\(0),
	datac => \C1|C1|Bus2_Sel\(1),
	datad => \C1|C2|Mux10~11_combout\,
	combout => \C1|C2|Mux10~12_combout\);

-- Location: FF_X10_Y9_N13
\C1|C2|CR|IR_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux10~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \C1|C1|IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|IR_reg\(5));

-- Location: LCCOMB_X8_Y8_N8
\C1|C1|P2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|P2~11_combout\ = (!\C1|C2|CR|IR_reg\(5) & (\C1|C1|Equal7~0_combout\ & (\C1|C2|CR|IR_reg\(7) & !\C1|C2|CR|IR_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|IR_reg\(5),
	datab => \C1|C1|Equal7~0_combout\,
	datac => \C1|C2|CR|IR_reg\(7),
	datad => \C1|C2|CR|IR_reg\(6),
	combout => \C1|C1|P2~11_combout\);

-- Location: LCCOMB_X8_Y10_N6
\C1|C1|FUT.Load_DIR_A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.Load_DIR_A~0_combout\ = (\C1|C1|P2~11_combout\ & (\C1|C1|EDO.Decode~q\ & !\C1|C1|P2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|P2~11_combout\,
	datac => \C1|C1|EDO.Decode~q\,
	datad => \C1|C1|P2~3_combout\,
	combout => \C1|C1|FUT.Load_DIR_A~0_combout\);

-- Location: FF_X7_Y10_N13
\C1|C1|EDO.Load_DIR_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C1|FUT.Load_DIR_A~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.Load_DIR_A~q\);

-- Location: FF_X7_Y8_N23
\C1|C1|EDO.Load_DIR_A2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C1|EDO.Load_DIR_A~q\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.Load_DIR_A2~q\);

-- Location: FF_X7_Y8_N9
\C1|C1|EDO.Load_DIR_A3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C1|EDO.Load_DIR_A2~q\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.Load_DIR_A3~q\);

-- Location: FF_X7_Y8_N25
\C1|C1|EDO.Load_DIR_A4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C1|EDO.Load_DIR_A3~q\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.Load_DIR_A4~q\);

-- Location: LCCOMB_X7_Y8_N6
\C1|C1|FUT.Load_DIR_A5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.Load_DIR_A5~0_combout\ = (\C1|C1|EDO.Load_DIR_A4~q\ & (\C1|C1|Equal7~0_combout\ & (!\C1|C2|CR|IR_reg\(0) & \C1|C1|P2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EDO.Load_DIR_A4~q\,
	datab => \C1|C1|Equal7~0_combout\,
	datac => \C1|C2|CR|IR_reg\(0),
	datad => \C1|C1|P2~2_combout\,
	combout => \C1|C1|FUT.Load_DIR_A5~0_combout\);

-- Location: FF_X7_Y8_N7
\C1|C1|EDO.Load_DIR_A5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C1|FUT.Load_DIR_A5~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.Load_DIR_A5~q\);

-- Location: LCCOMB_X7_Y8_N18
\C1|C1|FUT.Load_DIR_B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.Load_DIR_B~0_combout\ = (\C1|C1|EDO.Load_DIR_A4~q\ & (((\C1|C2|CR|IR_reg\(0)) # (!\C1|C1|P2~2_combout\)) # (!\C1|C1|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EDO.Load_DIR_A4~q\,
	datab => \C1|C1|Equal7~0_combout\,
	datac => \C1|C2|CR|IR_reg\(0),
	datad => \C1|C1|P2~2_combout\,
	combout => \C1|C1|FUT.Load_DIR_B~0_combout\);

-- Location: FF_X7_Y8_N19
\C1|C1|EDO.Load_DIR_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C1|FUT.Load_DIR_B~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.Load_DIR_B~q\);

-- Location: LCCOMB_X7_Y8_N26
\C1|C1|WideOr13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr13~4_combout\ = (!\C1|C1|EDO.Load_inmB~q\ & !\C1|C1|EDO.Load_DIR_B~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EDO.Load_inmB~q\,
	datad => \C1|C1|EDO.Load_DIR_B~q\,
	combout => \C1|C1|WideOr13~4_combout\);

-- Location: LCCOMB_X7_Y8_N12
\C1|C1|WideOr19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr19~0_combout\ = (!\C1|C1|EDO.Load_DIR_A5~q\ & (!\C1|C1|EDO.Load_inmA3~q\ & (\C1|C1|WideOr13~4_combout\ & \C1|C1|PC_Load~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EDO.Load_DIR_A5~q\,
	datab => \C1|C1|EDO.Load_inmA3~q\,
	datac => \C1|C1|WideOr13~4_combout\,
	datad => \C1|C1|PC_Load~0_combout\,
	combout => \C1|C1|WideOr19~0_combout\);

-- Location: LCCOMB_X7_Y8_N28
\C1|C1|WideOr17\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr17~combout\ = ((\C1|C1|EDO.STOREA4~q\) # ((!\C1|C1|WideOr21~0_combout\) # (!\C1|C1|WideOr17~1_combout\))) # (!\C1|C1|WideOr19~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|WideOr19~0_combout\,
	datab => \C1|C1|EDO.STOREA4~q\,
	datac => \C1|C1|WideOr17~1_combout\,
	datad => \C1|C1|WideOr21~0_combout\,
	combout => \C1|C1|WideOr17~combout\);

-- Location: LCCOMB_X7_Y8_N30
\C1|C1|Bus2_Sel[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|Bus2_Sel\(1) = (GLOBAL(\C1|C1|EDO.Decode~clkctrl_outclk\) & (\C1|C1|Bus2_Sel\(1))) # (!GLOBAL(\C1|C1|EDO.Decode~clkctrl_outclk\) & ((\C1|C1|WideOr17~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Bus2_Sel\(1),
	datab => \C1|C1|WideOr17~combout\,
	datad => \C1|C1|EDO.Decode~clkctrl_outclk\,
	combout => \C1|C1|Bus2_Sel\(1));

-- Location: IOIBUF_X41_Y12_N15
\port_in_15[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_15(6),
	o => \port_in_15[6]~input_o\);

-- Location: IOIBUF_X16_Y29_N8
\port_in_14[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_14(6),
	o => \port_in_14[6]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\port_in_06[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_06(6),
	o => \port_in_06[6]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\port_in_07[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_07(6),
	o => \port_in_07[6]~input_o\);

-- Location: LCCOMB_X16_Y8_N18
\C1|C2|Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux9~7_combout\ = (\C1|C2|CR|MAR_reg\(0) & (((\port_in_07[6]~input_o\) # (\C1|C2|CR|MAR_reg\(3))))) # (!\C1|C2|CR|MAR_reg\(0) & (\port_in_06[6]~input_o\ & ((!\C1|C2|CR|MAR_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_06[6]~input_o\,
	datab => \port_in_07[6]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(0),
	datad => \C1|C2|CR|MAR_reg\(3),
	combout => \C1|C2|Mux9~7_combout\);

-- Location: LCCOMB_X16_Y8_N20
\C1|C2|Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux9~8_combout\ = (\C1|C2|CR|MAR_reg\(3) & ((\C1|C2|Mux9~7_combout\ & (\port_in_15[6]~input_o\)) # (!\C1|C2|Mux9~7_combout\ & ((\port_in_14[6]~input_o\))))) # (!\C1|C2|CR|MAR_reg\(3) & (((\C1|C2|Mux9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(3),
	datab => \port_in_15[6]~input_o\,
	datac => \port_in_14[6]~input_o\,
	datad => \C1|C2|Mux9~7_combout\,
	combout => \C1|C2|Mux9~8_combout\);

-- Location: IOIBUF_X19_Y0_N29
\port_in_12[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_12(6),
	o => \port_in_12[6]~input_o\);

-- Location: IOIBUF_X41_Y8_N22
\port_in_13[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_13(6),
	o => \port_in_13[6]~input_o\);

-- Location: IOIBUF_X26_Y29_N22
\port_in_05[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_05(6),
	o => \port_in_05[6]~input_o\);

-- Location: IOIBUF_X41_Y10_N22
\port_in_04[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_04(6),
	o => \port_in_04[6]~input_o\);

-- Location: LCCOMB_X21_Y8_N26
\C1|C2|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux9~0_combout\ = (\C1|C2|CR|MAR_reg\(0) & ((\port_in_05[6]~input_o\) # ((\C1|C2|CR|MAR_reg\(3))))) # (!\C1|C2|CR|MAR_reg\(0) & (((\port_in_04[6]~input_o\ & !\C1|C2|CR|MAR_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_05[6]~input_o\,
	datab => \port_in_04[6]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(0),
	datad => \C1|C2|CR|MAR_reg\(3),
	combout => \C1|C2|Mux9~0_combout\);

-- Location: LCCOMB_X21_Y8_N8
\C1|C2|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux9~1_combout\ = (\C1|C2|Mux9~0_combout\ & (((\port_in_13[6]~input_o\) # (!\C1|C2|CR|MAR_reg\(3))))) # (!\C1|C2|Mux9~0_combout\ & (\port_in_12[6]~input_o\ & ((\C1|C2|CR|MAR_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_12[6]~input_o\,
	datab => \port_in_13[6]~input_o\,
	datac => \C1|C2|Mux9~0_combout\,
	datad => \C1|C2|CR|MAR_reg\(3),
	combout => \C1|C2|Mux9~1_combout\);

-- Location: IOIBUF_X41_Y7_N1
\port_in_10[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_10(6),
	o => \port_in_10[6]~input_o\);

-- Location: IOIBUF_X41_Y8_N1
\port_in_11[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_11(6),
	o => \port_in_11[6]~input_o\);

-- Location: IOIBUF_X41_Y8_N8
\port_in_03[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_03(6),
	o => \port_in_03[6]~input_o\);

-- Location: IOIBUF_X41_Y14_N22
\port_in_02[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_02(6),
	o => \port_in_02[6]~input_o\);

-- Location: LCCOMB_X21_Y8_N14
\C1|C2|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux9~2_combout\ = (\C1|C2|CR|MAR_reg\(0) & ((\port_in_03[6]~input_o\) # ((\C1|C2|CR|MAR_reg\(3))))) # (!\C1|C2|CR|MAR_reg\(0) & (((\port_in_02[6]~input_o\ & !\C1|C2|CR|MAR_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_03[6]~input_o\,
	datab => \port_in_02[6]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(0),
	datad => \C1|C2|CR|MAR_reg\(3),
	combout => \C1|C2|Mux9~2_combout\);

-- Location: LCCOMB_X21_Y8_N4
\C1|C2|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux9~3_combout\ = (\C1|C2|Mux9~2_combout\ & (((\port_in_11[6]~input_o\) # (!\C1|C2|CR|MAR_reg\(3))))) # (!\C1|C2|Mux9~2_combout\ & (\port_in_10[6]~input_o\ & ((\C1|C2|CR|MAR_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_10[6]~input_o\,
	datab => \port_in_11[6]~input_o\,
	datac => \C1|C2|Mux9~2_combout\,
	datad => \C1|C2|CR|MAR_reg\(3),
	combout => \C1|C2|Mux9~3_combout\);

-- Location: IOIBUF_X21_Y29_N29
\port_in_08[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_08(6),
	o => \port_in_08[6]~input_o\);

-- Location: IOIBUF_X21_Y29_N1
\port_in_09[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_09(6),
	o => \port_in_09[6]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\port_in_01[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(6),
	o => \port_in_01[6]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\port_in_00[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(6),
	o => \port_in_00[6]~input_o\);

-- Location: LCCOMB_X12_Y8_N24
\C1|C2|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux9~4_combout\ = (\C1|C2|CR|MAR_reg\(0) & ((\port_in_01[6]~input_o\) # ((\C1|C2|CR|MAR_reg\(3))))) # (!\C1|C2|CR|MAR_reg\(0) & (((\port_in_00[6]~input_o\ & !\C1|C2|CR|MAR_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_01[6]~input_o\,
	datab => \port_in_00[6]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(0),
	datad => \C1|C2|CR|MAR_reg\(3),
	combout => \C1|C2|Mux9~4_combout\);

-- Location: LCCOMB_X21_Y8_N10
\C1|C2|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux9~5_combout\ = (\C1|C2|CR|MAR_reg\(3) & ((\C1|C2|Mux9~4_combout\ & ((\port_in_09[6]~input_o\))) # (!\C1|C2|Mux9~4_combout\ & (\port_in_08[6]~input_o\)))) # (!\C1|C2|CR|MAR_reg\(3) & (((\C1|C2|Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(3),
	datab => \port_in_08[6]~input_o\,
	datac => \port_in_09[6]~input_o\,
	datad => \C1|C2|Mux9~4_combout\,
	combout => \C1|C2|Mux9~5_combout\);

-- Location: LCCOMB_X21_Y8_N20
\C1|C2|Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux9~6_combout\ = (\C1|C2|CR|MAR_reg\(2) & (\C1|C2|CR|MAR_reg\(1))) # (!\C1|C2|CR|MAR_reg\(2) & ((\C1|C2|CR|MAR_reg\(1) & (\C1|C2|Mux9~3_combout\)) # (!\C1|C2|CR|MAR_reg\(1) & ((\C1|C2|Mux9~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(2),
	datab => \C1|C2|CR|MAR_reg\(1),
	datac => \C1|C2|Mux9~3_combout\,
	datad => \C1|C2|Mux9~5_combout\,
	combout => \C1|C2|Mux9~6_combout\);

-- Location: LCCOMB_X21_Y8_N22
\C1|C2|Mux9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux9~9_combout\ = (\C1|C2|CR|MAR_reg\(2) & ((\C1|C2|Mux9~6_combout\ & (\C1|C2|Mux9~8_combout\)) # (!\C1|C2|Mux9~6_combout\ & ((\C1|C2|Mux9~1_combout\))))) # (!\C1|C2|CR|MAR_reg\(2) & (((\C1|C2|Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux9~8_combout\,
	datab => \C1|C2|CR|MAR_reg\(2),
	datac => \C1|C2|Mux9~1_combout\,
	datad => \C1|C2|Mux9~6_combout\,
	combout => \C1|C2|Mux9~9_combout\);

-- Location: LCCOMB_X10_Y10_N26
\C1|C2|Mux9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux9~10_combout\ = (\C1|C2|Mux14~2_combout\ & (((\C1|C2|Mux14~3_combout\)))) # (!\C1|C2|Mux14~2_combout\ & ((\C1|C2|Mux14~3_combout\ & (\C2|progmem|ROM_rtl_0|auto_generated|ram_block1a6\)) # (!\C1|C2|Mux14~3_combout\ & 
-- ((\C1|C2|C2|Mux2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|progmem|ROM_rtl_0|auto_generated|ram_block1a6\,
	datab => \C1|C2|Mux14~2_combout\,
	datac => \C1|C2|Mux14~3_combout\,
	datad => \C1|C2|C2|Mux2~3_combout\,
	combout => \C1|C2|Mux9~10_combout\);

-- Location: LCCOMB_X10_Y10_N30
\C2|datamm|RAM_rtl_0_bypass[27]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM_rtl_0_bypass[27]~1_combout\ = !\C1|C2|Mux1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux1~1_combout\,
	combout => \C2|datamm|RAM_rtl_0_bypass[27]~1_combout\);

-- Location: FF_X12_Y10_N29
\C2|datamm|RAM_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C2|datamm|RAM_rtl_0_bypass[27]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(27));

-- Location: LCCOMB_X12_Y10_N14
\C2|datamm|RAM_rtl_0_bypass[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM_rtl_0_bypass[28]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \C2|datamm|RAM_rtl_0_bypass[28]~feeder_combout\);

-- Location: FF_X12_Y10_N15
\C2|datamm|RAM_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|datamm|RAM_rtl_0_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(28));

-- Location: LCCOMB_X9_Y10_N12
\C2|datamm|RAM~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~50_combout\ = !\C1|C2|Mux1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|C2|Mux1~1_combout\,
	combout => \C2|datamm|RAM~50_combout\);

-- Location: FF_X9_Y10_N13
\C2|datamm|RAM~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|datamm|RAM~50_combout\,
	ena => \C2|datamm|RAM~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM~23_q\);

-- Location: LCCOMB_X12_Y10_N28
\C2|datamm|RAM~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~42_combout\ = (\C2|datamm|RAM~16_q\ & ((\C2|datamm|RAM_rtl_0|auto_generated|ram_block1a6\))) # (!\C2|datamm|RAM~16_q\ & (!\C2|datamm|RAM~23_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|datamm|RAM~23_q\,
	datab => \C2|datamm|RAM~16_q\,
	datad => \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a6\,
	combout => \C2|datamm|RAM~42_combout\);

-- Location: LCCOMB_X12_Y10_N12
\C2|datamm|RAM~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~43_combout\ = (\C2|datamm|RAM~30_combout\ & (!\C2|datamm|RAM_rtl_0_bypass\(27))) # (!\C2|datamm|RAM~30_combout\ & ((\C2|datamm|RAM_rtl_0_bypass\(28) & ((\C2|datamm|RAM~42_combout\))) # (!\C2|datamm|RAM_rtl_0_bypass\(28) & 
-- (!\C2|datamm|RAM_rtl_0_bypass\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|datamm|RAM~30_combout\,
	datab => \C2|datamm|RAM_rtl_0_bypass\(27),
	datac => \C2|datamm|RAM_rtl_0_bypass\(28),
	datad => \C2|datamm|RAM~42_combout\,
	combout => \C2|datamm|RAM~43_combout\);

-- Location: FF_X12_Y10_N13
\C2|datamm|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|datamm|RAM~43_combout\,
	ena => \C1|C1|ALT_INV_wr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|data_out\(6));

-- Location: LCCOMB_X10_Y10_N16
\C1|C2|Mux9~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux9~11_combout\ = (\C1|C2|Mux14~17_combout\ & ((\C1|C2|Mux9~10_combout\ & ((\C2|datamm|data_out\(6)))) # (!\C1|C2|Mux9~10_combout\ & (\C1|C2|Mux9~9_combout\)))) # (!\C1|C2|Mux14~17_combout\ & (((\C1|C2|Mux9~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux14~17_combout\,
	datab => \C1|C2|Mux9~9_combout\,
	datac => \C1|C2|Mux9~10_combout\,
	datad => \C2|datamm|data_out\(6),
	combout => \C1|C2|Mux9~11_combout\);

-- Location: LCCOMB_X10_Y10_N22
\C1|C2|Mux9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux9~12_combout\ = (\C1|C1|Bus2_Sel\(1) & (((\C1|C2|Mux9~11_combout\)))) # (!\C1|C1|Bus2_Sel\(1) & ((\C1|C1|Bus2_Sel\(0) & (\C1|C2|Mux1~1_combout\)) # (!\C1|C1|Bus2_Sel\(0) & ((\C1|C2|Mux9~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Bus2_Sel\(1),
	datab => \C1|C1|Bus2_Sel\(0),
	datac => \C1|C2|Mux1~1_combout\,
	datad => \C1|C2|Mux9~11_combout\,
	combout => \C1|C2|Mux9~12_combout\);

-- Location: FF_X11_Y9_N9
\C1|C2|CR|IR_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux9~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \C1|C1|IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|IR_reg\(6));

-- Location: LCCOMB_X8_Y9_N20
\C1|C1|P2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|P2~5_combout\ = (\C1|C1|Equal6~1_combout\ & ((\C1|C2|CR|IR_reg\(0)) # ((\C1|C2|CR|IR_reg\(1)) # (\C1|C2|CR|IR_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|IR_reg\(0),
	datab => \C1|C2|CR|IR_reg\(1),
	datac => \C1|C2|CR|IR_reg\(2),
	datad => \C1|C1|Equal6~1_combout\,
	combout => \C1|C1|P2~5_combout\);

-- Location: LCCOMB_X7_Y9_N12
\C1|C1|P2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|P2~6_combout\ = (\C1|C1|P2~5_combout\) # ((!\C1|C2|CR|IR_reg\(6) & (\C1|C2|CR|IR_reg\(5) & \C1|C1|Equal7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|IR_reg\(6),
	datab => \C1|C2|CR|IR_reg\(5),
	datac => \C1|C1|P2~5_combout\,
	datad => \C1|C1|Equal7~1_combout\,
	combout => \C1|C1|P2~6_combout\);

-- Location: LCCOMB_X7_Y9_N6
\C1|C1|Selector10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|Selector10~3_combout\ = (!\C1|C1|Equal6~2_combout\ & (\C1|C1|Selector10~2_combout\ & !\C1|C1|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|Equal6~2_combout\,
	datac => \C1|C1|Selector10~2_combout\,
	datad => \C1|C1|Equal15~0_combout\,
	combout => \C1|C1|Selector10~3_combout\);

-- Location: LCCOMB_X7_Y9_N28
\C1|C1|Selector10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|Selector10~5_combout\ = (!\C1|C1|Equal24~0_combout\ & (((\C1|C2|CR|IR_reg\(5)) # (!\C1|C2|CR|IR_reg\(6))) # (!\C1|C1|Equal7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Equal7~1_combout\,
	datab => \C1|C1|Equal24~0_combout\,
	datac => \C1|C2|CR|IR_reg\(5),
	datad => \C1|C2|CR|IR_reg\(6),
	combout => \C1|C1|Selector10~5_combout\);

-- Location: LCCOMB_X7_Y9_N0
\C1|C1|Selector10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|Selector10~4_combout\ = (\C1|C1|EDO.Fetch2~q\) # ((!\C1|C1|P2~6_combout\ & (\C1|C1|Selector10~3_combout\ & \C1|C1|Selector10~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|P2~6_combout\,
	datab => \C1|C1|Selector10~3_combout\,
	datac => \C1|C1|EDO.Fetch2~q\,
	datad => \C1|C1|Selector10~5_combout\,
	combout => \C1|C1|Selector10~4_combout\);

-- Location: FF_X7_Y9_N1
\C1|C1|EDO.Decode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C1|Selector10~4_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.Decode~q\);

-- Location: LCCOMB_X7_Y10_N26
\C1|C1|FUT.Load_inmA1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.Load_inmA1~0_combout\ = (\C1|C1|EDO.Decode~q\ & \C1|C1|P2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|C1|EDO.Decode~q\,
	datad => \C1|C1|P2~3_combout\,
	combout => \C1|C1|FUT.Load_inmA1~0_combout\);

-- Location: FF_X7_Y10_N27
\C1|C1|EDO.Load_inmA1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C1|FUT.Load_inmA1~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.Load_inmA1~q\);

-- Location: FF_X7_Y8_N17
\C1|C1|EDO.Load_inmA2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C1|EDO.Load_inmA1~q\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.Load_inmA2~q\);

-- Location: LCCOMB_X7_Y8_N10
\C1|C1|FUT.Load_inmB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.Load_inmB~0_combout\ = (\C1|C1|EDO.Load_inmA2~q\ & ((\C1|C2|CR|IR_reg\(0)) # (!\C1|C1|P2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EDO.Load_inmA2~q\,
	datab => \C1|C2|CR|IR_reg\(0),
	datad => \C1|C1|P2~3_combout\,
	combout => \C1|C1|FUT.Load_inmB~0_combout\);

-- Location: FF_X7_Y8_N11
\C1|C1|EDO.Load_inmB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C1|FUT.Load_inmB~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.Load_inmB~q\);

-- Location: LCCOMB_X8_Y8_N22
\C1|C1|WideOr13\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr13~combout\ = (\C1|C1|EDO.Load_inmB~q\) # ((\C1|C1|EDO.Load_DIR_B~q\) # (!\C1|C1|WideOr13~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EDO.Load_inmB~q\,
	datab => \C1|C1|EDO.Load_DIR_B~q\,
	datad => \C1|C1|WideOr13~5_combout\,
	combout => \C1|C1|WideOr13~combout\);

-- Location: LCCOMB_X8_Y8_N4
\C1|C1|B_Load\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|B_Load~combout\ = (GLOBAL(\C1|C1|EDO.Decode~clkctrl_outclk\) & ((\C1|C1|B_Load~combout\))) # (!GLOBAL(\C1|C1|EDO.Decode~clkctrl_outclk\) & (\C1|C1|WideOr13~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|WideOr13~combout\,
	datac => \C1|C1|B_Load~combout\,
	datad => \C1|C1|EDO.Decode~clkctrl_outclk\,
	combout => \C1|C1|B_Load~combout\);

-- Location: FF_X10_Y9_N1
\C1|C2|CR|B_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux14~16_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \C1|C1|B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|B_reg\(1));

-- Location: LCCOMB_X11_Y9_N12
\C1|C2|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux6~1_combout\ = (\C1|C2|Mux6~0_combout\) # ((\C1|C2|CR|B_reg\(1) & \C1|C1|Bus1_Sel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|B_reg\(1),
	datac => \C1|C1|Bus1_Sel\(1),
	datad => \C1|C2|Mux6~0_combout\,
	combout => \C1|C2|Mux6~1_combout\);

-- Location: LCCOMB_X12_Y10_N20
\C2|datamm|RAM_rtl_0_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \C2|datamm|RAM_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X12_Y10_N21
\C2|datamm|RAM_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|datamm|RAM_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(18));

-- Location: FF_X12_Y10_N31
\C2|datamm|RAM_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux6~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(17));

-- Location: FF_X11_Y9_N13
\C2|datamm|RAM~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C2|Mux6~1_combout\,
	ena => \C2|datamm|RAM~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM~18_q\);

-- Location: LCCOMB_X12_Y10_N30
\C2|datamm|RAM~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~32_combout\ = (\C2|datamm|RAM~16_q\ & ((\C2|datamm|RAM_rtl_0|auto_generated|ram_block1a1\))) # (!\C2|datamm|RAM~16_q\ & (\C2|datamm|RAM~18_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|datamm|RAM~18_q\,
	datab => \C2|datamm|RAM~16_q\,
	datad => \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a1\,
	combout => \C2|datamm|RAM~32_combout\);

-- Location: LCCOMB_X12_Y10_N6
\C2|datamm|RAM~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~33_combout\ = (\C2|datamm|RAM~30_combout\ & (((\C2|datamm|RAM_rtl_0_bypass\(17))))) # (!\C2|datamm|RAM~30_combout\ & ((\C2|datamm|RAM_rtl_0_bypass\(18) & ((\C2|datamm|RAM~32_combout\))) # (!\C2|datamm|RAM_rtl_0_bypass\(18) & 
-- (\C2|datamm|RAM_rtl_0_bypass\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|datamm|RAM~30_combout\,
	datab => \C2|datamm|RAM_rtl_0_bypass\(18),
	datac => \C2|datamm|RAM_rtl_0_bypass\(17),
	datad => \C2|datamm|RAM~32_combout\,
	combout => \C2|datamm|RAM~33_combout\);

-- Location: FF_X12_Y10_N7
\C2|datamm|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|datamm|RAM~33_combout\,
	ena => \C1|C1|ALT_INV_wr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|data_out\(1));

-- Location: IOIBUF_X5_Y0_N22
\port_in_15[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_15(1),
	o => \port_in_15[1]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\port_in_12[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_12(1),
	o => \port_in_12[1]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\port_in_14[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_14(1),
	o => \port_in_14[1]~input_o\);

-- Location: LCCOMB_X10_Y4_N0
\C1|C2|Mux14~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux14~11_combout\ = (\C1|C2|CR|MAR_reg\(1) & (((\C1|C2|CR|MAR_reg\(0)) # (\port_in_14[1]~input_o\)))) # (!\C1|C2|CR|MAR_reg\(1) & (\port_in_12[1]~input_o\ & (!\C1|C2|CR|MAR_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(1),
	datab => \port_in_12[1]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(0),
	datad => \port_in_14[1]~input_o\,
	combout => \C1|C2|Mux14~11_combout\);

-- Location: IOIBUF_X3_Y0_N22
\port_in_13[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_13(1),
	o => \port_in_13[1]~input_o\);

-- Location: LCCOMB_X10_Y4_N26
\C1|C2|Mux14~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux14~12_combout\ = (\C1|C2|Mux14~11_combout\ & ((\port_in_15[1]~input_o\) # ((!\C1|C2|CR|MAR_reg\(0))))) # (!\C1|C2|Mux14~11_combout\ & (((\C1|C2|CR|MAR_reg\(0) & \port_in_13[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_15[1]~input_o\,
	datab => \C1|C2|Mux14~11_combout\,
	datac => \C1|C2|CR|MAR_reg\(0),
	datad => \port_in_13[1]~input_o\,
	combout => \C1|C2|Mux14~12_combout\);

-- Location: IOIBUF_X1_Y0_N8
\port_in_01[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(1),
	o => \port_in_01[1]~input_o\);

-- Location: IOIBUF_X1_Y0_N29
\port_in_03[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_03(1),
	o => \port_in_03[1]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\port_in_00[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(1),
	o => \port_in_00[1]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\port_in_02[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_02(1),
	o => \port_in_02[1]~input_o\);

-- Location: LCCOMB_X12_Y8_N26
\C1|C2|Mux14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux14~8_combout\ = (\C1|C2|CR|MAR_reg\(0) & (((\C1|C2|CR|MAR_reg\(1))))) # (!\C1|C2|CR|MAR_reg\(0) & ((\C1|C2|CR|MAR_reg\(1) & ((\port_in_02[1]~input_o\))) # (!\C1|C2|CR|MAR_reg\(1) & (\port_in_00[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_00[1]~input_o\,
	datab => \C1|C2|CR|MAR_reg\(0),
	datac => \C1|C2|CR|MAR_reg\(1),
	datad => \port_in_02[1]~input_o\,
	combout => \C1|C2|Mux14~8_combout\);

-- Location: LCCOMB_X10_Y4_N16
\C1|C2|Mux14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux14~9_combout\ = (\C1|C2|CR|MAR_reg\(0) & ((\C1|C2|Mux14~8_combout\ & ((\port_in_03[1]~input_o\))) # (!\C1|C2|Mux14~8_combout\ & (\port_in_01[1]~input_o\)))) # (!\C1|C2|CR|MAR_reg\(0) & (((\C1|C2|Mux14~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_01[1]~input_o\,
	datab => \port_in_03[1]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(0),
	datad => \C1|C2|Mux14~8_combout\,
	combout => \C1|C2|Mux14~9_combout\);

-- Location: IOIBUF_X9_Y0_N29
\port_in_06[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_06(1),
	o => \port_in_06[1]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\port_in_04[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_04(1),
	o => \port_in_04[1]~input_o\);

-- Location: LCCOMB_X10_Y4_N12
\C1|C2|Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux14~6_combout\ = (\C1|C2|CR|MAR_reg\(1) & ((\port_in_06[1]~input_o\) # ((\C1|C2|CR|MAR_reg\(0))))) # (!\C1|C2|CR|MAR_reg\(1) & (((!\C1|C2|CR|MAR_reg\(0) & \port_in_04[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(1),
	datab => \port_in_06[1]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(0),
	datad => \port_in_04[1]~input_o\,
	combout => \C1|C2|Mux14~6_combout\);

-- Location: IOIBUF_X11_Y0_N8
\port_in_07[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_07(1),
	o => \port_in_07[1]~input_o\);

-- Location: IOIBUF_X11_Y29_N29
\port_in_05[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_05(1),
	o => \port_in_05[1]~input_o\);

-- Location: LCCOMB_X10_Y4_N10
\C1|C2|Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux14~7_combout\ = (\C1|C2|Mux14~6_combout\ & ((\port_in_07[1]~input_o\) # ((!\C1|C2|CR|MAR_reg\(0))))) # (!\C1|C2|Mux14~6_combout\ & (((\C1|C2|CR|MAR_reg\(0) & \port_in_05[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux14~6_combout\,
	datab => \port_in_07[1]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(0),
	datad => \port_in_05[1]~input_o\,
	combout => \C1|C2|Mux14~7_combout\);

-- Location: LCCOMB_X10_Y4_N22
\C1|C2|Mux14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux14~10_combout\ = (\C1|C2|CR|MAR_reg\(2) & (((\C1|C2|CR|MAR_reg\(3)) # (\C1|C2|Mux14~7_combout\)))) # (!\C1|C2|CR|MAR_reg\(2) & (\C1|C2|Mux14~9_combout\ & (!\C1|C2|CR|MAR_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(2),
	datab => \C1|C2|Mux14~9_combout\,
	datac => \C1|C2|CR|MAR_reg\(3),
	datad => \C1|C2|Mux14~7_combout\,
	combout => \C1|C2|Mux14~10_combout\);

-- Location: IOIBUF_X7_Y0_N1
\port_in_11[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_11(1),
	o => \port_in_11[1]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\port_in_09[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_09(1),
	o => \port_in_09[1]~input_o\);

-- Location: IOIBUF_X3_Y0_N29
\port_in_08[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_08(1),
	o => \port_in_08[1]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\port_in_10[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_10(1),
	o => \port_in_10[1]~input_o\);

-- Location: LCCOMB_X10_Y4_N24
\C1|C2|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux14~4_combout\ = (\C1|C2|CR|MAR_reg\(1) & (((\C1|C2|CR|MAR_reg\(0)) # (\port_in_10[1]~input_o\)))) # (!\C1|C2|CR|MAR_reg\(1) & (\port_in_08[1]~input_o\ & (!\C1|C2|CR|MAR_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(1),
	datab => \port_in_08[1]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(0),
	datad => \port_in_10[1]~input_o\,
	combout => \C1|C2|Mux14~4_combout\);

-- Location: LCCOMB_X10_Y4_N18
\C1|C2|Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux14~5_combout\ = (\C1|C2|CR|MAR_reg\(0) & ((\C1|C2|Mux14~4_combout\ & (\port_in_11[1]~input_o\)) # (!\C1|C2|Mux14~4_combout\ & ((\port_in_09[1]~input_o\))))) # (!\C1|C2|CR|MAR_reg\(0) & (((\C1|C2|Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(0),
	datab => \port_in_11[1]~input_o\,
	datac => \port_in_09[1]~input_o\,
	datad => \C1|C2|Mux14~4_combout\,
	combout => \C1|C2|Mux14~5_combout\);

-- Location: LCCOMB_X10_Y4_N8
\C1|C2|Mux14~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux14~13_combout\ = (\C1|C2|CR|MAR_reg\(3) & ((\C1|C2|Mux14~10_combout\ & (\C1|C2|Mux14~12_combout\)) # (!\C1|C2|Mux14~10_combout\ & ((\C1|C2|Mux14~5_combout\))))) # (!\C1|C2|CR|MAR_reg\(3) & (((\C1|C2|Mux14~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux14~12_combout\,
	datab => \C1|C2|CR|MAR_reg\(3),
	datac => \C1|C2|Mux14~10_combout\,
	datad => \C1|C2|Mux14~5_combout\,
	combout => \C1|C2|Mux14~13_combout\);

-- Location: LCCOMB_X11_Y9_N20
\C1|C2|Mux14~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux14~14_combout\ = (\C1|C2|Mux14~2_combout\ & (\C1|C2|Mux14~3_combout\)) # (!\C1|C2|Mux14~2_combout\ & ((\C1|C2|Mux14~3_combout\ & ((\C2|progmem|ROM_rtl_0|auto_generated|ram_block1a1\))) # (!\C1|C2|Mux14~3_combout\ & (\C1|C2|C2|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux14~2_combout\,
	datab => \C1|C2|Mux14~3_combout\,
	datac => \C1|C2|C2|Mux7~3_combout\,
	datad => \C2|progmem|ROM_rtl_0|auto_generated|ram_block1a1\,
	combout => \C1|C2|Mux14~14_combout\);

-- Location: LCCOMB_X11_Y9_N14
\C1|C2|Mux14~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux14~15_combout\ = (\C1|C2|Mux14~17_combout\ & ((\C1|C2|Mux14~14_combout\ & (\C2|datamm|data_out\(1))) # (!\C1|C2|Mux14~14_combout\ & ((\C1|C2|Mux14~13_combout\))))) # (!\C1|C2|Mux14~17_combout\ & (((\C1|C2|Mux14~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux14~17_combout\,
	datab => \C2|datamm|data_out\(1),
	datac => \C1|C2|Mux14~13_combout\,
	datad => \C1|C2|Mux14~14_combout\,
	combout => \C1|C2|Mux14~15_combout\);

-- Location: LCCOMB_X12_Y8_N14
\C1|C2|Mux14~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux14~16_combout\ = (\C1|C1|Bus2_Sel\(0) & ((\C1|C1|Bus2_Sel\(1) & ((\C1|C2|Mux14~15_combout\))) # (!\C1|C1|Bus2_Sel\(1) & (\C1|C2|Mux6~1_combout\)))) # (!\C1|C1|Bus2_Sel\(0) & (((\C1|C2|Mux14~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Bus2_Sel\(0),
	datab => \C1|C2|Mux6~1_combout\,
	datac => \C1|C1|Bus2_Sel\(1),
	datad => \C1|C2|Mux14~15_combout\,
	combout => \C1|C2|Mux14~16_combout\);

-- Location: LCCOMB_X12_Y8_N6
\C1|C2|CR|IR_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|CR|IR_reg[1]~feeder_combout\ = \C1|C2|Mux14~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|C2|Mux14~16_combout\,
	combout => \C1|C2|CR|IR_reg[1]~feeder_combout\);

-- Location: FF_X12_Y8_N7
\C1|C2|CR|IR_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C2|CR|IR_reg[1]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \C1|C1|IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|IR_reg\(1));

-- Location: LCCOMB_X6_Y9_N26
\C1|C1|FUT.AND_AB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.AND_AB~0_combout\ = (\C1|C2|CR|IR_reg\(1) & (!\C1|C2|CR|IR_reg\(0) & (\C1|C1|EDO.Decode~q\ & \C1|C1|Equal17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|IR_reg\(1),
	datab => \C1|C2|CR|IR_reg\(0),
	datac => \C1|C1|EDO.Decode~q\,
	datad => \C1|C1|Equal17~0_combout\,
	combout => \C1|C1|FUT.AND_AB~0_combout\);

-- Location: FF_X6_Y9_N27
\C1|C1|EDO.AND_AB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \C1|C1|FUT.AND_AB~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.AND_AB~q\);

-- Location: LCCOMB_X8_Y9_N6
\C1|C1|FUT.ADD_AB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.ADD_AB~0_combout\ = (\C1|C1|EDO.Decode~q\ & (!\C1|C2|CR|IR_reg\(0) & (\C1|C1|Equal6~3_combout\ & \C1|C1|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EDO.Decode~q\,
	datab => \C1|C2|CR|IR_reg\(0),
	datac => \C1|C1|Equal6~3_combout\,
	datad => \C1|C1|Equal15~0_combout\,
	combout => \C1|C1|FUT.ADD_AB~0_combout\);

-- Location: LCCOMB_X6_Y9_N16
\C1|C1|FUT.ADD_AB~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|FUT.ADD_AB~1_combout\ = (\C1|C1|FUT.ADD_AB~0_combout\ & !\C1|C1|P2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|FUT.ADD_AB~0_combout\,
	datac => \C1|C1|P2~6_combout\,
	combout => \C1|C1|FUT.ADD_AB~1_combout\);

-- Location: FF_X6_Y9_N17
\C1|C1|EDO.ADD_AB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|C1|FUT.ADD_AB~1_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|EDO.ADD_AB~q\);

-- Location: LCCOMB_X6_Y9_N10
\C1|C1|WideOr1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr1~2_combout\ = (!\C1|C1|EDO.AND_AB~q\ & (!\C1|C1|EDO.ADD_AB~q\ & (!\C1|C1|EDO.XOR_AB~q\ & !\C1|C1|EDO.NOT_A~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EDO.AND_AB~q\,
	datab => \C1|C1|EDO.ADD_AB~q\,
	datac => \C1|C1|EDO.XOR_AB~q\,
	datad => \C1|C1|EDO.NOT_A~q\,
	combout => \C1|C1|WideOr1~2_combout\);

-- Location: LCCOMB_X6_Y9_N30
\C1|C1|WideOr19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr19~1_combout\ = (\C1|C1|EDO.Load_DIR_A3~q\) # ((\C1|C1|EDO.Load_inmA3~q\) # ((\C1|C1|EDO.Fetch2~q\) # (\C1|C1|EDO.STOREA3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EDO.Load_DIR_A3~q\,
	datab => \C1|C1|EDO.Load_inmA3~q\,
	datac => \C1|C1|EDO.Fetch2~q\,
	datad => \C1|C1|EDO.STOREA3~q\,
	combout => \C1|C1|WideOr19~1_combout\);

-- Location: LCCOMB_X6_Y9_N24
\C1|C1|WideOr19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr19~2_combout\ = (\C1|C1|EDO.Load_DIR_A5~q\) # ((\C1|C1|WideOr19~1_combout\) # ((!\C1|C1|WideOr13~4_combout\) # (!\C1|C1|PC_Load~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|EDO.Load_DIR_A5~q\,
	datab => \C1|C1|WideOr19~1_combout\,
	datac => \C1|C1|PC_Load~0_combout\,
	datad => \C1|C1|WideOr13~4_combout\,
	combout => \C1|C1|WideOr19~2_combout\);

-- Location: LCCOMB_X6_Y9_N6
\C1|C1|WideOr19\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|WideOr19~combout\ = (((\C1|C1|WideOr19~2_combout\) # (!\C1|C1|WideOr13~5_combout\)) # (!\C1|C1|WideOr34~0_combout\)) # (!\C1|C1|WideOr1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|WideOr1~2_combout\,
	datab => \C1|C1|WideOr34~0_combout\,
	datac => \C1|C1|WideOr13~5_combout\,
	datad => \C1|C1|WideOr19~2_combout\,
	combout => \C1|C1|WideOr19~combout\);

-- Location: LCCOMB_X7_Y9_N26
\C1|C1|Bus2_Sel[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C1|Bus2_Sel\(0) = (GLOBAL(\C1|C1|EDO.Decode~clkctrl_outclk\) & ((\C1|C1|Bus2_Sel\(0)))) # (!GLOBAL(\C1|C1|EDO.Decode~clkctrl_outclk\) & (!\C1|C1|WideOr19~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C1|WideOr19~combout\,
	datac => \C1|C1|Bus2_Sel\(0),
	datad => \C1|C1|EDO.Decode~clkctrl_outclk\,
	combout => \C1|C1|Bus2_Sel\(0));

-- Location: LCCOMB_X12_Y10_N8
\C2|datamm|RAM_rtl_0_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \C2|datamm|RAM_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X12_Y10_N9
\C2|datamm|RAM_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|datamm|RAM_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(16));

-- Location: FF_X12_Y10_N23
\C2|datamm|RAM_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux7~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM_rtl_0_bypass\(15));

-- Location: FF_X12_Y9_N27
\C2|datamm|RAM~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux7~4_combout\,
	sload => VCC,
	ena => \C2|datamm|RAM~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|RAM~17_q\);

-- Location: LCCOMB_X12_Y10_N22
\C2|datamm|RAM~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~25_combout\ = (\C2|datamm|RAM~16_q\ & ((\C2|datamm|RAM_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!\C2|datamm|RAM~16_q\ & (\C2|datamm|RAM~17_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|datamm|RAM~17_q\,
	datab => \C2|datamm|RAM~16_q\,
	datad => \C2|datamm|RAM_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \C2|datamm|RAM~25_combout\);

-- Location: LCCOMB_X12_Y10_N24
\C2|datamm|RAM~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|datamm|RAM~31_combout\ = (\C2|datamm|RAM~30_combout\ & (((\C2|datamm|RAM_rtl_0_bypass\(15))))) # (!\C2|datamm|RAM~30_combout\ & ((\C2|datamm|RAM_rtl_0_bypass\(16) & ((\C2|datamm|RAM~25_combout\))) # (!\C2|datamm|RAM_rtl_0_bypass\(16) & 
-- (\C2|datamm|RAM_rtl_0_bypass\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|datamm|RAM~30_combout\,
	datab => \C2|datamm|RAM_rtl_0_bypass\(16),
	datac => \C2|datamm|RAM_rtl_0_bypass\(15),
	datad => \C2|datamm|RAM~25_combout\,
	combout => \C2|datamm|RAM~31_combout\);

-- Location: FF_X12_Y10_N25
\C2|datamm|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|datamm|RAM~31_combout\,
	ena => \C1|C1|ALT_INV_wr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datamm|data_out\(0));

-- Location: IOIBUF_X23_Y0_N15
\port_in_07[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_07(0),
	o => \port_in_07[0]~input_o\);

-- Location: IOIBUF_X0_Y14_N22
\port_in_05[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_05(0),
	o => \port_in_05[0]~input_o\);

-- Location: IOIBUF_X21_Y29_N22
\port_in_03[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_03(0),
	o => \port_in_03[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N29
\port_in_01[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(0),
	o => \port_in_01[0]~input_o\);

-- Location: LCCOMB_X21_Y8_N28
\C1|C2|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux15~0_combout\ = (\C1|C2|CR|MAR_reg\(2) & (((\C1|C2|CR|MAR_reg\(1))))) # (!\C1|C2|CR|MAR_reg\(2) & ((\C1|C2|CR|MAR_reg\(1) & (\port_in_03[0]~input_o\)) # (!\C1|C2|CR|MAR_reg\(1) & ((\port_in_01[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_03[0]~input_o\,
	datab => \port_in_01[0]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|CR|MAR_reg\(1),
	combout => \C1|C2|Mux15~0_combout\);

-- Location: LCCOMB_X21_Y8_N6
\C1|C2|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux15~1_combout\ = (\C1|C2|CR|MAR_reg\(2) & ((\C1|C2|Mux15~0_combout\ & (\port_in_07[0]~input_o\)) # (!\C1|C2|Mux15~0_combout\ & ((\port_in_05[0]~input_o\))))) # (!\C1|C2|CR|MAR_reg\(2) & (((\C1|C2|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_07[0]~input_o\,
	datab => \port_in_05[0]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|Mux15~0_combout\,
	combout => \C1|C2|Mux15~1_combout\);

-- Location: IOIBUF_X28_Y0_N29
\port_in_13[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_13(0),
	o => \port_in_13[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\port_in_11[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_11(0),
	o => \port_in_11[0]~input_o\);

-- Location: IOIBUF_X26_Y29_N1
\port_in_09[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_09(0),
	o => \port_in_09[0]~input_o\);

-- Location: LCCOMB_X21_Y8_N30
\C1|C2|Mux15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux15~7_combout\ = (\C1|C2|CR|MAR_reg\(2) & (((\C1|C2|CR|MAR_reg\(1))))) # (!\C1|C2|CR|MAR_reg\(2) & ((\C1|C2|CR|MAR_reg\(1) & (\port_in_11[0]~input_o\)) # (!\C1|C2|CR|MAR_reg\(1) & ((\port_in_09[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_11[0]~input_o\,
	datab => \port_in_09[0]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|CR|MAR_reg\(1),
	combout => \C1|C2|Mux15~7_combout\);

-- Location: IOIBUF_X21_Y29_N8
\port_in_15[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_15(0),
	o => \port_in_15[0]~input_o\);

-- Location: LCCOMB_X21_Y8_N12
\C1|C2|Mux15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux15~8_combout\ = (\C1|C2|CR|MAR_reg\(2) & ((\C1|C2|Mux15~7_combout\ & ((\port_in_15[0]~input_o\))) # (!\C1|C2|Mux15~7_combout\ & (\port_in_13[0]~input_o\)))) # (!\C1|C2|CR|MAR_reg\(2) & (((\C1|C2|Mux15~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_13[0]~input_o\,
	datab => \C1|C2|CR|MAR_reg\(2),
	datac => \C1|C2|Mux15~7_combout\,
	datad => \port_in_15[0]~input_o\,
	combout => \C1|C2|Mux15~8_combout\);

-- Location: IOIBUF_X30_Y0_N1
\port_in_10[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_10(0),
	o => \port_in_10[0]~input_o\);

-- Location: IOIBUF_X41_Y8_N15
\port_in_14[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_14(0),
	o => \port_in_14[0]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\port_in_12[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_12(0),
	o => \port_in_12[0]~input_o\);

-- Location: IOIBUF_X41_Y9_N15
\port_in_08[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_08(0),
	o => \port_in_08[0]~input_o\);

-- Location: LCCOMB_X21_Y8_N0
\C1|C2|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux15~2_combout\ = (\C1|C2|CR|MAR_reg\(2) & ((\port_in_12[0]~input_o\) # ((\C1|C2|CR|MAR_reg\(1))))) # (!\C1|C2|CR|MAR_reg\(2) & (((\port_in_08[0]~input_o\ & !\C1|C2|CR|MAR_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_12[0]~input_o\,
	datab => \port_in_08[0]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|CR|MAR_reg\(1),
	combout => \C1|C2|Mux15~2_combout\);

-- Location: LCCOMB_X21_Y8_N18
\C1|C2|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux15~3_combout\ = (\C1|C2|CR|MAR_reg\(1) & ((\C1|C2|Mux15~2_combout\ & ((\port_in_14[0]~input_o\))) # (!\C1|C2|Mux15~2_combout\ & (\port_in_10[0]~input_o\)))) # (!\C1|C2|CR|MAR_reg\(1) & (((\C1|C2|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_10[0]~input_o\,
	datab => \C1|C2|CR|MAR_reg\(1),
	datac => \port_in_14[0]~input_o\,
	datad => \C1|C2|Mux15~2_combout\,
	combout => \C1|C2|Mux15~3_combout\);

-- Location: IOIBUF_X21_Y0_N29
\port_in_06[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_06(0),
	o => \port_in_06[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\port_in_02[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_02(0),
	o => \port_in_02[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\port_in_04[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_04(0),
	o => \port_in_04[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\port_in_00[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(0),
	o => \port_in_00[0]~input_o\);

-- Location: LCCOMB_X21_Y8_N24
\C1|C2|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux15~4_combout\ = (\C1|C2|CR|MAR_reg\(2) & ((\port_in_04[0]~input_o\) # ((\C1|C2|CR|MAR_reg\(1))))) # (!\C1|C2|CR|MAR_reg\(2) & (((\port_in_00[0]~input_o\ & !\C1|C2|CR|MAR_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_04[0]~input_o\,
	datab => \port_in_00[0]~input_o\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|CR|MAR_reg\(1),
	combout => \C1|C2|Mux15~4_combout\);

-- Location: LCCOMB_X21_Y8_N2
\C1|C2|Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux15~5_combout\ = (\C1|C2|CR|MAR_reg\(1) & ((\C1|C2|Mux15~4_combout\ & (\port_in_06[0]~input_o\)) # (!\C1|C2|Mux15~4_combout\ & ((\port_in_02[0]~input_o\))))) # (!\C1|C2|CR|MAR_reg\(1) & (((\C1|C2|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_06[0]~input_o\,
	datab => \C1|C2|CR|MAR_reg\(1),
	datac => \port_in_02[0]~input_o\,
	datad => \C1|C2|Mux15~4_combout\,
	combout => \C1|C2|Mux15~5_combout\);

-- Location: LCCOMB_X21_Y8_N16
\C1|C2|Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux15~6_combout\ = (\C1|C2|CR|MAR_reg\(3) & ((\C1|C2|Mux15~3_combout\) # ((\C1|C2|CR|MAR_reg\(0))))) # (!\C1|C2|CR|MAR_reg\(3) & (((!\C1|C2|CR|MAR_reg\(0) & \C1|C2|Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(3),
	datab => \C1|C2|Mux15~3_combout\,
	datac => \C1|C2|CR|MAR_reg\(0),
	datad => \C1|C2|Mux15~5_combout\,
	combout => \C1|C2|Mux15~6_combout\);

-- Location: LCCOMB_X20_Y8_N16
\C1|C2|Mux15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux15~9_combout\ = (\C1|C2|CR|MAR_reg\(0) & ((\C1|C2|Mux15~6_combout\ & ((\C1|C2|Mux15~8_combout\))) # (!\C1|C2|Mux15~6_combout\ & (\C1|C2|Mux15~1_combout\)))) # (!\C1|C2|CR|MAR_reg\(0) & (((\C1|C2|Mux15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux15~1_combout\,
	datab => \C1|C2|CR|MAR_reg\(0),
	datac => \C1|C2|Mux15~8_combout\,
	datad => \C1|C2|Mux15~6_combout\,
	combout => \C1|C2|Mux15~9_combout\);

-- Location: LCCOMB_X12_Y8_N16
\C1|C2|Mux15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux15~10_combout\ = (\C1|C2|Mux14~2_combout\ & (\C1|C2|Mux14~3_combout\)) # (!\C1|C2|Mux14~2_combout\ & ((\C1|C2|Mux14~3_combout\ & ((\C2|progmem|ROM_rtl_0|auto_generated|ram_block1a0~portadataout\))) # (!\C1|C2|Mux14~3_combout\ & 
-- (\C1|C2|C2|Mux8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux14~2_combout\,
	datab => \C1|C2|Mux14~3_combout\,
	datac => \C1|C2|C2|Mux8~8_combout\,
	datad => \C2|progmem|ROM_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \C1|C2|Mux15~10_combout\);

-- Location: LCCOMB_X12_Y8_N30
\C1|C2|Mux15~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux15~11_combout\ = (\C1|C2|Mux14~17_combout\ & ((\C1|C2|Mux15~10_combout\ & (\C2|datamm|data_out\(0))) # (!\C1|C2|Mux15~10_combout\ & ((\C1|C2|Mux15~9_combout\))))) # (!\C1|C2|Mux14~17_combout\ & (((\C1|C2|Mux15~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|datamm|data_out\(0),
	datab => \C1|C2|Mux14~17_combout\,
	datac => \C1|C2|Mux15~9_combout\,
	datad => \C1|C2|Mux15~10_combout\,
	combout => \C1|C2|Mux15~11_combout\);

-- Location: LCCOMB_X12_Y8_N8
\C1|C2|Mux15~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \C1|C2|Mux15~12_combout\ = (\C1|C1|Bus2_Sel\(0) & ((\C1|C1|Bus2_Sel\(1) & ((\C1|C2|Mux15~11_combout\))) # (!\C1|C1|Bus2_Sel\(1) & (\C1|C2|Mux7~4_combout\)))) # (!\C1|C1|Bus2_Sel\(0) & (((\C1|C2|Mux15~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Bus2_Sel\(0),
	datab => \C1|C2|Mux7~4_combout\,
	datac => \C1|C2|Mux15~11_combout\,
	datad => \C1|C1|Bus2_Sel\(1),
	combout => \C1|C2|Mux15~12_combout\);

-- Location: FF_X12_Y9_N9
\C1|C2|CR|B_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C1|C2|Mux15~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \C1|C1|B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C2|CR|B_reg\(0));

-- Location: LCCOMB_X10_Y11_N4
\C2|ports|RAM~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM~25_combout\ = (!\RST~input_o\ & ((\C1|C2|Mux7~3_combout\) # ((\C1|C2|CR|B_reg\(0) & \C1|C1|Bus1_Sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|B_reg\(0),
	datab => \RST~input_o\,
	datac => \C1|C1|Bus1_Sel\(1),
	datad => \C1|C2|Mux7~3_combout\,
	combout => \C2|ports|RAM~25_combout\);

-- Location: LCCOMB_X7_Y13_N0
\C2|ports|RAM[0][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[0][0]~feeder_combout\ = \C2|ports|RAM~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~25_combout\,
	combout => \C2|ports|RAM[0][0]~feeder_combout\);

-- Location: LCCOMB_X9_Y11_N10
\C2|ports|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|Decoder0~0_combout\ = (!\C1|C2|CR|MAR_reg\(1) & (\C1|C1|wr~combout\ & (!\C1|C2|CR|MAR_reg\(2) & !\C1|C2|CR|MAR_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(1),
	datab => \C1|C1|wr~combout\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|CR|MAR_reg\(0),
	combout => \C2|ports|Decoder0~0_combout\);

-- Location: LCCOMB_X8_Y13_N12
\C2|ports|RAM[0][6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[0][6]~2_combout\ = (\RST~input_o\) # ((\C2|ports|Decoder0~0_combout\ & !\C1|C2|CR|MAR_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ports|Decoder0~0_combout\,
	datab => \RST~input_o\,
	datad => \C1|C2|CR|MAR_reg\(3),
	combout => \C2|ports|RAM[0][6]~2_combout\);

-- Location: FF_X7_Y13_N1
\C2|ports|RAM[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[0][0]~feeder_combout\,
	ena => \C2|ports|RAM[0][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[0][0]~q\);

-- Location: LCCOMB_X10_Y10_N28
\C2|ports|RAM~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM~3_combout\ = (!\RST~input_o\ & ((\C1|C2|Mux6~0_combout\) # ((\C1|C2|CR|B_reg\(1) & \C1|C1|Bus1_Sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux6~0_combout\,
	datab => \C1|C2|CR|B_reg\(1),
	datac => \RST~input_o\,
	datad => \C1|C1|Bus1_Sel\(1),
	combout => \C2|ports|RAM~3_combout\);

-- Location: LCCOMB_X10_Y13_N8
\C2|ports|RAM[0][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[0][1]~feeder_combout\ = \C2|ports|RAM~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~3_combout\,
	combout => \C2|ports|RAM[0][1]~feeder_combout\);

-- Location: FF_X10_Y13_N9
\C2|ports|RAM[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[0][1]~feeder_combout\,
	ena => \C2|ports|RAM[0][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[0][1]~q\);

-- Location: LCCOMB_X10_Y11_N26
\C2|ports|RAM~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM~4_combout\ = (!\RST~input_o\ & ((\C1|C2|Mux5~0_combout\) # ((\C1|C1|Bus1_Sel\(1) & \C1|C2|CR|B_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|Mux5~0_combout\,
	datab => \C1|C1|Bus1_Sel\(1),
	datac => \C1|C2|CR|B_reg\(2),
	datad => \RST~input_o\,
	combout => \C2|ports|RAM~4_combout\);

-- Location: LCCOMB_X10_Y13_N26
\C2|ports|RAM[0][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[0][2]~feeder_combout\ = \C2|ports|RAM~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~4_combout\,
	combout => \C2|ports|RAM[0][2]~feeder_combout\);

-- Location: FF_X10_Y13_N27
\C2|ports|RAM[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[0][2]~feeder_combout\,
	ena => \C2|ports|RAM[0][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[0][2]~q\);

-- Location: LCCOMB_X10_Y11_N12
\C2|ports|RAM~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM~5_combout\ = (!\RST~input_o\ & ((\C1|C2|Mux4~0_combout\) # ((\C1|C2|CR|B_reg\(3) & \C1|C1|Bus1_Sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|B_reg\(3),
	datab => \C1|C1|Bus1_Sel\(1),
	datac => \C1|C2|Mux4~0_combout\,
	datad => \RST~input_o\,
	combout => \C2|ports|RAM~5_combout\);

-- Location: LCCOMB_X10_Y13_N0
\C2|ports|RAM[0][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[0][3]~feeder_combout\ = \C2|ports|RAM~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~5_combout\,
	combout => \C2|ports|RAM[0][3]~feeder_combout\);

-- Location: FF_X10_Y13_N1
\C2|ports|RAM[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[0][3]~feeder_combout\,
	ena => \C2|ports|RAM[0][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[0][3]~q\);

-- Location: LCCOMB_X10_Y11_N28
\C2|ports|RAM~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM~6_combout\ = (!\RST~input_o\ & ((\C1|C2|Mux3~0_combout\) # ((\C1|C2|CR|B_reg\(4) & \C1|C1|Bus1_Sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|B_reg\(4),
	datab => \C1|C1|Bus1_Sel\(1),
	datac => \C1|C2|Mux3~0_combout\,
	datad => \RST~input_o\,
	combout => \C2|ports|RAM~6_combout\);

-- Location: LCCOMB_X10_Y13_N2
\C2|ports|RAM[0][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[0][4]~feeder_combout\ = \C2|ports|RAM~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~6_combout\,
	combout => \C2|ports|RAM[0][4]~feeder_combout\);

-- Location: FF_X10_Y13_N3
\C2|ports|RAM[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[0][4]~feeder_combout\,
	ena => \C2|ports|RAM[0][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[0][4]~q\);

-- Location: LCCOMB_X10_Y11_N18
\C2|ports|RAM~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM~7_combout\ = (!\RST~input_o\ & ((\C1|C2|Mux2~0_combout\) # ((\C1|C2|CR|B_reg\(5) & \C1|C1|Bus1_Sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|B_reg\(5),
	datab => \RST~input_o\,
	datac => \C1|C1|Bus1_Sel\(1),
	datad => \C1|C2|Mux2~0_combout\,
	combout => \C2|ports|RAM~7_combout\);

-- Location: LCCOMB_X10_Y13_N20
\C2|ports|RAM[0][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[0][5]~feeder_combout\ = \C2|ports|RAM~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~7_combout\,
	combout => \C2|ports|RAM[0][5]~feeder_combout\);

-- Location: FF_X10_Y13_N21
\C2|ports|RAM[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[0][5]~feeder_combout\,
	ena => \C2|ports|RAM[0][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[0][5]~q\);

-- Location: LCCOMB_X10_Y10_N12
\C2|ports|RAM~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM~8_combout\ = (!\RST~input_o\ & ((\C1|C2|Mux1~0_combout\) # ((\C1|C1|Bus1_Sel\(1) & \C1|C2|CR|B_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|Bus1_Sel\(1),
	datab => \C1|C2|CR|B_reg\(6),
	datac => \RST~input_o\,
	datad => \C1|C2|Mux1~0_combout\,
	combout => \C2|ports|RAM~8_combout\);

-- Location: LCCOMB_X10_Y13_N18
\C2|ports|RAM[0][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[0][6]~feeder_combout\ = \C2|ports|RAM~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~8_combout\,
	combout => \C2|ports|RAM[0][6]~feeder_combout\);

-- Location: FF_X10_Y13_N19
\C2|ports|RAM[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[0][6]~feeder_combout\,
	ena => \C2|ports|RAM[0][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[0][6]~q\);

-- Location: LCCOMB_X10_Y11_N20
\C2|ports|RAM~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM~9_combout\ = (!\RST~input_o\ & ((\C1|C2|Mux0~0_combout\) # ((\C1|C2|CR|B_reg\(7) & \C1|C1|Bus1_Sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|B_reg\(7),
	datab => \C1|C2|Mux0~0_combout\,
	datac => \C1|C1|Bus1_Sel\(1),
	datad => \RST~input_o\,
	combout => \C2|ports|RAM~9_combout\);

-- Location: LCCOMB_X7_Y13_N14
\C2|ports|RAM[0][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[0][7]~feeder_combout\ = \C2|ports|RAM~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~9_combout\,
	combout => \C2|ports|RAM[0][7]~feeder_combout\);

-- Location: FF_X7_Y13_N15
\C2|ports|RAM[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[0][7]~feeder_combout\,
	ena => \C2|ports|RAM[0][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[0][7]~q\);

-- Location: LCCOMB_X9_Y11_N24
\C2|ports|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|Decoder0~1_combout\ = (!\C1|C2|CR|MAR_reg\(1) & (\C1|C1|wr~combout\ & (!\C1|C2|CR|MAR_reg\(2) & \C1|C2|CR|MAR_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(1),
	datab => \C1|C1|wr~combout\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|CR|MAR_reg\(0),
	combout => \C2|ports|Decoder0~1_combout\);

-- Location: LCCOMB_X9_Y11_N2
\C2|ports|RAM[1][4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[1][4]~10_combout\ = (\RST~input_o\) # ((!\C1|C2|CR|MAR_reg\(3) & \C2|ports|Decoder0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => \C1|C2|CR|MAR_reg\(3),
	datad => \C2|ports|Decoder0~1_combout\,
	combout => \C2|ports|RAM[1][4]~10_combout\);

-- Location: FF_X8_Y13_N25
\C2|ports|RAM[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C2|ports|RAM~25_combout\,
	sload => VCC,
	ena => \C2|ports|RAM[1][4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[1][0]~q\);

-- Location: LCCOMB_X8_Y13_N22
\C2|ports|RAM[1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[1][1]~feeder_combout\ = \C2|ports|RAM~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~3_combout\,
	combout => \C2|ports|RAM[1][1]~feeder_combout\);

-- Location: FF_X8_Y13_N23
\C2|ports|RAM[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[1][1]~feeder_combout\,
	ena => \C2|ports|RAM[1][4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[1][1]~q\);

-- Location: LCCOMB_X8_Y13_N20
\C2|ports|RAM[1][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[1][2]~feeder_combout\ = \C2|ports|RAM~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~4_combout\,
	combout => \C2|ports|RAM[1][2]~feeder_combout\);

-- Location: FF_X8_Y13_N21
\C2|ports|RAM[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[1][2]~feeder_combout\,
	ena => \C2|ports|RAM[1][4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[1][2]~q\);

-- Location: LCCOMB_X8_Y13_N18
\C2|ports|RAM[1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[1][3]~feeder_combout\ = \C2|ports|RAM~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~5_combout\,
	combout => \C2|ports|RAM[1][3]~feeder_combout\);

-- Location: FF_X8_Y13_N19
\C2|ports|RAM[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[1][3]~feeder_combout\,
	ena => \C2|ports|RAM[1][4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[1][3]~q\);

-- Location: LCCOMB_X8_Y13_N4
\C2|ports|RAM[1][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[1][4]~feeder_combout\ = \C2|ports|RAM~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~6_combout\,
	combout => \C2|ports|RAM[1][4]~feeder_combout\);

-- Location: FF_X8_Y13_N5
\C2|ports|RAM[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[1][4]~feeder_combout\,
	ena => \C2|ports|RAM[1][4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[1][4]~q\);

-- Location: LCCOMB_X8_Y13_N30
\C2|ports|RAM[1][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[1][5]~feeder_combout\ = \C2|ports|RAM~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~7_combout\,
	combout => \C2|ports|RAM[1][5]~feeder_combout\);

-- Location: FF_X8_Y13_N31
\C2|ports|RAM[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[1][5]~feeder_combout\,
	ena => \C2|ports|RAM[1][4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[1][5]~q\);

-- Location: FF_X8_Y13_N13
\C2|ports|RAM[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C2|ports|RAM~8_combout\,
	sload => VCC,
	ena => \C2|ports|RAM[1][4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[1][6]~q\);

-- Location: FF_X8_Y13_N27
\C2|ports|RAM[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C2|ports|RAM~9_combout\,
	sload => VCC,
	ena => \C2|ports|RAM[1][4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[1][7]~q\);

-- Location: LCCOMB_X1_Y10_N12
\C2|ports|RAM[2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[2][0]~feeder_combout\ = \C2|ports|RAM~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~25_combout\,
	combout => \C2|ports|RAM[2][0]~feeder_combout\);

-- Location: LCCOMB_X9_Y11_N20
\C2|ports|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|Decoder0~2_combout\ = (\C1|C2|CR|MAR_reg\(1) & (\C1|C1|wr~combout\ & (!\C1|C2|CR|MAR_reg\(2) & !\C1|C2|CR|MAR_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(1),
	datab => \C1|C1|wr~combout\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|CR|MAR_reg\(0),
	combout => \C2|ports|Decoder0~2_combout\);

-- Location: LCCOMB_X9_Y11_N22
\C2|ports|RAM[2][2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[2][2]~11_combout\ = (\RST~input_o\) # ((!\C1|C2|CR|MAR_reg\(3) & \C2|ports|Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => \C1|C2|CR|MAR_reg\(3),
	datad => \C2|ports|Decoder0~2_combout\,
	combout => \C2|ports|RAM[2][2]~11_combout\);

-- Location: FF_X1_Y10_N13
\C2|ports|RAM[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[2][0]~feeder_combout\,
	ena => \C2|ports|RAM[2][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[2][0]~q\);

-- Location: LCCOMB_X1_Y10_N2
\C2|ports|RAM[2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[2][1]~feeder_combout\ = \C2|ports|RAM~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~3_combout\,
	combout => \C2|ports|RAM[2][1]~feeder_combout\);

-- Location: FF_X1_Y10_N3
\C2|ports|RAM[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[2][1]~feeder_combout\,
	ena => \C2|ports|RAM[2][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[2][1]~q\);

-- Location: LCCOMB_X1_Y10_N20
\C2|ports|RAM[2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[2][2]~feeder_combout\ = \C2|ports|RAM~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~4_combout\,
	combout => \C2|ports|RAM[2][2]~feeder_combout\);

-- Location: FF_X1_Y10_N21
\C2|ports|RAM[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[2][2]~feeder_combout\,
	ena => \C2|ports|RAM[2][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[2][2]~q\);

-- Location: LCCOMB_X1_Y10_N14
\C2|ports|RAM[2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[2][3]~feeder_combout\ = \C2|ports|RAM~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~5_combout\,
	combout => \C2|ports|RAM[2][3]~feeder_combout\);

-- Location: FF_X1_Y10_N15
\C2|ports|RAM[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[2][3]~feeder_combout\,
	ena => \C2|ports|RAM[2][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[2][3]~q\);

-- Location: LCCOMB_X1_Y10_N0
\C2|ports|RAM[2][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[2][4]~feeder_combout\ = \C2|ports|RAM~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~6_combout\,
	combout => \C2|ports|RAM[2][4]~feeder_combout\);

-- Location: FF_X1_Y10_N1
\C2|ports|RAM[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[2][4]~feeder_combout\,
	ena => \C2|ports|RAM[2][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[2][4]~q\);

-- Location: LCCOMB_X1_Y10_N18
\C2|ports|RAM[2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[2][5]~feeder_combout\ = \C2|ports|RAM~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~7_combout\,
	combout => \C2|ports|RAM[2][5]~feeder_combout\);

-- Location: FF_X1_Y10_N19
\C2|ports|RAM[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[2][5]~feeder_combout\,
	ena => \C2|ports|RAM[2][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[2][5]~q\);

-- Location: LCCOMB_X1_Y10_N24
\C2|ports|RAM[2][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[2][6]~feeder_combout\ = \C2|ports|RAM~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~8_combout\,
	combout => \C2|ports|RAM[2][6]~feeder_combout\);

-- Location: FF_X1_Y10_N25
\C2|ports|RAM[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[2][6]~feeder_combout\,
	ena => \C2|ports|RAM[2][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[2][6]~q\);

-- Location: LCCOMB_X1_Y10_N10
\C2|ports|RAM[2][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[2][7]~feeder_combout\ = \C2|ports|RAM~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~9_combout\,
	combout => \C2|ports|RAM[2][7]~feeder_combout\);

-- Location: FF_X1_Y10_N11
\C2|ports|RAM[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[2][7]~feeder_combout\,
	ena => \C2|ports|RAM[2][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[2][7]~q\);

-- Location: LCCOMB_X4_Y10_N0
\C2|ports|RAM[3][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[3][0]~feeder_combout\ = \C2|ports|RAM~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~25_combout\,
	combout => \C2|ports|RAM[3][0]~feeder_combout\);

-- Location: LCCOMB_X9_Y11_N12
\C2|ports|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|Decoder0~3_combout\ = (\C1|C2|CR|MAR_reg\(1) & (\C1|C1|wr~combout\ & (!\C1|C2|CR|MAR_reg\(2) & \C1|C2|CR|MAR_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(1),
	datab => \C1|C1|wr~combout\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|CR|MAR_reg\(0),
	combout => \C2|ports|Decoder0~3_combout\);

-- Location: LCCOMB_X10_Y11_N30
\C2|ports|RAM[3][2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[3][2]~12_combout\ = (\RST~input_o\) # ((\C2|ports|Decoder0~3_combout\ & !\C1|C2|CR|MAR_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ports|Decoder0~3_combout\,
	datab => \RST~input_o\,
	datad => \C1|C2|CR|MAR_reg\(3),
	combout => \C2|ports|RAM[3][2]~12_combout\);

-- Location: FF_X4_Y10_N1
\C2|ports|RAM[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[3][0]~feeder_combout\,
	ena => \C2|ports|RAM[3][2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[3][0]~q\);

-- Location: LCCOMB_X4_Y10_N30
\C2|ports|RAM[3][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[3][1]~feeder_combout\ = \C2|ports|RAM~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~3_combout\,
	combout => \C2|ports|RAM[3][1]~feeder_combout\);

-- Location: FF_X4_Y10_N31
\C2|ports|RAM[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[3][1]~feeder_combout\,
	ena => \C2|ports|RAM[3][2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[3][1]~q\);

-- Location: LCCOMB_X4_Y10_N4
\C2|ports|RAM[3][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[3][2]~feeder_combout\ = \C2|ports|RAM~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~4_combout\,
	combout => \C2|ports|RAM[3][2]~feeder_combout\);

-- Location: FF_X4_Y10_N5
\C2|ports|RAM[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[3][2]~feeder_combout\,
	ena => \C2|ports|RAM[3][2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[3][2]~q\);

-- Location: LCCOMB_X4_Y10_N18
\C2|ports|RAM[3][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[3][3]~feeder_combout\ = \C2|ports|RAM~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~5_combout\,
	combout => \C2|ports|RAM[3][3]~feeder_combout\);

-- Location: FF_X4_Y10_N19
\C2|ports|RAM[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[3][3]~feeder_combout\,
	ena => \C2|ports|RAM[3][2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[3][3]~q\);

-- Location: LCCOMB_X4_Y10_N20
\C2|ports|RAM[3][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[3][4]~feeder_combout\ = \C2|ports|RAM~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~6_combout\,
	combout => \C2|ports|RAM[3][4]~feeder_combout\);

-- Location: FF_X4_Y10_N21
\C2|ports|RAM[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[3][4]~feeder_combout\,
	ena => \C2|ports|RAM[3][2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[3][4]~q\);

-- Location: LCCOMB_X4_Y10_N22
\C2|ports|RAM[3][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[3][5]~feeder_combout\ = \C2|ports|RAM~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~7_combout\,
	combout => \C2|ports|RAM[3][5]~feeder_combout\);

-- Location: FF_X4_Y10_N23
\C2|ports|RAM[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[3][5]~feeder_combout\,
	ena => \C2|ports|RAM[3][2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[3][5]~q\);

-- Location: LCCOMB_X4_Y10_N8
\C2|ports|RAM[3][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[3][6]~feeder_combout\ = \C2|ports|RAM~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~8_combout\,
	combout => \C2|ports|RAM[3][6]~feeder_combout\);

-- Location: FF_X4_Y10_N9
\C2|ports|RAM[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[3][6]~feeder_combout\,
	ena => \C2|ports|RAM[3][2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[3][6]~q\);

-- Location: LCCOMB_X4_Y10_N26
\C2|ports|RAM[3][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[3][7]~feeder_combout\ = \C2|ports|RAM~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~9_combout\,
	combout => \C2|ports|RAM[3][7]~feeder_combout\);

-- Location: FF_X4_Y10_N27
\C2|ports|RAM[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[3][7]~feeder_combout\,
	ena => \C2|ports|RAM[3][2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[3][7]~q\);

-- Location: LCCOMB_X1_Y13_N12
\C2|ports|RAM[4][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[4][0]~feeder_combout\ = \C2|ports|RAM~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~25_combout\,
	combout => \C2|ports|RAM[4][0]~feeder_combout\);

-- Location: LCCOMB_X9_Y11_N18
\C2|ports|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|Decoder0~4_combout\ = (!\C1|C2|CR|MAR_reg\(1) & (\C1|C1|wr~combout\ & (\C1|C2|CR|MAR_reg\(2) & !\C1|C2|CR|MAR_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(1),
	datab => \C1|C1|wr~combout\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|CR|MAR_reg\(0),
	combout => \C2|ports|Decoder0~4_combout\);

-- Location: LCCOMB_X9_Y11_N28
\C2|ports|RAM[4][4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[4][4]~13_combout\ = (\RST~input_o\) # ((!\C1|C2|CR|MAR_reg\(3) & \C2|ports|Decoder0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => \C1|C2|CR|MAR_reg\(3),
	datad => \C2|ports|Decoder0~4_combout\,
	combout => \C2|ports|RAM[4][4]~13_combout\);

-- Location: FF_X1_Y13_N13
\C2|ports|RAM[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[4][0]~feeder_combout\,
	ena => \C2|ports|RAM[4][4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[4][0]~q\);

-- Location: LCCOMB_X1_Y13_N14
\C2|ports|RAM[4][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[4][1]~feeder_combout\ = \C2|ports|RAM~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~3_combout\,
	combout => \C2|ports|RAM[4][1]~feeder_combout\);

-- Location: FF_X1_Y13_N15
\C2|ports|RAM[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[4][1]~feeder_combout\,
	ena => \C2|ports|RAM[4][4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[4][1]~q\);

-- Location: LCCOMB_X1_Y13_N24
\C2|ports|RAM[4][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[4][2]~feeder_combout\ = \C2|ports|RAM~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~4_combout\,
	combout => \C2|ports|RAM[4][2]~feeder_combout\);

-- Location: FF_X1_Y13_N25
\C2|ports|RAM[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[4][2]~feeder_combout\,
	ena => \C2|ports|RAM[4][4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[4][2]~q\);

-- Location: LCCOMB_X1_Y13_N10
\C2|ports|RAM[4][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[4][3]~feeder_combout\ = \C2|ports|RAM~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~5_combout\,
	combout => \C2|ports|RAM[4][3]~feeder_combout\);

-- Location: FF_X1_Y13_N11
\C2|ports|RAM[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[4][3]~feeder_combout\,
	ena => \C2|ports|RAM[4][4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[4][3]~q\);

-- Location: LCCOMB_X1_Y13_N28
\C2|ports|RAM[4][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[4][4]~feeder_combout\ = \C2|ports|RAM~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~6_combout\,
	combout => \C2|ports|RAM[4][4]~feeder_combout\);

-- Location: FF_X1_Y13_N29
\C2|ports|RAM[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[4][4]~feeder_combout\,
	ena => \C2|ports|RAM[4][4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[4][4]~q\);

-- Location: LCCOMB_X1_Y13_N30
\C2|ports|RAM[4][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[4][5]~feeder_combout\ = \C2|ports|RAM~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~7_combout\,
	combout => \C2|ports|RAM[4][5]~feeder_combout\);

-- Location: FF_X1_Y13_N31
\C2|ports|RAM[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[4][5]~feeder_combout\,
	ena => \C2|ports|RAM[4][4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[4][5]~q\);

-- Location: LCCOMB_X1_Y13_N16
\C2|ports|RAM[4][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[4][6]~feeder_combout\ = \C2|ports|RAM~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~8_combout\,
	combout => \C2|ports|RAM[4][6]~feeder_combout\);

-- Location: FF_X1_Y13_N17
\C2|ports|RAM[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[4][6]~feeder_combout\,
	ena => \C2|ports|RAM[4][4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[4][6]~q\);

-- Location: LCCOMB_X1_Y13_N2
\C2|ports|RAM[4][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[4][7]~feeder_combout\ = \C2|ports|RAM~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~9_combout\,
	combout => \C2|ports|RAM[4][7]~feeder_combout\);

-- Location: FF_X1_Y13_N3
\C2|ports|RAM[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[4][7]~feeder_combout\,
	ena => \C2|ports|RAM[4][4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[4][7]~q\);

-- Location: LCCOMB_X1_Y11_N24
\C2|ports|RAM[5][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[5][0]~feeder_combout\ = \C2|ports|RAM~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~25_combout\,
	combout => \C2|ports|RAM[5][0]~feeder_combout\);

-- Location: LCCOMB_X9_Y11_N6
\C2|ports|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|Decoder0~5_combout\ = (!\C1|C2|CR|MAR_reg\(1) & (\C1|C1|wr~combout\ & (\C1|C2|CR|MAR_reg\(2) & \C1|C2|CR|MAR_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(1),
	datab => \C1|C1|wr~combout\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|CR|MAR_reg\(0),
	combout => \C2|ports|Decoder0~5_combout\);

-- Location: LCCOMB_X9_Y11_N0
\C2|ports|RAM[5][1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[5][1]~14_combout\ = (\RST~input_o\) # ((!\C1|C2|CR|MAR_reg\(3) & \C2|ports|Decoder0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => \C1|C2|CR|MAR_reg\(3),
	datad => \C2|ports|Decoder0~5_combout\,
	combout => \C2|ports|RAM[5][1]~14_combout\);

-- Location: FF_X1_Y11_N25
\C2|ports|RAM[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[5][0]~feeder_combout\,
	ena => \C2|ports|RAM[5][1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[5][0]~q\);

-- Location: LCCOMB_X1_Y11_N26
\C2|ports|RAM[5][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[5][1]~feeder_combout\ = \C2|ports|RAM~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~3_combout\,
	combout => \C2|ports|RAM[5][1]~feeder_combout\);

-- Location: FF_X1_Y11_N27
\C2|ports|RAM[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[5][1]~feeder_combout\,
	ena => \C2|ports|RAM[5][1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[5][1]~q\);

-- Location: LCCOMB_X1_Y11_N28
\C2|ports|RAM[5][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[5][2]~feeder_combout\ = \C2|ports|RAM~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~4_combout\,
	combout => \C2|ports|RAM[5][2]~feeder_combout\);

-- Location: FF_X1_Y11_N29
\C2|ports|RAM[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[5][2]~feeder_combout\,
	ena => \C2|ports|RAM[5][1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[5][2]~q\);

-- Location: LCCOMB_X1_Y11_N6
\C2|ports|RAM[5][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[5][3]~feeder_combout\ = \C2|ports|RAM~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~5_combout\,
	combout => \C2|ports|RAM[5][3]~feeder_combout\);

-- Location: FF_X1_Y11_N7
\C2|ports|RAM[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[5][3]~feeder_combout\,
	ena => \C2|ports|RAM[5][1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[5][3]~q\);

-- Location: LCCOMB_X1_Y11_N8
\C2|ports|RAM[5][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[5][4]~feeder_combout\ = \C2|ports|RAM~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~6_combout\,
	combout => \C2|ports|RAM[5][4]~feeder_combout\);

-- Location: FF_X1_Y11_N9
\C2|ports|RAM[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[5][4]~feeder_combout\,
	ena => \C2|ports|RAM[5][1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[5][4]~q\);

-- Location: LCCOMB_X1_Y11_N18
\C2|ports|RAM[5][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[5][5]~feeder_combout\ = \C2|ports|RAM~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~7_combout\,
	combout => \C2|ports|RAM[5][5]~feeder_combout\);

-- Location: FF_X1_Y11_N19
\C2|ports|RAM[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[5][5]~feeder_combout\,
	ena => \C2|ports|RAM[5][1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[5][5]~q\);

-- Location: LCCOMB_X1_Y11_N12
\C2|ports|RAM[5][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[5][6]~feeder_combout\ = \C2|ports|RAM~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~8_combout\,
	combout => \C2|ports|RAM[5][6]~feeder_combout\);

-- Location: FF_X1_Y11_N13
\C2|ports|RAM[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[5][6]~feeder_combout\,
	ena => \C2|ports|RAM[5][1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[5][6]~q\);

-- Location: LCCOMB_X1_Y11_N30
\C2|ports|RAM[5][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[5][7]~feeder_combout\ = \C2|ports|RAM~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~9_combout\,
	combout => \C2|ports|RAM[5][7]~feeder_combout\);

-- Location: FF_X1_Y11_N31
\C2|ports|RAM[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[5][7]~feeder_combout\,
	ena => \C2|ports|RAM[5][1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[5][7]~q\);

-- Location: LCCOMB_X9_Y13_N8
\C2|ports|RAM[6][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[6][0]~feeder_combout\ = \C2|ports|RAM~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~25_combout\,
	combout => \C2|ports|RAM[6][0]~feeder_combout\);

-- Location: LCCOMB_X9_Y11_N14
\C2|ports|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|Decoder0~6_combout\ = (\C1|C2|CR|MAR_reg\(1) & (\C1|C1|wr~combout\ & (\C1|C2|CR|MAR_reg\(2) & !\C1|C2|CR|MAR_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(1),
	datab => \C1|C1|wr~combout\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|CR|MAR_reg\(0),
	combout => \C2|ports|Decoder0~6_combout\);

-- Location: LCCOMB_X9_Y11_N16
\C2|ports|RAM[6][7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[6][7]~15_combout\ = (\RST~input_o\) # ((!\C1|C2|CR|MAR_reg\(3) & \C2|ports|Decoder0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => \C1|C2|CR|MAR_reg\(3),
	datad => \C2|ports|Decoder0~6_combout\,
	combout => \C2|ports|RAM[6][7]~15_combout\);

-- Location: FF_X9_Y13_N9
\C2|ports|RAM[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[6][0]~feeder_combout\,
	ena => \C2|ports|RAM[6][7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[6][0]~q\);

-- Location: LCCOMB_X9_Y13_N6
\C2|ports|RAM[6][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[6][1]~feeder_combout\ = \C2|ports|RAM~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~3_combout\,
	combout => \C2|ports|RAM[6][1]~feeder_combout\);

-- Location: FF_X9_Y13_N7
\C2|ports|RAM[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[6][1]~feeder_combout\,
	ena => \C2|ports|RAM[6][7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[6][1]~q\);

-- Location: LCCOMB_X9_Y13_N16
\C2|ports|RAM[6][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[6][2]~feeder_combout\ = \C2|ports|RAM~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~4_combout\,
	combout => \C2|ports|RAM[6][2]~feeder_combout\);

-- Location: FF_X9_Y13_N17
\C2|ports|RAM[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[6][2]~feeder_combout\,
	ena => \C2|ports|RAM[6][7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[6][2]~q\);

-- Location: LCCOMB_X9_Y13_N18
\C2|ports|RAM[6][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[6][3]~feeder_combout\ = \C2|ports|RAM~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~5_combout\,
	combout => \C2|ports|RAM[6][3]~feeder_combout\);

-- Location: FF_X9_Y13_N19
\C2|ports|RAM[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[6][3]~feeder_combout\,
	ena => \C2|ports|RAM[6][7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[6][3]~q\);

-- Location: LCCOMB_X9_Y13_N20
\C2|ports|RAM[6][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[6][4]~feeder_combout\ = \C2|ports|RAM~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~6_combout\,
	combout => \C2|ports|RAM[6][4]~feeder_combout\);

-- Location: FF_X9_Y13_N21
\C2|ports|RAM[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[6][4]~feeder_combout\,
	ena => \C2|ports|RAM[6][7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[6][4]~q\);

-- Location: LCCOMB_X9_Y13_N10
\C2|ports|RAM[6][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[6][5]~feeder_combout\ = \C2|ports|RAM~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~7_combout\,
	combout => \C2|ports|RAM[6][5]~feeder_combout\);

-- Location: FF_X9_Y13_N11
\C2|ports|RAM[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[6][5]~feeder_combout\,
	ena => \C2|ports|RAM[6][7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[6][5]~q\);

-- Location: LCCOMB_X9_Y13_N24
\C2|ports|RAM[6][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[6][6]~feeder_combout\ = \C2|ports|RAM~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~8_combout\,
	combout => \C2|ports|RAM[6][6]~feeder_combout\);

-- Location: FF_X9_Y13_N25
\C2|ports|RAM[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[6][6]~feeder_combout\,
	ena => \C2|ports|RAM[6][7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[6][6]~q\);

-- Location: FF_X9_Y11_N9
\C2|ports|RAM[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C2|ports|RAM~9_combout\,
	sload => VCC,
	ena => \C2|ports|RAM[6][7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[6][7]~q\);

-- Location: LCCOMB_X7_Y13_N8
\C2|ports|RAM[7][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[7][0]~feeder_combout\ = \C2|ports|RAM~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~25_combout\,
	combout => \C2|ports|RAM[7][0]~feeder_combout\);

-- Location: LCCOMB_X9_Y11_N26
\C2|ports|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|Decoder0~7_combout\ = (\C1|C2|CR|MAR_reg\(1) & (\C1|C1|wr~combout\ & (\C1|C2|CR|MAR_reg\(2) & \C1|C2|CR|MAR_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C2|CR|MAR_reg\(1),
	datab => \C1|C1|wr~combout\,
	datac => \C1|C2|CR|MAR_reg\(2),
	datad => \C1|C2|CR|MAR_reg\(0),
	combout => \C2|ports|Decoder0~7_combout\);

-- Location: LCCOMB_X10_Y11_N8
\C2|ports|RAM[7][4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[7][4]~16_combout\ = (\RST~input_o\) # ((\C2|ports|Decoder0~7_combout\ & !\C1|C2|CR|MAR_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ports|Decoder0~7_combout\,
	datab => \RST~input_o\,
	datad => \C1|C2|CR|MAR_reg\(3),
	combout => \C2|ports|RAM[7][4]~16_combout\);

-- Location: FF_X7_Y13_N9
\C2|ports|RAM[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[7][0]~feeder_combout\,
	ena => \C2|ports|RAM[7][4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[7][0]~q\);

-- Location: LCCOMB_X7_Y13_N22
\C2|ports|RAM[7][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[7][1]~feeder_combout\ = \C2|ports|RAM~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~3_combout\,
	combout => \C2|ports|RAM[7][1]~feeder_combout\);

-- Location: FF_X7_Y13_N23
\C2|ports|RAM[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[7][1]~feeder_combout\,
	ena => \C2|ports|RAM[7][4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[7][1]~q\);

-- Location: LCCOMB_X7_Y13_N20
\C2|ports|RAM[7][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[7][2]~feeder_combout\ = \C2|ports|RAM~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~4_combout\,
	combout => \C2|ports|RAM[7][2]~feeder_combout\);

-- Location: FF_X7_Y13_N21
\C2|ports|RAM[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[7][2]~feeder_combout\,
	ena => \C2|ports|RAM[7][4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[7][2]~q\);

-- Location: LCCOMB_X7_Y13_N10
\C2|ports|RAM[7][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[7][3]~feeder_combout\ = \C2|ports|RAM~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~5_combout\,
	combout => \C2|ports|RAM[7][3]~feeder_combout\);

-- Location: FF_X7_Y13_N11
\C2|ports|RAM[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[7][3]~feeder_combout\,
	ena => \C2|ports|RAM[7][4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[7][3]~q\);

-- Location: LCCOMB_X7_Y13_N12
\C2|ports|RAM[7][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[7][4]~feeder_combout\ = \C2|ports|RAM~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~6_combout\,
	combout => \C2|ports|RAM[7][4]~feeder_combout\);

-- Location: FF_X7_Y13_N13
\C2|ports|RAM[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[7][4]~feeder_combout\,
	ena => \C2|ports|RAM[7][4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[7][4]~q\);

-- Location: LCCOMB_X7_Y13_N30
\C2|ports|RAM[7][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[7][5]~feeder_combout\ = \C2|ports|RAM~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~7_combout\,
	combout => \C2|ports|RAM[7][5]~feeder_combout\);

-- Location: FF_X7_Y13_N31
\C2|ports|RAM[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[7][5]~feeder_combout\,
	ena => \C2|ports|RAM[7][4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[7][5]~q\);

-- Location: LCCOMB_X7_Y13_N24
\C2|ports|RAM[7][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[7][6]~feeder_combout\ = \C2|ports|RAM~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~8_combout\,
	combout => \C2|ports|RAM[7][6]~feeder_combout\);

-- Location: FF_X7_Y13_N25
\C2|ports|RAM[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[7][6]~feeder_combout\,
	ena => \C2|ports|RAM[7][4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[7][6]~q\);

-- Location: LCCOMB_X7_Y13_N26
\C2|ports|RAM[7][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[7][7]~feeder_combout\ = \C2|ports|RAM~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~9_combout\,
	combout => \C2|ports|RAM[7][7]~feeder_combout\);

-- Location: FF_X7_Y13_N27
\C2|ports|RAM[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[7][7]~feeder_combout\,
	ena => \C2|ports|RAM[7][4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[7][7]~q\);

-- Location: LCCOMB_X1_Y11_N16
\C2|ports|RAM[8][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[8][0]~feeder_combout\ = \C2|ports|RAM~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~25_combout\,
	combout => \C2|ports|RAM[8][0]~feeder_combout\);

-- Location: LCCOMB_X9_Y11_N8
\C2|ports|RAM[8][2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[8][2]~17_combout\ = (\RST~input_o\) # ((\C2|ports|Decoder0~0_combout\ & \C1|C2|CR|MAR_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ports|Decoder0~0_combout\,
	datab => \C1|C2|CR|MAR_reg\(3),
	datad => \RST~input_o\,
	combout => \C2|ports|RAM[8][2]~17_combout\);

-- Location: FF_X1_Y11_N17
\C2|ports|RAM[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[8][0]~feeder_combout\,
	ena => \C2|ports|RAM[8][2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[8][0]~q\);

-- Location: LCCOMB_X1_Y11_N2
\C2|ports|RAM[8][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[8][1]~feeder_combout\ = \C2|ports|RAM~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~3_combout\,
	combout => \C2|ports|RAM[8][1]~feeder_combout\);

-- Location: FF_X1_Y11_N3
\C2|ports|RAM[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[8][1]~feeder_combout\,
	ena => \C2|ports|RAM[8][2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[8][1]~q\);

-- Location: LCCOMB_X1_Y11_N0
\C2|ports|RAM[8][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[8][2]~feeder_combout\ = \C2|ports|RAM~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~4_combout\,
	combout => \C2|ports|RAM[8][2]~feeder_combout\);

-- Location: FF_X1_Y11_N1
\C2|ports|RAM[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[8][2]~feeder_combout\,
	ena => \C2|ports|RAM[8][2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[8][2]~q\);

-- Location: LCCOMB_X1_Y11_N22
\C2|ports|RAM[8][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[8][3]~feeder_combout\ = \C2|ports|RAM~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~5_combout\,
	combout => \C2|ports|RAM[8][3]~feeder_combout\);

-- Location: FF_X1_Y11_N23
\C2|ports|RAM[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[8][3]~feeder_combout\,
	ena => \C2|ports|RAM[8][2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[8][3]~q\);

-- Location: LCCOMB_X1_Y11_N4
\C2|ports|RAM[8][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[8][4]~feeder_combout\ = \C2|ports|RAM~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~6_combout\,
	combout => \C2|ports|RAM[8][4]~feeder_combout\);

-- Location: FF_X1_Y11_N5
\C2|ports|RAM[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[8][4]~feeder_combout\,
	ena => \C2|ports|RAM[8][2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[8][4]~q\);

-- Location: LCCOMB_X1_Y11_N10
\C2|ports|RAM[8][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[8][5]~feeder_combout\ = \C2|ports|RAM~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~7_combout\,
	combout => \C2|ports|RAM[8][5]~feeder_combout\);

-- Location: FF_X1_Y11_N11
\C2|ports|RAM[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[8][5]~feeder_combout\,
	ena => \C2|ports|RAM[8][2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[8][5]~q\);

-- Location: LCCOMB_X1_Y11_N20
\C2|ports|RAM[8][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[8][6]~feeder_combout\ = \C2|ports|RAM~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~8_combout\,
	combout => \C2|ports|RAM[8][6]~feeder_combout\);

-- Location: FF_X1_Y11_N21
\C2|ports|RAM[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[8][6]~feeder_combout\,
	ena => \C2|ports|RAM[8][2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[8][6]~q\);

-- Location: LCCOMB_X1_Y11_N14
\C2|ports|RAM[8][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[8][7]~feeder_combout\ = \C2|ports|RAM~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~9_combout\,
	combout => \C2|ports|RAM[8][7]~feeder_combout\);

-- Location: FF_X1_Y11_N15
\C2|ports|RAM[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[8][7]~feeder_combout\,
	ena => \C2|ports|RAM[8][2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[8][7]~q\);

-- Location: LCCOMB_X9_Y13_N2
\C2|ports|RAM[9][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[9][0]~feeder_combout\ = \C2|ports|RAM~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~25_combout\,
	combout => \C2|ports|RAM[9][0]~feeder_combout\);

-- Location: LCCOMB_X10_Y11_N6
\C2|ports|RAM[9][7]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[9][7]~18_combout\ = (\RST~input_o\) # ((\C2|ports|Decoder0~1_combout\ & \C1|C2|CR|MAR_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|ports|Decoder0~1_combout\,
	datac => \RST~input_o\,
	datad => \C1|C2|CR|MAR_reg\(3),
	combout => \C2|ports|RAM[9][7]~18_combout\);

-- Location: FF_X9_Y13_N3
\C2|ports|RAM[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[9][0]~feeder_combout\,
	ena => \C2|ports|RAM[9][7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[9][0]~q\);

-- Location: LCCOMB_X9_Y13_N0
\C2|ports|RAM[9][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[9][1]~feeder_combout\ = \C2|ports|RAM~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~3_combout\,
	combout => \C2|ports|RAM[9][1]~feeder_combout\);

-- Location: FF_X9_Y13_N1
\C2|ports|RAM[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[9][1]~feeder_combout\,
	ena => \C2|ports|RAM[9][7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[9][1]~q\);

-- Location: LCCOMB_X9_Y13_N22
\C2|ports|RAM[9][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[9][2]~feeder_combout\ = \C2|ports|RAM~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~4_combout\,
	combout => \C2|ports|RAM[9][2]~feeder_combout\);

-- Location: FF_X9_Y13_N23
\C2|ports|RAM[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[9][2]~feeder_combout\,
	ena => \C2|ports|RAM[9][7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[9][2]~q\);

-- Location: LCCOMB_X9_Y13_N4
\C2|ports|RAM[9][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[9][3]~feeder_combout\ = \C2|ports|RAM~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~5_combout\,
	combout => \C2|ports|RAM[9][3]~feeder_combout\);

-- Location: FF_X9_Y13_N5
\C2|ports|RAM[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[9][3]~feeder_combout\,
	ena => \C2|ports|RAM[9][7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[9][3]~q\);

-- Location: LCCOMB_X9_Y13_N30
\C2|ports|RAM[9][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[9][4]~feeder_combout\ = \C2|ports|RAM~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~6_combout\,
	combout => \C2|ports|RAM[9][4]~feeder_combout\);

-- Location: FF_X9_Y13_N31
\C2|ports|RAM[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[9][4]~feeder_combout\,
	ena => \C2|ports|RAM[9][7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[9][4]~q\);

-- Location: LCCOMB_X9_Y13_N12
\C2|ports|RAM[9][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[9][5]~feeder_combout\ = \C2|ports|RAM~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~7_combout\,
	combout => \C2|ports|RAM[9][5]~feeder_combout\);

-- Location: FF_X9_Y13_N13
\C2|ports|RAM[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[9][5]~feeder_combout\,
	ena => \C2|ports|RAM[9][7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[9][5]~q\);

-- Location: LCCOMB_X9_Y13_N14
\C2|ports|RAM[9][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[9][6]~feeder_combout\ = \C2|ports|RAM~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~8_combout\,
	combout => \C2|ports|RAM[9][6]~feeder_combout\);

-- Location: FF_X9_Y13_N15
\C2|ports|RAM[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[9][6]~feeder_combout\,
	ena => \C2|ports|RAM[9][7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[9][6]~q\);

-- Location: LCCOMB_X9_Y13_N28
\C2|ports|RAM[9][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[9][7]~feeder_combout\ = \C2|ports|RAM~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~9_combout\,
	combout => \C2|ports|RAM[9][7]~feeder_combout\);

-- Location: FF_X9_Y13_N29
\C2|ports|RAM[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[9][7]~feeder_combout\,
	ena => \C2|ports|RAM[9][7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[9][7]~q\);

-- Location: LCCOMB_X10_Y13_N16
\C2|ports|RAM[10][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[10][0]~feeder_combout\ = \C2|ports|RAM~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~25_combout\,
	combout => \C2|ports|RAM[10][0]~feeder_combout\);

-- Location: LCCOMB_X10_Y11_N24
\C2|ports|RAM[10][0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[10][0]~19_combout\ = (\RST~input_o\) # ((\C1|C2|CR|MAR_reg\(3) & \C2|ports|Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C2|CR|MAR_reg\(3),
	datac => \C2|ports|Decoder0~2_combout\,
	datad => \RST~input_o\,
	combout => \C2|ports|RAM[10][0]~19_combout\);

-- Location: FF_X10_Y13_N17
\C2|ports|RAM[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[10][0]~feeder_combout\,
	ena => \C2|ports|RAM[10][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[10][0]~q\);

-- Location: LCCOMB_X10_Y13_N14
\C2|ports|RAM[10][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[10][1]~feeder_combout\ = \C2|ports|RAM~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~3_combout\,
	combout => \C2|ports|RAM[10][1]~feeder_combout\);

-- Location: FF_X10_Y13_N15
\C2|ports|RAM[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[10][1]~feeder_combout\,
	ena => \C2|ports|RAM[10][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[10][1]~q\);

-- Location: LCCOMB_X10_Y13_N12
\C2|ports|RAM[10][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[10][2]~feeder_combout\ = \C2|ports|RAM~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~4_combout\,
	combout => \C2|ports|RAM[10][2]~feeder_combout\);

-- Location: FF_X10_Y13_N13
\C2|ports|RAM[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[10][2]~feeder_combout\,
	ena => \C2|ports|RAM[10][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[10][2]~q\);

-- Location: LCCOMB_X10_Y13_N10
\C2|ports|RAM[10][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[10][3]~feeder_combout\ = \C2|ports|RAM~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~5_combout\,
	combout => \C2|ports|RAM[10][3]~feeder_combout\);

-- Location: FF_X10_Y13_N11
\C2|ports|RAM[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[10][3]~feeder_combout\,
	ena => \C2|ports|RAM[10][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[10][3]~q\);

-- Location: LCCOMB_X10_Y13_N24
\C2|ports|RAM[10][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[10][4]~feeder_combout\ = \C2|ports|RAM~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~6_combout\,
	combout => \C2|ports|RAM[10][4]~feeder_combout\);

-- Location: FF_X10_Y13_N25
\C2|ports|RAM[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[10][4]~feeder_combout\,
	ena => \C2|ports|RAM[10][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[10][4]~q\);

-- Location: LCCOMB_X10_Y13_N30
\C2|ports|RAM[10][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[10][5]~feeder_combout\ = \C2|ports|RAM~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~7_combout\,
	combout => \C2|ports|RAM[10][5]~feeder_combout\);

-- Location: FF_X10_Y13_N31
\C2|ports|RAM[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[10][5]~feeder_combout\,
	ena => \C2|ports|RAM[10][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[10][5]~q\);

-- Location: LCCOMB_X10_Y13_N4
\C2|ports|RAM[10][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[10][6]~feeder_combout\ = \C2|ports|RAM~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~8_combout\,
	combout => \C2|ports|RAM[10][6]~feeder_combout\);

-- Location: FF_X10_Y13_N5
\C2|ports|RAM[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[10][6]~feeder_combout\,
	ena => \C2|ports|RAM[10][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[10][6]~q\);

-- Location: LCCOMB_X10_Y13_N22
\C2|ports|RAM[10][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[10][7]~feeder_combout\ = \C2|ports|RAM~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~9_combout\,
	combout => \C2|ports|RAM[10][7]~feeder_combout\);

-- Location: FF_X10_Y13_N23
\C2|ports|RAM[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[10][7]~feeder_combout\,
	ena => \C2|ports|RAM[10][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[10][7]~q\);

-- Location: LCCOMB_X1_Y10_N16
\C2|ports|RAM[11][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[11][0]~feeder_combout\ = \C2|ports|RAM~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~25_combout\,
	combout => \C2|ports|RAM[11][0]~feeder_combout\);

-- Location: LCCOMB_X9_Y11_N4
\C2|ports|RAM[11][4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[11][4]~20_combout\ = (\RST~input_o\) # ((\C1|C2|CR|MAR_reg\(3) & \C2|ports|Decoder0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => \C1|C2|CR|MAR_reg\(3),
	datad => \C2|ports|Decoder0~3_combout\,
	combout => \C2|ports|RAM[11][4]~20_combout\);

-- Location: FF_X1_Y10_N17
\C2|ports|RAM[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[11][0]~feeder_combout\,
	ena => \C2|ports|RAM[11][4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[11][0]~q\);

-- Location: LCCOMB_X1_Y10_N26
\C2|ports|RAM[11][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[11][1]~feeder_combout\ = \C2|ports|RAM~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~3_combout\,
	combout => \C2|ports|RAM[11][1]~feeder_combout\);

-- Location: FF_X1_Y10_N27
\C2|ports|RAM[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[11][1]~feeder_combout\,
	ena => \C2|ports|RAM[11][4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[11][1]~q\);

-- Location: LCCOMB_X1_Y10_N28
\C2|ports|RAM[11][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[11][2]~feeder_combout\ = \C2|ports|RAM~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~4_combout\,
	combout => \C2|ports|RAM[11][2]~feeder_combout\);

-- Location: FF_X1_Y10_N29
\C2|ports|RAM[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[11][2]~feeder_combout\,
	ena => \C2|ports|RAM[11][4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[11][2]~q\);

-- Location: LCCOMB_X1_Y10_N22
\C2|ports|RAM[11][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[11][3]~feeder_combout\ = \C2|ports|RAM~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~5_combout\,
	combout => \C2|ports|RAM[11][3]~feeder_combout\);

-- Location: FF_X1_Y10_N23
\C2|ports|RAM[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[11][3]~feeder_combout\,
	ena => \C2|ports|RAM[11][4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[11][3]~q\);

-- Location: LCCOMB_X1_Y10_N4
\C2|ports|RAM[11][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[11][4]~feeder_combout\ = \C2|ports|RAM~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~6_combout\,
	combout => \C2|ports|RAM[11][4]~feeder_combout\);

-- Location: FF_X1_Y10_N5
\C2|ports|RAM[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[11][4]~feeder_combout\,
	ena => \C2|ports|RAM[11][4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[11][4]~q\);

-- Location: LCCOMB_X1_Y10_N6
\C2|ports|RAM[11][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[11][5]~feeder_combout\ = \C2|ports|RAM~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~7_combout\,
	combout => \C2|ports|RAM[11][5]~feeder_combout\);

-- Location: FF_X1_Y10_N7
\C2|ports|RAM[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[11][5]~feeder_combout\,
	ena => \C2|ports|RAM[11][4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[11][5]~q\);

-- Location: LCCOMB_X1_Y10_N8
\C2|ports|RAM[11][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[11][6]~feeder_combout\ = \C2|ports|RAM~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~8_combout\,
	combout => \C2|ports|RAM[11][6]~feeder_combout\);

-- Location: FF_X1_Y10_N9
\C2|ports|RAM[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[11][6]~feeder_combout\,
	ena => \C2|ports|RAM[11][4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[11][6]~q\);

-- Location: LCCOMB_X1_Y10_N30
\C2|ports|RAM[11][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[11][7]~feeder_combout\ = \C2|ports|RAM~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~9_combout\,
	combout => \C2|ports|RAM[11][7]~feeder_combout\);

-- Location: FF_X1_Y10_N31
\C2|ports|RAM[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[11][7]~feeder_combout\,
	ena => \C2|ports|RAM[11][4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[11][7]~q\);

-- Location: LCCOMB_X4_Y10_N16
\C2|ports|RAM[12][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[12][0]~feeder_combout\ = \C2|ports|RAM~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~25_combout\,
	combout => \C2|ports|RAM[12][0]~feeder_combout\);

-- Location: LCCOMB_X10_Y11_N14
\C2|ports|RAM[12][4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[12][4]~21_combout\ = (\RST~input_o\) # ((\C1|C2|CR|MAR_reg\(3) & \C2|ports|Decoder0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|C2|CR|MAR_reg\(3),
	datac => \C2|ports|Decoder0~4_combout\,
	datad => \RST~input_o\,
	combout => \C2|ports|RAM[12][4]~21_combout\);

-- Location: FF_X4_Y10_N17
\C2|ports|RAM[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[12][0]~feeder_combout\,
	ena => \C2|ports|RAM[12][4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[12][0]~q\);

-- Location: LCCOMB_X4_Y10_N14
\C2|ports|RAM[12][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[12][1]~feeder_combout\ = \C2|ports|RAM~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~3_combout\,
	combout => \C2|ports|RAM[12][1]~feeder_combout\);

-- Location: FF_X4_Y10_N15
\C2|ports|RAM[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[12][1]~feeder_combout\,
	ena => \C2|ports|RAM[12][4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[12][1]~q\);

-- Location: LCCOMB_X4_Y10_N12
\C2|ports|RAM[12][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[12][2]~feeder_combout\ = \C2|ports|RAM~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~4_combout\,
	combout => \C2|ports|RAM[12][2]~feeder_combout\);

-- Location: FF_X4_Y10_N13
\C2|ports|RAM[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[12][2]~feeder_combout\,
	ena => \C2|ports|RAM[12][4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[12][2]~q\);

-- Location: FF_X10_Y11_N17
\C2|ports|RAM[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C2|ports|RAM~5_combout\,
	sload => VCC,
	ena => \C2|ports|RAM[12][4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[12][3]~q\);

-- Location: LCCOMB_X4_Y10_N6
\C2|ports|RAM[12][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[12][4]~feeder_combout\ = \C2|ports|RAM~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~6_combout\,
	combout => \C2|ports|RAM[12][4]~feeder_combout\);

-- Location: FF_X4_Y10_N7
\C2|ports|RAM[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[12][4]~feeder_combout\,
	ena => \C2|ports|RAM[12][4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[12][4]~q\);

-- Location: LCCOMB_X4_Y10_N24
\C2|ports|RAM[12][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[12][5]~feeder_combout\ = \C2|ports|RAM~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~7_combout\,
	combout => \C2|ports|RAM[12][5]~feeder_combout\);

-- Location: FF_X4_Y10_N25
\C2|ports|RAM[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[12][5]~feeder_combout\,
	ena => \C2|ports|RAM[12][4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[12][5]~q\);

-- Location: LCCOMB_X4_Y10_N10
\C2|ports|RAM[12][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[12][6]~feeder_combout\ = \C2|ports|RAM~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~8_combout\,
	combout => \C2|ports|RAM[12][6]~feeder_combout\);

-- Location: FF_X4_Y10_N11
\C2|ports|RAM[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[12][6]~feeder_combout\,
	ena => \C2|ports|RAM[12][4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[12][6]~q\);

-- Location: LCCOMB_X4_Y10_N28
\C2|ports|RAM[12][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[12][7]~feeder_combout\ = \C2|ports|RAM~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~9_combout\,
	combout => \C2|ports|RAM[12][7]~feeder_combout\);

-- Location: FF_X4_Y10_N29
\C2|ports|RAM[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[12][7]~feeder_combout\,
	ena => \C2|ports|RAM[12][4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[12][7]~q\);

-- Location: LCCOMB_X8_Y13_N0
\C2|ports|RAM[13][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[13][0]~feeder_combout\ = \C2|ports|RAM~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~25_combout\,
	combout => \C2|ports|RAM[13][0]~feeder_combout\);

-- Location: LCCOMB_X8_Y13_N26
\C2|ports|RAM[13][5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[13][5]~22_combout\ = (\RST~input_o\) # ((\C2|ports|Decoder0~5_combout\ & \C1|C2|CR|MAR_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ports|Decoder0~5_combout\,
	datab => \RST~input_o\,
	datad => \C1|C2|CR|MAR_reg\(3),
	combout => \C2|ports|RAM[13][5]~22_combout\);

-- Location: FF_X8_Y13_N1
\C2|ports|RAM[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[13][0]~feeder_combout\,
	ena => \C2|ports|RAM[13][5]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[13][0]~q\);

-- Location: LCCOMB_X8_Y13_N2
\C2|ports|RAM[13][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[13][1]~feeder_combout\ = \C2|ports|RAM~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~3_combout\,
	combout => \C2|ports|RAM[13][1]~feeder_combout\);

-- Location: FF_X8_Y13_N3
\C2|ports|RAM[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[13][1]~feeder_combout\,
	ena => \C2|ports|RAM[13][5]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[13][1]~q\);

-- Location: LCCOMB_X8_Y13_N8
\C2|ports|RAM[13][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[13][2]~feeder_combout\ = \C2|ports|RAM~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~4_combout\,
	combout => \C2|ports|RAM[13][2]~feeder_combout\);

-- Location: FF_X8_Y13_N9
\C2|ports|RAM[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[13][2]~feeder_combout\,
	ena => \C2|ports|RAM[13][5]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[13][2]~q\);

-- Location: LCCOMB_X8_Y13_N6
\C2|ports|RAM[13][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[13][3]~feeder_combout\ = \C2|ports|RAM~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~5_combout\,
	combout => \C2|ports|RAM[13][3]~feeder_combout\);

-- Location: FF_X8_Y13_N7
\C2|ports|RAM[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[13][3]~feeder_combout\,
	ena => \C2|ports|RAM[13][5]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[13][3]~q\);

-- Location: LCCOMB_X8_Y13_N28
\C2|ports|RAM[13][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[13][4]~feeder_combout\ = \C2|ports|RAM~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~6_combout\,
	combout => \C2|ports|RAM[13][4]~feeder_combout\);

-- Location: FF_X8_Y13_N29
\C2|ports|RAM[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[13][4]~feeder_combout\,
	ena => \C2|ports|RAM[13][5]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[13][4]~q\);

-- Location: LCCOMB_X8_Y13_N14
\C2|ports|RAM[13][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[13][5]~feeder_combout\ = \C2|ports|RAM~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~7_combout\,
	combout => \C2|ports|RAM[13][5]~feeder_combout\);

-- Location: FF_X8_Y13_N15
\C2|ports|RAM[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[13][5]~feeder_combout\,
	ena => \C2|ports|RAM[13][5]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[13][5]~q\);

-- Location: LCCOMB_X8_Y13_N16
\C2|ports|RAM[13][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[13][6]~feeder_combout\ = \C2|ports|RAM~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~8_combout\,
	combout => \C2|ports|RAM[13][6]~feeder_combout\);

-- Location: FF_X8_Y13_N17
\C2|ports|RAM[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[13][6]~feeder_combout\,
	ena => \C2|ports|RAM[13][5]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[13][6]~q\);

-- Location: LCCOMB_X8_Y13_N10
\C2|ports|RAM[13][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[13][7]~feeder_combout\ = \C2|ports|RAM~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~9_combout\,
	combout => \C2|ports|RAM[13][7]~feeder_combout\);

-- Location: FF_X8_Y13_N11
\C2|ports|RAM[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[13][7]~feeder_combout\,
	ena => \C2|ports|RAM[13][5]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[13][7]~q\);

-- Location: LCCOMB_X1_Y13_N8
\C2|ports|RAM[14][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[14][0]~feeder_combout\ = \C2|ports|RAM~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~25_combout\,
	combout => \C2|ports|RAM[14][0]~feeder_combout\);

-- Location: LCCOMB_X8_Y13_N24
\C2|ports|RAM[14][0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[14][0]~23_combout\ = (\RST~input_o\) # ((\C2|ports|Decoder0~6_combout\ & \C1|C2|CR|MAR_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ports|Decoder0~6_combout\,
	datab => \RST~input_o\,
	datad => \C1|C2|CR|MAR_reg\(3),
	combout => \C2|ports|RAM[14][0]~23_combout\);

-- Location: FF_X1_Y13_N9
\C2|ports|RAM[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[14][0]~feeder_combout\,
	ena => \C2|ports|RAM[14][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[14][0]~q\);

-- Location: LCCOMB_X1_Y13_N6
\C2|ports|RAM[14][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[14][1]~feeder_combout\ = \C2|ports|RAM~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~3_combout\,
	combout => \C2|ports|RAM[14][1]~feeder_combout\);

-- Location: FF_X1_Y13_N7
\C2|ports|RAM[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[14][1]~feeder_combout\,
	ena => \C2|ports|RAM[14][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[14][1]~q\);

-- Location: LCCOMB_X1_Y13_N4
\C2|ports|RAM[14][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[14][2]~feeder_combout\ = \C2|ports|RAM~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~4_combout\,
	combout => \C2|ports|RAM[14][2]~feeder_combout\);

-- Location: FF_X1_Y13_N5
\C2|ports|RAM[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[14][2]~feeder_combout\,
	ena => \C2|ports|RAM[14][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[14][2]~q\);

-- Location: LCCOMB_X1_Y13_N22
\C2|ports|RAM[14][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[14][3]~feeder_combout\ = \C2|ports|RAM~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~5_combout\,
	combout => \C2|ports|RAM[14][3]~feeder_combout\);

-- Location: FF_X1_Y13_N23
\C2|ports|RAM[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[14][3]~feeder_combout\,
	ena => \C2|ports|RAM[14][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[14][3]~q\);

-- Location: LCCOMB_X1_Y13_N0
\C2|ports|RAM[14][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[14][4]~feeder_combout\ = \C2|ports|RAM~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~6_combout\,
	combout => \C2|ports|RAM[14][4]~feeder_combout\);

-- Location: FF_X1_Y13_N1
\C2|ports|RAM[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[14][4]~feeder_combout\,
	ena => \C2|ports|RAM[14][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[14][4]~q\);

-- Location: LCCOMB_X1_Y13_N18
\C2|ports|RAM[14][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[14][5]~feeder_combout\ = \C2|ports|RAM~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~7_combout\,
	combout => \C2|ports|RAM[14][5]~feeder_combout\);

-- Location: FF_X1_Y13_N19
\C2|ports|RAM[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[14][5]~feeder_combout\,
	ena => \C2|ports|RAM[14][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[14][5]~q\);

-- Location: LCCOMB_X1_Y13_N20
\C2|ports|RAM[14][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[14][6]~feeder_combout\ = \C2|ports|RAM~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~8_combout\,
	combout => \C2|ports|RAM[14][6]~feeder_combout\);

-- Location: FF_X1_Y13_N21
\C2|ports|RAM[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[14][6]~feeder_combout\,
	ena => \C2|ports|RAM[14][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[14][6]~q\);

-- Location: LCCOMB_X1_Y13_N26
\C2|ports|RAM[14][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[14][7]~feeder_combout\ = \C2|ports|RAM~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|ports|RAM~9_combout\,
	combout => \C2|ports|RAM[14][7]~feeder_combout\);

-- Location: FF_X1_Y13_N27
\C2|ports|RAM[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[14][7]~feeder_combout\,
	ena => \C2|ports|RAM[14][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[14][7]~q\);

-- Location: LCCOMB_X10_Y11_N10
\C2|ports|RAM[15][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[15][0]~feeder_combout\ = \C2|ports|RAM~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~25_combout\,
	combout => \C2|ports|RAM[15][0]~feeder_combout\);

-- Location: LCCOMB_X10_Y11_N16
\C2|ports|RAM[15][0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[15][0]~24_combout\ = (\RST~input_o\) # ((\C2|ports|Decoder0~7_combout\ & \C1|C2|CR|MAR_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ports|Decoder0~7_combout\,
	datab => \C1|C2|CR|MAR_reg\(3),
	datad => \RST~input_o\,
	combout => \C2|ports|RAM[15][0]~24_combout\);

-- Location: FF_X10_Y11_N11
\C2|ports|RAM[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[15][0]~feeder_combout\,
	ena => \C2|ports|RAM[15][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[15][0]~q\);

-- Location: FF_X10_Y10_N29
\C2|ports|RAM[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM~3_combout\,
	ena => \C2|ports|RAM[15][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[15][1]~q\);

-- Location: LCCOMB_X10_Y11_N0
\C2|ports|RAM[15][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[15][2]~feeder_combout\ = \C2|ports|RAM~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~4_combout\,
	combout => \C2|ports|RAM[15][2]~feeder_combout\);

-- Location: FF_X10_Y11_N1
\C2|ports|RAM[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[15][2]~feeder_combout\,
	ena => \C2|ports|RAM[15][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[15][2]~q\);

-- Location: LCCOMB_X10_Y11_N22
\C2|ports|RAM[15][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C2|ports|RAM[15][3]~feeder_combout\ = \C2|ports|RAM~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|ports|RAM~5_combout\,
	combout => \C2|ports|RAM[15][3]~feeder_combout\);

-- Location: FF_X10_Y11_N23
\C2|ports|RAM[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM[15][3]~feeder_combout\,
	ena => \C2|ports|RAM[15][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[15][3]~q\);

-- Location: FF_X10_Y11_N29
\C2|ports|RAM[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM~6_combout\,
	ena => \C2|ports|RAM[15][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[15][4]~q\);

-- Location: FF_X10_Y11_N19
\C2|ports|RAM[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM~7_combout\,
	ena => \C2|ports|RAM[15][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[15][5]~q\);

-- Location: FF_X10_Y10_N31
\C2|ports|RAM[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C2|ports|RAM~8_combout\,
	sload => VCC,
	ena => \C2|ports|RAM[15][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[15][6]~q\);

-- Location: FF_X10_Y11_N21
\C2|ports|RAM[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C2|ports|RAM~9_combout\,
	ena => \C2|ports|RAM[15][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|ports|RAM[15][7]~q\);

ww_port_out_00(0) <= \port_out_00[0]~output_o\;

ww_port_out_00(1) <= \port_out_00[1]~output_o\;

ww_port_out_00(2) <= \port_out_00[2]~output_o\;

ww_port_out_00(3) <= \port_out_00[3]~output_o\;

ww_port_out_00(4) <= \port_out_00[4]~output_o\;

ww_port_out_00(5) <= \port_out_00[5]~output_o\;

ww_port_out_00(6) <= \port_out_00[6]~output_o\;

ww_port_out_00(7) <= \port_out_00[7]~output_o\;

ww_port_out_01(0) <= \port_out_01[0]~output_o\;

ww_port_out_01(1) <= \port_out_01[1]~output_o\;

ww_port_out_01(2) <= \port_out_01[2]~output_o\;

ww_port_out_01(3) <= \port_out_01[3]~output_o\;

ww_port_out_01(4) <= \port_out_01[4]~output_o\;

ww_port_out_01(5) <= \port_out_01[5]~output_o\;

ww_port_out_01(6) <= \port_out_01[6]~output_o\;

ww_port_out_01(7) <= \port_out_01[7]~output_o\;

ww_port_out_02(0) <= \port_out_02[0]~output_o\;

ww_port_out_02(1) <= \port_out_02[1]~output_o\;

ww_port_out_02(2) <= \port_out_02[2]~output_o\;

ww_port_out_02(3) <= \port_out_02[3]~output_o\;

ww_port_out_02(4) <= \port_out_02[4]~output_o\;

ww_port_out_02(5) <= \port_out_02[5]~output_o\;

ww_port_out_02(6) <= \port_out_02[6]~output_o\;

ww_port_out_02(7) <= \port_out_02[7]~output_o\;

ww_port_out_03(0) <= \port_out_03[0]~output_o\;

ww_port_out_03(1) <= \port_out_03[1]~output_o\;

ww_port_out_03(2) <= \port_out_03[2]~output_o\;

ww_port_out_03(3) <= \port_out_03[3]~output_o\;

ww_port_out_03(4) <= \port_out_03[4]~output_o\;

ww_port_out_03(5) <= \port_out_03[5]~output_o\;

ww_port_out_03(6) <= \port_out_03[6]~output_o\;

ww_port_out_03(7) <= \port_out_03[7]~output_o\;

ww_port_out_04(0) <= \port_out_04[0]~output_o\;

ww_port_out_04(1) <= \port_out_04[1]~output_o\;

ww_port_out_04(2) <= \port_out_04[2]~output_o\;

ww_port_out_04(3) <= \port_out_04[3]~output_o\;

ww_port_out_04(4) <= \port_out_04[4]~output_o\;

ww_port_out_04(5) <= \port_out_04[5]~output_o\;

ww_port_out_04(6) <= \port_out_04[6]~output_o\;

ww_port_out_04(7) <= \port_out_04[7]~output_o\;

ww_port_out_05(0) <= \port_out_05[0]~output_o\;

ww_port_out_05(1) <= \port_out_05[1]~output_o\;

ww_port_out_05(2) <= \port_out_05[2]~output_o\;

ww_port_out_05(3) <= \port_out_05[3]~output_o\;

ww_port_out_05(4) <= \port_out_05[4]~output_o\;

ww_port_out_05(5) <= \port_out_05[5]~output_o\;

ww_port_out_05(6) <= \port_out_05[6]~output_o\;

ww_port_out_05(7) <= \port_out_05[7]~output_o\;

ww_port_out_06(0) <= \port_out_06[0]~output_o\;

ww_port_out_06(1) <= \port_out_06[1]~output_o\;

ww_port_out_06(2) <= \port_out_06[2]~output_o\;

ww_port_out_06(3) <= \port_out_06[3]~output_o\;

ww_port_out_06(4) <= \port_out_06[4]~output_o\;

ww_port_out_06(5) <= \port_out_06[5]~output_o\;

ww_port_out_06(6) <= \port_out_06[6]~output_o\;

ww_port_out_06(7) <= \port_out_06[7]~output_o\;

ww_port_out_07(0) <= \port_out_07[0]~output_o\;

ww_port_out_07(1) <= \port_out_07[1]~output_o\;

ww_port_out_07(2) <= \port_out_07[2]~output_o\;

ww_port_out_07(3) <= \port_out_07[3]~output_o\;

ww_port_out_07(4) <= \port_out_07[4]~output_o\;

ww_port_out_07(5) <= \port_out_07[5]~output_o\;

ww_port_out_07(6) <= \port_out_07[6]~output_o\;

ww_port_out_07(7) <= \port_out_07[7]~output_o\;

ww_port_out_08(0) <= \port_out_08[0]~output_o\;

ww_port_out_08(1) <= \port_out_08[1]~output_o\;

ww_port_out_08(2) <= \port_out_08[2]~output_o\;

ww_port_out_08(3) <= \port_out_08[3]~output_o\;

ww_port_out_08(4) <= \port_out_08[4]~output_o\;

ww_port_out_08(5) <= \port_out_08[5]~output_o\;

ww_port_out_08(6) <= \port_out_08[6]~output_o\;

ww_port_out_08(7) <= \port_out_08[7]~output_o\;

ww_port_out_09(0) <= \port_out_09[0]~output_o\;

ww_port_out_09(1) <= \port_out_09[1]~output_o\;

ww_port_out_09(2) <= \port_out_09[2]~output_o\;

ww_port_out_09(3) <= \port_out_09[3]~output_o\;

ww_port_out_09(4) <= \port_out_09[4]~output_o\;

ww_port_out_09(5) <= \port_out_09[5]~output_o\;

ww_port_out_09(6) <= \port_out_09[6]~output_o\;

ww_port_out_09(7) <= \port_out_09[7]~output_o\;

ww_port_out_10(0) <= \port_out_10[0]~output_o\;

ww_port_out_10(1) <= \port_out_10[1]~output_o\;

ww_port_out_10(2) <= \port_out_10[2]~output_o\;

ww_port_out_10(3) <= \port_out_10[3]~output_o\;

ww_port_out_10(4) <= \port_out_10[4]~output_o\;

ww_port_out_10(5) <= \port_out_10[5]~output_o\;

ww_port_out_10(6) <= \port_out_10[6]~output_o\;

ww_port_out_10(7) <= \port_out_10[7]~output_o\;

ww_port_out_11(0) <= \port_out_11[0]~output_o\;

ww_port_out_11(1) <= \port_out_11[1]~output_o\;

ww_port_out_11(2) <= \port_out_11[2]~output_o\;

ww_port_out_11(3) <= \port_out_11[3]~output_o\;

ww_port_out_11(4) <= \port_out_11[4]~output_o\;

ww_port_out_11(5) <= \port_out_11[5]~output_o\;

ww_port_out_11(6) <= \port_out_11[6]~output_o\;

ww_port_out_11(7) <= \port_out_11[7]~output_o\;

ww_port_out_12(0) <= \port_out_12[0]~output_o\;

ww_port_out_12(1) <= \port_out_12[1]~output_o\;

ww_port_out_12(2) <= \port_out_12[2]~output_o\;

ww_port_out_12(3) <= \port_out_12[3]~output_o\;

ww_port_out_12(4) <= \port_out_12[4]~output_o\;

ww_port_out_12(5) <= \port_out_12[5]~output_o\;

ww_port_out_12(6) <= \port_out_12[6]~output_o\;

ww_port_out_12(7) <= \port_out_12[7]~output_o\;

ww_port_out_13(0) <= \port_out_13[0]~output_o\;

ww_port_out_13(1) <= \port_out_13[1]~output_o\;

ww_port_out_13(2) <= \port_out_13[2]~output_o\;

ww_port_out_13(3) <= \port_out_13[3]~output_o\;

ww_port_out_13(4) <= \port_out_13[4]~output_o\;

ww_port_out_13(5) <= \port_out_13[5]~output_o\;

ww_port_out_13(6) <= \port_out_13[6]~output_o\;

ww_port_out_13(7) <= \port_out_13[7]~output_o\;

ww_port_out_14(0) <= \port_out_14[0]~output_o\;

ww_port_out_14(1) <= \port_out_14[1]~output_o\;

ww_port_out_14(2) <= \port_out_14[2]~output_o\;

ww_port_out_14(3) <= \port_out_14[3]~output_o\;

ww_port_out_14(4) <= \port_out_14[4]~output_o\;

ww_port_out_14(5) <= \port_out_14[5]~output_o\;

ww_port_out_14(6) <= \port_out_14[6]~output_o\;

ww_port_out_14(7) <= \port_out_14[7]~output_o\;

ww_port_out_15(0) <= \port_out_15[0]~output_o\;

ww_port_out_15(1) <= \port_out_15[1]~output_o\;

ww_port_out_15(2) <= \port_out_15[2]~output_o\;

ww_port_out_15(3) <= \port_out_15[3]~output_o\;

ww_port_out_15(4) <= \port_out_15[4]~output_o\;

ww_port_out_15(5) <= \port_out_15[5]~output_o\;

ww_port_out_15(6) <= \port_out_15[6]~output_o\;

ww_port_out_15(7) <= \port_out_15[7]~output_o\;
END structure;


