----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 21.09.2023 11:15:19
-- Design Name: 
-- Module Name: Mux2_32bit_TB - Behavioral
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

entity CPU_Mux2_32bit_23375183_TB is
--  we don't need ports
end CPU_Mux2_32bit_23375183_TB;

architecture Behavioral of CPU_Mux2_32bit_23375183_TB is

   -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT DP_Mux2_32bit_23375183
      Port ( I0, I1 : in STD_LOGIC_VECTOR (31 downto 0);
             S : in STD_LOGIC;
             Y : out STD_LOGIC_VECTOR (31 downto 0));
    END COMPONENT;

   --Inputs Signals    
   signal I0_TB, I1_TB : STD_LOGIC_VECTOR (31 downto 0) := b"00000000000000000000000000000000";
   signal S_TB : STD_LOGIC := '0';
   
   --Output Signal   
   signal Y_TB : STD_LOGIC_VECTOR (31 downto 0) := b"00000000000000000000000000000000";
   
   -- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164ad4f";
   constant PERIOD : time := 200 ns ;

begin

  -- Instantiate the Unit Under Test (UUT)
  uut: DP_Mux2_32bit_23375183 PORT MAP (
       I0 => I0_TB,
       I1 => I1_TB,
       S  => S_TB, 
       Y  => Y_TB 
       );


  stim_proc: process
   begin		
      I0_TB <= b"00000001011001001010110101001111";                 -- case A 
      I1_TB <= b"00000001011001001010110101010000";
      wait for PERIOD;
      
      S_TB <= '0';
      wait for PERIOD;
      
      S_TB <= '1';                                            -- case B   
                                                    
      wait for PERIOD;

   end process;


end Behavioral;
