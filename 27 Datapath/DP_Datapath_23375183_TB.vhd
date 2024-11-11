----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 27.09.2024 10:47:43
-- Design Name: 
-- Module Name: Datapath_23375183_TB - Simulation
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

entity DP_Datapath_23375183_TB is
--  Port ( );
end DP_Datapath_23375183_TB;

architecture Simulation of DP_Datapath_23375183_TB is

    COMPONENT DP_Datapath_23375183
    Port ( IR_IN, DATA_IN : in STD_LOGIC_VECTOR (31 downto 0);
	   FS : in STD_LOGIC_VECTOR (4 downto 0);
	   MB, MD : in STD_LOGIC;
	   CLK, Reset, RW : in STD_LOGIC;
           DR, SA, SB : in STD_LOGIC_VECTOR (4 downto 0);
           TA, TB, TD : in STD_LOGIC_VECTOR (3 downto 0);
	   N, Z, C, V : out STD_LOGIC;
	   DATA_OUT, ADD : out STD_LOGIC_VECTOR (31 downto 0)
    );
    END COMPONENT;
    
signal IR_TB, DATAI_TB : STD_LOGIC_VECTOR (31 downto 0) := b"00000000000000000000000000000000";
signal CLK_TB, Reset_TB, RW_TB, MB_TB, MD_TB : STD_LOGIC := '0';
signal FS4_TB, DR_TB, SA_TB, SB_TB : STD_LOGIC_VECTOR (4 downto 0) := b"00000";
signal TA_TB, TB_TB, TD_TB : STD_LOGIC_VECTOR (3 downto 0) := b"0000";
signal N_TB, Z_TB, C_TB, V_TB : STD_LOGIC := '0';
signal ADD_TB, DATAO_TB : STD_LOGIC_VECTOR (31 downto 0) := b"00000000000000000000000000000000";

constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164AD4F";
constant PERIOD : time := 250 ns ;

