----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 18.10.2024
-- Design Name: 
-- Module Name: DP_Shifter_23375183 - Behavioral
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

entity DP_Shifter_23375183 is
    Port (
        B : in STD_LOGIC_VECTOR (31 downto 0);
        S1 : in STD_LOGIC;
        S2 : in STD_LOGIC;
        Y : out STD_LOGIC_VECTOR (31 downto 0);
        C : out STD_LOGIC
    );
end DP_Shifter_23375183;

architecture Behavioral of DP_Shifter_23375183 is

    COMPONENT DP_Mux3_1bit_23375183
        PORT(
            Bi   : in STD_LOGIC;
            slBi : in STD_LOGIC;
            srBi : in STD_LOGIC;
            S1   : in STD_LOGIC;
            S2   : in STD_LOGIC;
            Y    : out STD_LOGIC
        );
    END COMPONENT;
    
    COMPONENT DP_ShifterCFlagMux2_1bit_23375183
        Port ( MSB, LSB : in STD_LOGIC;
           S1, S2 : in STD_LOGIC;
           C : out STD_LOGIC);        
    END COMPONENT;
    
begin

    -- 0
    BIT0: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(0),
        slBi => '0',
        srBi => B(1),
        S1   => S1,
        S2   => S2,
        Y    => Y(0)
    );

    -- 1
    BIT1: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(1),
        slBi => B(0),
        srBi => B(2),
        S1   => S1,
        S2   => S2,
        Y    => Y(1)
    );

    -- 2
    BIT2: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(2),
        slBi => B(1),
        srBi => B(3),
        S1   => S1,
        S2   => S2,
        Y    => Y(2)
    );

    -- 3
    BIT3: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(3),
        slBi => B(2),
        srBi => B(4),
        S1   => S1,
        S2   => S2,
        Y    => Y(3)
    );

    -- 4
    BIT4: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(4),
        slBi => B(3),
        srBi => B(5),
        S1   => S1,
        S2   => S2,
        Y    => Y(4)
    );

    -- 5
    BIT5: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(5),
        slBi => B(4),
        srBi => B(6),
        S1   => S1,
        S2   => S2,
        Y    => Y(5)
    );

    -- 6
    BIT6: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(6),
        slBi => B(5),
        srBi => B(7),
        S1   => S1,
        S2   => S2,
        Y    => Y(6)
    );

    -- 7
    BIT7: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(7),
        slBi => B(6),
        srBi => B(8),
        S1   => S1,
        S2   => S2,
        Y    => Y(7)
    );

    -- 8
    BIT8: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(8),
        slBi => B(7),
        srBi => B(9),
        S1   => S1,
        S2   => S2,
        Y    => Y(8)
    );

    -- 9
    BIT9: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(9),
        slBi => B(8),
        srBi => B(10),
        S1   => S1,
        S2   => S2,
        Y    => Y(9)
    );

    -- 10
    BIT10: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(10),
        slBi => B(9),
        srBi => B(11),
        S1   => S1,
        S2   => S2,
        Y    => Y(10)
    );

    -- 11
    BIT11: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(11),
        slBi => B(10),
        srBi => B(12),
        S1   => S1,
        S2   => S2,
        Y    => Y(11)
    );

    -- 12
    BIT12: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(12),
        slBi => B(11),
        srBi => B(13),
        S1   => S1,
        S2   => S2,
        Y    => Y(12)
    );

    -- 13
    BIT13: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(13),
        slBi => B(12),
        srBi => B(14),
        S1   => S1,
        S2   => S2,
        Y    => Y(13)
    );

    -- 14
    BIT14: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(14),
        slBi => B(13),
        srBi => B(15),
        S1   => S1,
        S2   => S2,
        Y    => Y(14)
    );

    -- 15
    BIT15: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(15),
        slBi => B(14),
        srBi => B(16),
        S1   => S1,
        S2   => S2,
        Y    => Y(15)
    );

    -- 16
    BIT16: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(16),
        slBi => B(15),
        srBi => B(17),
        S1   => S1,
        S2   => S2,
        Y    => Y(16)
    );

    -- 17
    BIT17: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(17),
        slBi => B(16),
        srBi => B(18),
        S1   => S1,
        S2   => S2,
        Y    => Y(17)
    );

    -- 18
    BIT18: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(18),
        slBi => B(17),
        srBi => B(19),
        S1   => S1,
        S2   => S2,
        Y    => Y(18)
    );

    -- 19
    BIT19: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(19),
        slBi => B(18),
        srBi => B(20),
        S1   => S1,
        S2   => S2,
        Y    => Y(19)
    );

    -- 20
    BIT20: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(20),
        slBi => B(19),
        srBi => B(21),
        S1   => S1,
        S2   => S2,
        Y    => Y(20)
    );

    -- 21
    BIT21: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(21),
        slBi => B(20),
        srBi => B(22),
        S1   => S1,
        S2   => S2,
        Y    => Y(21)
    );

    -- 22
    BIT22: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(22),
        slBi => B(21),
        srBi => B(23),
        S1   => S1,
        S2   => S2,
        Y    => Y(22)
    );

    -- 23
    BIT23: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(23),
        slBi => B(22),
        srBi => B(24),
        S1   => S1,
        S2   => S2,
        Y    => Y(23)
    );

    -- 24
    BIT24: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(24),
        slBi => B(23),
        srBi => B(25),
        S1   => S1,
        S2   => S2,
        Y    => Y(24)
    );

    -- 25
    BIT25: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(25),
        slBi => B(24),
        srBi => B(26),
        S1   => S1,
        S2   => S2,
        Y    => Y(25)
    );

    -- 26
    BIT26: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(26),
        slBi => B(25),
        srBi => B(27),
        S1   => S1,
        S2   => S2,
        Y    => Y(26)
    );

    -- 27
    BIT27: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(27),
        slBi => B(26),
        srBi => B(28),
        S1   => S1,
        S2   => S2,
        Y    => Y(27)
    );

    -- 28
    BIT28: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(28),
        slBi => B(27),
        srBi => B(29),
        S1   => S1,
        S2   => S2,
        Y    => Y(28)
    );

    -- 29
    BIT29: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(29),
        slBi => B(28),
        srBi => B(30),
        S1   => S1,
        S2   => S2,
        Y    => Y(29)
    );

    -- 30
    BIT30: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(30),
        slBi => B(29),
        srBi => B(31),
        S1   => S1,
        S2   => S2,
        Y    => Y(30)
    );

    -- 31
    BIT31: DP_Mux3_1bit_23375183 PORT MAP (
        Bi   => B(31),
        slBi => B(30),
        srBi => '0',
        S1   => S1,
        S2   => S2,
        Y    => Y(31)
    );
    
    SCFlag: DP_ShifterCFlagMux2_1bit_23375183 PORT MAP (
        MSB => B(31),
        LSB => B(0),
        S1 => S1,
        S2 => S2,
        C => C
    );

end Behavioral;
