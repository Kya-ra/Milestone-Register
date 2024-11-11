----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 19.09.2023 11:44:54
-- Design Name: 
-- Module Name: Mux32_1bit - Behavioral
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

entity Mux32_1bit_23375183 is
    Port ( I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15,
           I16, I17, I18, I19, I20, I21, I22, I23, I24, I25, I26, I27, I28, I29, I30, I31 : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (4 downto 0);
           Y : out STD_LOGIC);
end Mux32_1bit_23375183;

architecture Behavioral of Mux32_1bit_23375183 is

    signal S0_not, S1_not, S2_not, S3_not, S4_not : std_logic;
    
    signal levelN1 : std_logic_vector(31 downto 0);
    signal level0 : std_logic_vector(31 downto 0);
    signal level1 : std_logic_vector(31 downto 0);
    signal level2 : std_logic_vector(31 downto 0);
    signal level3 : std_logic_vector(31 downto 0);
    
    signal or0 : std_logic_vector(15 downto 0);
    signal or1 : std_logic_vector(7 downto 0);
    signal or2 : std_logic_vector(3 downto 0);
    signal or3 : std_logic_vector(1 downto 0);

   --  Propagation Delay according to StdentID e.g. 26 33 57 25(DEC)
   constant AND_gate_delay : Time := 4ns;      -- least significant digit 6 = 5 + 1
   constant NAND_gate_delay : Time := 9ns;     -- next more significant digit 3 = 2 + 1
   constant OR_gate_delay : Time := 2ns;       -- next more significant digit 8 = 7 + 1
   constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
   constant XOR_gate_delay : Time := 8ns;      -- next more significant digit 4 = 3 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 7 = 6 + 1
   
