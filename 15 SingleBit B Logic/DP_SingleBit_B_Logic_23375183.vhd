----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 19.09.2023 11:44:54
-- Design Name: 
-- Module Name: SingleBit_B_Logic - Behavioral
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

entity DP_SingleBit_B_Logic_23375183 is
    Port ( B : in STD_LOGIC;
           S0, S1 : in STD_LOGIC;
           Y : out STD_LOGIC);
end DP_SingleBit_B_Logic_23375183;

architecture Behavioral of DP_SingleBit_B_Logic_23375183 is

    signal S0andB, S1andBn, notB : std_logic;

   --  Propagation Delay according to StdentID e.g. 26 33 57 25(DEC)
   constant AND_gate_delay : Time := 4ns;      -- least significant digit 6 = 5 + 1
   constant NAND_gate_delay : Time := 9ns;     -- next more significant digit 3 = 2 + 1
   constant OR_gate_delay : Time := 2ns;       -- next more significant digit 8 = 7 + 1
   constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
   constant XOR_gate_delay : Time := 8ns;      -- next more significant digit 4 = 3 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 7 = 6 + 1
   
begin
    notB <= not B after NOT_Gate_delay;
    S0andB <= S0 and B after AND_Gate_delay;
    S1andBn <= S1 and notB after NAND_Gate_delay;
    
    Y <= S0andB or S1andBn after OR_gate_delay;

end Behavioral;
