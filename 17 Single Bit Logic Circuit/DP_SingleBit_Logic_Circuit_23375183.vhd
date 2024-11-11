----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 19.09.2023 11:44:54
-- Design Name: 
-- Module Name: SingleBit_Logic_Circuit - Behavioral
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

entity DP_SingleBit_Logic_Circuit_23375183 is
    Port ( A, B : in STD_LOGIC;
           S0, S1 : in STD_LOGIC;
           G : out STD_LOGIC);
end DP_SingleBit_Logic_Circuit_23375183;

architecture Behavioral of DP_SingleBit_Logic_Circuit_23375183 is

    signal notA, S0not, S1not, ABand, ABor, ABandS0notand, ABorS0and, ABxor, ABxorS0notand, ABororand, ABS1notandand, or4, and41, and42, or5, and5 : STD_LOGIC;

   --  Propagation Delay according to StdentID e.g. 26 33 57 25(DEC)
   constant AND_gate_delay : Time := 4ns;      -- least significant digit 6 = 5 + 1
   constant NAND_gate_delay : Time := 9ns;     -- next more significant digit 3 = 2 + 1
   constant OR_gate_delay : Time := 2ns;       -- next more significant digit 8 = 7 + 1
   constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
   constant XOR_gate_delay : Time := 8ns;      -- next more significant digit 4 = 3 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 7 = 6 + 1
   
begin
    notA <= not A after NOT_gate_delay;
    S0not <= not S0 after NOT_gate_delay;
    S1not <= not S1 after NOT_gate_delay;
    ABand <= A and B after AND_gate_delay;
    ABor <= A or B after AND_gate_delay;
    ABandS0notand <= ABand and S0not after AND_gate_delay;
    ABorS0and <= ABor and S0 after AND_gate_delay;
    ABxor <= A xor B after XOR_gate_delay;
    ABxorS0notand <= ABxor and S0not after AND_gate_delay;
    ABororand <= ABorS0and and S1not after AND_gate_delay;
    ABS1notandand <= ABandS0notand and S1not after AND_gate_delay;
    or4 <= ABororand or ABS1notandand after OR_gate_delay;
    and41 <= S1 and ABxorS0notand after AND_gate_delay;
    and42 <= S0 and notA after AND_gate_delay;
    or5 <= and41 or or4 after OR_gate_delay;
    and5 <= S1 and and42 after AND_gate_delay;

    G <= or5 or and5 after OR_gate_delay;

end Behavioral;
