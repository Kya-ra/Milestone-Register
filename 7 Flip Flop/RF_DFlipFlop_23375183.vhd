----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 27.09.2024 10:47:43
-- Design Name: 
-- Module Name: D_Flip_Flop_23375183 - Behavioral
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

entity D_Flip_Flop_23375183 is
    Port ( CLK , D, Reset : in STD_LOGIC ;
           Q , Q_not : out STD_LOGIC ) ;
end D_Flip_Flop_23375183;

architecture Behavioral of D_Flip_Flop_23375183 is

    signal Q_t, Q_not_t, Reset_not, D_not, X, K, S, R, L, Y, Z, M, B : std_logic;
    
    constant AND_gate_delay : Time := 4 ns; -- least significant digit 6 = 5+1
    constant NAND_gate_delay : Time := 9 ns; -- next more significant digit 3=2+1
    constant OR_gate_delay : Time := 2 ns; -- next more significant digit 8=7+1
    constant NOR_gate_delay : Time := 6 ns; -- next more significant digit 6=5+1
    constant XOR_gate_delay : Time := 8 ns; -- next more significant digit 4=3+1
    constant XNOR_gate_delay : Time := 4 ns; -- next more significant digit 4=3+1
    constant NOT_gate_delay : Time := 4 ns; -- next more significant digit 7=6+1
    constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164AD4F";

begin

    -- Implement the flip-flop logic, with reset integrated into the logic gates.

    Reset_not <= not Reset after NOT_gate_delay;
    
    X <= B nand S after NAND_gate_delay;
    K <= X and Reset_not after AND_gate_delay;
    S <= K nand CLK after NAND_gate_delay;
    L <= S and Reset_not after AND_gate_delay;
    Z <= L and CLK after AND_gate_delay;
    R <= Z nand Y after NAND_gate_delay;
    M <= R and Reset_not after AND_gate_delay;
    Y <= M nand D after NAND_gate_delay;
    B <= Y and Reset_not after AND_gate_delay;

    -- Reset forces Q_t to 0 and Q_not_t to 1 when active
    Q_t <= L nand Q_not_t after NAND_gate_delay;
    Q_not_t <= M nand Q_t after NAND_gate_delay; -- Reset overrides logic to set Q_not to 1

    -- Output assignment
    Q <= Q_t and Reset_not after AND_gate_delay;
    Q_not <= Q_not_t or Reset after OR_gate_delay;

end Behavioral;


