----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 19.09.2023 11:44:54
-- Design Name: 
-- Module Name: DP_FunctionalUnit - Behavioral
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

entity DP_FunctionalUnit_23375183 is
    Port ( A, B : in STD_LOGIC_VECTOR (31 downto 0);
	   FS4 : in STD_LOGIC_VECTOR (4 downto 0);
	    N, Z, C, V : out STD_LOGIC;
	    F : out STD_LOGIC_VECTOR (31 downto 0)
    );
end DP_FunctionalUnit_23375183;

architecture Behavioral of DP_FunctionalUnit_23375183 is

    -- Declaration of load signals
    signal shiftOutput, aluOutput, finalOutput : STD_LOGIC_VECTOR (31 downto 0);
    signal carryShift, carryAlu : STD_LOGIC;

    
    component DP_Shifter_23375183
    Port ( S1, S2 : in STD_LOGIC;
           B : in STD_LOGIC_VECTOR (31 downto 0);
	   C : out STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (31 downto 0));
    end component;

    component DP_ALU_23375183
    Port ( S0, S1, S2, C_IN : in STD_LOGIC;
           A, B : in STD_LOGIC_VECTOR (31 downto 0);
           G : out STD_LOGIC_VECTOR (31 downto 0);
	   C, V: out STD_LOGIC);
    end component;

    component CPU_Mux2_32bit_23375183
    Port ( S : in STD_LOGIC;
           I0, I1 : in STD_LOGIC_VECTOR (31 downto 0);
           Y : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component DP_CFlagMux2_1bit_23375183
    Port ( C_ALU, C_Shift, FS4 : in STD_LOGIC;
            C : out STD_LOGIC);
    end component;

    component DP_ZeroDetection_23375183
    Port ( I : in STD_LOGIC_VECTOR (31 downto 0);
            Z : out STD_LOGIC);
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
       
    Shifter: DP_Shifter_23375183 PORT MAP (
	B => B,
	S1 => FS4(2),
	S2 => FS4(3),
	C => carryShift,
	Y => shiftOutput
	);

    ALU: DP_ALU_23375183 PORT MAP (
	A => A,
	B => B,
	C_IN => FS4(0),
	S0 => FS4(1),
	S1 => FS4(2),
	S2 => FS4(3),
	C => carryAlu,
	G => aluOutput,
	V => V
	);

    MuxF: CPU_Mux2_32bit_23375183 PORT MAP (
	S => FS4(4),
	I0 => aluOutput,
	I1 => shiftOutput,
	Y => finalOutput
	);

    C_Flag: DP_CFlagMux2_1bit_23375183 PORT MAP (
	C_ALU => carryAlu,
	C_Shift => carryShift,
	FS4 => FS4(4),
	C => C
    );

    Z_Flag: DP_ZeroDetection_23375183 PORT MAP (
	I => finalOutput,
	Z => Z	
    );

	F <= finalOutput;
	N <= finalOutput(31);
    
end Behavioral;

