----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 21.09.2023 11:15:19
-- Design Name: 
-- Module Name: Mux32_32bit_TB - Behavioral
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

entity Mux32_32bit_23375183_TB is
--  we don't need ports
end Mux32_32bit_23375183_TB;

architecture Behavioral of Mux32_32bit_23375183_TB is

   -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Mux32_32bit_23375183
      Port ( IN00, IN01, IN02, IN03, IN04, IN05, IN06, IN07, IN08, IN09, IN10, IN11, IN12, IN13, IN14, IN15,
             IN16, IN17, IN18, IN19, IN20, IN21, IN22, IN23, IN24, IN25, IN26, IN27, IN28, IN29, IN30, IN31 : in STD_LOGIC_VECTOR (31 downto 0);
             S : in STD_LOGIC_VECTOR (4 downto 0);
             Y : out STD_LOGIC_VECTOR (31 downto 0));
   END COMPONENT;

   -- Input Signals
   signal IN00_TB, IN01_TB, IN02_TB, IN03_TB, IN04_TB, IN05_TB, IN06_TB, IN07_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   signal IN08_TB, IN09_TB, IN10_TB, IN11_TB, IN12_TB, IN13_TB, IN14_TB, IN15_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   signal IN16_TB, IN17_TB, IN18_TB, IN19_TB, IN20_TB, IN21_TB, IN22_TB, IN23_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   signal IN24_TB, IN25_TB, IN26_TB, IN27_TB, IN28_TB, IN29_TB, IN30_TB, IN31_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   
   signal S_TB : STD_LOGIC_VECTOR (4 downto 0) := (others => '0');  -- 5-bit select signal
   
   -- Output Signal
   signal Y_TB : STD_LOGIC_VECTOR (31 downto 0);

   -- StudentID (example constant)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164AD4F";

