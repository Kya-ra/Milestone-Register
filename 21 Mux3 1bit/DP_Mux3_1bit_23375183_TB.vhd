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

entity DP_Mux3_1bit_23375183_TB is
--  we don't need ports
end DP_Mux3_1bit_23375183_TB;

architecture Behavioral of DP_Mux3_1bit_23375183_TB is

   -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT DP_Mux3_1bit_23375183
    Port ( Bi, slBi, srBi : in STD_LOGIC;
           S1, S2 : in STD_LOGIC;
           Y : out STD_LOGIC);
    END COMPONENT;

   --Inputs Signals    
   signal S1_TB, S2_TB, Bi_TB, slBi_TB, srBi_TB : STD_LOGIC := '0';
   
   --Output Signal   
   signal Y_TB : STD_LOGIC := '0';
   
   -- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164ad4f";
   constant PERIOD : time := 200ns;
   
begin

  -- Instantiate the Unit Under Test (UUT)
  uut: DP_Mux3_1bit_23375183 PORT MAP (
       S1 => S1_TB,
       S2 => S2_TB,
       Bi => Bi_TB,
       slBi => slBi_TB,
       srBi => srBi_TB,
       Y  => Y_TB 
       );

  stim_proc: process
   begin
   		
      S1_TB <= '0';
      S2_TB <= '0';
      Bi_TB <= '0';
      slBi_TB <= '0';
      srBi_TB <= '0';
      wait for PERIOD;
      Bi_TB <= '1';
      wait for PERIOD;
      Bi_TB <= '0';
      S1_TB <= '1';
      srBi_TB <= '1' ;
      wait for PERIOD;
      S1_TB <= '0';
      srBi_TB <= '0' ;
      S2_TB <= '1';
      slBi_TB <= '1' ;
      wait for PERIOD;
      
   end process;


end Behavioral;
