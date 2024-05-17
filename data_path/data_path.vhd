library ieee;
use ieee.std_logic_1164.all;

entity data_path is
    port (
        CLK, RST: in std_logic;
        IR_Load, MAR_Load, PC_Load, PC_Inc, A_Load, B_Load, CCR_Load: in std_logic;
        Bus2_Sel, Bus1_Sel: in std_logic_vector(1 downto 0);
        ALU_Sel: in std_logic_vector(7 downto 0);
		  From_Memory: in std_LOGIC_VECTOR(7 downto 0);
        CCR_Result, flags: out std_logic_vector(3 downto 0);
        IR_Out, Address, To_Memory: out std_logic_vector(7 downto 0);
        BUS1_1, BUS2_2, PC_C, A_A, B_B: out std_logic_vector(7 downto 0)
    );
end entity;

architecture RTL of data_path is
    -- Componentes
    component regs is
        port (
            RST, CLK : in std_logic;
				BUS_2 : in std_logic_vector(7 downto 0);
				A_load, B_load, CCR_load, IR_load, MAR_load : in std_logic;
				CCR_in : in std_logic_vector(3 downto 0);
				A_reg, B_reg, IR_reg, MAR_reg : out std_logic_vector(7 downto 0);
				CCR_reg : out std_logic_vector(3 downto 0)
        );
    end component;

    component PC is
        port (
            CLK, RST : in std_logic;
            PC_inc, PC_load : in std_logic;
            B2 : in std_logic_vector(7 downto 0);
            PC_out : out std_logic_vector(7 downto 0)
        );
    end component;

    component ALU is
        port (
            A, B : in STD_LOGIC_VECTOR(7 downto 0);
				Sel : in STD_LOGIC_VECTOR(7 downto 0);
				Out_ALU : out STD_LOGIC_VECTOR(7 downto 0);
				Flags: out std_LOGIC_VECTOR(3 downto 0)
        );
    end component;

    -- Señales internas
    signal BUS1, BUS2, MUX1_1, MUX1_2, MUX1_3, MUX2_1, MUX2_2, MUX2_3: std_logic_vector(7 downto 0);
    signal CCR_In: std_logic_vector(3 downto 0);

begin
    -- Mapeo de componentes
    C1: PC port map(CLK, RST, PC_Inc, PC_Load, BUS2, MUX1_1);
    C2: ALU port map(MUX1_3, BUS1, ALU_Sel, MUX2_1, CCR_In);
    CR: regs port map(RST, CLK, BUS2, A_Load, B_Load, CCR_Load, IR_Load, MAR_Load, CCR_In, MUX1_2, MUX1_3, IR_Out, Address, CCR_Result);

    -- Selectores de bus
    with Bus1_Sel select
        BUS1 <= MUX1_1 when "00",
                MUX1_2 when "01",
                MUX1_3 when "10",
                null when "11";  -- Uso de '-' para casos no válidos

    with Bus2_Sel select
        BUS2 <= MUX2_1 when "00",
                BUS1 when "01",
                From_Memory when "10",
                null when "11";  -- Uso de '-' para casos no válidos

    -- Asignaciones directas
    To_Memory <= BUS1;
    A_A <= MUX1_2;
    B_B <= MUX1_3;
    BUS1_1 <= BUS1;
    BUS2_2 <= BUS2;
    PC_C <= MUX1_1;
    flags <= CCR_In;
end architecture RTL;
