----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 19.09.2023 11:44:54
-- Design Name: 
-- Module Name: DP_Datapath - Behavioral
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

entity DP_Datapath_23375183 is
    Port ( IR_IN, DATA_IN : in STD_LOGIC_VECTOR (31 downto 0);
	   FS : in STD_LOGIC_VECTOR (4 downto 0);
	   MB, MD : in STD_LOGIC;
	   CLK, Reset, RW : in STD_LOGIC;
           DR, SA, SB : in STD_LOGIC_VECTOR (4 downto 0);
           TA, TB, TD : in STD_LOGIC_VECTOR (3 downto 0);
	   N, Z, C, V : out STD_LOGIC;
	   DATA_OUT, ADD : out STD_LOGIC_VECTOR (31 downto 0)
    );
end DP_Datapath_23375183;

architecture Behavioral of DP_Datapath_23375183 is

    -- Declaration of load signals
    signal BtoFU, FUtoD, DtoReg, RegtoB, RegtoFU : STD_LOGIC_VECTOR (31 downto 0);

    component DP_FunctionalUnit_23375183
    Port ( A, B : in STD_LOGIC_VECTOR (31 downto 0);
	   FS4 : in STD_LOGIC_VECTOR (4 downto 0);
	   N, Z, C, V : out STD_LOGIC;
	   F : out STD_LOGIC_VECTOR (31 downto 0)
    );
    end component;

    component RF_RegisterFile_23375183
    Port ( CLK, Reset, RW : in STD_LOGIC;
           DR, SA, SB : in STD_LOGIC_VECTOR (4 downto 0);
           TA, TB, TD : in STD_LOGIC_VECTOR (3 downto 0);
           D : in STD_LOGIC_VECTOR (31 downto 0);
           A, B : out STD_LOGIC_VECTOR (31 downto 0));
    end component;

    component CPU_Mux2_32bit_23375183
    Port ( S : in STD_LOGIC;
           I0, I1 : in STD_LOGIC_VECTOR (31 downto 0);
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

    FunctionalUnit : DP_FunctionalUnit_23375183 PORT MAP (
	A => RegtoFU,
	B => BtoFU,
	FS4 => FS,
	C => C,
	N => N,
	V => V,
	Z => Z,
	F => FUtoD
	);

    RegisterFile: RF_RegisterFile_23375183 PORT MAP (
	CLK => CLK,
	DR => DR,
	RW => RW,
	Reset => Reset,
	SA => SA,
	SB => SB,
	TA => TA,
	TB => TB,
	TD => TD,
	D => DtoReg,
	A => RegtoFU,
	B => RegtoB
	);

    MuxB: CPU_Mux2_32bit_23375183 PORT MAP (
	S => MB,
	I0 => RegtoB,
	I1 => IR_IN,
	Y => BtoFU
	);

    MuxD: DP_Mux2_32bit_23375183 PORT MAP (
	S => MD,
	I0 => FUtoD,
	I1 => DATA_IN,
	Y => DtoReg
	);

	DATA_OUT <= BtoFU;
	ADD <= RegtoFU;    

end Behavioral;

