----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 21.09.2023 11:15:19
-- Design Name: 
-- Module Name: Mux32_1bit_TB - Behavioral
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

entity Mux32_1bit_23375183_TB is
--  we don't need ports
end Mux32_1bit_23375183_TB;

architecture Behavioral of Mux32_1bit_23375183_TB is

   -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Mux32_1bit_23375183
      Port ( I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15, 
             I16, I17, I18, I19, I20, I21, I22, I23, I24, I25, I26, I27, I28, I29, I30, I31 : in STD_LOGIC;
             S : in STD_LOGIC_VECTOR (4 downto 0);
             Y : out STD_LOGIC);
    END COMPONENT;

   --Inputs Signals    
   signal I0_TB, I1_TB, I2_TB, I3_TB, I4_TB, I5_TB, I6_TB, I7_TB, I8_TB, I9_TB, I10_TB, I11_TB, I12_TB, I13_TB, I14_TB, I15_TB : STD_LOGIC := '0';
   signal I16_TB, I17_TB, I18_TB, I19_TB, I20_TB, I21_TB, I22_TB, I23_TB, I24_TB, I25_TB, I26_TB, I27_TB, I28_TB, I29_TB, I30_TB, I31_TB : STD_LOGIC := '0';
   signal S_TB : STD_LOGIC_VECTOR (4 downto 0) := (others => '0');
   
   --Output Signal   
   signal Y_TB : STD_LOGIC := '0';
   
   -- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164AD4F";
   
