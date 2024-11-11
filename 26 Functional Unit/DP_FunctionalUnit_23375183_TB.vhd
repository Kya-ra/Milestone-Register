----------------------------------------------------------------------------------
-- Company: Trinity College Dublin
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 06.10.2022 23:51:26
-- Design Name: 
-- Module Name: DP_FunctionalUnit_23375183_TB - Behavioral
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

entity DP_FunctionalUnit_23375183_TB is
--  Port ( ); We don't need ports 
end DP_FunctionalUnit_23375183_TB;

architecture Sim of DP_FunctionalUnit_23375183_TB is

-- Component Declaration for the Unit Under Test (UUT)

component DP_FunctionalUnit_23375183

    Port ( A, B : in STD_LOGIC_VECTOR (31 downto 0);
	   FS4 : in STD_LOGIC_VECTOR (4 downto 0);
	    N, Z, C, V : out STD_LOGIC;
	    F : out STD_LOGIC_VECTOR (31 downto 0));
end component;

--Inputs

    signal A_TB, B_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal FS4_TB : STD_LOGIC_VECTOR (4 downto 0) := (others => '0');
  
--Outputs

    signal F_TB : STD_LOGIC_VECTOR (31 downto 0)  := (others => '0');
    signal N_TB, C_TB, Z_TB, V_TB : STD_LOGIC := '0';
    
-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164AD4F";  
   constant PERIOD : time := 250ns;
   
begin

	-- Instantiate the Unit Under Test (UUT)
   uut: DP_FunctionalUnit_23375183 PORT MAP (
       A => A_TB,
       B => B_TB,
       FS4 => FS4_TB,
       F => F_TB,
	N => N_TB,
	Z => Z_TB,
       C => C_TB,
       V => V_TB
       );

 stim_proc: process
   begin

	A_TB <= x"0164AD4F";
    B_TB <= x"0164AD52";
	FS4_TB <= b"00000";
    
	--A + NOT B
	FS4_TB <= b"00100";
	--S1

	wait for PERIOD*2;

	--A OR B
	FS4_TB <= b"01010";
	--S2, S0

	wait for PERIOD;

	--A + B + 1
	FS4_TB <= b"00011";
	--S0, C

	wait for PERIOD;

	--A XOR B
	FS4_TB <= b"01100";
	--S2, S1

	wait for PERIOD;

	--A + B
	FS4_TB <= b"00010";
	--S0

	wait for PERIOD;

	--slB
	FS4_TB <= b"11000";
	--S3, S2

	wait for PERIOD;

	--A (FS 00000)
	FS4_TB <= b"00000";
	--Nothing

	wait for PERIOD;

	--B
	FS4_TB <= b"10000";
	--S3

	wait for PERIOD;

	--A + 1
	FS4_TB <= b"00001";
	--C

	wait for PERIOD;
	
	--A + NOT B + 1
	FS4_TB <= b"00101";
	--S1, C

	wait for PERIOD;

	--A - 1
	FS4_TB <= b"00110";
	--S1, S0

	wait for PERIOD;

	--A NOT
	FS4_TB <= b"01110";
	--S2, S1, S0

	wait for PERIOD;
	
	--A AND B
	FS4_TB <= b"01000";
	--S2

	wait for PERIOD;

	--srB
	FS4_TB <= b"10100";
	--S3, S1	

	wait for PERIOD;

	--A (FS 00111)
	FS4_TB <= b"00111";
	--S1, S0, C

	wait for PERIOD;
 
   end process;
end Sim;