begin
    uut : DP_Datapath_23375183 PORT MAP (
        DATA_IN => DATAI_TB,
        IR_IN => IR_TB,
	FS => FS4_TB,
	MB => MB_TB,
	MD => MD_TB,
	CLK => CLK_TB,
	Reset => Reset_TB,
	RW => RW_TB,
	DR => DR_TB,
	SA => SA_TB,
	SB => SB_TB,
	TA => TA_TB,
	TB => TB_TB,
	TD => TD_TB,
	N => N_TB,
	Z => Z_TB,
	C => C_TB,
	V => V_TB,
	DATA_OUT => DATAO_TB,
	ADD => ADD_TB
        );
        
    CLK_TB <= not CLK_TB after PERIOD /4;
        
    stim_proc : process
    begin
        RW_TB <= '1';
        Reset_TB <= '0';
        TD_TB <= b"0000";
        TA_TB <= b"0000";
        TB_TB <= b"0000";
	MD_TB <= '1';
        
    DR_TB <= b"00000";
    DATAI_TB <= x"0164AD4F"; -- Starting value
    wait for PERIOD/2;
    SA_TB <= b"00000";
    wait for PERIOD/2;

    DR_TB <= b"00001";
    DATAI_TB <= x"0164AD4E";
    wait for PERIOD/2;
    SB_TB <= b"00001";
    wait for PERIOD/2;

    DR_TB <= b"00010";
    DATAI_TB <= x"0164AD4D";
    wait for PERIOD/2;
    SA_TB <= b"00010";
    wait for PERIOD/2;

    DR_TB <= b"00011";
    DATAI_TB <= x"0164AD4C";
    wait for PERIOD/2;
    SB_TB <= b"00011";
    wait for PERIOD/2;

    DR_TB <= b"00100";
    DATAI_TB <= x"0164AD4B";
    wait for PERIOD/2;
    SA_TB <= b"00100";
    wait for PERIOD/2;

    DR_TB <= b"00101";
    DATAI_TB <= x"0164AD4A";
    wait for PERIOD/2;
    SB_TB <= b"00101";
    wait for PERIOD/2;

    DR_TB <= b"00110";
    DATAI_TB <= x"0164AD49";
    wait for PERIOD/2;
    SA_TB <= b"00110";
    wait for PERIOD/2;

    DR_TB <= b"00111";
    DATAI_TB <= x"0164AD48";
    wait for PERIOD/2;
    SB_TB <= b"00111";
    wait for PERIOD/2;

    DR_TB <= b"01000";
    DATAI_TB <= x"0164AD47";
    wait for PERIOD/2;
    SA_TB <= b"01000";
    wait for PERIOD/2;

    DR_TB <= b"01001";
    DATAI_TB <= x"0164AD46";
    wait for PERIOD/2;
    SB_TB <= b"01001";
    wait for PERIOD/2;

    DR_TB <= b"01010";
    DATAI_TB <= x"0164AD45";
    wait for PERIOD/2;
    SA_TB <= b"01010";
    wait for PERIOD/2;

    DR_TB <= b"01011";
    DATAI_TB <= x"0164AD44";
    wait for PERIOD/2;
    SB_TB <= b"01011";
    wait for PERIOD/2;

    DR_TB <= b"01100";
    DATAI_TB <= x"0164AD43";
    wait for PERIOD/2;
    SA_TB <= b"01100";
    wait for PERIOD/2;

    DR_TB <= b"01101";
    DATAI_TB <= x"0164AD42";
    wait for PERIOD/2;
    SB_TB <= b"01101";
    wait for PERIOD/2;

    DR_TB <= b"01110";
    DATAI_TB <= x"0164AD41";
    wait for PERIOD/2;
    SA_TB <= b"01110";
    wait for PERIOD/2;

    DR_TB <= b"01111";
    DATAI_TB <= x"0164AD40";
    wait for PERIOD/2;
    SB_TB <= b"01111";
    wait for PERIOD/2;

    DR_TB <= b"10000";
    DATAI_TB <= x"0164AD3F";
    wait for PERIOD/2;
    SA_TB <= b"10000";
    wait for PERIOD/2;

    DR_TB <= b"10001";
    DATAI_TB <= x"0164AD3E";
    wait for PERIOD/2;
    SB_TB <= b"10001";
    wait for PERIOD/2;

    DR_TB <= b"10010";
    DATAI_TB <= x"0164AD3D";
    wait for PERIOD/2;
    SA_TB <= b"10010";
    wait for PERIOD/2;

    DR_TB <= b"10011";
    DATAI_TB <= x"0164AD3C";
    wait for PERIOD/2;
    SB_TB <= b"10011";
    wait for PERIOD/2;

    DR_TB <= b"10100";
    DATAI_TB <= x"0164AD3B";
    wait for PERIOD/2;
    SA_TB <= b"10100";
    wait for PERIOD/2;

    DR_TB <= b"10101";
    DATAI_TB <= x"0164AD3A";
    wait for PERIOD/2;
    SB_TB <= b"10101";
    wait for PERIOD/2;

    DR_TB <= b"10110";
    DATAI_TB <= x"0164AD39";
    wait for PERIOD/2;
    SA_TB <= b"10110";
    wait for PERIOD/2;

    DR_TB <= b"10111";
    DATAI_TB <= x"0164AD38";
    wait for PERIOD/2;
    SB_TB <= b"10111";
    wait for PERIOD/2;

    DR_TB <= b"11000";
    DATAI_TB <= x"0164AD37";
    wait for PERIOD/2;
    SA_TB <= b"11000";
    wait for PERIOD/2;

    DR_TB <= b"11001";
    DATAI_TB <= x"0164AD36";
    wait for PERIOD/2;
    SB_TB <= b"11001";
    wait for PERIOD/2;

    DR_TB <= b"11010";
    DATAI_TB <= x"0164AD35";
    wait for PERIOD/2;
    SA_TB <= b"11010";
    wait for PERIOD/2;

    DR_TB <= b"11011";
    DATAI_TB <= x"0164AD34";
    wait for PERIOD/2;
    SB_TB <= b"11011";
    wait for PERIOD/2;

    DR_TB <= b"11100";
    DATAI_TB <= x"0164AD33";
    wait for PERIOD/2;
    SA_TB <= b"11100";
    wait for PERIOD/2;

    DR_TB <= b"11101";
    DATAI_TB <= x"0164AD32";
    wait for PERIOD/2;
    SB_TB <= b"11101";
    wait for PERIOD/2;

    DR_TB <= b"11110";
    DATAI_TB <= x"0164AD31";
    wait for PERIOD/2;
    SA_TB <= b"11110";
    wait for PERIOD/2;

    DR_TB <= b"11111";
    DATAI_TB <= x"0164AD30";
    wait for PERIOD/2;
    SB_TB <= b"11111";
    wait for PERIOD/2;

    TD_TB <= b"0001";
    DATAI_TB <= x"0164AD2F";
    wait for PERIOD/2;
    TA_TB <= b"0001";
    wait for PERIOD/2;

    TD_TB <= b"0010";
    DATAI_TB <= x"0164AD2E";
    wait for PERIOD/2;
    TB_TB <= b"0001";
    wait for PERIOD/2;

    TD_TB <= b"0011";
    DATAI_TB <= x"0164AD2D";
    wait for PERIOD/2;
    TA_TB <= b"0010";
    wait for PERIOD/2;

    TD_TB <= b"0100";
    DATAI_TB <= x"0164AD2C";
    wait for PERIOD/2;
    TB_TB <= b"0010";
    wait for PERIOD/2;

    TD_TB <= b"0101";
    DATAI_TB <= x"0164AD2B";
    wait for PERIOD/2;
    TA_TB <= b"0011";
    wait for PERIOD/2;

    TD_TB <= b"0110";
    DATAI_TB <= x"0164AD2A";
    wait for PERIOD/2;
    TB_TB <= b"0011";
    wait for PERIOD/2;

    TD_TB <= b"0111";
    DATAI_TB <= x"0164AD29";
    wait for PERIOD/2;
    TA_TB <= b"0100";
    wait for PERIOD/2;

    TD_TB <= b"1000";
    DATAI_TB <= x"0164AD28";
    wait for PERIOD/2;
    TB_TB <= b"0100";
    wait for PERIOD/2;

    TD_TB <= b"1001";
    DATAI_TB <= x"0164AD27";
    wait for PERIOD/2;
    TA_TB <= b"0101";
    wait for PERIOD/2;

    TD_TB <= b"1010";
    DATAI_TB <= x"0164AD26";
    wait for PERIOD/2;
    TB_TB <= b"0101";
    wait for PERIOD/2;

    TD_TB <= b"1011";
    DATAI_TB <= x"0164AD25";
    wait for PERIOD/2;
    TA_TB <= b"0110";
    wait for PERIOD/2;

    TD_TB <= b"1100";
    DATAI_TB <= x"0164AD24";
    wait for PERIOD/2;
    TB_TB <= b"0110";
    wait for PERIOD/2;

    TD_TB <= b"1101";
    DATAI_TB <= x"0164AD23";
    wait for PERIOD/2;
    TA_TB <= b"0111";
    wait for PERIOD/2;

    TD_TB <= b"1110";
    DATAI_TB <= x"0164AD22";
    wait for PERIOD/2;
    TB_TB <= b"0111";
    wait for PERIOD/2;

    TD_TB <= b"1111";
    DATAI_TB <= x"0164AD21";
    wait for PERIOD/2;
    TA_TB <= b"1000";
    wait for PERIOD/2;
        
    RW_TB <= '0';
    DATAI_TB <= b"00000000000000000000000000000000";
    wait for PERIOD;

    DR_TB <= b"00011";
    SA_TB <= b"01000";
    SB_TB <= b"10010";
    TA_TB <= b"0000";
    TB_TB <= b"0000";
    TD_TB <= b"0000";
    RW_TB <= '1';
    MB_TB <= '0';
    MD_TB <= '0';
    IR_TB <= x"0164AD4F";
    wait for PERIOD;
    
    --A + NOT B
	FS4_TB <= b"00100";
	--S1

	wait for PERIOD;

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
	
	--------
    MB_TB <= '1';
    wait for PERIOD;
	
	
	--A + NOT B
	FS4_TB <= b"00100";
	--S1

	wait for PERIOD;

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
	--FS4_TB <= b"00000";
	--Nothing

	--wait for PERIOD;

	--B
	FS4_TB <= b"10000";
	--S3

	wait for PERIOD;

	--A + 1
	--FS4_TB <= b"00001";
	--C

	--wait for PERIOD;
	
	--A + NOT B + 1
	FS4_TB <= b"00101";
	--S1, C

	wait for PERIOD;

	--A - 1
	--FS4_TB <= b"00110";
	--S1, S0

	--wait for PERIOD;

	--A NOT
	--FS4_TB <= b"01110";
	--S2, S1, S0

	--wait for PERIOD;
	
	--A AND B
	FS4_TB <= b"01000";
	--S2

	wait for PERIOD;

	--srB
	FS4_TB <= b"10100";
	--S3, S1	

	wait for PERIOD;

	--A (FS 00111)
	--FS4_TB <= b"00111";
	--S1, S0, C

	--wait for PERIOD;

        
    Reset_TB <= '1';
    wait for PERIOD*2;


    end process;
    

end Simulation;
