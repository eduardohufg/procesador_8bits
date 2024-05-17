library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PC is
    port (
        CLK : in std_logic;
        RST : in std_logic;
        PC_inc : in std_logic;
        PC_load : in std_logic;
        B2 : in std_logic_vector(7 downto 0);
        PC_out : out std_logic_vector(7 downto 0)
    );
end PC;

architecture ARC of PC is
    signal cuenta : unsigned(7 downto 0);
begin
    process (CLK, RST)
    begin
        if RST = '1' then
            cuenta <= (others => '0');
        elsif rising_edge(CLK) then
            if PC_load = '1' then
                cuenta <= unsigned(B2);
            elsif PC_inc = '1' then
                cuenta <= cuenta + 1;
            end if;
        end if;
    end process;
    PC_out <= std_logic_vector(cuenta);
end ARC;
