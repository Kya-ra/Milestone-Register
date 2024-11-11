----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 27.09.2024 10:47:43
-- Design Name: 
-- Module Name: Register_32_15_23375183_TB - Simulation
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

entity RF_Test_RegisterFile_32_15_23375183_TB is
--  Port ( );
end RF_Test_RegisterFile_32_15_23375183_TB;

architecture Simulation of RF_Test_RegisterFile_32_15_23375183_TB is

    COMPONENT RF_Test_RegisterFile_32_15_23375183
     Port ( CLK_Test, RW_Test, Reset_Test : in STD_LOGIC;
            DR_Test, SA_Test, SB_Test : in STD_LOGIC_VECTOR (4 downto 0);
	        TA_Test, TB_Test, TD_Test : in STD_LOGIC_VECTOR (3 downto 0);
            D_Test : in STD_LOGIC_VECTOR (31 downto 0);
            A_B_DataIN_Test : in STD_LOGIC_VECTOR (1 downto 0));
    END COMPONENT;
    
signal D_TB : STD_LOGIC_VECTOR (31 downto 0) := b"00000000000000000000000000000000";
signal CLK_TB, Reset_TB, RW_TB : STD_LOGIC := '0';
signal DR_TB, SA_TB, SB_TB : STD_LOGIC_VECTOR (4 downto 0) := b"00000";
signal TA_TB, TB_TB, TD_TB : STD_LOGIC_VECTOR (3 downto 0) := b"0000";
signal A_B_DI_TB : STD_LOGIC_VECTOR (1 downto 0) := b"00";

constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164AD4F";
constant PERIOD : time := 200 ns ;

