library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ProgramMemory is
    port (
        CLK: in std_logic;
        address: in std_logic_vector(7 downto 0);
        data_out: out std_logic_vector(7 downto 0)
    );
    -- Transferencia de datos
    constant LOAD_INM_A: STD_LOGIC_VECTOR(7 downto 0) := x"86"; -- Carga inmediata en A
    constant LOAD_INM_B: STD_LOGIC_VECTOR(7 downto 0) := x"87"; -- Carga inmediata en B
    constant LOAD_DIR_A: STD_LOGIC_VECTOR(7 downto 0) := x"88"; -- Carga direccion en A
    constant LOAD_DIR_B: STD_LOGIC_VECTOR(7 downto 0) := x"89"; -- Carga direccion en B
    constant STORE_A: STD_LOGIC_VECTOR(7 downto 0) := x"96"; -- Guarda A en direccion
    constant STORE_B: STD_LOGIC_VECTOR(7 downto 0) := x"97"; -- Guarda B en direccion
    -- Operaciones Aritmetico_logicas
    constant ADD_AB: STD_LOGIC_VECTOR(7 downto 0) := x"40"; -- Suma A + B
    constant SUB_AB: STD_LOGIC_VECTOR(7 downto 0) := x"41"; -- Resta A - B
    constant AND_AB: STD_LOGIC_VECTOR(7 downto 0) := x"42"; -- A AND B
    constant OR_AB: STD_LOGIC_VECTOR(7 downto 0) := x"43"; -- A OR B
    constant XOR_AB: STD_LOGIC_VECTOR(7 downto 0) := x"44"; -- A XOR B
    constant INC_A: STD_LOGIC_VECTOR(7 downto 0) := x"45"; -- INC A | A=A+1
    constant INC_B: STD_LOGIC_VECTOR(7 downto 0) := x"46"; -- INC B | B=B+1
    constant DEC_A: STD_LOGIC_VECTOR(7 downto 0) := x"47"; -- DEC A | A=A-1
    constant DEC_B: STD_LOGIC_VECTOR(7 downto 0) := x"48"; -- DEC B | B=B-1
    constant NOT_A: STD_LOGIC_VECTOR(7 downto 0) := x"50"; -- NEG A => Comp1 A
    constant NOT_B: STD_LOGIC_VECTOR(7 downto 0) := x"51"; -- NEG B => Comp2 B
    -- Saltos
    constant JMP: STD_LOGIC_VECTOR(7 downto 0) := x"20"; -- Salto incondicional a direccion
    constant JN: STD_LOGIC_VECTOR(7 downto 0) := x"21"; -- Salto a direccion si N=1
    constant JNN: STD_LOGIC_VECTOR(7 downto 0) := x"22"; -- Salto a direccion si N=0
    constant JZ: STD_LOGIC_VECTOR(7 downto 0) := x"23"; -- Salto a direccion si Z=1 / JE
    constant JNZ: STD_LOGIC_VECTOR(7 downto 0) := x"24"; -- Salto a direccion si Z=0 / JNE
    constant JOV: STD_LOGIC_VECTOR(7 downto 0) := x"25"; -- Salto a direccion si V=1
    constant JNOV: STD_LOGIC_VECTOR(7 downto 0) := x"26"; -- Salto a direccion si V=0
    constant JC: STD_LOGIC_VECTOR(7 downto 0) := x"27"; -- Salto a direccion si C=1
    constant JNC: STD_LOGIC_VECTOR(7 downto 0) := x"28"; -- Salto a direccion si C=0
end entity;

architecture Arc of ProgramMemory is
    type ProgramMemory is array (0 to 127) of std_logic_vector (7 downto 0);
    signal ROM: ProgramMemory := (
        0 => LOAD_DIR_A,
        1 => x"F0",
		  2 => LOAD_iNM_B,
		  3 => X"02",
		  4 => ADD_AB,
		  5 => STORE_A,
		  6 => X"E0",
		  7 => JMP,
		  8 => X"00",
        
        OTHERS => x"00"
    );
begin
    process (CLK)
    begin
        if (CLK'event and CLK = '1') then
            data_out <= ROM(conv_integer(unsigned(address)));
        end if;
    end process;
end Arc;
