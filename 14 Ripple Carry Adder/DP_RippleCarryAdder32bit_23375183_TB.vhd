----------------------------------------------------------------------------------
-- Company: Trinity College Dublin
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 06.10.2022 23:51:26
-- Design Name: 
-- Module Name: DP_RippleCarryAdder32Bit_23375183_TB - Behavioral
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

entity DP_RippleCarryAdder32Bit_23375183_TB is
--  Port ( ); We don't need ports 
end DP_RippleCarryAdder32Bit_23375183_TB;

architecture Sim of DP_RippleCarryAdder32Bit_23375183_TB is

-- Component Declaration for the Unit Under Test (UUT)

component DP_RippleCarryAdder32Bit_23375183

Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
       B : in STD_LOGIC_VECTOR (31 downto 0);
       C_IN : in STD_LOGIC;
       SUM : out STD_LOGIC_VECTOR (31 downto 0);
       C_OUT : out STD_LOGIC;
       V : out STD_LOGIC);
end component;

--Inputs

    signal A_TB, B_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal C_IN_TB : STD_LOGIC := '0';
  
--Outputs

    signal SUM_TB : STD_LOGIC_VECTOR (31 downto 0)  := (others => '0');
    signal C_OUT_TB : STD_LOGIC := '0';
    signal V_TB : STD_LOGIC := '0';
    
-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164AD4F";  
   constant WaitPERIOD : time := 250ns;
   
begin

	-- Instantiate the Unit Under Test (UUT)
   uut: DP_RippleCarryAdder32Bit_23375183 PORT MAP (
       A => A_TB,
       B => B_TB,
       C_IN => C_IN_TB,
       SUM => SUM_TB,
       C_OUT => C_OUT_TB,
       V => V_TB
       );

 stim_proc: process
   begin
   
      -- worst case
   		
      A_TB <= x"ffff0000";
      B_TB <= x"0000ffff";
      C_IN_TB <= '1';
      
      wait for WaitPERIOD;
      
   -- neg neg overflow

	A_TB <= x"80000000";
    B_TB <= x"FFFFFFFF";
	C_IN_TB <= '0';

	wait for WaitPERIOD;
	
	 -- neg neg

	A_TB <= x"FFFFFFE0";
    B_TB <= x"FFFFFFF0";
	C_IN_TB <= '0';

	wait for WaitPERIOD;
	
	 -- pos neg

	A_TB <= x"00000010";
    B_TB <= x"FFFFFFF0";
	C_IN_TB <= '0';

	wait for WaitPERIOD;
	
   -- pos pos overflow

	A_TB <= x"7FFFFFFF";
    B_TB <= x"00000001";
	C_IN_TB <= '0';

	wait for WaitPERIOD;
	
	 -- pos pos 

	A_TB <= x"00000010";
    B_TB <= x"00000020";
	C_IN_TB <= '0';

	wait for WaitPERIOD;
	
	--student number case

	A_TB <= x"0164AD4F";
    B_TB <= x"7FFFFFFF";
	C_IN_TB <= '0';

	wait for WaitPERIOD;	
	
    A_TB <= x"0164AD4F";
    B_TB <= x"FFFFFFFF";
	C_IN_TB <= '0';

	wait for WaitPERIOD;
	
	

 
   end process;
end Sim;
