----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 27.09.2024 10:47:43
-- Design Name: 
-- Module Name: Register_32bit_23375183_TB - Simulation
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

entity Register_32bit_23375183_TB is
--  Port ( );
end Register_32bit_23375183_TB;

architecture Simulation of Register_32bit_23375183_TB is

    COMPONENT Register_32bit_23375183
    Port ( D : in STD_LOGIC_VECTOR (31 downto 0);
            CLK, Reset, Load_FF : in STD_LOGIC;
            Q, Q_not : out STD_LOGIC_VECTOR (31 downto 0));
    END COMPONENT;
    
signal D_TB : STD_LOGIC_VECTOR (31 downto 0) := b"00000000000000000000000000000000";
signal CLK_TB, Reset_TB, Load_FF_TB : STD_LOGIC := '0';
signal Q_TB, Q_not_TB : STD_LOGIC_VECTOR (31 downto 0) := b"00000000000000000000000000000000";

constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164AD4F";
constant PERIOD : time := 200 ns ;

begin
    uut : Register_32bit_23375183 PORT MAP (
            D => D_TB,
            CLK => CLK_TB,
            Reset => Reset_TB,
            Load_FF => Load_FF_TB,
            Q => Q_TB,
            Q_not => Q_not_TB
        );
        
    CLK_TB <= not CLK_TB after PERIOD /4;
        
    stim_proc : process
    begin
        Load_FF_TB <= '1';
        D_TB <= b"00000000000000000000000000000000";
        wait for PERIOD;
        D_TB <= b"00000001011001001010110101001111";
        wait for PERIOD;
        D_TB <= b"00000000000000000000000000000000";
        wait for PERIOD;
        D_TB <= b"11111110100110110101001010110000";
        wait for PERIOD;
        D_TB <= b"00000000000000000000000000000000";
        wait for PERIOD;
    end process;
    

end Simulation;
