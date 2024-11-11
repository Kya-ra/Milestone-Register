----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 21.09.2023 11:15:19
-- Design Name: 
-- Module Name: SingleBit_B_Logic_TB - Behavioral
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

entity DP_32Bit_B_Logic_23375183_TB is
--  we don't need ports
end DP_32Bit_B_Logic_23375183_TB;

architecture Behavioral of DP_32Bit_B_Logic_23375183_TB is

   -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT DP_32Bit_B_Logic_23375183
    Port ( B : in STD_LOGIC_VECTOR(31 downto 0);
           S0, S1 : in STD_LOGIC;
           G : out STD_LOGIC_VECTOR(31 downto 0));
    END COMPONENT;

   --Inputs Signals    
   signal S0_TB, S1_TB : STD_LOGIC := '0';
   signal B_TB : STD_LOGIC_VECTOR(31 downto 0) := b"00000000000000000000000000000000";
   
   --Output Signal   
   signal G_TB : STD_LOGIC_VECTOR(31 downto 0) := b"00000000000000000000000000000000";
   
   -- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164ad4f";

begin

  -- Instantiate the Unit Under Test (UUT)
  uut: DP_32Bit_B_Logic_23375183 PORT MAP (
       S0 => S0_TB,
       S1 => S1_TB,
       B  => B_TB, 
       G  => G_TB 
       );

  stim_proc: process
   begin
      B_TB <= b"00000001011001001010110101001111";
      wait for 100 ns;
      
      S0_TB <= '1';
      wait for 100 ns;
      S0_TB <= '0';
      
      S1_TB <= '1';
      wait for 100 ns;

      S0_TB <= '1';
      wait for 100 ns;


   end process;


end Behavioral;
