----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 19.09.2023 11:44:54
-- Design Name: 
-- Module Name: DP_ZeroDetection - Behavioral
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

entity DP_ZeroDetection_23375183 is
    Port ( I : in STD_LOGIC_VECTOR (31 downto 0);
           Z : out STD_LOGIC);
end DP_ZeroDetection_23375183;

architecture Behavioral of DP_ZeroDetection_23375183 is
    
    signal or0 : std_logic_vector(15 downto 0);
    signal or1 : std_logic_vector(7 downto 0);
    signal or2 : std_logic_vector(3 downto 0);
    signal or3 : std_logic_vector(1 downto 0);
    signal or4 : std_logic;

   --  Propagation Delay according to StdentID e.g. 26 33 57 25(DEC)
   constant AND_gate_delay : Time := 4ns;      -- least significant digit 6 = 5 + 1
   constant NAND_gate_delay : Time := 9ns;     -- next more significant digit 3 = 2 + 1
   constant OR_gate_delay : Time := 2ns;       -- next more significant digit 8 = 7 + 1
   constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
   constant XOR_gate_delay : Time := 8ns;      -- next more significant digit 4 = 3 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 7 = 6 + 1
   
begin

    or0(0) <= I(0) or I(1) after OR_gate_delay;
    or0(1) <= I(2) or I(3) after OR_gate_delay;
    or0(2) <= I(4) or I(5) after OR_gate_delay;
    or0(3) <= I(6) or I(7) after OR_gate_delay;
    or0(4) <= I(8) or I(9) after OR_gate_delay;
    or0(5) <= I(10) or I(11) after OR_gate_delay;
    or0(6) <= I(12) or I(13) after OR_gate_delay;
    or0(7) <= I(14) or I(15) after OR_gate_delay;
    or0(8) <= I(16) or I(17) after OR_gate_delay;
    or0(9) <= I(18) or I(19) after OR_gate_delay;
    or0(10) <= I(20) or I(21) after OR_gate_delay;
    or0(11) <= I(22) or I(23) after OR_gate_delay;
    or0(12) <= I(24) or I(25) after OR_gate_delay;
    or0(13) <= I(26) or I(27) after OR_gate_delay;
    or0(14) <= I(28) or I(29) after OR_gate_delay;
    or0(15) <= I(30) or I(31) after OR_gate_delay;
      
    or1(0) <= or0(0) or or0(1) after OR_gate_delay;
    or1(1) <= or0(2) or or0(3) after OR_gate_delay;
    or1(2) <= or0(4) or or0(5) after OR_gate_delay;
    or1(3) <= or0(6) or or0(7) after OR_gate_delay;
    or1(4) <= or0(8) or or0(9) after OR_gate_delay;
    or1(5) <= or0(10) or or0(11) after OR_gate_delay;
    or1(6) <= or0(12) or or0(13) after OR_gate_delay;
    or1(7) <= or0(14) or or0(15) after OR_gate_delay;
    
    or2(0) <= or1(0) or or1(1) after or_gate_delay;
    or2(1) <= or1(2) or or1(3) after or_gate_delay;
    or2(2) <= or1(4) or or1(5) after or_gate_delay;
    or2(3) <= or1(6) or or1(7) after or_gate_delay;
    
    or3(0) <= or2(0) or or2(1) after or_gate_delay;
    or3(1) <= or2(2) or or2(3) after or_gate_delay;

    or4 <= or3(0) or or3(1) after or_gate_delay;
    
    Z <= not or4 after not_gate_delay;

end Behavioral;
