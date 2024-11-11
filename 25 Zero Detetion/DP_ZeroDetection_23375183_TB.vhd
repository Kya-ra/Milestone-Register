----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 21.09.2023 11:15:19
-- Design Name: 
-- Module Name: ZeroDetection_TB - Behavioral
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

entity DP_ZeroDetection_23375183_TB is
--  we don't need ports
end DP_ZeroDetection_23375183_TB;

architecture Behavioral of DP_ZeroDetection_23375183_TB is

   -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT DP_ZeroDetection_23375183
      Port ( I : in STD_LOGIC_VECTOR(31 downto 0);
             Z : out STD_LOGIC);
    END COMPONENT;

   --Inputs Signals    
   signal I_TB : STD_LOGIC_VECTOR (31 downto 0):= b"00000000000000000000000000000000";
   
   --Output Signal   
   signal Z_TB : STD_LOGIC := '0';
   
   -- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164ad4f";
   constant PERIOD : time := 100ns;

begin

  -- Instantiate the Unit Under Test (UUT)
  uut: DP_ZeroDetection_23375183 PORT MAP (
       I => I_TB,
       Z  => Z_TB 
       );

  stim_proc: process
   begin
		
      I_TB <= x"00008000";
      wait for PERIOD;
      I_TB <= x"00000000";
      wait for PERIOD;
      I_TB <= x"00000400";
      wait for PERIOD;
      I_TB <= x"00000020";
      wait for PERIOD;

   end process;


end Behavioral;
