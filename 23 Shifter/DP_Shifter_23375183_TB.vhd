----------------------------------------------------------------------------------
-- Company: Trinity College Dublin
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 06.10.2022 23:51:26
-- Design Name: 
-- Module Name: DP_Shifter_23375183_TB - Behavioral
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

entity DP_Shifter_23375183_TB is
--  Port ( ); We don't need ports 
end DP_Shifter_23375183_TB;

architecture Sim of DP_Shifter_23375183_TB is

-- Component Declaration for the Unit Under Test (UUT)

component DP_Shifter_23375183

    Port (  S1, S2 : in STD_LOGIC;
            B : in STD_LOGIC_VECTOR (31 downto 0);
	    C : out STD_LOGIC;
	    Y : out STD_LOGIC_VECTOR (31 downto 0));
end component;

--Inputs

    signal B_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal S1_TB, S2_TB : STD_LOGIC := '0';
  
--Outputs

    signal Y_TB : STD_LOGIC_VECTOR (31 downto 0)  := (others => '0');
    signal C_TB : STD_LOGIC := '0';
    
-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164AD4F";  
   constant PERIOD : time := 250ns;
   
begin

	-- Instantiate the Unit Under Test (UUT)
   uut: DP_Shifter_23375183 PORT MAP (
       S1 => S1_TB,
       B => B_TB,
       S2 => S2_TB,
       Y => Y_TB,
       C => C_TB
       );

 stim_proc: process
   begin

	B_TB <= x"0164AD4F";
	S1_TB <= '0';
	S2_TB <= '0';

        --No Shift

	wait for PERIOD;

	--Shift Left
	S1_TB <= '1';

	wait for PERIOD;
	
	--Shift Right
	S1_TB <= '0';
	S2_TB <= '1';

	wait for PERIOD;

	--Shift Carry
	S1_TB <= '0';
	S2_TB <= '1';
	B_TB <= x"C0000000";

	wait for PERIOD;

	--Shift unset Carry
	S2_TB <= '0';

	wait for PERIOD;

	--Shift Carry
	B_TB <= x"00000003";
	S1_TB <= '1';

	wait for PERIOD;

	--Shift unset carry

	S1_TB <= '0';

	wait for PERIOD;

 
   end process;
end Sim;
