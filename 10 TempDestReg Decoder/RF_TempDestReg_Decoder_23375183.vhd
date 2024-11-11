----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 08.10.2023 18:06:29
-- Design Name: 
-- Module Name: RF_DestReg_Decoder_23375183 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 16-bit Decoder
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.02 - Extended to 16-bit Decoder
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RF_TempDestReg_Decoder_23375183 is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0); -- 4-bit input
           Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7, 
           Q8, Q9, Q10, Q11, Q12, Q13, Q14, Q15 : out STD_LOGIC); -- 16 outputs
end RF_TempDestReg_Decoder_23375183;

architecture Behavioral of RF_TempDestReg_Decoder_23375183 is

    signal A0_not, A1_not, A2_not, A3_not : std_logic;
    signal S0, S1, S2, S3, S4, S5, S6, S7 : std_logic;

    constant AND_gate_delay : Time := 4 ns; 
    constant NOT_gate_delay : Time := 4 ns;
    
begin

    -- Invert each input bit
    A0_not <= not A(0) after NOT_gate_delay;
    A1_not <= not A(1) after NOT_gate_delay;
    A2_not <= not A(2) after NOT_gate_delay;
    A3_not <= not A(3) after NOT_gate_delay;

    -- Generate intermediate signals for combinations of A3, A2, and A1
    S0 <= A3_not and A2_not and A1_not after AND_gate_delay;
    S1 <= A3_not and A2_not and A(1) after AND_gate_delay;
    S2 <= A3_not and A(2) and A1_not after AND_gate_delay;
    S3 <= A3_not and A(2) and A(1) after AND_gate_delay;
    
    S4 <= A(3) and A2_not and A1_not after AND_gate_delay;
    S5 <= A(3) and A2_not and A(1) after AND_gate_delay;
    S6 <= A(3) and A(2) and A1_not after AND_gate_delay;
    S7 <= A(3) and A(2) and A(1) after AND_gate_delay;

    -- Outputs based on combinations of S signals and A(0)
    Q0 <= S0 and A0_not after AND_gate_delay;
    Q1 <= S0 and A(0) after AND_gate_delay;
    Q2 <= S1 and A0_not after AND_gate_delay;
    Q3 <= S1 and A(0) after AND_gate_delay;
    Q4 <= S2 and A0_not after AND_gate_delay;
    Q5 <= S2 and A(0) after AND_gate_delay;
    Q6 <= S3 and A0_not after AND_gate_delay;
    Q7 <= S3 and A(0) after AND_gate_delay;
    
    Q8 <= S4 and A0_not after AND_gate_delay;
    Q9 <= S4 and A(0) after AND_gate_delay;
    Q10 <= S5 and A0_not after AND_gate_delay;
    Q11 <= S5 and A(0) after AND_gate_delay;
    Q12 <= S6 and A0_not after AND_gate_delay;
    Q13 <= S6 and A(0) after AND_gate_delay;
    Q14 <= S7 and A0_not after AND_gate_delay;
    Q15 <= S7 and A(0) after AND_gate_delay;

end Behavioral;
