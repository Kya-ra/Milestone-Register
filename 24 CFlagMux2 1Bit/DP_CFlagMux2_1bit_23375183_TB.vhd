----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 21.09.2023 11:15:19
-- Design Name: 
-- Module Name: CFlagMux2_1bit_TB - Behavioral
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

entity DP_CFlagMux2_1bit_23375183_TB is
--  we don't need ports
end DP_CFlagMux2_1bit_23375183_TB;

architecture Behavioral of DP_CFlagMux2_1bit_23375183_TB is

   -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT DP_CFlagMux2_1bit_23375183
      Port ( C_ALU, C_Shift, FS4 : in STD_LOGIC;
             C : out STD_LOGIC);
    END COMPONENT;

   --Inputs Signals    
   signal ALU_TB, Shift_TB, FS4_TB : STD_LOGIC := '0';
   
   --Output Signal   
   signal C_TB : STD_LOGIC := '0';
   
   -- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164ad4f";
   constant PERIOD : time := 100ns;

begin

  -- Instantiate the Unit Under Test (UUT)
  uut: DP_CFlagMux2_1bit_23375183 PORT MAP (
       C_ALU => ALU_TB,
       C_Shift => Shift_TB,
       FS4 => FS4_TB, 
       C  => C_TB 
       );

  stim_proc: process
   begin
		
      FS4_TB <= '0';
      ALU_TB <= '0';
      Shift_TB <= '0';
      wait for PERIOD;
      ALU_TB <='1';
      wait for PERIOD;
      ALU_TB <= '0';
      FS4_TB <= '1' ;
      wait for PERIOD;
      Shift_TB <= '1';
      wait for PERIOD;

   end process;


end Behavioral;
