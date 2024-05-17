library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALUU is
    port (
        A, B: in std_logic_vector(7 downto 0);
        Sel: in std_logic_vector(7 downto 0);
        signals: out std_logic_vector(3 downto 0);
        Out_ALU: out std_logic_vector(7 downto 0)
    );
end entity;

architecture RLT of ALUU is
    component Sumador8 is
        port (
            A, B: in std_logic_vector(7 downto 0);
            Cin: in std_logic;
            S: out std_logic_vector(7 downto 0);
            Co: out std_logic;
            OverFlow: out std_logic
        );
    end component;

    component resta is
        port (
            A, B: in std_logic_vector(7 downto 0);
            Bin: in std_logic;
            resultado: out std_logic_vector(7 downto 0);
            Bout: out std_logic;
            OverFlow: out std_logic
        );
    end component;

    signal Suma_AB, Resta_AB, Inc_A, Inc_B, Dec_A, Dec_B, AandB, AorB, AxorB, ANot, BNot: std_logic_vector(7 downto 0);
    signal CoS, Bo: std_logic;
    -- Carry Out y Borrow
    signal CoIn_A, CoIn_B, BoDec_A, BoDec_B: std_logic;
    -- OverFlow
    signal ovfSum_AB, ovfIn_A, ovfIn_B, ovfres_AB, ovfDec_A, ovfDec_B: std_logic;
    -- Salida
    signal Salida: std_logic_vector(7 downto 0);

begin
    I0: Sumador8 port map (A, B, '0', Suma_AB, CoS, ovfSum_AB);
    I1: resta port map (A, B, '0', Resta_AB, Bo, ovfres_AB);
    I2: Sumador8 port map (A, "00000001", '0', Inc_A, CoIn_A, ovfIn_A);
    I3: Sumador8 port map (B, "00000001", '0', Inc_B, CoIn_B, ovfIn_B);
    I4: resta port map (A, "00000001", '0', Dec_A, BoDec_A, ovfDec_A);
    I5: resta port map (B, "00000001", '0', Dec_B, BoDec_B, ovfDec_B);
    AandB <= A and B;
    AorB <= A or B;
    AxorB <= A xor B;
    ANot <= not(A);
    BNot <= not(B);

    with Alu_Sel select
        Salida <=
            Suma_AB when x"40",
            Resta_AB when x"41",
            AandB when x"42",
            AorB when x"43",
            AxorB when x"44",
            Inc_A when x"45",
            Inc_B when x"46",
            Dec_A when x"47",
            Dec_B when x"48",
            ANot when x"49",
            BNot when x"4A",
            "00000000" when others;

    Carry: process (Alu_Sel)
    begin
        if ((Alu_Sel = x"40") or (Alu_Sel = x"45") or (Alu_Sel = x"46")) then
            if (Alu_Sel = x"40") then
                NZVC(0) <= CoS;
            elsif (Alu_Sel = x"45") then
                NZVC(0) <= CoIn_A;
            elsif (Alu_Sel = x"46") then
                NZVC(0) <= CoIn_B;
            end if;
        else
            NZVC(0) <= '0';
        end if;
    end process;

    Negativo: process (Alu_Sel)
    begin
        if ((Alu_Sel = x"41") or (Alu_Sel = x"47") or (Alu_Sel = x"48")) then
            if (Alu_Sel = x"41") then
                NZVC(3) <= Bo;
            elsif (Alu_Sel = x"47") then
                NZVC(3) <= BoDec_A;
            elsif (Alu_Sel = x"48") then
                NZVC(3) <= BoDec_B;
            end if;
        else
            NZVC(3) <= '0';
        end if;
    end process;

    NZVC(2) <= not((((Salida(0)) or (Salida(1))) or ((Salida(2)) or (Salida(3)))) or (((Salida(4)) or (Salida(5))) or ((Salida(6)) or (Salida(7)))));

    Overflow: process (Alu_Sel)
    begin
        if ((Alu_Sel = x"41") or (Alu_Sel = x"47") or (Alu_Sel = x"48") or (Alu_Sel = x"40") or (Alu_Sel = x"45") or (Alu_Sel = x"46")) then
            if (Alu_Sel = x"41") then
                NZVC(1) <= ovfres_AB;
            elsif (Alu_Sel = x"47") then
                NZVC(1) <= ovfDec_A;
            elsif (Alu_Sel = x"48") then
                NZVC(1) <= ovfDec_B;
            elsif (Alu_Sel = x"40") then
                NZVC(1) <= ovfSum_AB;
            elsif (Alu_Sel = x"45") then
                NZVC(1) <= ovfIn_A;
            elsif (Alu_Sel = x"46") then
                NZVC(1) <= ovfIn_B;
            end if;
        else
            NZVC(1) <= '0';
        end if;
    end process;

    Out_ALU <= Salida;
end architecture;
