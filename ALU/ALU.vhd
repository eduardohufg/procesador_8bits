library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU is
    Port (
        A, B : in STD_LOGIC_VECTOR(7 downto 0);
        Sel : in STD_LOGIC_VECTOR(7 downto 0);
        Out_ALU : out STD_LOGIC_VECTOR(7 downto 0);
		  Flags: out std_LOGIC_VECTOR(3 downto 0)
    );
end ALU;

architecture Behavioral of ALU is
    signal TempResult : STD_LOGIC_VECTOR(8 downto 0); -- Extendido para manejar carry
begin
    -- Lógica de la ALU
    process(A, B, Sel)
    begin
        case Sel is
            when X"40" =>
                TempResult <= std_logic_vector(resize(signed(A), 9) + resize(signed(B), 9));
            when X"41" =>
                TempResult <= std_logic_vector(resize(signed(A), 9) - resize(signed(B), 9));
            when X"42" =>
                TempResult(7 downto 0) <= A and B;
                TempResult(8) <= '0';
            when X"43" =>
                TempResult(7 downto 0) <= A or B;
                TempResult(8) <= '0';
            when X"44" =>
                TempResult(7 downto 0) <= A xor B;
                TempResult(8) <= '0';
            when X"45" =>
                TempResult <= std_logic_vector(resize(signed(A), 9) + 1);
            when X"46" =>
                TempResult <= std_logic_vector(resize(signed(B), 9) + 1);
            when X"47" =>
                TempResult <= std_logic_vector(resize(signed(A), 9) - 1);
            when X"48" =>
                TempResult <= std_logic_vector(resize(signed(B), 9) - 1);
            when X"50" =>
                TempResult(7 downto 0) <= not A;
                TempResult(8) <= '0';
            when X"51" =>
                TempResult(7 downto 0) <= not B;
                TempResult(8) <= '0';
            when others =>
                TempResult <= (others => '0');
        end case;

        -- Asignación del resultado y manejo de banderas
        Out_ALU <= TempResult(7 downto 0);
		   if TempResult(7 downto 0) = "00000000" then
				flags(0) <= '1';
			else
				flags(0) <= '0';
			end if;

        flags(1) <= TempResult(8);
        flags(2) <= '0';
        flags(3) <= TempResult(7);  -- Bit más significativo para negativo
    end process;
end Behavioral;

