----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 21.09.2023 11:15:19
-- Design Name: 
-- Module Name: Mux16_1bit_TB - Behavioral
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

entity Mux16_1bit_23375183_TB is
--  we don't need ports
end Mux16_1bit_23375183_TB;

architecture Behavioral of Mux16_1bit_23375183_TB is

   -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Mux16_1bit_23375183
      Port ( I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15 : in STD_LOGIC;
             S : in STD_LOGIC_VECTOR (3 downto 0);
             Y : out STD_LOGIC);
    END COMPONENT;

   -- Inputs Signals    
   signal I0_TB, I1_TB, I2_TB, I3_TB, I4_TB, I5_TB, I6_TB, I7_TB : STD_LOGIC := '0';
   signal I8_TB, I9_TB, I10_TB, I11_TB, I12_TB, I13_TB, I14_TB, I15_TB : STD_LOGIC := '0';
   signal S_TB : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
   
   -- Output Signal   
   signal Y_TB : STD_LOGIC := '0';
   
   -- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164ad4f";

begin

  -- Instantiate the Unit Under Test (UUT)
  uut: Mux16_1bit_23375183 PORT MAP (
       I0 => I0_TB, I1 => I1_TB, I2 => I2_TB, I3 => I3_TB, 
       I4 => I4_TB, I5 => I5_TB, I6 => I6_TB, I7 => I7_TB, 
       I8 => I8_TB, I9 => I9_TB, I10 => I10_TB, I11 => I11_TB,
       I12 => I12_TB, I13 => I13_TB, I14 => I14_TB, I15 => I15_TB, 
       S  => S_TB, 
       Y  => Y_TB 
       );

  stim_proc: process
   begin		
      -- Case 0: Test I0
      S_TB <= "0000";                                            
      I0_TB <= '1'; I1_TB <= '0'; I2_TB <= '0'; I3_TB <= '0'; I4_TB <= '0'; I5_TB <= '0'; I6_TB <= '0'; I7_TB <= '0'; 
      I8_TB <= '0'; I9_TB <= '0'; I10_TB <= '0'; I11_TB <= '0'; I12_TB <= '0'; I13_TB <= '0'; I14_TB <= '0'; I15_TB <= '0';
      wait for 60 ns;

      -- Case 1: Test I1
      S_TB <= "0001";                                            
      I0_TB <= '0'; I1_TB <= '1'; 
      wait for 60 ns;
      
      -- Case 2: Test I2
      S_TB <= "0010";                                            
      I1_TB <= '0'; I2_TB <= '1'; 
      wait for 60 ns;

      -- Case 3: Test I3
      S_TB <= "0011";                                            
      I2_TB <= '0'; I3_TB <= '1'; 
      wait for 60 ns;

      -- Case 4: Test I4
      S_TB <= "0100";                                            
      I3_TB <= '0'; I4_TB <= '1'; 
      wait for 60 ns;

      -- Case 5: Test I5
      S_TB <= "0101";                                            
      I4_TB <= '0'; I5_TB <= '1'; 
      wait for 60 ns;

      -- Case 6: Test I6
      S_TB <= "0110";                                            
      I5_TB <= '0'; I6_TB <= '1'; 
      wait for 60 ns;

      -- Case 7: Test I7
      S_TB <= "0111";                                            
      I6_TB <= '0'; I7_TB <= '1'; 
      wait for 60 ns;

      -- Case 8: Test I8
      S_TB <= "1000";                                            
      I7_TB <= '0'; I8_TB <= '1'; 
      wait for 60 ns;

      -- Case 9: Test I9
      S_TB <= "1001";                                            
      I8_TB <= '0'; I9_TB <= '1'; 
      wait for 60 ns;

      -- Case 10: Test I10
      S_TB <= "1010";                                            
      I9_TB <= '0'; I10_TB <= '1'; 
      wait for 60 ns;

      -- Case 11: Test I11
      S_TB <= "1011";                                            
      I10_TB <= '0'; I11_TB <= '1'; 
      wait for 60 ns;

      -- Case 12: Test I12
      S_TB <= "1100";                                            
      I11_TB <= '0'; I12_TB <= '1'; 
      wait for 60 ns;

      -- Case 13: Test I13
      S_TB <= "1101";                                            
      I12_TB <= '0'; I13_TB <= '1'; 
      wait for 60 ns;

      -- Case 14: Test I14
      S_TB <= "1110";                                            
      I13_TB <= '0'; I14_TB <= '1'; 
      wait for 60 ns;

      -- Case 15: Test I15
      S_TB <= "1111";                                            
      I14_TB <= '0'; I15_TB <= '1'; 
      wait for 60 ns;

   end process;


end Behavioral;

