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

-- Cuando PC_inc está en uno, agrega 1 a la cuenta
-- Cuando PC_load está en 1, la cuenta guarda lo que hay en el bus de datos
architecture ARC of PC is
    signal cuenta : unsigned(7 downto 0);
    signal prev_increment : std_logic := '0';

begin
    process (clk, RST)
    begin
        if RST = '1' then
            cuenta <= (others => '0');
        elsif rising_edge(clk) then
            if PC_inc = '1' and prev_increment = '0' then
                cuenta <= cuenta + 1;
            elsif PC_load = '1' then
                cuenta <= unsigned(B2);
            end if;
            prev_increment <= PC_inc;
        end if;
    end process;

    PC_out <= std_logic_vector(cuenta);
end ARC;

