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

entity DP_32Bit_B_Logic_23375183 is
    Port (
        B : in STD_LOGIC_VECTOR (31 downto 0);
        S0, S1 : in STD_LOGIC;
        Y : out STD_LOGIC_VECTOR (31 downto 0));
end DP_32Bit_B_Logic_23375183;


architecture Behavioral of DP_32Bit_B_Logic_23375183 is

-- 1-bit 32-input multiplexer component
COMPONENT DP_SingleBit_B_Logic_23375183
    Port (
        B : in STD_LOGIC;
        S0, S1 : in STD_LOGIC;
        Y : out STD_LOGIC);
END COMPONENT;


begin
    bit0: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(0),
        S0 => S0,
        S1 => S1,
        Y => Y(0)
    );

    bit1: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(1),
        S0 => S0,
        S1 => S1,
        Y => Y(1)
    );

    bit2: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(2),
        S0 => S0,
        S1 => S1,
        Y => Y(2)
    );

    bit3: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(3),
        S0 => S0,
        S1 => S1,
        Y => Y(3)
    );

    bit4: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(4),
        S0 => S0,
        S1 => S1,
        Y => Y(4)
    );

    bit5: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(5),
        S0 => S0,
        S1 => S1,
        Y => Y(5)
    );

    bit6: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(6),
        S0 => S0,
        S1 => S1,
        Y => Y(6)
    );

    bit7: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(7),
        S0 => S0,
        S1 => S1,
        Y => Y(7)
    );

    bit8: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(8),
        S0 => S0,
        S1 => S1,
        Y => Y(8)
    );

    bit9: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(9),
        S0 => S0,
        S1 => S1,
        Y => Y(9)
    );

    bit10: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(10),
        S0 => S0,
        S1 => S1,
        Y => Y(10)
    );

    bit11: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(11),
        S0 => S0,
        S1 => S1,
        Y => Y(11)
    );

    bit12: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(12),
        S0 => S0,
        S1 => S1,
        Y => Y(12)
    );

    bit13: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(13),
        S0 => S0,
        S1 => S1,
        Y => Y(13)
    );

    bit14: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(14),
        S0 => S0,
        S1 => S1,
        Y => Y(14)
    );

    bit15: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(15),
        S0 => S0,
        S1 => S1,
        Y => Y(15)
    );

    bit16: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(16),
        S0 => S0,
        S1 => S1,
        Y => Y(16)
    );

    bit17: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(17),
        S0 => S0,
        S1 => S1,
        Y => Y(17)
    );

    bit18: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(18),
        S0 => S0,
        S1 => S1,
        Y => Y(18)
    );

    bit19: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(19),
        S0 => S0,
        S1 => S1,
        Y => Y(19)
    );

    bit20: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(20),
        S0 => S0,
        S1 => S1,
        Y => Y(20)
    );

    bit21: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(21),
        S0 => S0,
        S1 => S1,
        Y => Y(21)
    );

    bit22: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(22),
        S0 => S0,
        S1 => S1,
        Y => Y(22)
    );

    bit23: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(23),
        S0 => S0,
        S1 => S1,
        Y => Y(23)
    );

    bit24: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(24),
        S0 => S0,
        S1 => S1,
        Y => Y(24)
    );

    bit25: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(25),
        S0 => S0,
        S1 => S1,
        Y => Y(25)
    );

    bit26: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(26),
        S0 => S0,
        S1 => S1,
        Y => Y(26)
    );

    bit27: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(27),
        S0 => S0,
        S1 => S1,
        Y => Y(27)
    );

    bit28: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(28),
        S0 => S0,
        S1 => S1,
        Y => Y(28)
    );

    bit29: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(29),
        S0 => S0,
        S1 => S1,
        Y => Y(29)
    );

    bit30: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(30),
        S0 => S0,
        S1 => S1,
        Y => Y(30)
    );

    bit31: DP_SingleBit_B_Logic_23375183 PORT MAP (
        B => B(31),
        S0 => S0,
        S1 => S1,
        Y => Y(31)
    );


end Behavioral;