begin
    uut : RF_Test_RegisterFile_32_15_23375183 PORT MAP (
            D_Test => D_TB,
            CLK_Test => CLK_TB,
	    Reset_Test => Reset_TB,
	    RW_Test => RW_TB,
            DR_Test => DR_TB,
	    SA_Test => SA_TB,
	    SB_Test => SB_TB,
	    TA_Test => TA_TB,
	    TB_Test => TB_TB,
	    TD_Test => TD_TB,
	    A_B_DataIN_Test => A_B_DI_TB
        );
        
    CLK_TB <= not CLK_TB after PERIOD /4;
        
    stim_proc : process
    begin
        RW_TB <= '1';
        Reset_TB <= '0';
        TD_TB <= b"0000";
        TA_TB <= b"0000";
        TB_TB <= b"0000";
        A_B_DI_TB <= b"10";
        
        DR_TB <= b"00000";
        D_TB <= b"00000001011001001010110101001111";
        wait for PERIOD/2;
        SA_TB <= b"00000";
        wait for PERIOD/2;
        
        DR_TB <= b"00001";
        D_TB <= b"00000001011001001010110101010000";
        wait for PERIOD/2;
        SB_TB <= b"00001";
        wait for PERIOD/2;

        DR_TB <= b"00010";
        D_TB <= b"00000001011001001010110101010001";
        wait for PERIOD/2;
        SA_TB <= b"00010";
        wait for PERIOD/2;

        DR_TB <= b"00011";
        D_TB <= b"00000001011001001010110101010010";
        wait for PERIOD/2;
        SB_TB <= b"00011";
        wait for PERIOD/2;

        DR_TB <= b"00100";
        D_TB <= b"00000001011001001010110101010011";
        wait for PERIOD/2;
        SA_TB <= b"00100";
        wait for PERIOD/2;

        DR_TB <= b"00101";
        D_TB <= b"00000001011001001010110101010100";
        wait for PERIOD/2;
        SB_TB <= b"00101";
        wait for PERIOD/2;

        DR_TB <= b"00110";
        D_TB <= b"00000001011001001010110101010101";
        wait for PERIOD/2;
        SA_TB <= b"00110";
        wait for PERIOD/2;
        
        DR_TB <= b"00111";
        D_TB <= b"00000001011001001010110101010110";
        wait for PERIOD/2;
        SB_TB <= b"00111";
        wait for PERIOD/2;

        DR_TB <= b"01000";
        D_TB <= b"00000001011001001010110101010111";
        wait for PERIOD/2;
        SA_TB <= b"01000";
        wait for PERIOD/2;

        DR_TB <= b"01001";
        D_TB <= b"00000001011001001010110101011000";
        wait for PERIOD/2;
        SB_TB <= b"01001";
        wait for PERIOD/2;

        DR_TB <= b"01010";
        D_TB <= b"00000001011001001010110101011001";
        wait for PERIOD/2;
        SA_TB <= b"01010";
        wait for PERIOD/2;

        DR_TB <= b"01011";
        D_TB <= b"00000001011001001010110101011010";
        wait for PERIOD/2;
        SB_TB <= b"01011";
        wait for PERIOD/2;

        DR_TB <= b"01100";
        D_TB <= b"00000001011001001010110101011011";
        wait for PERIOD/2;
        SA_TB <= b"01100";
        wait for PERIOD/2;

        DR_TB <= b"01101";
        D_TB <= b"00000001011001001010110101011100";
        wait for PERIOD/2;
        SB_TB <= b"01101";
        wait for PERIOD/2;

        DR_TB <= b"01110";
        D_TB <= b"00000001011001001010110101011101";
        wait for PERIOD/2;
        SA_TB <= b"01110";
        wait for PERIOD/2;

        DR_TB <= b"01111";
        D_TB <= b"00000001011001001010110101011110";
        wait for PERIOD/2;
        SB_TB <= b"01111";
        wait for PERIOD/2;

        DR_TB <= b"10000";
        D_TB <= b"00000001011001001010110101011111";
        wait for PERIOD/2;
        SA_TB <= b"10000";
        wait for PERIOD/2;

        DR_TB <= b"10001";
        D_TB <= b"00000001011001001010110101100000";
        wait for PERIOD/2;
        SB_TB <= b"10001";
        wait for PERIOD/2;

        DR_TB <= b"10010";
        D_TB <= b"00000001011001001010110101100001";
        wait for PERIOD/2;
        SA_TB <= b"10010";
        wait for PERIOD/2;

        DR_TB <= b"10011";
        D_TB <= b"00000001011001001010110101100010";
        wait for PERIOD/2;
        SB_TB <= b"10011";
        wait for PERIOD/2;

        DR_TB <= b"10100";
        D_TB <= b"00000001011001001010110101100011";
        wait for PERIOD/2;
        SA_TB <= b"10100";
        wait for PERIOD/2;

        DR_TB <= b"10101";
        D_TB <= b"00000001011001001010110101100100";
        wait for PERIOD/2;
        SB_TB <= b"10101";
        wait for PERIOD/2;

        DR_TB <= b"10110";
        D_TB <= b"00000001011001001010110101100101";
        wait for PERIOD/2;
        SA_TB <= b"10110";
        wait for PERIOD/2;

        DR_TB <= b"10111";
        D_TB <= b"00000001011001001010110101100110";
        wait for PERIOD/2;
        SB_TB <= b"10111";
        wait for PERIOD/2;

        DR_TB <= b"11000";
        D_TB <= b"00000001011001001010110101100111";
        wait for PERIOD/2;
        SA_TB <= b"11000";
        wait for PERIOD/2;

        DR_TB <= b"11001";
        D_TB <= b"00000001011001001010110101101000";
        wait for PERIOD/2;
        SB_TB <= b"11001";
        wait for PERIOD/2;

        DR_TB <= b"11010";
        D_TB <= b"00000001011001001010110101101001";
        wait for PERIOD/2;
        SA_TB <= b"11010";
        wait for PERIOD/2;

        DR_TB <= b"11011";
        D_TB <= b"00000001011001001010110101101010";
        wait for PERIOD/2;
        SB_TB <= b"11011";
        wait for PERIOD/2;

        DR_TB <= b"11100";
        D_TB <= b"00000001011001001010110101101011";
        wait for PERIOD/2;
        SA_TB <= b"11100";
        wait for PERIOD/2;

        DR_TB <= b"11101";
        D_TB <= b"00000001011001001010110101101100";
        wait for PERIOD/2;
        SB_TB <= b"11101";
        wait for PERIOD/2;

        DR_TB <= b"11110";
        D_TB <= b"00000001011001001010110101101101";
        wait for PERIOD/2;
        SA_TB <= b"11110";
        wait for PERIOD/2;

        DR_TB <= b"11111";
        D_TB <= b"00000001011001001010110101101110";
        wait for PERIOD/2;
        SB_TB <= b"11111";
        wait for PERIOD/2;
        
        TD_TB <= b"0001";
        D_TB <= b"00000001011001001010110101101111"; 
        wait for PERIOD/2;
        TA_TB <= b"0001";
        wait for PERIOD/2;

        TD_TB <= b"0010";
        D_TB <= b"00000001011001001010110101110000"; 
        wait for PERIOD/2;
        TB_TB <= b"0001";
        wait for PERIOD/2;

        TD_TB <= b"0011";
        D_TB <= b"00000001011001001010110101110001"; 
        wait for PERIOD/2;
        TA_TB <= b"0010";
        wait for PERIOD/2;

        TD_TB <= b"0100";
        D_TB <= b"00000001011001001010110101110010"; 
        wait for PERIOD/2;
        TB_TB <= b"0010";
        wait for PERIOD/2;

        TD_TB <= b"0101";
        D_TB <= b"00000001011001001010110101110011"; 
        wait for PERIOD/2;
        TA_TB <= b"0011";
        wait for PERIOD/2;

        TD_TB <= b"0110";
        D_TB <= b"00000001011001001010110101110100"; 
        wait for PERIOD/2;
        TB_TB <= b"0011";
        wait for PERIOD/2;

        TD_TB <= b"0111";
        D_TB <= b"00000001011001001010110101110101"; 
        wait for PERIOD/2;
        TA_TB <= b"0100";
        wait for PERIOD/2;

        TD_TB <= b"1000";
        D_TB <= b"00000001011001001010110101110110"; 
        wait for PERIOD/2;
        TB_TB <= b"0100";
        wait for PERIOD/2;

        TD_TB <= b"1001";
        D_TB <= b"00000001011001001010110101110111"; 
        wait for PERIOD/2;
        TA_TB <= b"0101";
        wait for PERIOD/2;

        TD_TB <= b"1010";
        D_TB <= b"00000001011001001010110101111000"; 
        wait for PERIOD/2;
        TB_TB <= b"0101";
        wait for PERIOD/2;

        TD_TB <= b"1011";
        D_TB <= b"00000001011001001010110101111001"; 
        wait for PERIOD/2;
        TA_TB <= b"0110";
        wait for PERIOD/2;

        TD_TB <= b"1100";
        D_TB <= b"00000001011001001010110101111010"; 
        wait for PERIOD/2;
        TB_TB <= b"0110";
        wait for PERIOD/2;

        TD_TB <= b"1101";
        D_TB <= b"00000001011001001010110101111011"; 
        wait for PERIOD/2;
        TA_TB <= b"0111";
        wait for PERIOD/2;

        TD_TB <= b"1110";
        D_TB <= b"00000001011001001010110101111100"; 
        wait for PERIOD/2;
        TB_TB <= b"0111";
        wait for PERIOD/2;

        TD_TB <= b"1111";
        D_TB <= b"00000001011001001010110101111101"; 
        wait for PERIOD/2;
        TA_TB <= b"1000";
        wait for PERIOD/2;
        
        -- Register Transfer Operations
        --Port A
        A_B_DI_TB <= b"00";
        -- 0 to 11
        TA_TB <= b"0000";
        TD_TB <= b"0000";
        SA_TB <= b"00000";
        DR_TB <= b"01011";
        wait for PERIOD;
        
        -- 11 to T1
        SA_TB <= b"01011";
        TD_TB <= b"0001";
        wait for PERIOD;
        
        -- T1 to T11
        TA_TB <= b"0001";
        TD_TB <= b"1011";
        wait for PERIOD;
        
        -- T11 to 1
        TD_TB <= b"0000";
        TA_TB <= b"1011";
        DR_TB <= b"00001";
        wait for PERIOD;
        
        --Port B
        A_B_DI_TB <= b"01";
        -- 0 to 22
        TB_TB <= b"0000";
        SB_TB <= b"00000";
        DR_TB <= b"10110";
        wait for PERIOD;
        
        -- 22 to T2
        SB_TB <= b"10110";
        TD_TB <= b"0010";
        wait for PERIOD;
        
        -- T2 to T12
        TB_TB <= b"0010";
        TD_TB <= b"1100";
        wait for PERIOD;
        
        -- T12 to 2
        TD_TB <= b"0000";
        DR_TB <= b"00010";
        TB_TB <= b"1100";
        wait for PERIOD;      
        
        -- Register Operation Signals
        
        RW_TB <= '0';
        D_TB <= b"00000000000000000000000000000000";
        wait for PERIOD;
        
        Reset_TB <= '1';
        wait for PERIOD*2;


    end process;
    

end Simulation;
