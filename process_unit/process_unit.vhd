library ieee;
use ieee.std_logic_1164.all;

entity process_unit is
    port (
        CLK, RST: in std_logic;
        From_Memory: in std_logic_vector(7 downto 0);
        writ: out std_logic;
        Address, To_Memory: out std_logic_vector(7 downto 0)
    );
end entity;

architecture RTL of process_unit is
    -- Componente de la unidad de control
    component mestados_p is
        port (
            Start, CLK, RST: in std_logic;
            IR: in std_logic_vector(7 downto 0);
            CCR_Result: in std_logic_vector(3 downto 0);
            IR_Load, MAR_Load, PC_Load, PC_Inc, A_Load: out std_logic;
            B_Load, CCR_Load, wr: out std_logic;
            Bus2_Sel, Bus1_Sel: out std_logic_vector(1 downto 0);
            ALU_Select: out std_logic_vector(7 downto 0)
        );
    end component;

    -- Componente del datapath
    component data_path is
        port (
            CLK, RST: in std_logic;
            IR_Load, MAR_Load, PC_Load, PC_Inc, A_Load, B_Load, CCR_Load: in std_logic;
            Bus2_Sel, Bus1_Sel: in std_logic_vector(1 downto 0);
            ALU_Sel: in std_logic_vector(7 downto 0);
				From_Memory: in std_logic_vector(7 downto 0);
            CCR_Result, flags: out std_logic_vector(3 downto 0);
            IR_Out, Address, To_Memory: out std_logic_vector(7 downto 0);
            BUS1_1, BUS2_2, PC_C, A_A, B_B: out std_logic_vector(7 downto 0)
        );
    end component;

    -- Señales internas
    signal IR: std_logic_vector(7 downto 0);
	 signal ALU_Sel: std_logic_vector(7 downto 0);
    signal CCR_Result: std_logic_vector(3 downto 0);
    signal Bus2_Sel, Bus1_Sel: std_logic_vector(1 downto 0);
    signal IR_Load, MAR_Load, PC_Load, PC_Inc, A_Load, B_Load, CCR_Load: std_logic;
    signal BUUUS1, BUUUS2, PCCC, IRRR, AAA, BBB: std_logic_vector(7 downto 0);
    signal NZVC: std_logic_vector(3 downto 0);

begin
    -- Instanciación de la unidad de control
    C1: mestados_p port map (
        '1', CLK, RST, IR, CCR_Result, IR_Load, MAR_Load, PC_Load, PC_Inc,
        A_Load, B_Load, CCR_Load, writ, Bus2_Sel, Bus1_Sel, ALU_Sel
    );

    -- Instanciación del datapath
    C2: data_path port map (
        CLK, RST, IR_Load, MAR_Load, PC_Load, PC_Inc, A_Load, B_Load, CCR_Load,
        Bus2_Sel, Bus1_Sel, ALU_Sel, From_Memory, CCR_Result, NZVC, IR, Address,
        To_Memory, BUUUS1, BUUUS2, PCCC, AAA, BBB
    );
end architecture RTL;
