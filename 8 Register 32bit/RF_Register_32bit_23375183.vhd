----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 27.09.2024 10:47:43
-- Design Name: 
-- Module Name: Register_32bit_23375183 - Behavioral
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

entity Register_32bit_23375183 is
    Port ( D : in STD_LOGIC_VECTOR (31 downto 0);
           CLK : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Load_FF : in STD_LOGIC; -- Load control signal
           Q : out STD_LOGIC_VECTOR (31 downto 0);
           Q_not : out STD_LOGIC_VECTOR (31 downto 0));
end Register_32bit_23375183;

architecture Behavioral of Register_32bit_23375183 is
    -- D Flip-Flop component
    COMPONENT D_Flip_Flop_23375183
    Port (D : in STD_LOGIC;
          CLK : in STD_LOGIC;
          Reset : in STD_LOGIC;
          Q : out STD_LOGIC;
          Q_not : out STD_LOGIC);
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

    -- Internal signals for each bit's load and not-load logic
    signal Not_Load_And0, Load_And0, OR_D0 : STD_LOGIC;
    signal Not_Load_And1, Load_And1, OR_D1 : STD_LOGIC;
    signal Not_Load_And2, Load_And2, OR_D2 : STD_LOGIC;
    signal Not_Load_And3, Load_And3, OR_D3 : STD_LOGIC;
    signal Not_Load_And4, Load_And4, OR_D4 : STD_LOGIC;
    signal Not_Load_And5, Load_And5, OR_D5 : STD_LOGIC;
    signal Not_Load_And6, Load_And6, OR_D6 : STD_LOGIC;
    signal Not_Load_And7, Load_And7, OR_D7 : STD_LOGIC;
    signal Not_Load_And8, Load_And8, OR_D8 : STD_LOGIC;
    signal Not_Load_And9, Load_And9, OR_D9 : STD_LOGIC;
    signal Not_Load_And10, Load_And10, OR_D10 : STD_LOGIC;
    signal Not_Load_And11, Load_And11, OR_D11 : STD_LOGIC;
    signal Not_Load_And12, Load_And12, OR_D12 : STD_LOGIC;
    signal Not_Load_And13, Load_And13, OR_D13 : STD_LOGIC;
    signal Not_Load_And14, Load_And14, OR_D14 : STD_LOGIC;
    signal Not_Load_And15, Load_And15, OR_D15 : STD_LOGIC;
    signal Not_Load_And16, Load_And16, OR_D16 : STD_LOGIC;
    signal Not_Load_And17, Load_And17, OR_D17 : STD_LOGIC;
    signal Not_Load_And18, Load_And18, OR_D18 : STD_LOGIC;
    signal Not_Load_And19, Load_And19, OR_D19 : STD_LOGIC;
    signal Not_Load_And20, Load_And20, OR_D20 : STD_LOGIC;
    signal Not_Load_And21, Load_And21, OR_D21 : STD_LOGIC;
    signal Not_Load_And22, Load_And22, OR_D22 : STD_LOGIC;
    signal Not_Load_And23, Load_And23, OR_D23 : STD_LOGIC;
    signal Not_Load_And24, Load_And24, OR_D24 : STD_LOGIC;
    signal Not_Load_And25, Load_And25, OR_D25 : STD_LOGIC;
    signal Not_Load_And26, Load_And26, OR_D26 : STD_LOGIC;
    signal Not_Load_And27, Load_And27, OR_D27 : STD_LOGIC;
    signal Not_Load_And28, Load_And28, OR_D28 : STD_LOGIC;
    signal Not_Load_And29, Load_And29, OR_D29 : STD_LOGIC;
    signal Not_Load_And30, Load_And30, OR_D30 : STD_LOGIC;
    signal Not_Load_And31, Load_And31, OR_D31 : STD_LOGIC;

    signal Q_bit0, Q_bit1, Q_bit2, Q_bit3, Q_bit4, Q_bit5, Q_bit6, Q_bit7 : STD_LOGIC;
    signal Q_bit8, Q_bit9, Q_bit10, Q_bit11, Q_bit12, Q_bit13, Q_bit14, Q_bit15 : STD_LOGIC;
    signal Q_bit16, Q_bit17, Q_bit18, Q_bit19, Q_bit20, Q_bit21, Q_bit22, Q_bit23 : STD_LOGIC;
    signal Q_bit24, Q_bit25, Q_bit26, Q_bit27, Q_bit28, Q_bit29, Q_bit30, Q_bit31 : STD_LOGIC;

