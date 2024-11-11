----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 19.09.2023 11:44:54
-- Design Name: 
-- Module Name: Mux16_1bit - Behavioral
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

entity Mux16_1bit_23375183 is
    Port ( I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15 : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (3 downto 0);
           Y : out STD_LOGIC);
end Mux16_1bit_23375183;

architecture Behavioral of Mux16_1bit_23375183 is

    signal S0_not, S1_not, S2_not, S3_not : std_logic;
    
    signal level0 : std_logic_vector(15 downto 0);
    signal level1 : std_logic_vector(15 downto 0);
    signal level2 : std_logic_vector(15 downto 0);
    signal level3 : std_logic_vector(15 downto 0);
    
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

    level0(0)  <= S3_not and I0  after AND_gate_delay;
    level0(1)  <= S3_not and I1  after AND_gate_delay;
    level0(2)  <= S3_not and I2  after AND_gate_delay;
    level0(3)  <= S3_not and I3  after AND_gate_delay;
    level0(4)  <= S3_not and I4  after AND_gate_delay;
    level0(5)  <= S3_not and I5  after AND_gate_delay;
    level0(6)  <= S3_not and I6  after AND_gate_delay;
    level0(7)  <= S3_not and I7  after AND_gate_delay;
    level0(8)  <= S(3) and I8  after AND_gate_delay;
    level0(9)  <= S(3) and I9  after AND_gate_delay;
    level0(10) <= S(3) and I10 after AND_gate_delay;
    level0(11) <= S(3) and I11 after AND_gate_delay;
    level0(12) <= S(3) and I12 after AND_gate_delay;
    level0(13) <= S(3) and I13 after AND_gate_delay;
    level0(14) <= S(3) and I14 after AND_gate_delay;
    level0(15) <= S(3) and I15 after AND_gate_delay;
    
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
      
    or1(0) <= level3(0) or level3(1) after OR_gate_delay;
    or1(1) <= level3(2) or level3(3) after OR_gate_delay;
    or1(2) <= level3(4) or level3(5) after OR_gate_delay;
    or1(3) <= level3(6) or level3(7) after OR_gate_delay;
    or1(4) <= level3(8) or level3(9) after OR_gate_delay;
    or1(5) <= level3(10) or level3(11) after OR_gate_delay;
    or1(6) <= level3(12) or level3(13) after OR_gate_delay;
    or1(7) <= level3(14) or level3(15) after OR_gate_delay;
    
    or2(0) <= or1(0) or or1(1) after or_gate_delay;
    or2(1) <= or1(2) or or1(3) after or_gate_delay;
    or2(2) <= or1(4) or or1(5) after or_gate_delay;
    or2(3) <= or1(6) or or1(7) after or_gate_delay;
    
    or3(0) <= or2(0) or or2(1) after or_gate_delay;
    or3(1) <= or2(2) or or2(3) after or_gate_delay;
    
    Y <= or3(0) or or3(1) after or_gate_delay;

end Behavioral;