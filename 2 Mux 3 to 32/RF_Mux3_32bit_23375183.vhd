----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 27.09.2024 10:47:43
-- Design Name: 
-- Module Name: Mux3_32bit_23375183 - Behavioral
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

entity Mux3_32bit_23375183 is
    Port ( IN00, IN01, IN02 : in STD_LOGIC_VECTOR (31 downto 0);
            S: in STD_LOGIC_VECTOR (1 downto 0);
            Y : out STD_LOGIC_VECTOR (31 downto 0));
end Mux3_32bit_23375183;

architecture Behavioral of Mux3_32bit_23375183 is
    COMPONENT Mux3_1bit_23375183
    Port ( I0, I1, I2 : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (1 downto 0);
           Y : out STD_LOGIC);
    END COMPONENT;

    -- Propagation Delay according to StdentID e . g . 26 33 57 25( DEC )
    constant AND_gate_delay : Time := 4 ns; -- least significant digit 6 = 5+1
    constant NAND_gate_delay : Time := 9 ns; -- next more significant digit 3=2+1
    constant OR_gate_delay : Time := 2 ns; -- next more significant digit 8=7+1
    constant NOR_gate_delay : Time := 6 ns; -- next more significant digit 6=5+1
    constant XOR_gate_delay : Time := 8 ns; -- next more significant digit 4=3+1
    constant XNOR_gate_delay : Time := 4 ns; -- next more significant digit 4=3+1
    constant NOT_gate_delay : Time := 4 ns; -- next more significant digit 7=6+1
    constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164AD4F";
    
    begin

    bit0: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(0),
        I1 => IN01(0),
        I2 => IN02(0),
        S => S,
        Y => Y(0));

    bit1: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(1),
        I1 => IN01(1),
        I2 => IN02(1),
        S => S,
        Y => Y(1));

    bit2: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(2),
        I1 => IN01(2),
        I2 => IN02(2),
        S => S,
        Y => Y(2));

    bit3: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(3),
        I1 => IN01(3),
        I2 => IN02(3),
        S => S,
        Y => Y(3));

    bit4: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(4),
        I1 => IN01(4),
        I2 => IN02(4),
        S => S,
        Y => Y(4));

    bit5: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(5),
        I1 => IN01(5),
        I2 => IN02(5),
        S => S,
        Y => Y(5));

    bit6: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(6),
        I1 => IN01(6),
        I2 => IN02(6),
        S => S,
        Y => Y(6));

    bit7: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(7),
        I1 => IN01(7),
        I2 => IN02(7),
        S => S,
        Y => Y(7));

    bit8: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(8),
        I1 => IN01(8),
        I2 => IN02(8),
        S => S,
        Y => Y(8));

    bit9: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(9),
        I1 => IN01(9),
        I2 => IN02(9),
        S => S,
        Y => Y(9));

    bit10: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(10),
        I1 => IN01(10),
        I2 => IN02(10),
        S => S,
        Y => Y(10));

    bit11: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(11),
        I1 => IN01(11),
        I2 => IN02(11),
        S => S,
        Y => Y(11));

    bit12: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(12),
        I1 => IN01(12),
        I2 => IN02(12),
        S => S,
        Y => Y(12));

    bit13: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(13),
        I1 => IN01(13),
        I2 => IN02(13),
        S => S,
        Y => Y(13));

    bit14: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(14),
        I1 => IN01(14),
        I2 => IN02(14),
        S => S,
        Y => Y(14));

    bit15: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(15),
        I1 => IN01(15),
        I2 => IN02(15),
        S => S,
        Y => Y(15));

    bit16: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(16),
        I1 => IN01(16),
        I2 => IN02(16),
        S => S,
        Y => Y(16));

    bit17: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(17),
        I1 => IN01(17),
        I2 => IN02(17),
        S => S,
        Y => Y(17));

    bit18: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(18),
        I1 => IN01(18),
        I2 => IN02(18),
        S => S,
        Y => Y(18));

    bit19: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(19),
        I1 => IN01(19),
        I2 => IN02(19),
        S => S,
        Y => Y(19));

    bit20: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(20),
        I1 => IN01(20),
        I2 => IN02(20),
        S => S,
        Y => Y(20));

    bit21: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(21),
        I1 => IN01(21),
        I2 => IN02(21),
        S => S,
        Y => Y(21));

    bit22: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(22),
        I1 => IN01(22),
        I2 => IN02(22),
        S => S,
        Y => Y(22));

    bit23: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(23),
        I1 => IN01(23),
        I2 => IN02(23),
        S => S,
        Y => Y(23));

    bit24: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(24),
        I1 => IN01(24),
        I2 => IN02(24),
        S => S,
        Y => Y(24));

    bit25: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(25),
        I1 => IN01(25),
        I2 => IN02(25),
        S => S,
        Y => Y(25));

    bit26: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(26),
        I1 => IN01(26),
        I2 => IN02(26),
        S => S,
        Y => Y(26));

    bit27: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(27),
        I1 => IN01(27),
        I2 => IN02(27),
        S => S,
        Y => Y(27));

    bit28: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(28),
        I1 => IN01(28),
        I2 => IN02(28),
        S => S,
        Y => Y(28));

    bit29: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(29),
        I1 => IN01(29),
        I2 => IN02(29),
        S => S,
        Y => Y(29));

    bit30: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(30),
        I1 => IN01(30),
        I2 => IN02(30),
        S => S,
        Y => Y(30));

    bit31: Mux3_1bit_23375183 PORT MAP (
        I0 => IN00(31),
        I1 => IN01(31),
        I2 => IN02(31),
        S => S,
        Y => Y(31));

end Behavioral;