begin

    -- Instantiate bit 0 ---------------------------------------------
    bit0: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D0,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit0,
        Q_not => Q_not(0)
    );
    Not_Load_And0 <= Q_bit0 and not Load_FF after AND_gate_delay;
    Load_And0 <= D(0) and Load_FF after AND_gate_delay;
    OR_D0 <= Not_Load_And0 or Load_And0 after OR_gate_delay;
    Q(0) <= Q_bit0;

    -- Instantiate bit 1 ---------------------------------------------
    bit1: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D1,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit1,
        Q_not => Q_not(1)
    );
    Not_Load_And1 <= Q_bit1 and not Load_FF after AND_gate_delay;
    Load_And1 <= D(1) and Load_FF after AND_gate_delay;
    OR_D1 <= Not_Load_And1 or Load_And1 after OR_gate_delay;
    Q(1) <= Q_bit1;

    -- Instantiate bit 2 ---------------------------------------------
    bit2: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D2,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit2,
        Q_not => Q_not(2)
    );
    Not_Load_And2 <= Q_bit2 and not Load_FF after AND_gate_delay;
    Load_And2 <= D(2) and Load_FF after AND_gate_delay;
    OR_D2 <= Not_Load_And2 or Load_And2 after OR_gate_delay;
    Q(2) <= Q_bit2;

    -- Instantiate bit 3 ---------------------------------------------
    bit3: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D3,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit3,
        Q_not => Q_not(3)
    );
    Not_Load_And3 <= Q_bit3 and not Load_FF after AND_gate_delay;
    Load_And3 <= D(3) and Load_FF after AND_gate_delay;
    OR_D3 <= Not_Load_And3 or Load_And3 after OR_gate_delay;
    Q(3) <= Q_bit3;

    -- Instantiate bit 4 ---------------------------------------------
    bit4: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D4,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit4,
        Q_not => Q_not(4)
    );
    Not_Load_And4 <= Q_bit4 and not Load_FF after AND_gate_delay;
    Load_And4 <= D(4) and Load_FF after AND_gate_delay;
    OR_D4 <= Not_Load_And4 or Load_And4 after OR_gate_delay;
    Q(4) <= Q_bit4;

    -- Instantiate bit 5 ---------------------------------------------
    bit5: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D5,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit5,
        Q_not => Q_not(5)
    );
    Not_Load_And5 <= Q_bit5 and not Load_FF after AND_gate_delay;
    Load_And5 <= D(5) and Load_FF after AND_gate_delay;
    OR_D5 <= Not_Load_And5 or Load_And5 after OR_gate_delay;
    Q(5) <= Q_bit5;

    -- Instantiate bit 6 ---------------------------------------------
    bit6: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D6,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit6,
        Q_not => Q_not(6)
    );
    Not_Load_And6 <= Q_bit6 and not Load_FF after AND_gate_delay;
    Load_And6 <= D(6) and Load_FF after AND_gate_delay;
    OR_D6 <= Not_Load_And6 or Load_And6 after OR_gate_delay;
    Q(6) <= Q_bit6;

    -- Instantiate bit 7 ---------------------------------------------
    bit7: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D7,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit7,
        Q_not => Q_not(7)
    );
    Not_Load_And7 <= Q_bit7 and not Load_FF after AND_gate_delay;
    Load_And7 <= D(7) and Load_FF after AND_gate_delay;
    OR_D7 <= Not_Load_And7 or Load_And7 after OR_gate_delay;
    Q(7) <= Q_bit7;

    -- Instantiate bit 8 ---------------------------------------------
    bit8: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D8,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit8,
        Q_not => Q_not(8)
    );
    Not_Load_And8 <= Q_bit8 and not Load_FF after AND_gate_delay;
    Load_And8 <= D(8) and Load_FF after AND_gate_delay;
    OR_D8 <= Not_Load_And8 or Load_And8 after OR_gate_delay;
    Q(8) <= Q_bit8;

    -- Instantiate bit 9 ---------------------------------------------
    bit9: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D9,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit9,
        Q_not => Q_not(9)
    );
    Not_Load_And9 <= Q_bit9 and not Load_FF after AND_gate_delay;
    Load_And9 <= D(9) and Load_FF after AND_gate_delay;
    OR_D9 <= Not_Load_And9 or Load_And9 after OR_gate_delay;
    Q(9) <= Q_bit9;

    -- Instantiate bit 10 --------------------------------------------
    bit10: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D10,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit10,
        Q_not => Q_not(10)
    );
    Not_Load_And10 <= Q_bit10 and not Load_FF after AND_gate_delay;
    Load_And10 <= D(10) and Load_FF after AND_gate_delay;
    OR_D10 <= Not_Load_And10 or Load_And10 after OR_gate_delay;
    Q(10) <= Q_bit10;

    -- Instantiate bit 11 --------------------------------------------
    bit11: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D11,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit11,
        Q_not => Q_not(11)
    );
    Not_Load_And11 <= Q_bit11 and not Load_FF after AND_gate_delay;
    Load_And11 <= D(11) and Load_FF after AND_gate_delay;
    OR_D11 <= Not_Load_And11 or Load_And11 after OR_gate_delay;
    Q(11) <= Q_bit11;

    -- Instantiate bit 12 --------------------------------------------
    bit12: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D12,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit12,
        Q_not => Q_not(12)
    );
    Not_Load_And12 <= Q_bit12 and not Load_FF after AND_gate_delay;
    Load_And12 <= D(12) and Load_FF after AND_gate_delay;
    OR_D12 <= Not_Load_And12 or Load_And12 after OR_gate_delay;
    Q(12) <= Q_bit12;

    -- Instantiate bit 13 --------------------------------------------
    bit13: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D13,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit13,
        Q_not => Q_not(13)
    );
    Not_Load_And13 <= Q_bit13 and not Load_FF after AND_gate_delay;
    Load_And13 <= D(13) and Load_FF after AND_gate_delay;
    OR_D13 <= Not_Load_And13 or Load_And13 after OR_gate_delay;
    Q(13) <= Q_bit13;

    -- Instantiate bit 14 --------------------------------------------
    bit14: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D14,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit14,
        Q_not => Q_not(14)
    );
    Not_Load_And14 <= Q_bit14 and not Load_FF after AND_gate_delay;
    Load_And14 <= D(14) and Load_FF after AND_gate_delay;
    OR_D14 <= Not_Load_And14 or Load_And14 after OR_gate_delay;
    Q(14) <= Q_bit14;

    -- Instantiate bit 15 --------------------------------------------
    bit15: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D15,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit15,
        Q_not => Q_not(15)
    );
    Not_Load_And15 <= Q_bit15 and not Load_FF after AND_gate_delay;
    Load_And15 <= D(15) and Load_FF after AND_gate_delay;
    OR_D15 <= Not_Load_And15 or Load_And15 after OR_gate_delay;
    Q(15) <= Q_bit15;

    -- Instantiate bit 16 --------------------------------------------
    bit16: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D16,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit16,
        Q_not => Q_not(16)
    );
    Not_Load_And16 <= Q_bit16 and not Load_FF after AND_gate_delay;
    Load_And16 <= D(16) and Load_FF after AND_gate_delay;
    OR_D16 <= Not_Load_And16 or Load_And16 after OR_gate_delay;
    Q(16) <= Q_bit16;

    -- Instantiate bit 17 --------------------------------------------
    bit17: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D17,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit17,
        Q_not => Q_not(17)
    );
    Not_Load_And17 <= Q_bit17 and not Load_FF after AND_gate_delay;
    Load_And17 <= D(17) and Load_FF after AND_gate_delay;
    OR_D17 <= Not_Load_And17 or Load_And17 after OR_gate_delay;
    Q(17) <= Q_bit17;

    -- Instantiate bit 18 --------------------------------------------
    bit18: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D18,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit18,
        Q_not => Q_not(18)
    );
    Not_Load_And18 <= Q_bit18 and not Load_FF after AND_gate_delay;
    Load_And18 <= D(18) and Load_FF after AND_gate_delay;
    OR_D18 <= Not_Load_And18 or Load_And18 after OR_gate_delay;
    Q(18) <= Q_bit18;

    -- Instantiate bit 19 --------------------------------------------
    bit19: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D19,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit19,
        Q_not => Q_not(19)
    );
    Not_Load_And19 <= Q_bit19 and not Load_FF after AND_gate_delay;
    Load_And19 <= D(19) and Load_FF after AND_gate_delay;
    OR_D19 <= Not_Load_And19 or Load_And19 after OR_gate_delay;
    Q(19) <= Q_bit19;

    -- Instantiate bit 20 --------------------------------------------
    bit20: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D20,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit20,
        Q_not => Q_not(20)
    );
    Not_Load_And20 <= Q_bit20 and not Load_FF after AND_gate_delay;
    Load_And20 <= D(20) and Load_FF after AND_gate_delay;
    OR_D20 <= Not_Load_And20 or Load_And20 after OR_gate_delay;
    Q(20) <= Q_bit20;

    -- Instantiate bit 21 --------------------------------------------
    bit21: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D21,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit21,
        Q_not => Q_not(21)
    );
    Not_Load_And21 <= Q_bit21 and not Load_FF after AND_gate_delay;
    Load_And21 <= D(21) and Load_FF after AND_gate_delay;
    OR_D21 <= Not_Load_And21 or Load_And21 after OR_gate_delay;
    Q(21) <= Q_bit21;

    -- Instantiate bit 22 --------------------------------------------
    bit22: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D22,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit22,
        Q_not => Q_not(22)
    );
    Not_Load_And22 <= Q_bit22 and not Load_FF after AND_gate_delay;
    Load_And22 <= D(22) and Load_FF after AND_gate_delay;
    OR_D22 <= Not_Load_And22 or Load_And22 after OR_gate_delay;
    Q(22) <= Q_bit22;

    -- Instantiate bit 23 --------------------------------------------
    bit23: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D23,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit23,
        Q_not => Q_not(23)
    );
    Not_Load_And23 <= Q_bit23 and not Load_FF after AND_gate_delay;
    Load_And23 <= D(23) and Load_FF after AND_gate_delay;
    OR_D23 <= Not_Load_And23 or Load_And23 after OR_gate_delay;
    Q(23) <= Q_bit23;

    -- Instantiate bit 24 --------------------------------------------
    bit24: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D24,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit24,
        Q_not => Q_not(24)
    );
    Not_Load_And24 <= Q_bit24 and not Load_FF after AND_gate_delay;
    Load_And24 <= D(24) and Load_FF after AND_gate_delay;
    OR_D24 <= Not_Load_And24 or Load_And24 after OR_gate_delay;
    Q(24) <= Q_bit24;

    -- Instantiate bit 25 --------------------------------------------
    bit25: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D25,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit25,
        Q_not => Q_not(25)
    );
    Not_Load_And25 <= Q_bit25 and not Load_FF after AND_gate_delay;
    Load_And25 <= D(25) and Load_FF after AND_gate_delay;
    OR_D25 <= Not_Load_And25 or Load_And25 after OR_gate_delay;
    Q(25) <= Q_bit25;

    -- Instantiate bit 26 --------------------------------------------
    bit26: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D26,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit26,
        Q_not => Q_not(26)
    );
    Not_Load_And26 <= Q_bit26 and not Load_FF after AND_gate_delay;
    Load_And26 <= D(26) and Load_FF after AND_gate_delay;
    OR_D26 <= Not_Load_And26 or Load_And26 after OR_gate_delay;
    Q(26) <= Q_bit26;

    -- Instantiate bit 27 --------------------------------------------
    bit27: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D27,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit27,
        Q_not => Q_not(27)
    );
    Not_Load_And27 <= Q_bit27 and not Load_FF after AND_gate_delay;
    Load_And27 <= D(27) and Load_FF after AND_gate_delay;
    OR_D27 <= Not_Load_And27 or Load_And27 after OR_gate_delay;
    Q(27) <= Q_bit27;

    -- Instantiate bit 28 --------------------------------------------
    bit28: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D28,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit28,
        Q_not => Q_not(28)
    );
    Not_Load_And28 <= Q_bit28 and not Load_FF after AND_gate_delay;
    Load_And28 <= D(28) and Load_FF after AND_gate_delay;
    OR_D28 <= Not_Load_And28 or Load_And28 after OR_gate_delay;
    Q(28) <= Q_bit28;

    -- Instantiate bit 29 --------------------------------------------
    bit29: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D29,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit29,
        Q_not => Q_not(29)
    );
    Not_Load_And29 <= Q_bit29 and not Load_FF after AND_gate_delay;
    Load_And29 <= D(29) and Load_FF after AND_gate_delay;
    OR_D29 <= Not_Load_And29 or Load_And29 after OR_gate_delay;
    Q(29) <= Q_bit29;

    -- Instantiate bit 30 --------------------------------------------
    bit30: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D30,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit30,
        Q_not => Q_not(30)
    );
    Not_Load_And30 <= Q_bit30 and not Load_FF after AND_gate_delay;
    Load_And30 <= D(30) and Load_FF after AND_gate_delay;
    OR_D30 <= Not_Load_And30 or Load_And30 after OR_gate_delay;
    Q(30) <= Q_bit30;

    -- Instantiate bit 31 --------------------------------------------
    bit31: D_Flip_Flop_23375183 PORT MAP (
        D => OR_D31,
        CLK => CLK,
        Reset => Reset,
        Q => Q_bit31,
        Q_not => Q_not(31)
    );
    Not_Load_And31 <= Q_bit31 and not Load_FF after AND_gate_delay;
    Load_And31 <= D(31) and Load_FF after AND_gate_delay;
    OR_D31 <= Not_Load_And31 or Load_And31 after OR_gate_delay;
    Q(31) <= Q_bit31;

end Behavioral;

