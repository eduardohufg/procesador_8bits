library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity DataMemory is
    port (
        writ, CLK: in std_logic;
        data_in, address: in std_logic_vector(7 downto 0);
        data_out: out std_logic_vector(7 downto 0)
    );
end entity;

architecture Arc of DataMemory is
    type DataMemory is array (0 to 95) of std_logic_vector(7 downto 0);
    signal RAM: DataMemory := (
        x"44", x"22", x"11", x"00", -- 0x80
        x"00", x"00", x"00", x"00", -- 0x84
        x"00", x"00", x"00", x"00", -- 0x88
        x"00", x"00", x"00", x"00", -- 0x8C
        x"00", x"00", x"00", x"00", -- 0x90
        x"00", x"00", x"00", x"00", -- 0x94
        x"00", x"00", x"00", x"00", -- 0x98
        x"00", x"00", x"00", x"00", -- 0x9C
        x"00", x"00", x"00", x"00", -- 0xA0
        x"00", x"00", x"00", x"00", -- 0xA4
        x"00", x"00", x"00", x"00", -- 0xA8
        x"00", x"00", x"00", x"00", -- 0xAC
        x"00", x"00", x"00", x"00", -- 0xB0
        x"00", x"00", x"00", x"00", -- 0xB4
        x"00", x"00", x"00", x"00", -- 0xB8
        x"00", x"00", x"00", x"00", -- 0xBC
        x"78", x"4E", x"87", x"55", -- 0xC0
        x"23", x"45", x"88", x"77", -- 0xC4
        x"FF", x"AA", x"CC", x"EE", -- 0xC8
        x"00", x"00", x"00", x"00", -- 0xCC
        x"00", x"00", x"00", x"00", -- 0xD0
        x"00", x"00", x"00", x"00", -- 0xD4
        x"00", x"00", x"00", x"00", -- 0xD8
        x"00", x"00", x"00", x"00"  -- 0xFC
    );
begin
    process (CLK)
    begin
        if (CLK'event and CLK = '1') then
            if (writ = '1') then
                RAM(conv_integer(unsigned(address))) <= data_in;
            else
                data_out <= RAM(conv_integer(unsigned(address)));
            end if;
        end if;
    end process;
end Arc;

