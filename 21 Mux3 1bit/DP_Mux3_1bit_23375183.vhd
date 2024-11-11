----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 19.09.2023 11:44:54
-- Design Name: 
-- Module Name: Mux3_1bit - Behavioral
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

entity DP_Mux3_1bit_23375183 is
    Port ( Bi, slBi, srBi : in STD_LOGIC;
           S1, S2 : in STD_LOGIC;
           Y : out STD_LOGIC);
end DP_Mux3_1bit_23375183;

architecture Behavioral of DP_Mux3_1bit_23375183 is

    signal S1_not, S2_not : std_logic;
    
    signal and00, and01, and02 :std_logic; 

    signal and10, and11, and12 :std_logic;

    signal lor20: std_logic;

   --  Propagation Delay according to StdentID e.g. 26 33 57 25(DEC)
   constant AND_gate_delay : Time := 4ns;      -- least significant digit 6 = 5 + 1
   constant NAND_gate_delay : Time := 9ns;     -- next more significant digit 3 = 2 + 1
   constant OR_gate_delay : Time := 2ns;       -- next more significant digit 8 = 7 + 1
   constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
   constant XOR_gate_delay : Time := 8ns;      -- next more significant digit 4 = 3 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 7 = 6 + 1
   
begin
    S1_not <= not S1 after NOT_gate_delay;
    S2_not <= not S2 after NOT_gate_delay;

    and00 <= S1_not and S2_not after AND_gate_delay;
    and01 <= S1 and S2_not after AND_gate_delay;
    and02 <= S1_not and S2 after AND_gate_delay;

    and10 <= and00 and Bi after AND_gate_delay;
    and11 <= and01 and srBi after AND_gate_delay;
    and12 <= and02 and slBi after AND_gate_delay;

    lor20 <= and10 or and11 after OR_gate_delay;
    
    Y <= lor20 or and12 after OR_gate_delay;

end Behavioral;
