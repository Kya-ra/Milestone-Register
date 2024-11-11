----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 21.09.2023 11:15:19
-- Design Name: 
-- Module Name: Mux3_32bit_TB - Behavioral
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

entity Mux3_32bit_23375183_TB is
--  we don't need ports
end Mux3_32bit_23375183_TB;

architecture Behavioral of Mux3_32bit_23375183_TB is

   -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Mux3_32bit_23375183
      Port ( IN00, IN01, IN02 : in STD_LOGIC_VECTOR (31 downto 0);
             S : in STD_LOGIC_VECTOR (1 downto 0);
             Y : out STD_LOGIC_VECTOR (31 downto 0));
    END COMPONENT;

   --Inputs Signals    
   signal IN00_TB, IN01_TB, IN02_TB : STD_LOGIC_VECTOR (31 downto 0) := b"00000000000000000000000000000000";
   signal S_TB : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
   
   --Output Signal   
   signal Y_TB : STD_LOGIC_VECTOR (31 downto 0) := b"00000000000000000000000000000000";
   
   -- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164ad4f";
   constant PERIOD : time := 200 ns ;

begin

  -- Instantiate the Unit Under Test (UUT)
  uut: Mux3_32bit_23375183 PORT MAP (
       IN00 => IN00_TB,
       IN01 => IN01_TB,
       IN02 => IN02_TB,
       S  => S_TB, 
       Y  => Y_TB 
       );


  stim_proc: process
   begin		
      S_TB <= b"00";
      wait for PERIOD;
      IN00_TB <= b"00000001011001001010110101001111";                 -- case A 
      IN01_TB <= b"00000001011001001010110101010000";
      IN02_TB <= b"00000001011001001010110101010001";  
      wait for PERIOD;
      
      S_TB <= b"01";                                            -- case B   
                                                    
      wait for PERIOD;
      
      S_TB <= b"10";                                            -- case C   
                                                    
      wait for PERIOD;

   end process;


end Behavioral;
