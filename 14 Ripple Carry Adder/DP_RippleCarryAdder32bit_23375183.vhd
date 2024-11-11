----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 07.10.2022 09:44:05
-- Design Name: 
-- Module Name: DP_RippeCarryAdder32bit_23375183 - Behavioral
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

entity DP_RippleCarryAdder32Bit_23375183 is
    Port ( 
         A : in STD_LOGIC_VECTOR (31 downto 0);
         B : in STD_LOGIC_VECTOR (31 downto 0);
         C_IN : in STD_LOGIC;
         SUM : out STD_LOGIC_VECTOR (31 downto 0);
         C_OUT : out STD_LOGIC;
         V : out STD_LOGIC
    );
end DP_RippleCarryAdder32Bit_23375183;

architecture Behavioral of DP_RippleCarryAdder32Bit_23375183 is

    COMPONENT DP_FullAdder_23375183
        PORT(
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            C_IN : in STD_LOGIC;
            SUM : out STD_LOGIC;
            C_OUT : out STD_LOGIC
        );
    END COMPONENT;

    signal C0_to_C1, C1_to_C2, C2_to_C3, C3_to_C4, C4_to_C5, C5_to_C6, C6_to_C7, C7_to_C8,
           C8_to_C9, C9_to_C10, C10_to_C11, C11_to_C12, C12_to_C13, C13_to_C14, C14_to_C15,
           C15_to_C16, C16_to_C17, C17_to_C18, C18_to_C19, C19_to_C20, C20_to_C21, C21_to_C22,
           C22_to_C23, C23_to_C24, C24_to_C25, C25_to_C26, C26_to_C27, C27_to_C28, C28_to_C29,
           C29_to_C30, C30_to_C31, C31_to_COut : STD_LOGIC;

    constant XOR_gate_delay : Time := 8 ns;