begin

  -- Instantiate the Unit Under Test (UUT)
  uut: Mux32_1bit_23375183 PORT MAP (
       I0 => I0_TB, I1 => I1_TB, I2 => I2_TB, I3 => I3_TB, I4 => I4_TB, I5 => I5_TB, I6 => I6_TB, I7 => I7_TB, 
       I8 => I8_TB, I9 => I9_TB, I10 => I10_TB, I11 => I11_TB, I12 => I12_TB, I13 => I13_TB, I14 => I14_TB, I15 => I15_TB,
       I16 => I16_TB, I17 => I17_TB, I18 => I18_TB, I19 => I19_TB, I20 => I20_TB, I21 => I21_TB, I22 => I22_TB, I23 => I23_TB, 
       I24 => I24_TB, I25 => I25_TB, I26 => I26_TB, I27 => I27_TB, I28 => I28_TB, I29 => I29_TB, I30 => I30_TB, I31 => I31_TB,
       S  => S_TB, 
       Y  => Y_TB 
       );

  stim_proc: process
   begin		
      -- Case 0: Test I0
      S_TB <= "00000";                                            
      I0_TB <= '1'; I1_TB <= '0'; I2_TB <= '0'; I3_TB <= '0'; I4_TB <= '0'; I5_TB <= '0'; I6_TB <= '0'; I7_TB <= '0'; 
      I8_TB <= '0'; I9_TB <= '0'; I10_TB <= '0'; I11_TB <= '0'; I12_TB <= '0'; I13_TB <= '0'; I14_TB <= '0'; I15_TB <= '0';
      I16_TB <= '0'; I17_TB <= '0'; I18_TB <= '0'; I19_TB <= '0'; I20_TB <= '0'; I21_TB <= '0'; I22_TB <= '0'; I23_TB <= '0';
      I24_TB <= '0'; I25_TB <= '0'; I26_TB <= '0'; I27_TB <= '0'; I28_TB <= '0'; I29_TB <= '0'; I30_TB <= '0'; I31_TB <= '0';
      wait for 60 ns;

      -- Case 1: Test I1
      S_TB <= "00001";                                            
      I0_TB <= '0'; I1_TB <= '1'; 
      wait for 60 ns;
      
      -- Case 2: Test I2
      S_TB <= "00010";                                            
      I1_TB <= '0'; I2_TB <= '1'; 
      wait for 60 ns;

      -- Case 3: Test I3
      S_TB <= "00011";                                            
      I2_TB <= '0'; I3_TB <= '1'; 
      wait for 60 ns;

      -- Case 4: Test I4
      S_TB <= "00100";                                            
      I3_TB <= '0'; I4_TB <= '1'; 
      wait for 60 ns;

      -- Case 5: Test I5
      S_TB <= "00101";                                            
      I4_TB <= '0'; I5_TB <= '1'; 
      wait for 60 ns;

      -- Case 6: Test I6
      S_TB <= "00110";                                            
      I5_TB <= '0'; I6_TB <= '1'; 
      wait for 60 ns;

      -- Case 7: Test I7
      S_TB <= "00111";                                            
      I6_TB <= '0'; I7_TB <= '1'; 
      wait for 60 ns;

      -- Case 8: Test I8
      S_TB <= "01000";                                            
      I7_TB <= '0'; I8_TB <= '1'; 
      wait for 60 ns;

      -- Case 9: Test I9
      S_TB <= "01001";                                            
      I8_TB <= '0'; I9_TB <= '1'; 
      wait for 60 ns;

      -- Case 10: Test I10
      S_TB <= "01010";                                            
      I9_TB <= '0'; I10_TB <= '1'; 
      wait for 60 ns;

      -- Case 11: Test I11
      S_TB <= "01011";                                            
      I10_TB <= '0'; I11_TB <= '1'; 
      wait for 60 ns;

      -- Case 12: Test I12
      S_TB <= "01100";                                            
      I11_TB <= '0'; I12_TB <= '1'; 
      wait for 60 ns;

      -- Case 13: Test I13
      S_TB <= "01101";                                            
      I12_TB <= '0'; I13_TB <= '1'; 
      wait for 60 ns;

      -- Case 14: Test I14
      S_TB <= "01110";                                            
      I13_TB <= '0'; I14_TB <= '1'; 
      wait for 60 ns;

      -- Case 15: Test I15
      S_TB <= "01111";                                            
      I14_TB <= '0'; I15_TB <= '1'; 
      wait for 60 ns;

      -- Case 16: Test I16
      S_TB <= "10000";                                            
      I15_TB <= '0'; I16_TB <= '1'; 
      wait for 60 ns;

      -- Case 17: Test I17
      S_TB <= "10001";                                            
      I16_TB <= '0'; I17_TB <= '1'; 
      wait for 60 ns;

      -- Case 18: Test I18
      S_TB <= "10010";                                            
      I17_TB <= '0'; I18_TB <= '1'; 
      wait for 60 ns;

      -- Case 19: Test I19
      S_TB <= "10011";                                            
      I18_TB <= '0'; I19_TB <= '1'; 
      wait for 60 ns;

      -- Case 20: Test I20
      S_TB <= "10100";                                            
      I19_TB <= '0'; I20_TB <= '1'; 
      wait for 60 ns;

      -- Case 21: Test I21
      S_TB <= "10101";                                            
      I20_TB <= '0'; I21_TB <= '1'; 
      wait for 60 ns;

      -- Case 22: Test I22
      S_TB <= "10110";                                            
      I21_TB <= '0'; I22_TB <= '1'; 
      wait for 60 ns;

      -- Case 23: Test I23
      S_TB <= "10111";                                            
      I22_TB <= '0'; I23_TB <= '1'; 
      wait for 60 ns;

      -- Case 24: Test I24
      S_TB <= "11000";                                            
      I23_TB <= '0'; I24_TB <= '1'; 
      wait for 60 ns;

      -- Case 25: Test I25
      S_TB <= "11001";                                            
      I24_TB <= '0'; I25_TB <= '1'; 
      wait for 60 ns;

      -- Case 26: Test I26
      S_TB <= "11010";                                            
      I25_TB <= '0'; I26_TB <= '1'; 
      wait for 60 ns;

      -- Case 27: Test I27
      S_TB <= "11011";                                            
      I26_TB <= '0'; I27_TB <= '1'; 
      wait for 60 ns;

      -- Case 28: Test I28
      S_TB <= "11100";                                            
      I27_TB <= '0'; I28_TB <= '1'; 
      wait for 60 ns;

      -- Case 29: Test I29
      S_TB <= "11101";                                            
      I28_TB <= '0'; I29_TB <= '1'; 
      wait for 60 ns;

      -- Case 30: Test I30
      S_TB <= "11110";                                            
      I29_TB <= '0'; I30_TB <= '1'; 
      wait for 60 ns;

      -- Case 31: Test I31
      S_TB <= "11111";                                            
      I30_TB <= '0'; I31_TB <= '1'; 
      wait for 60 ns;


   end process;


end Behavioral;

