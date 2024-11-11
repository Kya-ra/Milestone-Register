----------------------------------------------------------------------------------
-- Company: Trinity College Dublin
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 06.10.2022 22:19:50
-- Design Name: 
-- Module Name: FullAdder_23375183 - Behavioral
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

entity DP_FullAdder_23375183 is
    Port ( A : in STD_LOGIC;
         B : in STD_LOGIC;
         C_IN : in STD_LOGIC;
         SUM : out STD_LOGIC;
         C_OUT : out STD_LOGIC);
end DP_FullAdder_23375183;

architecture Behavioral of DP_FullAdder_23375183 is

    Signal S_XOR1_to_XOR2, S_AND1_OR, S_AND2_OR : STD_LOGIC;

    --  Propagation Delay according to StdentID e.g. 26 33 57 25(DEC)
    constant AND_gate_delay : Time := 4 ns; -- least significant digit 6 = 5+1
    constant NAND_gate_delay : Time := 9 ns; -- next more significant digit 3=2+1
    constant OR_gate_delay : Time := 2 ns; -- next more significant digit 8=7+1
    constant NOR_gate_delay : Time := 6 ns; -- next more significant digit 6=5+1
    constant XOR_gate_delay : Time := 8 ns; -- next more significant digit 4=3+1
    constant XNOR_gate_delay : Time := 4 ns; -- next more significant digit 4=3+1
    constant NOT_gate_delay : Time := 4 ns; -- next more significant digit 7=6+1
    constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164AD4F";

begin

    S_XOR1_to_XOR2 <= A XOR B after XOR_gate_delay;
    S_AND1_OR <= A AND B after AND_gate_delay;
    S_AND2_OR <= S_XOR1_to_XOR2 AND C_IN after AND_gate_delay;

    SUM <= S_XOR1_to_XOR2 XOR C_IN after XOR_gate_delay;
    C_OUT <= S_AND1_OR OR S_AND2_OR after OR_gate_delay;

end Behavioral;
