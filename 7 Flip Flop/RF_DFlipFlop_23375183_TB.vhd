----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.09.2024 10:47:43
-- Design Name: 
-- Module Name: D_Flip_Flop_23375183_TB - Simulation
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity D_Flip_Flop_23375183_TB is
--  Port ( );
end D_Flip_Flop_23375183_TB;

architecture Simulation of D_Flip_Flop_23375183_TB is

-- Component Declaration for the Unit Under Test ( UUT )
COMPONENT D_Flip_Flop_23375183
Port ( CLK , D, Reset : in STD_LOGIC ;
       Q , Q_not : out STD_LOGIC ) ;
END COMPONENT ;

-- Inputs Signals
signal CLK_TB , D_TB, Reset_TB : STD_LOGIC := '0';
-- Output Signal
signal Q_TB , Q_not_TB : STD_LOGIC := '0';

-- StudentID e . g . 26 33 57 25( DEC ) = 1 91 D9 ED ( HEX )
constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164AD4F";
constant PERIOD : time := 200 ns ;

begin

    -- Instantiate the Unit Under Test ( UUT )
    uut : D_Flip_Flop_23375183 PORT MAP (
        CLK => CLK_TB,
        D => D_TB,
	    Reset => Reset_TB,
        Q => Q_TB,
        Q_not => Q_not_TB
    ) ;
    
  CLK_TB <= not CLK_TB after PERIOD/2;
   
   stim_proc: process
   begin
      wait until CLK_TB'event and CLK_TB='1';
      D_TB <= '1' after PERIOD/4;
      Reset_TB <= '1'after PERIOD/4;                 -- Case A
   
      wait until CLK_TB'event and CLK_TB='1';
      D_TB <= '0' after PERIOD/2;
      Reset_TB <= '0' after PERIOD/4;                 -- Case B
      
      wait until CLK_TB'event and CLK_TB='1';
      D_TB <= '1' after PERIOD/4;                 -- Case C
      
      wait until CLK_TB'event and CLK_TB='1';
      D_TB <= '0' after PERIOD/4;                 -- Case D
      
      wait until CLK_TB'event and CLK_TB='1';
      D_TB <= '1' after PERIOD/4;                 -- Case E
      
      wait until CLK_TB'event and CLK_TB='1';
   end process;

end Simulation;