begin
    S0_not <= not S(0) after NOT_gate_delay;
    S1_not <= not S(1) after NOT_gate_delay;
    S2_not <= not S(2) after NOT_gate_delay;
    S3_not <= not S(3) after NOT_gate_delay;
    S4_not <= not S(4) after NOT_gate_delay;

    levelN1(0)  <= S4_not and I0  after AND_gate_delay;
    levelN1(1)  <= S4_not and I1  after AND_gate_delay;
    levelN1(2)  <= S4_not and I2  after AND_gate_delay;
    levelN1(3)  <= S4_not and I3  after AND_gate_delay;
    levelN1(4)  <= S4_not and I4  after AND_gate_delay;
    levelN1(5)  <= S4_not and I5  after AND_gate_delay;
    levelN1(6)  <= S4_not and I6  after AND_gate_delay;
    levelN1(7)  <= S4_not and I7  after AND_gate_delay;
    levelN1(8)  <= S4_not and I8  after AND_gate_delay;
    levelN1(9)  <= S4_not and I9  after AND_gate_delay;
    levelN1(10) <= S4_not and I10 after AND_gate_delay;
    levelN1(11) <= S4_not and I11 after AND_gate_delay;
    levelN1(12) <= S4_not and I12 after AND_gate_delay;
    levelN1(13) <= S4_not and I13 after AND_gate_delay;
    levelN1(14) <= S4_not and I14 after AND_gate_delay;
    levelN1(15) <= S4_not and I15 after AND_gate_delay;
    
    levelN1(16) <= S(4) and I16 after AND_gate_delay;
    levelN1(17) <= S(4) and I17 after AND_gate_delay;
    levelN1(18) <= S(4) and I18 after AND_gate_delay;
    levelN1(19) <= S(4) and I19 after AND_gate_delay;
    levelN1(20) <= S(4) and I20 after AND_gate_delay;
    levelN1(21) <= S(4) and I21 after AND_gate_delay;
    levelN1(22) <= S(4) and I22 after AND_gate_delay;
    levelN1(23) <= S(4) and I23 after AND_gate_delay;
    levelN1(24) <= S(4) and I24 after AND_gate_delay;
    levelN1(25) <= S(4) and I25 after AND_gate_delay;
    levelN1(26) <= S(4) and I26 after AND_gate_delay;
    levelN1(27) <= S(4) and I27 after AND_gate_delay;
    levelN1(28) <= S(4) and I28 after AND_gate_delay;
    levelN1(29) <= S(4) and I29 after AND_gate_delay;
    levelN1(30) <= S(4) and I30 after AND_gate_delay;
    levelN1(31) <= S(4) and I31 after AND_gate_delay;
    
    level0(0)  <= S3_not and levelN1(0)  after AND_gate_delay;
    level0(1)  <= S3_not and levelN1(1)  after AND_gate_delay;
    level0(2)  <= S3_not and levelN1(2)  after AND_gate_delay;
    level0(3)  <= S3_not and levelN1(3)  after AND_gate_delay;
    level0(4)  <= S3_not and levelN1(4)  after AND_gate_delay;
    level0(5)  <= S3_not and levelN1(5)  after AND_gate_delay;
    level0(6)  <= S3_not and levelN1(6)  after AND_gate_delay;
    level0(7)  <= S3_not and levelN1(7)  after AND_gate_delay;
    level0(8)  <= S(3) and levelN1(8)  after AND_gate_delay;
    level0(9)  <= S(3) and levelN1(9)  after AND_gate_delay;
    level0(10) <= S(3) and levelN1(10) after AND_gate_delay;
    level0(11) <= S(3) and levelN1(11) after AND_gate_delay;
    level0(12) <= S(3) and levelN1(12) after AND_gate_delay;
    level0(13) <= S(3) and levelN1(13) after AND_gate_delay;
    level0(14) <= S(3) and levelN1(14) after AND_gate_delay;
    level0(15) <= S(3) and levelN1(15) after AND_gate_delay;
    
    level0(16) <= S3_not and levelN1(16) after AND_gate_delay;
    level0(17) <= S3_not and levelN1(17) after AND_gate_delay;
    level0(18) <= S3_not and levelN1(18) after AND_gate_delay;
    level0(19) <= S3_not and levelN1(19) after AND_gate_delay;
    level0(20) <= S3_not and levelN1(20) after AND_gate_delay;
    level0(21) <= S3_not and levelN1(21) after AND_gate_delay;
    level0(22) <= S3_not and levelN1(22) after AND_gate_delay;
    level0(23) <= S3_not and levelN1(23) after AND_gate_delay;
    level0(24) <= S(3) and levelN1(24) after AND_gate_delay;
    level0(25) <= S(3) and levelN1(25) after AND_gate_delay;
    level0(26) <= S(3) and levelN1(26) after AND_gate_delay;
    level0(27) <= S(3) and levelN1(27) after AND_gate_delay;
    level0(28) <= S(3) and levelN1(28) after AND_gate_delay;
    level0(29) <= S(3) and levelN1(29) after AND_gate_delay;
    level0(30) <= S(3) and levelN1(30) after AND_gate_delay;
    level0(31) <= S(3) and levelN1(31) after AND_gate_delay;
    
    level1(0)  <= S2_not and level0(0)  after AND_gate_delay;
    level1(1)  <= S2_not and level0(1)  after AND_gate_delay;
    level1(2)  <= S2_not and level0(2)  after AND_gate_delay;
    level1(3)  <= S2_not and level0(3)  after AND_gate_delay;
    level1(4)  <= S(2) and level0(4)  after AND_gate_delay;
    level1(5)  <= S(2) and level0(5)  after AND_gate_delay;
    level1(6)  <= S(2) and level0(6)  after AND_gate_delay;
    level1(7)  <= S(2) and level0(7)  after AND_gate_delay;
    level1(8)  <= S2_not and level0(8)  after AND_gate_delay;
    level1(9)  <= S2_not and level0(9)  after AND_gate_delay;
    level1(10) <= S2_not and level0(10) after AND_gate_delay;
    level1(11) <= S2_not and level0(11) after AND_gate_delay;
    level1(12) <= S(2) and level0(12) after AND_gate_delay;
    level1(13) <= S(2) and level0(13) after AND_gate_delay;
    level1(14) <= S(2) and level0(14) after AND_gate_delay;
    level1(15) <= S(2) and level0(15) after AND_gate_delay;
    
    level1(16) <= S2_not and level0(16) after AND_gate_delay;
    level1(17) <= S2_not and level0(17) after AND_gate_delay;
    level1(18) <= S2_not and level0(18) after AND_gate_delay;
    level1(19) <= S2_not and level0(19) after AND_gate_delay;
    level1(20) <= S(2) and level0(20) after AND_gate_delay;
    level1(21) <= S(2) and level0(21) after AND_gate_delay;
    level1(22) <= S(2) and level0(22) after AND_gate_delay;
    level1(23) <= S(2) and level0(23) after AND_gate_delay;
    level1(24) <= S2_not and level0(24) after AND_gate_delay;
    level1(25) <= S2_not and level0(25) after AND_gate_delay;
    level1(26) <= S2_not and level0(26) after AND_gate_delay;
    level1(27) <= S2_not and level0(27) after AND_gate_delay;
    level1(28) <= S(2) and level0(28) after AND_gate_delay;
    level1(29) <= S(2) and level0(29) after AND_gate_delay;
    level1(30) <= S(2) and level0(30) after AND_gate_delay;
    level1(31) <= S(2) and level0(31) after AND_gate_delay;
    
    level2(0)  <= S1_not and level1(0)  after AND_gate_delay;
    level2(1)  <= S1_not and level1(1)  after AND_gate_delay;
    level2(2)  <= S(1) and level1(2)  after AND_gate_delay;
    level2(3)  <= S(1) and level1(3)  after AND_gate_delay;
    level2(4)  <= S1_not and level1(4)  after AND_gate_delay;
    level2(5)  <= S1_not and level1(5)  after AND_gate_delay;
    level2(6)  <= S(1) and level1(6)  after AND_gate_delay;
    level2(7)  <= S(1) and level1(7)  after AND_gate_delay;
    level2(8)  <= S1_not and level1(8)  after AND_gate_delay;
    level2(9)  <= S1_not and level1(9)  after AND_gate_delay;
    level2(10) <= S(1) and level1(10) after AND_gate_delay;
    level2(11) <= S(1) and level1(11) after AND_gate_delay;
    level2(12) <= S1_not and level1(12) after AND_gate_delay;
    level2(13) <= S1_not and level1(13) after AND_gate_delay;
    level2(14) <= S(1) and level1(14) after AND_gate_delay;
    level2(15) <= S(1) and level1(15) after AND_gate_delay;
    
    level2(16) <= S1_not and level1(16) after AND_gate_delay;
    level2(17) <= S1_not and level1(17) after AND_gate_delay;
    level2(18) <= S(1) and level1(18) after AND_gate_delay;
    level2(19) <= S(1) and level1(19) after AND_gate_delay;
    level2(20) <= S1_not and level1(20) after AND_gate_delay;
    level2(21) <= S1_not and level1(21) after AND_gate_delay;
    level2(22) <= S(1) and level1(22) after AND_gate_delay;
    level2(23) <= S(1) and level1(23) after AND_gate_delay;
    level2(24) <= S1_not and level1(24) after AND_gate_delay;
    level2(25) <= S1_not and level1(25) after AND_gate_delay;
    level2(26) <= S(1) and level1(26) after AND_gate_delay;
    level2(27) <= S(1) and level1(27) after AND_gate_delay;
    level2(28) <= S1_not and level1(28) after AND_gate_delay;
    level2(29) <= S1_not and level1(29) after AND_gate_delay;
    level2(30) <= S(1) and level1(30) after AND_gate_delay;
    level2(31) <= S(1) and level1(31) after AND_gate_delay;
    
        
    level3(0)  <= S0_not and level2(0)  after AND_gate_delay;
    level3(1)  <= S(0) and level2(1)  after AND_gate_delay;
    level3(2)  <= S0_not and level2(2)  after AND_gate_delay;
    level3(3)  <= S(0) and level2(3)  after AND_gate_delay;
    level3(4)  <= S0_not and level2(4)  after AND_gate_delay;
    level3(5)  <= S(0) and level2(5)  after AND_gate_delay;
    level3(6)  <= S0_not and level2(6)  after AND_gate_delay;
    level3(7)  <= S(0) and level2(7)  after AND_gate_delay;
    level3(8)  <= S0_not and level2(8)  after AND_gate_delay;
    level3(9)  <= S(0) and level2(9)  after AND_gate_delay;
    level3(10) <= S0_not and level2(10) after AND_gate_delay;
    level3(11) <= S(0) and level2(11) after AND_gate_delay;
    level3(12) <= S0_not and level2(12) after AND_gate_delay;
    level3(13) <= S(0) and level2(13) after AND_gate_delay;
    level3(14) <= S0_not and level2(14) after AND_gate_delay;
    level3(15) <= S(0) and level2(15) after AND_gate_delay;
    
    level3(16) <= S0_not and level2(16) after AND_gate_delay;
    level3(17) <= S(0) and level2(17) after AND_gate_delay;
    level3(18) <= S0_not and level2(18) after AND_gate_delay;
    level3(19) <= S(0) and level2(19) after AND_gate_delay;
    level3(20) <= S0_not and level2(20) after AND_gate_delay;
    level3(21) <= S(0) and level2(21) after AND_gate_delay;
    level3(22) <= S0_not and level2(22) after AND_gate_delay;
    level3(23) <= S(0) and level2(23) after AND_gate_delay;
    level3(24) <= S0_not and level2(24) after AND_gate_delay;
    level3(25) <= S(0) and level2(25) after AND_gate_delay;
    level3(26) <= S0_not and level2(26) after AND_gate_delay;
    level3(27) <= S(0) and level2(27) after AND_gate_delay;
    level3(28) <= S0_not and level2(28) after AND_gate_delay;
    level3(29) <= S(0) and level2(29) after AND_gate_delay;
    level3(30) <= S0_not and level2(30) after AND_gate_delay;
    level3(31) <= S(0) and level2(31) after AND_gate_delay;
    
    or0(0) <= level3(0) or level3(1) after OR_gate_delay;
    or0(1) <= level3(2) or level3(3) after OR_gate_delay;
    or0(2) <= level3(4) or level3(5) after OR_gate_delay;
    or0(3) <= level3(6) or level3(7) after OR_gate_delay;
    or0(4) <= level3(8) or level3(9) after OR_gate_delay;
    or0(5) <= level3(10) or level3(11) after OR_gate_delay;
    or0(6) <= level3(12) or level3(13) after OR_gate_delay;
    or0(7) <= level3(14) or level3(15) after OR_gate_delay;
    or0(8) <= level3(16) or level3(17) after OR_gate_delay;
    or0(9) <= level3(18) or level3(19) after OR_gate_delay;
    or0(10) <= level3(20) or level3(21) after OR_gate_delay;
    or0(11) <= level3(22) or level3(23) after OR_gate_delay;
    or0(12) <= level3(24) or level3(25) after OR_gate_delay;
    or0(13) <= level3(26) or level3(27) after OR_gate_delay;
    or0(14) <= level3(28) or level3(29) after OR_gate_delay;
    or0(15) <= level3(30) or level3(31) after OR_gate_delay;
      
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
    
    Y <= or3(0) or or3(1) after or_gate_delay;

end Behavioral;
