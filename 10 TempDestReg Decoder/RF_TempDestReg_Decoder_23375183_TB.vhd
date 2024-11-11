----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 08.10.2023 18:25:21
-- Design Name: 
-- Module Name: RF_TempDestReg_Decoder_23375183_TB - Simulation
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

entity RF_TempDestReg_Decoder_23375183_TB is
--  Port ( );
end RF_TempDestReg_Decoder_23375183_TB;

architecture Simulation of RF_TempDestReg_Decoder_23375183_TB is

   -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT RF_TempDestReg_Decoder_23375183
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10, Q11, Q12, Q13, Q14, Q15 : out STD_LOGIC);
    END COMPONENT;

   --Inputs Signals 
   signal A_TB : std_logic_vector(3 downto 0):= (others => '0');
   --Output Signal   
   signal Q0_TB, Q1_TB, Q2_TB, Q3_TB : STD_LOGIC := '0';
   signal Q4_TB, Q5_TB, Q6_TB, Q7_TB : STD_LOGIC := '0';
   signal Q8_TB, Q9_TB, Q10_TB, Q11_TB : STD_LOGIC := '0';
   signal Q12_TB, Q13_TB, Q14_TB, Q15_TB : STD_LOGIC := '0';
   
   -- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164AD4F";
   constant WaitPeriod : time := 100ns;   
       
begin

   -- Instantiate the Unit Under Test (UUT)
   uut: RF_TempDestReg_Decoder_23375183 PORT MAP (
          A => A_TB, 
          Q0 => Q0_TB, 
          Q1 => Q1_TB, 
          Q2 => Q2_TB, 
          Q3 => Q3_TB, 
          Q4 => Q4_TB, 
          Q5 => Q5_TB, 
          Q6 => Q6_TB, 
          Q7 => Q7_TB,
	  Q8 => Q8_TB,
	  Q9 => Q9_TB,
	  Q10 => Q10_TB,
	  Q11 => Q11_TB,
	  Q12 => Q12_TB,
	  Q13 => Q13_TB,
	  Q14 => Q14_TB,
	  Q15 => Q15_TB);

stim_proc: process

   begin		
      A_TB <= "0000";  -- case A       
      wait for WaitPeriod;	
      A_TB <= "0001"; -- case B       
      wait for WaitPeriod;	
      A_TB <= "0010"; -- case C       
      wait for WaitPeriod;	
      A_TB <= "0011"; -- case D        
      wait for WaitPeriod;	
      A_TB <= "0100"; -- case E       
      wait for WaitPeriod;	
      A_TB <= "0101"; -- case F       
      wait for WaitPeriod;	
      A_TB <= "0110"; -- case G       
      wait for WaitPeriod;	
      A_TB <= "0111"; -- case H        
      wait for WaitPeriod;	
      A_TB <= "1000";  -- case A       
      wait for WaitPeriod;	
      A_TB <= "1001"; -- case B       
      wait for WaitPeriod;	
      A_TB <= "1010"; -- case C       
      wait for WaitPeriod;	
      A_TB <= "1011"; -- case D        
      wait for WaitPeriod;	
      A_TB <= "1100"; -- case E       
      wait for WaitPeriod;	
      A_TB <= "1101"; -- case F       
      wait for WaitPeriod;	
      A_TB <= "1110"; -- case G       
      wait for WaitPeriod;	
      A_TB <= "1111"; -- case H        
      wait for WaitPeriod;      
   end process;

end Simulation;
