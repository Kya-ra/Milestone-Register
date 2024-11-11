----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 19.09.2023 11:44:54
-- Design Name: 
-- Module Name: TestRegisterFile_32_15 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RF_Test_RegisterFile_32_15_23375183 is
    Port ( CLK_Test, RW_Test, Reset_Test : in STD_LOGIC;
            DR_Test, SA_Test, SB_Test : in STD_LOGIC_VECTOR (4 downto 0);
	        TA_Test, TB_Test, TD_Test : in STD_LOGIC_VECTOR (3 downto 0);
            D_Test : in STD_LOGIC_VECTOR (31 downto 0);
            A_B_DataIN_Test : in STD_LOGIC_VECTOR (1 downto 0)
    );
end RF_Test_RegisterFile_32_15_23375183;

architecture Behavioral of RF_Test_RegisterFile_32_15_23375183 is

    -- Declaration of load signals
    signal A, B, Z : STD_LOGIC_VECTOR (31 downto 0);
    
    component RF_RegisterFile_32_15_23375183
    Port ( CLK, Reset, RW : in STD_LOGIC;
           DR, SA, SB : in STD_LOGIC_VECTOR (4 downto 0);
           TA, TB, TD : in STD_LOGIC_VECTOR (3 downto 0);
           D : in STD_LOGIC_VECTOR (31 downto 0);
           A, B : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component Mux3_32bit_23375183
    Port ( IN00, IN01, IN02 : in STD_LOGIC_VECTOR (31 downto 0);
            S: in STD_LOGIC_VECTOR (1 downto 0);
            Y : out STD_LOGIC_VECTOR (31 downto 0));
    end component;

    -- Propagation delays
    constant AND_gate_delay : Time := 4ns;
    constant NAND_gate_delay : Time := 9ns;
    constant OR_gate_delay : Time := 2ns;
    constant NOR_gate_delay : Time := 6ns;
    constant XOR_gate_delay : Time := 8ns;
    constant XNOR_gate_delay : Time := 4ns;
    constant NOT_gate_delay : Time := 4ns;
   
begin
       
    -- Decoder instance
    mux3: Mux3_32bit_23375183 PORT MAP (
        S => A_B_DataIN_Test,
        IN00 => A,
        IN01 => B,
        IN02 => D_Test,
        Y => Z
    );

    RegFile: RF_RegisterFile_32_15_23375183 PORT MAP (
        CLK => CLK_Test,
        D => Z,
        DR => DR_Test,
        RW => RW_Test,
        Reset => Reset_Test,
        SA => SA_Test,
        SB => SB_Test,
        TA => TA_Test,
        TB => TB_Test,
        TD => TD_Test,
        A => A,
        B => B
    );
    
end Behavioral;