begin

  -- Instantiate the Unit Under Test (UUT)
  uut: Mux32_32bit_23375183 PORT MAP (
       IN00 => IN00_TB, IN01 => IN01_TB, IN02 => IN02_TB, IN03 => IN03_TB, 
       IN04 => IN04_TB, IN05 => IN05_TB, IN06 => IN06_TB, IN07 => IN07_TB, 
       IN08 => IN08_TB, IN09 => IN09_TB, IN10 => IN10_TB, IN11 => IN11_TB, 
       IN12 => IN12_TB, IN13 => IN13_TB, IN14 => IN14_TB, IN15 => IN15_TB,
       IN16 => IN16_TB, IN17 => IN17_TB, IN18 => IN18_TB, IN19 => IN19_TB,
       IN20 => IN20_TB, IN21 => IN21_TB, IN22 => IN22_TB, IN23 => IN23_TB,
       IN24 => IN24_TB, IN25 => IN25_TB, IN26 => IN26_TB, IN27 => IN27_TB,
       IN28 => IN28_TB, IN29 => IN29_TB, IN30 => IN30_TB, IN31 => IN31_TB,
       S => S_TB, 
       Y => Y_TB
       );

   -- Stimulus process to test all the cases (S from 00000 to 11111)
   stim_proc: process
   begin
      -- Apply values for IN00 to IN31
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
      IN16_TB  <= b"00000001011001001010110101011111"; -- Test value for input IN16 (32 bits)
      IN17_TB  <= b"00000001011001001010110101100000"; -- Test value for input IN17 (32 bits)
      IN18_TB  <= b"00000001011001001010110101100001"; -- Test value for input IN18 (32 bits)
      IN19_TB  <= b"00000001011001001010110101100010"; -- Test value for input IN19 (32 bits)
      IN20_TB  <= b"00000001011001001010110101100011"; -- Test value for input IN20 (32 bits)
      IN21_TB  <= b"00000001011001001010110101100100"; -- Test value for input IN21 (32 bits)
      IN22_TB  <= b"00000001011001001010110101100101"; -- Test value for input IN22 (32 bits)
      IN23_TB  <= b"00000001011001001010110101100110"; -- Test value for input IN23 (32 bits)
      IN24_TB  <= b"00000001011001001010110101100111"; -- Test value for input IN24 (32 bits)
      IN25_TB  <= b"00000001011001001010110101101000"; -- Test value for input IN25 (32 bits)
      IN26_TB  <= b"00000001011001001010110101101001"; -- Test value for input IN26 (32 bits)
      IN27_TB  <= b"00000001011001001010110101101010"; -- Test value for input IN27 (32 bits)
      IN28_TB  <= b"00000001011001001010110101101011"; -- Test value for input IN28 (32 bits)
      IN29_TB  <= b"00000001011001001010110101101100"; -- Test value for input IN29 (32 bits)
      IN30_TB  <= b"00000001011001001010110101101101"; -- Test value for input IN30 (32 bits)
      IN31_TB  <= b"00000001011001001010110101101110"; -- Test value for input IN31 (32 bits)

      -- Test case S = 00000 (select IN00)
      S_TB <= "00000";
      wait for 60 ns;

      -- Test case S = 00001 (select IN01)
      S_TB <= "00001";
      wait for 60 ns;

      -- Test case S = 00010 (select IN02)
      S_TB <= "00010";
      wait for 60 ns;

      -- Test case S = 00011 (select IN03)
      S_TB <= "00011";
      wait for 60 ns;

      -- Test case S = 00100 (select IN04)
      S_TB <= "00100";
      wait for 60 ns;

      -- Test case S = 00101 (select IN05)
      S_TB <= "00101";
      wait for 60 ns;

      -- Test case S = 00110 (select IN06)
      S_TB <= "00110";
      wait for 60 ns;

      -- Test case S = 00111 (select IN07)
      S_TB <= "00111";
      wait for 60 ns;

      -- Test case S = 01000 (select IN08)
      S_TB <= "01000";
      wait for 60 ns;

      -- Test case S = 01001 (select IN09)
      S_TB <= "01001";
      wait for 60 ns;

      -- Test case S = 01010 (select IN10)
      S_TB <= "01010";
      wait for 60 ns;

      -- Test case S = 01011 (select IN11)
      S_TB <= "01011";
      wait for 60 ns;

      -- Test case S = 01100 (select IN12)
      S_TB <= "01100";
      wait for 60 ns;

      -- Test case S = 01101 (select IN13)
      S_TB <= "01101";
      wait for 60 ns;

      -- Test case S = 01110 (select IN14)
      S_TB <= "01110";
      wait for 60 ns;

      -- Test case S = 01111 (select IN15)
      S_TB <= "01111";
      wait for 60 ns;

      -- Test case S = 10000 (select IN16)
      S_TB <= "10000";
      wait for 60 ns;

      -- Test case S = 10001 (select IN17)
      S_TB <= "10001";
      wait for 60 ns;

      -- Test case S = 10010 (select IN18)
      S_TB <= "10010";
      wait for 60 ns;

      -- Test case S = 10011 (select IN19)
      S_TB <= "10011";
      wait for 60 ns;

      -- Test case S = 10100 (select IN20)
      S_TB <= "10100";
      wait for 60 ns;

      -- Test case S = 10101 (select IN21)
      S_TB <= "10101";
      wait for 60 ns;

      -- Test case S = 10110 (select IN22)
      S_TB <= "10110";
      wait for 60 ns;

      -- Test case S = 10111 (select IN23)
      S_TB <= "10111";
      wait for 60 ns;

      -- Test case S = 11000 (select IN24)
      S_TB <= "11000";
      wait for 60 ns;

      -- Test case S = 11001 (select IN25)
      S_TB <= "11001";
      wait for 60 ns;

      -- Test case S = 11010 (select IN26)
      S_TB <= "11010";
      wait for 60 ns;

      -- Test case S = 11011 (select IN27)
      S_TB <= "11011";
      wait for 60 ns;

      -- Test case S = 11100 (select IN28)
      S_TB <= "11100";
      wait for 60 ns;

      -- Test case S = 11101 (select IN29)
      S_TB <= "11101";
      wait for 60 ns;

      -- Test case S = 11110 (select IN30)
      S_TB <= "11110";
      wait for 60 ns;

      -- Test case S = 11111 (select IN31)
      S_TB <= "11111";
      wait for 60 ns;

   end process;

end Behavioral;




