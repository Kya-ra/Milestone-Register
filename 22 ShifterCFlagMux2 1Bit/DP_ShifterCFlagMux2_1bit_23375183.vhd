----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 19.09.2023 11:44:54
-- Design Name: 
-- Module Name: ShifterCFlagMux2_1bit - Behavioral
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

entity DP_ShifterCFlagMux2_1bit_23375183 is
    Port ( MSB, LSB : in STD_LOGIC;
           S1, S2 : in STD_LOGIC;
           C : out STD_LOGIC);
end DP_ShifterCFlagMux2_1bit_23375183;

architecture Behavioral of DP_ShifterCFlagMux2_1bit_23375183 is

    signal and1L, and2M : STD_LOGIC;

   --  Propagation Delay according to StdentID e.g. 26 33 57 25(DEC)
   constant AND_gate_delay : Time := 4ns;      -- least significant digit 6 = 5 + 1
   constant NAND_gate_delay : Time := 9ns;     -- next more significant digit 3 = 2 + 1
   constant OR_gate_delay : Time := 2ns;       -- next more significant digit 8 = 7 + 1
   constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
   constant XOR_gate_delay : Time := 8ns;      -- next more significant digit 4 = 3 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 7 = 6 + 1
   
begin

    and1L <= LSB and S1 after AND_gate_delay;
    and2M  <= MSB and S2 after AND_gate_delay;
    
    C <= and1L or and2M after OR_gate_delay;

end Behavioral;
