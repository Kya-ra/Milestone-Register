----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 21.09.2023 11:15:19
-- Design Name: 
-- Module Name: ShifterCFlagMux2_1bit_TB - Behavioral
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

entity DP_ShifterCFlagMux2_1bit_23375183_TB is
--  we don't need ports
end DP_ShifterCFlagMux2_1bit_23375183_TB;

architecture Behavioral of DP_ShifterCFlagMux2_1bit_23375183_TB is

   -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT DP_ShifterCFlagMux2_1bit_23375183
      Port ( MSB, LSB, S1, S2 : in STD_LOGIC;
             C : out STD_LOGIC);
    END COMPONENT;

   --Inputs Signals    
   signal M_TB, L_TB, S1_TB, S2_TB : STD_LOGIC := '0';
   
   --Output Signal   
   signal C_TB : STD_LOGIC := '0';
   
   -- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164ad4f";
   constant PERIOD : time := 100ns;

begin

  -- Instantiate the Unit Under Test (UUT)
  uut: DP_ShifterCFlagMux2_1bit_23375183 PORT MAP (
       LSB => L_TB,
       MSB => M_TB,
       S1 => S1_TB,
       S2 => S2_TB, 
       C  => C_TB 
       );

  stim_proc: process
   begin
		
      S1_TB <= '0';
      S2_TB <= '0';
      M_TB <= '0';
      L_TB <= '0';
      wait for PERIOD;
      S1_TB <= '1';
      L_TB <= '1' ;
      wait for PERIOD;
      S1_TB <= '0';
      L_TB <= '0' ;
      S2_TB <= '1';
      M_TB <= '1' ;
      wait for PERIOD;
      S1_TB <= '1';
      L_TB <= '1' ;
      wait for PERIOD;

   end process;


end Behavioral;