begin

    BIT0: DP_FullAdder_23375183 PORT MAP (
            A => A(0),
            B => B(0),
            C_IN => C_IN,
            SUM => SUM(0),
            C_OUT => C0_to_C1
        );

    BIT1: DP_FullAdder_23375183 PORT MAP (
            A => A(1),
            B => B(1),
            C_IN => C0_to_C1,
            SUM => SUM(1),
            C_OUT => C1_to_C2
        );

    BIT2: DP_FullAdder_23375183 PORT MAP (
            A => A(2),
            B => B(2),
            C_IN => C1_to_C2,
            SUM => SUM(2),
            C_OUT => C2_to_C3
        );

    BIT3: DP_FullAdder_23375183 PORT MAP (
            A => A(3),
            B => B(3),
            C_IN => C2_to_C3,
            SUM => SUM(3),
            C_OUT => C3_to_C4
        );

    BIT4: DP_FullAdder_23375183 PORT MAP (
            A => A(4),
            B => B(4),
            C_IN => C3_to_C4,
            SUM => SUM(4),
            C_OUT => C4_to_C5
        );

    BIT5: DP_FullAdder_23375183 PORT MAP (
            A => A(5),
            B => B(5),
            C_IN => C4_to_C5,
            SUM => SUM(5),
            C_OUT => C5_to_C6
        );

    BIT6: DP_FullAdder_23375183 PORT MAP (
            A => A(6),
            B => B(6),
            C_IN => C5_to_C6,
            SUM => SUM(6),
            C_OUT => C6_to_C7
        );

    BIT7: DP_FullAdder_23375183 PORT MAP (
            A => A(7),
            B => B(7),
            C_IN => C6_to_C7,
            SUM => SUM(7),
            C_OUT => C7_to_C8
        );

    BIT8: DP_FullAdder_23375183 PORT MAP (
            A => A(8),
            B => B(8),
            C_IN => C7_to_C8,
            SUM => SUM(8),
            C_OUT => C8_to_C9
        );

    BIT9: DP_FullAdder_23375183 PORT MAP (
            A => A(9),
            B => B(9),
            C_IN => C8_to_C9,
            SUM => SUM(9),
            C_OUT => C9_to_C10
        );

    BIT10: DP_FullAdder_23375183 PORT MAP (
            A => A(10),
            B => B(10),
            C_IN => C9_to_C10,
            SUM => SUM(10),
            C_OUT => C10_to_C11
        );

    BIT11: DP_FullAdder_23375183 PORT MAP (
            A => A(11),
            B => B(11),
            C_IN => C10_to_C11,
            SUM => SUM(11),
            C_OUT => C11_to_C12
        );

    BIT12: DP_FullAdder_23375183 PORT MAP (
            A => A(12),
            B => B(12),
            C_IN => C11_to_C12,
            SUM => SUM(12),
            C_OUT => C12_to_C13
        );

    BIT13: DP_FullAdder_23375183 PORT MAP (
            A => A(13),
            B => B(13),
            C_IN => C12_to_C13,
            SUM => SUM(13),
            C_OUT => C13_to_C14
        );

    BIT14: DP_FullAdder_23375183 PORT MAP (
            A => A(14),
            B => B(14),
            C_IN => C13_to_C14,
            SUM => SUM(14),
            C_OUT => C14_to_C15
        );

    BIT15: DP_FullAdder_23375183 PORT MAP (
            A => A(15),
            B => B(15),
            C_IN => C14_to_C15,
            SUM => SUM(15),
            C_OUT => C15_to_C16
        );

    BIT16: DP_FullAdder_23375183 PORT MAP (
            A => A(16),
            B => B(16),
            C_IN => C15_to_C16,
            SUM => SUM(16),
            C_OUT => C16_to_C17
        );

    BIT17: DP_FullAdder_23375183 PORT MAP (
            A => A(17),
            B => B(17),
            C_IN => C16_to_C17,
            SUM => SUM(17),
            C_OUT => C17_to_C18
        );

    BIT18: DP_FullAdder_23375183 PORT MAP (
            A => A(18),
            B => B(18),
            C_IN => C17_to_C18,
            SUM => SUM(18),
            C_OUT => C18_to_C19
        );

    BIT19: DP_FullAdder_23375183 PORT MAP (
            A => A(19),
            B => B(19),
            C_IN => C18_to_C19,
            SUM => SUM(19),
            C_OUT => C19_to_C20
        );

    BIT20: DP_FullAdder_23375183 PORT MAP (
            A => A(20),
            B => B(20),
            C_IN => C19_to_C20,
            SUM => SUM(20),
            C_OUT => C20_to_C21
        );

    BIT21: DP_FullAdder_23375183 PORT MAP (
            A => A(21),
            B => B(21),
            C_IN => C20_to_C21,
            SUM => SUM(21),
            C_OUT => C21_to_C22
        );

    BIT22: DP_FullAdder_23375183 PORT MAP (
            A => A(22),
            B => B(22),
            C_IN => C21_to_C22,
            SUM => SUM(22),
            C_OUT => C22_to_C23
        );

    BIT23: DP_FullAdder_23375183 PORT MAP (
            A => A(23),
            B => B(23),
            C_IN => C22_to_C23,
            SUM => SUM(23),
            C_OUT => C23_to_C24
        );

    BIT24: DP_FullAdder_23375183 PORT MAP (
            A => A(24),
            B => B(24),
            C_IN => C23_to_C24,
            SUM => SUM(24),
            C_OUT => C24_to_C25
        );

    BIT25: DP_FullAdder_23375183 PORT MAP (
            A => A(25),
            B => B(25),
            C_IN => C24_to_C25,
            SUM => SUM(25),
            C_OUT => C25_to_C26
        );

    BIT26: DP_FullAdder_23375183 PORT MAP (
            A => A(26),
            B => B(26),
            C_IN => C25_to_C26,
            SUM => SUM(26),
            C_OUT => C26_to_C27
        );

    BIT27: DP_FullAdder_23375183 PORT MAP (
            A => A(27),
            B => B(27),
            C_IN => C26_to_C27,
            SUM => SUM(27),
            C_OUT => C27_to_C28
        );

    BIT28: DP_FullAdder_23375183 PORT MAP (
            A => A(28),
            B => B(28),
            C_IN => C27_to_C28,
            SUM => SUM(28),
            C_OUT => C28_to_C29
        );

    BIT29: DP_FullAdder_23375183 PORT MAP (
            A => A(29),
            B => B(29),
            C_IN => C28_to_C29,
            SUM => SUM(29),
            C_OUT => C29_to_C30
        );

    BIT30: DP_FullAdder_23375183 PORT MAP (
            A => A(30),
            B => B(30),
            C_IN => C29_to_C30,
            SUM => SUM(30),
            C_OUT => C30_to_C31
        );

    BIT31: DP_FullAdder_23375183 PORT MAP (
            A => A(31),
            B => B(31),
            C_IN => C30_to_C31,
            SUM => SUM(31),
            C_OUT => C31_to_COut
        );

    C_OUT <= C31_to_COut;

    V <= C31_to_COut XOR C30_to_C31 after XOR_gate_delay;

end Behavioral;

