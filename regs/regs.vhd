library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity regs is
port (
    RST, CLK : in std_logic;
    BUS_2 : in std_logic_vector(7 downto 0);
    A_load, B_load, CCR_load, IR_load, MAR_load : in std_logic;
    CCR_in : in std_logic_vector(3 downto 0);
    A_reg, B_reg, IR_reg, MAR_reg : out std_logic_vector(7 downto 0);
    CCR_reg : out std_logic_vector(3 downto 0)
);
end entity;

architecture ARC of regs is
begin
    A: process(CLK, RST)
    begin
        if RST = '1' then
            A_reg <= x"00";
        elsif (CLK'event and CLK = '1') then
            if A_load = '1' then
                A_reg <= BUS_2;
            end if;
        end if;
    end process;

    B: process(CLK, RST)
    begin
        if RST = '1' then
            B_reg <= x"00";
        elsif (CLK'event and CLK = '1') then
            if B_load = '1' then
                B_reg <= BUS_2;
            end if;
        end if;
    end process;

    CCR: process(CLK, RST)
    begin
        if RST = '1' then
            CCR_reg <= x"0";
        elsif (CLK'event and CLK = '1') then
            if CCR_load = '1' then
                CCR_reg <= CCR_in;
            end if;
        end if;
    end process;

    IR: process(CLK, RST)
    begin
        if RST = '1' then
            IR_reg <= x"00";
        elsif (CLK'event and CLK = '1') then
            if IR_load = '1' then
                IR_reg <= BUS_2;
            end if;
        end if;
    end process;

    MAR: process(CLK, RST)
    begin
        if RST = '1' then
            MAR_reg <= x"00";
        elsif (CLK'event and CLK = '1') then
            if MAR_load = '1' then
                MAR_reg <= BUS_2;
            end if;
        end if;
    end process;
end architecture;
