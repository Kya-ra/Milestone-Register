----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 19.09.2023 11:44:54
-- Design Name: 
-- Module Name: DP_ALU - Behavioral
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

entity DP_ALU_23375183 is
    Port ( C_IN, S0, S1, S2 : in STD_LOGIC;
            A, B : in STD_LOGIC_VECTOR (31 downto 0);
	    C, V : out STD_LOGIC;
	    G : out STD_LOGIC_VECTOR (31 downto 0));
end DP_ALU_23375183;

architecture Behavioral of DP_ALU_23375183 is

    -- Declaration of load signals
    signal YtoAdderB, logictoMux, rcasum : STD_LOGIC_VECTOR (31 downto 0);

    
    component DP_32Bit_B_Logic_23375183
    Port ( S0, S1 : in STD_LOGIC;
           B : in STD_LOGIC_VECTOR (31 downto 0);
           Y : out STD_LOGIC_VECTOR (31 downto 0));
    end component;

    component DP_RippleCarryAdder32bit_23375183
    Port ( C_IN : in STD_LOGIC;
           A, B : in STD_LOGIC_VECTOR (31 downto 0);
           SUM : out STD_LOGIC_VECTOR (31 downto 0);
	       C_OUT, V: out STD_LOGIC);
    end component;

    component DP_32Bit_Logic_Circuit_23375183
    Port ( S0, S1 : in STD_LOGIC;
           A, B : in STD_LOGIC_VECTOR (31 downto 0);
           G : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component DP_Mux2_32bit_23375183
    Port ( I0, I1 : in STD_LOGIC_VECTOR (31 downto 0);
            S: in STD_LOGIC;
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
       
    BLogic: DP_32Bit_B_Logic_23375183 PORT MAP (
	B => B,
	S0 => S0,
	S1 => S1,
	Y => YtoAdderB
	);

    LogicCircuit: DP_32Bit_Logic_Circuit_23375183 PORT MAP (
	A => A,
	B => B,
	S0 => S0,
	S1 => S1,
	G => logictoMux
	);

    Adder: DP_RippleCarryAdder32bit_23375183 PORT MAP (
	A => A,
	B => YtoAdderB,
	C_IN => C_IN,
	C_OUT => C,
	V => V,
	SUM => rcasum
	);

    ALUMux: DP_Mux2_32bit_23375183 PORT MAP (
	I0 => rcasum,
	I1 => logictoMux,
	S => S2,
	Y => G
    );
    
end Behavioral;

