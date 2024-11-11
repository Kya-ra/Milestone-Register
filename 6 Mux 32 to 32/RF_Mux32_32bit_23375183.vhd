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

entity Mux32_32bit_23375183 is
    Port (
        IN00, IN01, IN02, IN03, IN04, IN05, IN06, IN07, 
        IN08, IN09, IN10, IN11, IN12, IN13, IN14, IN15, 
        IN16, IN17, IN18, IN19, IN20, IN21, IN22, IN23, 
        IN24, IN25, IN26, IN27, IN28, IN29, IN30, IN31 : in STD_LOGIC_VECTOR (31 downto 0);
        S : in STD_LOGIC_VECTOR (4 downto 0); -- 5-bit selection signal
        Y : out STD_LOGIC_VECTOR (31 downto 0)
    );
end Mux32_32bit_23375183;


architecture Behavioral of Mux32_32bit_23375183 is

-- 1-bit 32-input multiplexer component
COMPONENT Mux32_1bit_23375183
    Port (
        I0, I1, I2, I3, I4, I5, I6, I7,
        I8, I9, I10, I11, I12, I13, I14, I15,
        I16, I17, I18, I19, I20, I21, I22, I23,
        I24, I25, I26, I27, I28, I29, I30, I31 : in STD_LOGIC;
        S : in STD_LOGIC_VECTOR (4 downto 0);
        Y : out STD_LOGIC
    );
END COMPONENT;


