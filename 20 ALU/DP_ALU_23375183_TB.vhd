----------------------------------------------------------------------------------
-- Company: Trinity College Dublin
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 06.10.2022 23:51:26
-- Design Name: 
-- Module Name: DP_ALU_23375183_TB - Behavioral
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

entity DP_ALU_23375183_TB is
--  Port ( ); We don't need ports 
end DP_ALU_23375183_TB;

architecture Sim of DP_ALU_23375183_TB is

-- Component Declaration for the Unit Under Test (UUT)

component DP_ALU_23375183

    Port ( C_IN, S0, S1, S2 : in STD_LOGIC;
            A, B : in STD_LOGIC_VECTOR (31 downto 0);
	    C, V : out STD_LOGIC;
	    G : out STD_LOGIC_VECTOR (31 downto 0));
end component;

--Inputs

    signal A_TB, B_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal C_IN_TB : STD_LOGIC := '0';
    signal S0_TB, S1_TB, S2_TB : STD_LOGIC := '0';
  
--Outputs

    signal G_TB : STD_LOGIC_VECTOR (31 downto 0)  := (others => '0');
    signal C_TB : STD_LOGIC := '0';
    signal V_TB : STD_LOGIC := '0';
    
-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164AD4F";  
   constant PERIOD : time := 250ns;
   
begin

	-- Instantiate the Unit Under Test (UUT)
   uut: DP_ALU_23375183 PORT MAP (
       A => A_TB,
       B => B_TB,
       C_IN => C_IN_TB,
       G => G_TB,
       C => C_TB,
       V => V_TB,
       S0 => S0_TB,
       S1 => S1_TB,
       S2 => S2_TB
       );

 stim_proc: process
   begin

	A_TB <= x"0164AD4F";
        B_TB <= x"0000FFFF";
	C_IN_TB <= '0';
	S0_TB <= '0';
	S1_TB <= '0';
	S2_TB <= '0';

    --A

	wait for PERIOD;

	--A + 1
	C_IN_TB <= '1';

	wait for PERIOD;
	
	--A + B
	S0_TB <= '1';
	C_IN_TB <= '0';

	wait for PERIOD;

	--A + B + 1
	C_IN_TB <= '1';

	wait for PERIOD;

	--A + NOT B
	S0_TB <= '0';
	S1_TB <= '1';
	C_IN_TB <= '0';

	wait for PERIOD;

	--A + NOT B + 1
	C_IN_TB <= '1';

	wait for PERIOD;

	--A - 1
	C_IN_TB <= '0';
	S0_TB <= '1';
	
	wait for PERIOD;
	
	--A (again)
	C_IN_TB <= '1';

	wait for PERIOD;
	
	--A AND B
	C_IN_TB <= '0';
	S2_TB <= '1';
	S0_TB <= '0';
	S1_TB <= '0';

	wait for PERIOD;

	--A OR B
	S0_TB <= '1';

	wait for PERIOD;

	--A XOR B
	S0_TB <= '0';
	S1_TB <= '1';

	wait for PERIOD;

	--A NOT B
	S0_TB <= '1';

	wait for PERIOD;

 
   end process;
end Sim;
