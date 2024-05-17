library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Memory is
    port (
        CLK, RST, writ: in std_logic;
        address, data_in: in std_logic_vector(7 downto 0);
        -- Puertos de entrada
        port_in_00, port_in_01, port_in_02, port_in_03,
        port_in_04, port_in_05, port_in_06, port_in_07,
        port_in_08, port_in_09, port_in_10, port_in_11,
        port_in_12, port_in_13, port_in_14, port_in_15: in std_logic_vector(7 downto 0);
        data_out: out std_logic_vector(7 downto 0);
        -- Puertos de salida
        port_out_00, port_out_01, port_out_02, port_out_03,
        port_out_04, port_out_05, port_out_06, port_out_07,
        port_out_08, port_out_09, port_out_10, port_out_11,
        port_out_12, port_out_13, port_out_14, port_out_15: out std_logic_vector(7 downto 0)
    );
end entity;

architecture Arc of Memory is
    Component ProgramMemory is
        port (
            CLK: in std_logic;
            address: in std_logic_vector(7 downto 0);
            data_out: out std_logic_vector(7 downto 0)
        );
    end Component;

    Component DataMemory is
        port (
            writ, CLK: in std_logic;
            data_in, address: in std_logic_vector(7 downto 0);
            data_out: out std_logic_vector(7 downto 0)
        );
    end Component;

    Component OutputPort is
        port (
            writ, CLK, RST: in std_logic;
            data_in, address: in std_logic_vector(7 downto 0);
            port_out_00, port_out_01, port_out_02, port_out_03,
            port_out_04, port_out_05, port_out_06, port_out_07,
            port_out_08, port_out_09, port_out_10, port_out_11,
            port_out_12, port_out_13, port_out_14, port_out_15: out std_logic_vector(7 downto 0)
        );
    end Component;

    Component Multiplexor is
        port (
            address: in std_logic_vector(7 downto 0);
            port_in_00, port_in_01, port_in_02, port_in_03,
            port_in_04, port_in_05, port_in_06, port_in_07,
            port_in_08, port_in_09, port_in_10, port_in_11,
            port_in_12, port_in_13, port_in_14, port_in_15: in std_logic_vector(7 downto 0);
            rom_out, ram_out: in std_logic_vector(7 downto 0);
            data_out: out std_logic_vector(7 downto 0)
        );
    end Component;

    signal rom_out, ram_out: std_logic_vector(7 downto 0);
    signal ram_address, rom_address: std_logic_vector(7 downto 0);
    
begin
    ram_address <= (address - 128); -- Data
    rom_address <= (address - 224); -- AddressOut
    progmem: ProgramMemory port map (CLK, address, ram_out);
    datamm: DataMemory port map (writ, CLK, data_in, ram_address, rom_out);
    ports: OutputPort port map (
        writ, CLK, RST, data_in, rom_address,
        port_out_00, port_out_01, port_out_02, port_out_03,
        port_out_04, port_out_05, port_out_06, port_out_07,
        port_out_08, port_out_09, port_out_10, port_out_11,
        port_out_12, port_out_13, port_out_14, port_out_15
    );
    mux: Multiplexor port map (
        address, port_in_00, port_in_01, port_in_02, port_in_03,
        port_in_04, port_in_05, port_in_06, port_in_07,
        port_in_08, port_in_09, port_in_10, port_in_11,
        port_in_12, port_in_13, port_in_14, port_in_15, ram_out, rom_out, data_out
    );
end Arc;