begin
    bit0: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(0), I1 => IN01(0), I2 => IN02(0), I3 => IN03(0),
        I4 => IN04(0), I5 => IN05(0), I6 => IN06(0), I7 => IN07(0),
        I8 => IN08(0), I9 => IN09(0), I10 => IN10(0), I11 => IN11(0),
        I12 => IN12(0), I13 => IN13(0), I14 => IN14(0), I15 => IN15(0),
        I16 => IN16(0), I17 => IN17(0), I18 => IN18(0), I19 => IN19(0),
        I20 => IN20(0), I21 => IN21(0), I22 => IN22(0), I23 => IN23(0),
        I24 => IN24(0), I25 => IN25(0), I26 => IN26(0), I27 => IN27(0),
        I28 => IN28(0), I29 => IN29(0), I30 => IN30(0), I31 => IN31(0),
        S => S,
        Y => Y(0)
    );

    bit1: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(1), I1 => IN01(1), I2 => IN02(1), I3 => IN03(1),
        I4 => IN04(1), I5 => IN05(1), I6 => IN06(1), I7 => IN07(1),
        I8 => IN08(1), I9 => IN09(1), I10 => IN10(1), I11 => IN11(1),
        I12 => IN12(1), I13 => IN13(1), I14 => IN14(1), I15 => IN15(1),
        I16 => IN16(1), I17 => IN17(1), I18 => IN18(1), I19 => IN19(1),
        I20 => IN20(1), I21 => IN21(1), I22 => IN22(1), I23 => IN23(1),
        I24 => IN24(1), I25 => IN25(1), I26 => IN26(1), I27 => IN27(1),
        I28 => IN28(1), I29 => IN29(1), I30 => IN30(1), I31 => IN31(1),
        S => S,
        Y => Y(1)
    );

    bit2: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(2), I1 => IN01(2), I2 => IN02(2), I3 => IN03(2),
        I4 => IN04(2), I5 => IN05(2), I6 => IN06(2), I7 => IN07(2),
        I8 => IN08(2), I9 => IN09(2), I10 => IN10(2), I11 => IN11(2),
        I12 => IN12(2), I13 => IN13(2), I14 => IN14(2), I15 => IN15(2),
        I16 => IN16(2), I17 => IN17(2), I18 => IN18(2), I19 => IN19(2),
        I20 => IN20(2), I21 => IN21(2), I22 => IN22(2), I23 => IN23(2),
        I24 => IN24(2), I25 => IN25(2), I26 => IN26(2), I27 => IN27(2),
        I28 => IN28(2), I29 => IN29(2), I30 => IN30(2), I31 => IN31(2),
        S => S,
        Y => Y(2)
    );

    bit3: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(3), I1 => IN01(3), I2 => IN02(3), I3 => IN03(3),
        I4 => IN04(3), I5 => IN05(3), I6 => IN06(3), I7 => IN07(3),
        I8 => IN08(3), I9 => IN09(3), I10 => IN10(3), I11 => IN11(3),
        I12 => IN12(3), I13 => IN13(3), I14 => IN14(3), I15 => IN15(3),
        I16 => IN16(3), I17 => IN17(3), I18 => IN18(3), I19 => IN19(3),
        I20 => IN20(3), I21 => IN21(3), I22 => IN22(3), I23 => IN23(3),
        I24 => IN24(3), I25 => IN25(3), I26 => IN26(3), I27 => IN27(3),
        I28 => IN28(3), I29 => IN29(3), I30 => IN30(3), I31 => IN31(3),
        S => S,
        Y => Y(3)
    );

    bit4: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(4), I1 => IN01(4), I2 => IN02(4), I3 => IN03(4),
        I4 => IN04(4), I5 => IN05(4), I6 => IN06(4), I7 => IN07(4),
        I8 => IN08(4), I9 => IN09(4), I10 => IN10(4), I11 => IN11(4),
        I12 => IN12(4), I13 => IN13(4), I14 => IN14(4), I15 => IN15(4),
        I16 => IN16(4), I17 => IN17(4), I18 => IN18(4), I19 => IN19(4),
        I20 => IN20(4), I21 => IN21(4), I22 => IN22(4), I23 => IN23(4),
        I24 => IN24(4), I25 => IN25(4), I26 => IN26(4), I27 => IN27(4),
        I28 => IN28(4), I29 => IN29(4), I30 => IN30(4), I31 => IN31(4),
        S => S,
        Y => Y(4)
    );

    bit5: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(5), I1 => IN01(5), I2 => IN02(5), I3 => IN03(5),
        I4 => IN04(5), I5 => IN05(5), I6 => IN06(5), I7 => IN07(5),
        I8 => IN08(5), I9 => IN09(5), I10 => IN10(5), I11 => IN11(5),
        I12 => IN12(5), I13 => IN13(5), I14 => IN14(5), I15 => IN15(5),
        I16 => IN16(5), I17 => IN17(5), I18 => IN18(5), I19 => IN19(5),
        I20 => IN20(5), I21 => IN21(5), I22 => IN22(5), I23 => IN23(5),
        I24 => IN24(5), I25 => IN25(5), I26 => IN26(5), I27 => IN27(5),
        I28 => IN28(5), I29 => IN29(5), I30 => IN30(5), I31 => IN31(5),
        S => S,
        Y => Y(5)
    );

    bit6: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(6), I1 => IN01(6), I2 => IN02(6), I3 => IN03(6),
        I4 => IN04(6), I5 => IN05(6), I6 => IN06(6), I7 => IN07(6),
        I8 => IN08(6), I9 => IN09(6), I10 => IN10(6), I11 => IN11(6),
        I12 => IN12(6), I13 => IN13(6), I14 => IN14(6), I15 => IN15(6),
        I16 => IN16(6), I17 => IN17(6), I18 => IN18(6), I19 => IN19(6),
        I20 => IN20(6), I21 => IN21(6), I22 => IN22(6), I23 => IN23(6),
        I24 => IN24(6), I25 => IN25(6), I26 => IN26(6), I27 => IN27(6),
        I28 => IN28(6), I29 => IN29(6), I30 => IN30(6), I31 => IN31(6),
        S => S,
        Y => Y(6)
    );

    bit7: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(7), I1 => IN01(7), I2 => IN02(7), I3 => IN03(7),
        I4 => IN04(7), I5 => IN05(7), I6 => IN06(7), I7 => IN07(7),
        I8 => IN08(7), I9 => IN09(7), I10 => IN10(7), I11 => IN11(7),
        I12 => IN12(7), I13 => IN13(7), I14 => IN14(7), I15 => IN15(7),
        I16 => IN16(7), I17 => IN17(7), I18 => IN18(7), I19 => IN19(7),
        I20 => IN20(7), I21 => IN21(7), I22 => IN22(7), I23 => IN23(7),
        I24 => IN24(7), I25 => IN25(7), I26 => IN26(7), I27 => IN27(7),
        I28 => IN28(7), I29 => IN29(7), I30 => IN30(7), I31 => IN31(7),
        S => S,
        Y => Y(7)
    );

    bit8: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(8), I1 => IN01(8), I2 => IN02(8), I3 => IN03(8),
        I4 => IN04(8), I5 => IN05(8), I6 => IN06(8), I7 => IN07(8),
        I8 => IN08(8), I9 => IN09(8), I10 => IN10(8), I11 => IN11(8),
        I12 => IN12(8), I13 => IN13(8), I14 => IN14(8), I15 => IN15(8),
        I16 => IN16(8), I17 => IN17(8), I18 => IN18(8), I19 => IN19(8),
        I20 => IN20(8), I21 => IN21(8), I22 => IN22(8), I23 => IN23(8),
        I24 => IN24(8), I25 => IN25(8), I26 => IN26(8), I27 => IN27(8),
        I28 => IN28(8), I29 => IN29(8), I30 => IN30(8), I31 => IN31(8),
        S => S,
        Y => Y(8)
    );

    bit9: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(9), I1 => IN01(9), I2 => IN02(9), I3 => IN03(9),
        I4 => IN04(9), I5 => IN05(9), I6 => IN06(9), I7 => IN07(9),
        I8 => IN08(9), I9 => IN09(9), I10 => IN10(9), I11 => IN11(9),
        I12 => IN12(9), I13 => IN13(9), I14 => IN14(9), I15 => IN15(9),
        I16 => IN16(9), I17 => IN17(9), I18 => IN18(9), I19 => IN19(9),
        I20 => IN20(9), I21 => IN21(9), I22 => IN22(9), I23 => IN23(9),
        I24 => IN24(9), I25 => IN25(9), I26 => IN26(9), I27 => IN27(9),
        I28 => IN28(9), I29 => IN29(9), I30 => IN30(9), I31 => IN31(9),
        S => S,
        Y => Y(9)
    );

    bit10: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(10), I1 => IN01(10), I2 => IN02(10), I3 => IN03(10),
        I4 => IN04(10), I5 => IN05(10), I6 => IN06(10), I7 => IN07(10),
        I8 => IN08(10), I9 => IN09(10), I10 => IN10(10), I11 => IN11(10),
        I12 => IN12(10), I13 => IN13(10), I14 => IN14(10), I15 => IN15(10),
        I16 => IN16(10), I17 => IN17(10), I18 => IN18(10), I19 => IN19(10),
        I20 => IN20(10), I21 => IN21(10), I22 => IN22(10), I23 => IN23(10),
        I24 => IN24(10), I25 => IN25(10), I26 => IN26(10), I27 => IN27(10),
        I28 => IN28(10), I29 => IN29(10), I30 => IN30(10), I31 => IN31(10),
        S => S,
        Y => Y(10)
    );

    bit11: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(11), I1 => IN01(11), I2 => IN02(11), I3 => IN03(11),
        I4 => IN04(11), I5 => IN05(11), I6 => IN06(11), I7 => IN07(11),
        I8 => IN08(11), I9 => IN09(11), I10 => IN10(11), I11 => IN11(11),
        I12 => IN12(11), I13 => IN13(11), I14 => IN14(11), I15 => IN15(11),
        I16 => IN16(11), I17 => IN17(11), I18 => IN18(11), I19 => IN19(11),
        I20 => IN20(11), I21 => IN21(11), I22 => IN22(11), I23 => IN23(11),
        I24 => IN24(11), I25 => IN25(11), I26 => IN26(11), I27 => IN27(11),
        I28 => IN28(11), I29 => IN29(11), I30 => IN30(11), I31 => IN31(11),
        S => S,
        Y => Y(11)
    );

    bit12: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(12), I1 => IN01(12), I2 => IN02(12), I3 => IN03(12),
        I4 => IN04(12), I5 => IN05(12), I6 => IN06(12), I7 => IN07(12),
        I8 => IN08(12), I9 => IN09(12), I10 => IN10(12), I11 => IN11(12),
        I12 => IN12(12), I13 => IN13(12), I14 => IN14(12), I15 => IN15(12),
        I16 => IN16(12), I17 => IN17(12), I18 => IN18(12), I19 => IN19(12),
        I20 => IN20(12), I21 => IN21(12), I22 => IN22(12), I23 => IN23(12),
        I24 => IN24(12), I25 => IN25(12), I26 => IN26(12), I27 => IN27(12),
        I28 => IN28(12), I29 => IN29(12), I30 => IN30(12), I31 => IN31(12),
        S => S,
        Y => Y(12)
    );

    bit13: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(13), I1 => IN01(13), I2 => IN02(13), I3 => IN03(13),
        I4 => IN04(13), I5 => IN05(13), I6 => IN06(13), I7 => IN07(13),
        I8 => IN08(13), I9 => IN09(13), I10 => IN10(13), I11 => IN11(13),
        I12 => IN12(13), I13 => IN13(13), I14 => IN14(13), I15 => IN15(13),
        I16 => IN16(13), I17 => IN17(13), I18 => IN18(13), I19 => IN19(13),
        I20 => IN20(13), I21 => IN21(13), I22 => IN22(13), I23 => IN23(13),
        I24 => IN24(13), I25 => IN25(13), I26 => IN26(13), I27 => IN27(13),
        I28 => IN28(13), I29 => IN29(13), I30 => IN30(13), I31 => IN31(13),
        S => S,
        Y => Y(13)
    );

    bit14: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(14), I1 => IN01(14), I2 => IN02(14), I3 => IN03(14),
        I4 => IN04(14), I5 => IN05(14), I6 => IN06(14), I7 => IN07(14),
        I8 => IN08(14), I9 => IN09(14), I10 => IN10(14), I11 => IN11(14),
        I12 => IN12(14), I13 => IN13(14), I14 => IN14(14), I15 => IN15(14),
        I16 => IN16(14), I17 => IN17(14), I18 => IN18(14), I19 => IN19(14),
        I20 => IN20(14), I21 => IN21(14), I22 => IN22(14), I23 => IN23(14),
        I24 => IN24(14), I25 => IN25(14), I26 => IN26(14), I27 => IN27(14),
        I28 => IN28(14), I29 => IN29(14), I30 => IN30(14), I31 => IN31(14),
        S => S,
        Y => Y(14)
    );

    bit15: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(15), I1 => IN01(15), I2 => IN02(15), I3 => IN03(15),
        I4 => IN04(15), I5 => IN05(15), I6 => IN06(15), I7 => IN07(15),
        I8 => IN08(15), I9 => IN09(15), I10 => IN10(15), I11 => IN11(15),
        I12 => IN12(15), I13 => IN13(15), I14 => IN14(15), I15 => IN15(15),
        I16 => IN16(15), I17 => IN17(15), I18 => IN18(15), I19 => IN19(15),
        I20 => IN20(15), I21 => IN21(15), I22 => IN22(15), I23 => IN23(15),
        I24 => IN24(15), I25 => IN25(15), I26 => IN26(15), I27 => IN27(15),
        I28 => IN28(15), I29 => IN29(15), I30 => IN30(15), I31 => IN31(15),
        S => S,
        Y => Y(15)
    );

    bit16: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(16), I1 => IN01(16), I2 => IN02(16), I3 => IN03(16),
        I4 => IN04(16), I5 => IN05(16), I6 => IN06(16), I7 => IN07(16),
        I8 => IN08(16), I9 => IN09(16), I10 => IN10(16), I11 => IN11(16),
        I12 => IN12(16), I13 => IN13(16), I14 => IN14(16), I15 => IN15(16),
        I16 => IN16(16), I17 => IN17(16), I18 => IN18(16), I19 => IN19(16),
        I20 => IN20(16), I21 => IN21(16), I22 => IN22(16), I23 => IN23(16),
        I24 => IN24(16), I25 => IN25(16), I26 => IN26(16), I27 => IN27(16),
        I28 => IN28(16), I29 => IN29(16), I30 => IN30(16), I31 => IN31(16),
        S => S,
        Y => Y(16)
    );

    bit17: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(17), I1 => IN01(17), I2 => IN02(17), I3 => IN03(17),
        I4 => IN04(17), I5 => IN05(17), I6 => IN06(17), I7 => IN07(17),
        I8 => IN08(17), I9 => IN09(17), I10 => IN10(17), I11 => IN11(17),
        I12 => IN12(17), I13 => IN13(17), I14 => IN14(17), I15 => IN15(17),
        I16 => IN16(17), I17 => IN17(17), I18 => IN18(17), I19 => IN19(17),
        I20 => IN20(17), I21 => IN21(17), I22 => IN22(17), I23 => IN23(17),
        I24 => IN24(17), I25 => IN25(17), I26 => IN26(17), I27 => IN27(17),
        I28 => IN28(17), I29 => IN29(17), I30 => IN30(17), I31 => IN31(17),
        S => S,
        Y => Y(17)
    );

    bit18: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(18), I1 => IN01(18), I2 => IN02(18), I3 => IN03(18),
        I4 => IN04(18), I5 => IN05(18), I6 => IN06(18), I7 => IN07(18),
        I8 => IN08(18), I9 => IN09(18), I10 => IN10(18), I11 => IN11(18),
        I12 => IN12(18), I13 => IN13(18), I14 => IN14(18), I15 => IN15(18),
        I16 => IN16(18), I17 => IN17(18), I18 => IN18(18), I19 => IN19(18),
        I20 => IN20(18), I21 => IN21(18), I22 => IN22(18), I23 => IN23(18),
        I24 => IN24(18), I25 => IN25(18), I26 => IN26(18), I27 => IN27(18),
        I28 => IN28(18), I29 => IN29(18), I30 => IN30(18), I31 => IN31(18),
        S => S,
        Y => Y(18)
    );

    bit19: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(19), I1 => IN01(19), I2 => IN02(19), I3 => IN03(19),
        I4 => IN04(19), I5 => IN05(19), I6 => IN06(19), I7 => IN07(19),
        I8 => IN08(19), I9 => IN09(19), I10 => IN10(19), I11 => IN11(19),
        I12 => IN12(19), I13 => IN13(19), I14 => IN14(19), I15 => IN15(19),
        I16 => IN16(19), I17 => IN17(19), I18 => IN18(19), I19 => IN19(19),
        I20 => IN20(19), I21 => IN21(19), I22 => IN22(19), I23 => IN23(19),
        I24 => IN24(19), I25 => IN25(19), I26 => IN26(19), I27 => IN27(19),
        I28 => IN28(19), I29 => IN29(19), I30 => IN30(19), I31 => IN31(19),
        S => S,
        Y => Y(19)
    );

    bit20: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(20), I1 => IN01(20), I2 => IN02(20), I3 => IN03(20),
        I4 => IN04(20), I5 => IN05(20), I6 => IN06(20), I7 => IN07(20),
        I8 => IN08(20), I9 => IN09(20), I10 => IN10(20), I11 => IN11(20),
        I12 => IN12(20), I13 => IN13(20), I14 => IN14(20), I15 => IN15(20),
        I16 => IN16(20), I17 => IN17(20), I18 => IN18(20), I19 => IN19(20),
        I20 => IN20(20), I21 => IN21(20), I22 => IN22(20), I23 => IN23(20),
        I24 => IN24(20), I25 => IN25(20), I26 => IN26(20), I27 => IN27(20),
        I28 => IN28(20), I29 => IN29(20), I30 => IN30(20), I31 => IN31(20),
        S => S,
        Y => Y(20)
    );

    bit21: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(21), I1 => IN01(21), I2 => IN02(21), I3 => IN03(21),
        I4 => IN04(21), I5 => IN05(21), I6 => IN06(21), I7 => IN07(21),
        I8 => IN08(21), I9 => IN09(21), I10 => IN10(21), I11 => IN11(21),
        I12 => IN12(21), I13 => IN13(21), I14 => IN14(21), I15 => IN15(21),
        I16 => IN16(21), I17 => IN17(21), I18 => IN18(21), I19 => IN19(21),
        I20 => IN20(21), I21 => IN21(21), I22 => IN22(21), I23 => IN23(21),
        I24 => IN24(21), I25 => IN25(21), I26 => IN26(21), I27 => IN27(21),
        I28 => IN28(21), I29 => IN29(21), I30 => IN30(21), I31 => IN31(21),
        S => S,
        Y => Y(21)
    );

    bit22: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(22), I1 => IN01(22), I2 => IN02(22), I3 => IN03(22),
        I4 => IN04(22), I5 => IN05(22), I6 => IN06(22), I7 => IN07(22),
        I8 => IN08(22), I9 => IN09(22), I10 => IN10(22), I11 => IN11(22),
        I12 => IN12(22), I13 => IN13(22), I14 => IN14(22), I15 => IN15(22),
        I16 => IN16(22), I17 => IN17(22), I18 => IN18(22), I19 => IN19(22),
        I20 => IN20(22), I21 => IN21(22), I22 => IN22(22), I23 => IN23(22),
        I24 => IN24(22), I25 => IN25(22), I26 => IN26(22), I27 => IN27(22),
        I28 => IN28(22), I29 => IN29(22), I30 => IN30(22), I31 => IN31(22),
        S => S,
        Y => Y(22)
    );

    bit23: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(23), I1 => IN01(23), I2 => IN02(23), I3 => IN03(23),
        I4 => IN04(23), I5 => IN05(23), I6 => IN06(23), I7 => IN07(23),
        I8 => IN08(23), I9 => IN09(23), I10 => IN10(23), I11 => IN11(23),
        I12 => IN12(23), I13 => IN13(23), I14 => IN14(23), I15 => IN15(23),
        I16 => IN16(23), I17 => IN17(23), I18 => IN18(23), I19 => IN19(23),
        I20 => IN20(23), I21 => IN21(23), I22 => IN22(23), I23 => IN23(23),
        I24 => IN24(23), I25 => IN25(23), I26 => IN26(23), I27 => IN27(23),
        I28 => IN28(23), I29 => IN29(23), I30 => IN30(23), I31 => IN31(23),
        S => S,
        Y => Y(23)
    );

    bit24: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(24), I1 => IN01(24), I2 => IN02(24), I3 => IN03(24),
        I4 => IN04(24), I5 => IN05(24), I6 => IN06(24), I7 => IN07(24),
        I8 => IN08(24), I9 => IN09(24), I10 => IN10(24), I11 => IN11(24),
        I12 => IN12(24), I13 => IN13(24), I14 => IN14(24), I15 => IN15(24),
        I16 => IN16(24), I17 => IN17(24), I18 => IN18(24), I19 => IN19(24),
        I20 => IN20(24), I21 => IN21(24), I22 => IN22(24), I23 => IN23(24),
        I24 => IN24(24), I25 => IN25(24), I26 => IN26(24), I27 => IN27(24),
        I28 => IN28(24), I29 => IN29(24), I30 => IN30(24), I31 => IN31(24),
        S => S,
        Y => Y(24)
    );

    bit25: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(25), I1 => IN01(25), I2 => IN02(25), I3 => IN03(25),
        I4 => IN04(25), I5 => IN05(25), I6 => IN06(25), I7 => IN07(25),
        I8 => IN08(25), I9 => IN09(25), I10 => IN10(25), I11 => IN11(25),
        I12 => IN12(25), I13 => IN13(25), I14 => IN14(25), I15 => IN15(25),
        I16 => IN16(25), I17 => IN17(25), I18 => IN18(25), I19 => IN19(25),
        I20 => IN20(25), I21 => IN21(25), I22 => IN22(25), I23 => IN23(25),
        I24 => IN24(25), I25 => IN25(25), I26 => IN26(25), I27 => IN27(25),
        I28 => IN28(25), I29 => IN29(25), I30 => IN30(25), I31 => IN31(25),
        S => S,
        Y => Y(25)
    );

    bit26: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(26), I1 => IN01(26), I2 => IN02(26), I3 => IN03(26),
        I4 => IN04(26), I5 => IN05(26), I6 => IN06(26), I7 => IN07(26),
        I8 => IN08(26), I9 => IN09(26), I10 => IN10(26), I11 => IN11(26),
        I12 => IN12(26), I13 => IN13(26), I14 => IN14(26), I15 => IN15(26),
        I16 => IN16(26), I17 => IN17(26), I18 => IN18(26), I19 => IN19(26),
        I20 => IN20(26), I21 => IN21(26), I22 => IN22(26), I23 => IN23(26),
        I24 => IN24(26), I25 => IN25(26), I26 => IN26(26), I27 => IN27(26),
        I28 => IN28(26), I29 => IN29(26), I30 => IN30(26), I31 => IN31(26),
        S => S,
        Y => Y(26)
    );

    bit27: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(27), I1 => IN01(27), I2 => IN02(27), I3 => IN03(27),
        I4 => IN04(27), I5 => IN05(27), I6 => IN06(27), I7 => IN07(27),
        I8 => IN08(27), I9 => IN09(27), I10 => IN10(27), I11 => IN11(27),
        I12 => IN12(27), I13 => IN13(27), I14 => IN14(27), I15 => IN15(27),
        I16 => IN16(27), I17 => IN17(27), I18 => IN18(27), I19 => IN19(27),
        I20 => IN20(27), I21 => IN21(27), I22 => IN22(27), I23 => IN23(27),
        I24 => IN24(27), I25 => IN25(27), I26 => IN26(27), I27 => IN27(27),
        I28 => IN28(27), I29 => IN29(27), I30 => IN30(27), I31 => IN31(27),
        S => S,
        Y => Y(27)
    );

    bit28: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(28), I1 => IN01(28), I2 => IN02(28), I3 => IN03(28),
        I4 => IN04(28), I5 => IN05(28), I6 => IN06(28), I7 => IN07(28),
        I8 => IN08(28), I9 => IN09(28), I10 => IN10(28), I11 => IN11(28),
        I12 => IN12(28), I13 => IN13(28), I14 => IN14(28), I15 => IN15(28),
        I16 => IN16(28), I17 => IN17(28), I18 => IN18(28), I19 => IN19(28),
        I20 => IN20(28), I21 => IN21(28), I22 => IN22(28), I23 => IN23(28),
        I24 => IN24(28), I25 => IN25(28), I26 => IN26(28), I27 => IN27(28),
        I28 => IN28(28), I29 => IN29(28), I30 => IN30(28), I31 => IN31(28),
        S => S,
        Y => Y(28)
    );

    bit29: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(29), I1 => IN01(29), I2 => IN02(29), I3 => IN03(29),
        I4 => IN04(29), I5 => IN05(29), I6 => IN06(29), I7 => IN07(29),
        I8 => IN08(29), I9 => IN09(29), I10 => IN10(29), I11 => IN11(29),
        I12 => IN12(29), I13 => IN13(29), I14 => IN14(29), I15 => IN15(29),
        I16 => IN16(29), I17 => IN17(29), I18 => IN18(29), I19 => IN19(29),
        I20 => IN20(29), I21 => IN21(29), I22 => IN22(29), I23 => IN23(29),
        I24 => IN24(29), I25 => IN25(29), I26 => IN26(29), I27 => IN27(29),
        I28 => IN28(29), I29 => IN29(29), I30 => IN30(29), I31 => IN31(29),
        S => S,
        Y => Y(29)
    );

    bit30: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(30), I1 => IN01(30), I2 => IN02(30), I3 => IN03(30),
        I4 => IN04(30), I5 => IN05(30), I6 => IN06(30), I7 => IN07(30),
        I8 => IN08(30), I9 => IN09(30), I10 => IN10(30), I11 => IN11(30),
        I12 => IN12(30), I13 => IN13(30), I14 => IN14(30), I15 => IN15(30),
        I16 => IN16(30), I17 => IN17(30), I18 => IN18(30), I19 => IN19(30),
        I20 => IN20(30), I21 => IN21(30), I22 => IN22(30), I23 => IN23(30),
        I24 => IN24(30), I25 => IN25(30), I26 => IN26(30), I27 => IN27(30),
        I28 => IN28(30), I29 => IN29(30), I30 => IN30(30), I31 => IN31(30),
        S => S,
        Y => Y(30)
    );

    bit31: Mux32_1bit_23375183 PORT MAP (
        I0 => IN00(31), I1 => IN01(31), I2 => IN02(31), I3 => IN03(31),
        I4 => IN04(31), I5 => IN05(31), I6 => IN06(31), I7 => IN07(31),
        I8 => IN08(31), I9 => IN09(31), I10 => IN10(31), I11 => IN11(31),
        I12 => IN12(31), I13 => IN13(31), I14 => IN14(31), I15 => IN15(31),
        I16 => IN16(31), I17 => IN17(31), I18 => IN18(31), I19 => IN19(31),
        I20 => IN20(31), I21 => IN21(31), I22 => IN22(31), I23 => IN23(31),
        I24 => IN24(31), I25 => IN25(31), I26 => IN26(31), I27 => IN27(31),
        I28 => IN28(31), I29 => IN29(31), I30 => IN30(31), I31 => IN31(31),
        S => S,
        Y => Y(31)
    );

end Behavioral;


