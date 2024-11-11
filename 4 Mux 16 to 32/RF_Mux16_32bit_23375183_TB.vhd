----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 21.09.2023 11:15:19
-- Design Name: 
-- Module Name: Mux16_32bit_TB - Behavioral
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

entity Mux16_32bit_23375183_TB is
--  we don't need ports
end Mux16_32bit_23375183_TB;

architecture Behavioral of Mux16_32bit_23375183_TB is

   -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Mux16_32bit_23375183
      Port ( IN00, IN01, IN02, IN03, IN04, IN05, IN06, IN07, IN08, IN09, IN10, IN11, IN12, IN13, IN14, IN15 : in STD_LOGIC_VECTOR (31 downto 0);
             S : in STD_LOGIC_VECTOR (3 downto 0);
             Y : out STD_LOGIC_VECTOR (31 downto 0));
   END COMPONENT;

   -- Input Signals
   signal IN00_TB, IN01_TB, IN02_TB, IN03_TB, IN04_TB, IN05_TB, IN06_TB, IN07_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   signal IN08_TB, IN09_TB, IN10_TB, IN11_TB, IN12_TB, IN13_TB, IN14_TB, IN15_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   signal S_TB : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
   
   -- Output Signal
   signal Y_TB : STD_LOGIC_VECTOR (31 downto 0);

   -- StudentID (example constant)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164AD4F";

begin

  -- Instantiate the Unit Under Test (UUT)
  uut: Mux16_32bit_23375183 PORT MAP (
       IN00 => IN00_TB, IN01 => IN01_TB, IN02 => IN02_TB, IN03 => IN03_TB, 
       IN04 => IN04_TB, IN05 => IN05_TB, IN06 => IN06_TB, IN07 => IN07_TB, 
       IN08 => IN08_TB, IN09 => IN09_TB, IN10 => IN10_TB, IN11 => IN11_TB, 
       IN12 => IN12_TB, IN13 => IN13_TB, IN14 => IN14_TB, IN15 => IN15_TB,
       S => S_TB, 
       Y => Y_TB
       );

  -- Stimulus process to test all the cases (S from 0000 to 1111)
  stim_proc: process
   begin
      -- Apply values for IN00 to IN15
      IN00_TB  <= b"00000001011001001010110101001111"; -- Test value for input IN00 (32 bits)
      IN01_TB  <= b"00000001011001001010110101010000"; -- Test value for input IN01 (32 bits)
      IN02_TB  <= b"00000001011001001010110101010001"; -- Test value for input IN02 (32 bits)
      IN03_TB  <= b"00000001011001001010110101010010"; -- Test value for input IN03 (32 bits)
      IN04_TB  <= b"00000001011001001010110101010011"; -- Test value for input IN04 (32 bits)
      IN05_TB  <= b"00000001011001001010110101010100"; -- Test value for input IN05 (32 bits)
      IN06_TB  <= b"00000001011001001010110101010101"; -- Test value for input IN06 (32 bits)
      IN07_TB  <= b"00000001011001001010110101010110"; -- Test value for input IN07 (32 bits)
      IN08_TB  <= b"00000001011001001010110101010111"; -- Test value for input IN08 (32 bits)
      IN09_TB  <= b"00000001011001001010110101011000"; -- Test value for input IN09 (32 bits)
      IN10_TB  <= b"00000001011001001010110101011001"; -- Test value for input IN10 (32 bits)
      IN11_TB  <= b"00000001011001001010110101011010"; -- Test value for input IN11 (32 bits)
      IN12_TB  <= b"00000001011001001010110101011011"; -- Test value for input IN12 (32 bits)
      IN13_TB  <= b"00000001011001001010110101011100"; -- Test value for input IN13 (32 bits)
      IN14_TB  <= b"00000001011001001010110101011101"; -- Test value for input IN14 (32 bits)
      IN15_TB  <= b"00000001011001001010110101011110"; -- Test value for input IN15 (32 bits)


      -- Test case S = 0000 (select IN00)
      S_TB <= "0000";
      wait for 60 ns;

      -- Test case S = 0001 (select IN01)
      S_TB <= "0001";
      wait for 60 ns;

      -- Test case S = 0010 (select IN02)
      S_TB <= "0010";
      wait for 60 ns;

      -- Test case S = 0011 (select IN03)
      S_TB <= "0011";
      wait for 60 ns;

      -- Test case S = 0100 (select IN04)
      S_TB <= "0100";
      wait for 60 ns;

      -- Test case S = 0101 (select IN05)
      S_TB <= "0101";
      wait for 60 ns;

      -- Test case S = 0110 (select IN06)
      S_TB <= "0110";
      wait for 60 ns;

      -- Test case S = 0111 (select IN07)
      S_TB <= "0111";
      wait for 60 ns;

      -- Test case S = 1000 (select IN08)
      S_TB <= "1000";
      wait for 60 ns;

      -- Test case S = 1001 (select IN09)
      S_TB <= "1001";
      wait for 60 ns;

      -- Test case S = 1010 (select IN10)
      S_TB <= "1010";
      wait for 60 ns;

      -- Test case S = 1011 (select IN11)
      S_TB <= "1011";
      wait for 60 ns;

      -- Test case S = 1100 (select IN12)
      S_TB <= "1100";
      wait for 60 ns;

      -- Test case S = 1101 (select IN13)
      S_TB <= "1101";
      wait for 60 ns;

      -- Test case S = 1110 (select IN14)
      S_TB <= "1110";
      wait for 60 ns;

      -- Test case S = 1111 (select IN15)
      S_TB <= "1111";
      wait for 60 ns;

   end process;

end Behavioral;


