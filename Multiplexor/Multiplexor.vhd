library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Multiplexor is
    port (
        address: in std_logic_vector(7 downto 0);
        port_in_00, port_in_01, port_in_02, port_in_03,
        port_in_04, port_in_05, port_in_06, port_in_07,
        port_in_08, port_in_09, port_in_10, port_in_11,
        port_in_12, port_in_13, port_in_14, port_in_15: in std_logic_vector(7 downto 0);
        rom_out, ram_out: in std_logic_vector(7 downto 0);
        data_out: out std_logic_vector(7 downto 0)
    );
end entity;

architecture Arc of Multiplexor is
begin
    data_out <= rom_out when address < x"80" else
                ram_out when address < x"E0" else
                port_in_00 when address = x"F0" else
                port_in_01 when address = x"F1" else
                port_in_02 when address = x"F2" else
                port_in_03 when address = x"F3" else
                port_in_04 when address = x"F4" else
                port_in_05 when address = x"F5" else
                port_in_06 when address = x"F6" else
                port_in_07 when address = x"F7" else
                port_in_08 when address = x"F8" else
                port_in_09 when address = x"F9" else
                port_in_10 when address = x"FA" else
                port_in_11 when address = x"FB" else
                port_in_12 when address = x"FC" else
                port_in_13 when address = x"FD" else
                port_in_14 when address = x"FE" else
                port_in_15 when address = x"FF" else
                x"00";
end Arc;
