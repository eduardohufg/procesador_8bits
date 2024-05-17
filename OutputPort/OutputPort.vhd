library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity OutputPort is
    port (
        writ, CLK, RST: in std_logic;
        data_in, address: in std_logic_vector(7 downto 0);
        port_out_00, port_out_01, port_out_02, port_out_03,
        port_out_04, port_out_05, port_out_06, port_out_07,
        port_out_08, port_out_09, port_out_10, port_out_11,
        port_out_12, port_out_13, port_out_14, port_out_15: out std_logic_vector(7 downto 0)
    );
end entity;

architecture Arc of OutputPort is
    type mem_dato is array (0 to 15) of std_logic_vector (7 downto 0);
    signal RAM: mem_dato := (
        x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
        x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00"
    );
begin
    process (CLK)
    begin
        if CLK'event and CLK = '1' then
            if RST = '1' then
                RAM <= (others => (others => '0'));
            elsif writ = '1' then
                RAM(conv_integer(unsigned(address))) <= data_in;
            end if;
        end if;
    end process;

    port_out_00 <= RAM(0);
    port_out_01 <= RAM(1);
    port_out_02 <= RAM(2);
    port_out_03 <= RAM(3);
    port_out_04 <= RAM(4);
    port_out_05 <= RAM(5);
    port_out_06 <= RAM(6);
    port_out_07 <= RAM(7);
    port_out_08 <= RAM(8);
    port_out_09 <= RAM(9);
    port_out_10 <= RAM(10);
    port_out_11 <= RAM(11);
    port_out_12 <= RAM(12);
    port_out_13 <= RAM(13);
    port_out_14 <= RAM(14);
    port_out_15 <= RAM(15);
end Arc;