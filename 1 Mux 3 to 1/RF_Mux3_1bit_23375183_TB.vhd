----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 21.09.2023 11:15:19
-- Design Name: 
-- Module Name: Mux3_1bit_TB - Behavioral
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

entity Mux3_1bit_23375183_TB is
--  we don't need ports
end Mux3_1bit_23375183_TB;

architecture Behavioral of Mux3_1bit_23375183_TB is

   -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Mux3_1bit_23375183
      Port ( I0, I1, I2 : in STD_LOGIC;
             S : in STD_LOGIC_VECTOR (1 downto 0);
             Y : out STD_LOGIC);
    END COMPONENT;

   --Inputs Signals    
   signal I0_TB, I1_TB, I2_TB : STD_LOGIC := '0';
   signal S_TB : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
   
   --Output Signal   
   signal Y_TB : STD_LOGIC := '0';
   
   -- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164ad4f";

begin

  -- Instantiate the Unit Under Test (UUT)
  uut: Mux3_1bit_23375183 PORT MAP (
       I0 => I0_TB,
       I1 => I1_TB,
       I2 => I2_TB,
       S  => S_TB, 
       Y  => Y_TB 
       );

  stim_proc: process
   begin		
      S_TB <= "00";                                            -- case A   
      I0_TB <= '0'; I1_TB <= '0'; I2_TB <= '0';
      wait for 60 ns;
      I0_TB <= '1'; I1_TB <= '0'; I2_TB <= '0';
      wait for 60 ns;
      
      S_TB <= "01";                                            -- case B   
      I0_TB <= '0'; I1_TB <= '0'; I2_TB <= '0';
      wait for 60 ns;
      I0_TB <= '0'; I1_TB <= '1'; I2_TB <= '0';
      wait for 60 ns;
      
      S_TB <= "10";                                            -- case C   
      I0_TB <= '0'; I1_TB <= '0'; I2_TB <= '0';
      wait for 60 ns;
      I0_TB <= '0'; I1_TB <= '0'; I2_TB <= '1';
      wait for 60 ns;

   end process;


end Behavioral;
