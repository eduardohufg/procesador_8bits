-- Procesador RISC de 8 bits
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity CPU is
    port (
        CLK, RST: in std_logic;
        port_in_00, port_in_01, port_in_02, port_in_03: in std_logic_vector(7 downto 0);
        port_in_04, port_in_05, port_in_06, port_in_07: in std_logic_vector(7 downto 0);
        port_in_08, port_in_09, port_in_10, port_in_11: in std_logic_vector(7 downto 0);
        port_in_12, port_in_13, port_in_14, port_in_15: in std_logic_vector(7 downto 0);
        port_out_00, port_out_01, port_out_02, port_out_03: out std_logic_vector(7 downto 0);
        port_out_04, port_out_05, port_out_06, port_out_07: out std_logic_vector(7 downto 0);
        port_out_08, port_out_09, port_out_10, port_out_11: out std_logic_vector(7 downto 0);
        port_out_12, port_out_13, port_out_14, port_out_15: out std_logic_vector(7 downto 0)
    );
end entity;

architecture ARC of CPU is
    component Memory is
        PORT(
        CLK, RST, writ: in std_logic;
        address, data_in: in std_logic_vector(7 downto 0);
        port_in_00, port_in_01, port_in_02, port_in_03,
        port_in_04, port_in_05, port_in_06, port_in_07,
        port_in_08, port_in_09, port_in_10, port_in_11,
        port_in_12, port_in_13, port_in_14, port_in_15: in std_logic_vector(7 downto 0);
        data_out: out std_logic_vector(7 downto 0);
        port_out_00, port_out_01, port_out_02, port_out_03,
        port_out_04, port_out_05, port_out_06, port_out_07,
        port_out_08, port_out_09, port_out_10, port_out_11,
        port_out_12, port_out_13, port_out_14, port_out_15: out std_logic_vector(7 downto 0)
    );
    end component;

    component process_unit is
         port (
        CLK, RST: in std_logic;
        From_Memory: in std_logic_vector(7 downto 0);
        writ: out std_logic;
        Address, To_Memory: out std_logic_vector(7 downto 0)
    );
    end component;

    signal address, Data1, Data2: std_logic_vector(7 downto 0);
    signal writ: std_logic;

begin
    C1: process_unit port map (
        CLK, RST, Data1, writ, address, Data2
    );

    C2: Memory port map (
        CLK, RST, writ, address, Data2,
        port_in_00, port_in_01, port_in_02, port_in_03,
        port_in_04, port_in_05, port_in_06, port_in_07,
        port_in_08, port_in_09, port_in_10, port_in_11,
        port_in_12, port_in_13, port_in_14, port_in_15,
        Data1,
        port_out_00, port_out_01, port_out_02, port_out_03,
        port_out_04, port_out_05, port_out_06, port_out_07,
        port_out_08, port_out_09, port_out_10, port_out_11,
        port_out_12, port_out_13, port_out_14, port_out_15
    );
end architecture ARC;
