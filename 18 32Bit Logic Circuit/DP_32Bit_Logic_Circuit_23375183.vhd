----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 27.09.2024 10:47:43
-- Design Name: 
-- Module Name: Mux32_32bit_23375183 - Behavioral
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

entity DP_32Bit_Logic_Circuit_23375183 is
    Port (
        A, B : in STD_LOGIC_VECTOR (31 downto 0);
        S0, S1 : in STD_LOGIC;
        G : out STD_LOGIC_VECTOR (31 downto 0));
end DP_32Bit_Logic_Circuit_23375183;


architecture Behavioral of DP_32Bit_Logic_Circuit_23375183 is

-- 1-bit 32-input multiplexer component
COMPONENT DP_SingleBit_Logic_Circuit_23375183
    Port (
        A, B : in STD_LOGIC;
        S0, S1 : in STD_LOGIC;
        G : out STD_LOGIC);
END COMPONENT;


begin
    bit0: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(0),
        B => B(0),
        S0 => S0,
        S1 => S1,
        G => G(0)
    );

    bit1: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(1),
        B => B(1),
        S0 => S0,
        S1 => S1,
        G => G(1)
    );

    bit2: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(2),
        B => B(2),
        S0 => S0,
        S1 => S1,
        G => G(2)
    );

    bit3: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(3),
        B => B(3),
        S0 => S0,
        S1 => S1,
        G => G(3)
    );

    bit4: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(4),
        B => B(4),
        S0 => S0,
        S1 => S1,
        G => G(4)
    );

    bit5: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(5),
        B => B(5),
        S0 => S0,
        S1 => S1,
        G => G(5)
    );

    bit6: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(6),
        B => B(6),
        S0 => S0,
        S1 => S1,
        G => G(6)
    );

    bit7: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(7),
        B => B(7),
        S0 => S0,
        S1 => S1,
        G => G(7)
    );

    bit8: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(8),
        B => B(8),
        S0 => S0,
        S1 => S1,
        G => G(8)
    );

    bit9: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(9),
        B => B(9),
        S0 => S0,
        S1 => S1,
        G => G(9)
    );

    bit10: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(10),
        B => B(10),
        S0 => S0,
        S1 => S1,
        G => G(10)
    );

    bit11: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(11),
        B => B(11),
        S0 => S0,
        S1 => S1,
        G => G(11)
    );

    bit12: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(12),
        B => B(12),
        S0 => S0,
        S1 => S1,
        G => G(12)
    );

    bit13: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(13),
        B => B(13),
        S0 => S0,
        S1 => S1,
        G => G(13)
    );

    bit14: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(14),
        B => B(14),
        S0 => S0,
        S1 => S1,
        G => G(14)
    );

    bit15: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(15),
        B => B(15),
        S0 => S0,
        S1 => S1,
        G => G(15)
    );

    bit16: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(16),
        B => B(16),
        S0 => S0,
        S1 => S1,
        G => G(16)
    );

    bit17: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(17),
        B => B(17),
        S0 => S0,
        S1 => S1,
        G => G(17)
    );

    bit18: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(18),
        B => B(18),
        S0 => S0,
        S1 => S1,
        G => G(18)
    );

    bit19: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(19),
        B => B(19),
        S0 => S0,
        S1 => S1,
        G => G(19)
    );

    bit20: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(20),
        B => B(20),
        S0 => S0,
        S1 => S1,
        G => G(20)
    );

    bit21: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(21),
        B => B(21),
        S0 => S0,
        S1 => S1,
        G => G(21)
    );

    bit22: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(22),
        B => B(22),
        S0 => S0,
        S1 => S1,
        G => G(22)
    );

    bit23: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(23),
        B => B(23),
        S0 => S0,
        S1 => S1,
        G => G(23)
    );

    bit24: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(24),
        B => B(24),
        S0 => S0,
        S1 => S1,
        G => G(24)
    );

    bit25: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(25),
        B => B(25),
        S0 => S0,
        S1 => S1,
        G => G(25)
    );

    bit26: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(26),
        B => B(26),
        S0 => S0,
        S1 => S1,
        G => G(26)
    );

    bit27: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(27),
        B => B(27),
        S0 => S0,
        S1 => S1,
        G => G(27)
    );

    bit28: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(28),
        B => B(28),
        S0 => S0,
        S1 => S1,
        G => G(28)
    );

    bit29: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(29),
        B => B(29),
        S0 => S0,
        S1 => S1,
        G => G(29)
    );

    bit30: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(30),
        B => B(30),
        S0 => S0,
        S1 => S1,
        G => G(30)
    );

    bit31: DP_SingleBit_Logic_Circuit_23375183 PORT MAP (
        A => A(31),
        B => B(31),
        S0 => S0,
        S1 => S1,
        G => G(31)
    );

end Behavioral;



