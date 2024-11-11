----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 19.09.2023 11:44:54
-- Design Name: 
-- Module Name: RegisterFile_32_15 - Behavioral
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

entity RF_RegisterFile_32_15_23375183 is
    Port ( CLK, Reset, RW : in STD_LOGIC;
           DR, SA, SB : in STD_LOGIC_VECTOR (4 downto 0);
           TA, TB, TD : in STD_LOGIC_VECTOR (3 downto 0);
           D : in STD_LOGIC_VECTOR (31 downto 0);
           A, B : out STD_LOGIC_VECTOR (31 downto 0));
end RF_RegisterFile_32_15_23375183;


architecture Behavioral of RF_RegisterFile_32_15_23375183 is

-- Declaration of load signals
signal reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7 : std_logic;
signal reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15 : std_logic;
signal reg16, reg17, reg18, reg19, reg20, reg21, reg22, reg23 : std_logic;
signal reg24, reg25, reg26, reg27, reg28, reg29, reg30, reg31 : std_logic;

signal and0, and1, and2, and3, and4, and5, and6, and7 : std_logic;
signal and8, and9, and10, and11, and12, and13, and14, and15 : std_logic;
signal and16, and17, and18, and19, and20, and21, and22, and23 : std_logic;
signal and24, and25, and26, and27, and28, and29, and30, and31 : std_logic;

signal writeToMain : std_logic;
signal temp1, temp2, temp3, temp4, temp5, temp6, temp7 : std_logic;
signal temp8, temp9, temp10, temp11, temp12, temp13, temp14, temp15 : std_logic;

signal tmand0, tmand1, tmand2, tmand3, tmand4, tmand5, tmand6, tmand7 : std_logic;
signal tmand8, tmand9, tmand10, tmand11, tmand12, tmand13, tmand14, tmand15 : std_logic;
signal tmand16, tmand17, tmand18, tmand19, tmand20, tmand21, tmand22, tmand23 : std_logic;
signal tmand24, tmand25, tmand26, tmand27, tmand28, tmand29, tmand30, tmand31 : std_logic;

signal rwtemp1, rwtemp2, rwtemp3, rwtemp4, rwtemp5, rwtemp6, rwtemp7 : std_logic;
signal rwtemp8, rwtemp9, rwtemp10, rwtemp11, rwtemp12, rwtemp13, rwtemp14, rwtemp15 : std_logic;

signal Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7 : STD_LOGIC_VECTOR (31 downto 0);
signal Q8, Q9, Q10, Q11, Q12, Q13, Q14, Q15 : STD_LOGIC_VECTOR (31 downto 0);
signal Q16, Q17, Q18, Q19, Q20, Q21, Q22, Q23 : STD_LOGIC_VECTOR (31 downto 0);
signal Q24, Q25, Q26, Q27, Q28, Q29, Q30, Q31 : STD_LOGIC_VECTOR (31 downto 0);

signal ZA, ZB : STD_LOGIC_VECTOR (31 downto 0);
signal QT1, QT2, QT3, QT4, QT5, QT6, QT7 : STD_LOGIC_VECTOR (31 downto 0);
signal QT8, QT9, QT10, QT11, QT12, QT13, QT14, QT15 : STD_LOGIC_VECTOR (31 downto 0);
signal QT16, QT17, QT18, QT19, QT20, QT21, QT22, QT23 : STD_LOGIC_VECTOR (31 downto 0);
signal QT24, QT25, QT26, QT27, QT28, QT29, QT30, QT31 : STD_LOGIC_VECTOR (31 downto 0);

    
    component Register_32bit_23375183
    Port (
        D       : in  STD_LOGIC_VECTOR (31 downto 0);
        CLK     : in  STD_LOGIC;
        Reset   : in  STD_LOGIC;
        Load_FF : in  STD_LOGIC;
        Q       : out STD_LOGIC_VECTOR (31 downto 0);
        Q_not   : out STD_LOGIC_VECTOR (31 downto 0)
    );
    end component;
    
component RF_DestReg_Decoder_23375183
    Port ( A : in STD_LOGIC_VECTOR (4 downto 0);
           Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7 : out STD_LOGIC;
           Q8, Q9, Q10, Q11, Q12, Q13, Q14, Q15 : out STD_LOGIC;
           Q16, Q17, Q18, Q19, Q20, Q21, Q22, Q23 : out STD_LOGIC;
           Q24, Q25, Q26, Q27, Q28, Q29, Q30, Q31 : out STD_LOGIC);
end component;

component RF_TempDestReg_Decoder_23375183
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7 : out STD_LOGIC;
           Q8, Q9, Q10, Q11, Q12, Q13, Q14, Q15 : out STD_LOGIC);
end component;
    
component Mux32_32bit_23375183
    Port ( IN00, IN01, IN02, IN03, IN04, IN05, IN06, IN07 : in STD_LOGIC_VECTOR (31 downto 0);
           IN08, IN09, IN10, IN11, IN12, IN13, IN14, IN15 : in STD_LOGIC_VECTOR (31 downto 0);
           IN16, IN17, IN18, IN19, IN20, IN21, IN22, IN23 : in STD_LOGIC_VECTOR (31 downto 0);
           IN24, IN25, IN26, IN27, IN28, IN29, IN30, IN31 : in STD_LOGIC_VECTOR (31 downto 0);
           S : in STD_LOGIC_VECTOR (4 downto 0); -- 5-bit select signal to select one of 32 inputs
           Y : out STD_LOGIC_VECTOR (31 downto 0));
end component;

component Mux16_32bit_23375183
    Port ( IN00, IN01, IN02, IN03, IN04, IN05, IN06, IN07 : in STD_LOGIC_VECTOR (31 downto 0);
           IN08, IN09, IN10, IN11, IN12, IN13, IN14, IN15 : in STD_LOGIC_VECTOR (31 downto 0);
           S : in STD_LOGIC_VECTOR (3 downto 0);
           Y : out STD_LOGIC_VECTOR (31 downto 0));
end component;


    -- Propagation delays
    constant AND_gate_delay : Time := 4ns;
    constant NAND_gate_delay : Time := 9ns;
    constant OR_gate_delay : Time := 2ns;
    constant NOR_gate_delay : Time := 6ns;
    constant XOR_gate_delay : Time := 8ns;
    constant XNOR_gate_delay : Time := 4ns;
    constant NOT_gate_delay : Time := 4ns;
   
begin
    
    and0 <= RW and reg0 after AND_gate_delay;
    and1 <= RW and reg1 after AND_gate_delay;
    and2 <= RW and reg2 after AND_gate_delay;
    and3 <= RW and reg3 after AND_gate_delay;
    and4 <= RW and reg4 after AND_gate_delay;
    and5 <= RW and reg5 after AND_gate_delay;
    and6 <= RW and reg6 after AND_gate_delay;
    and7 <= RW and reg7 after AND_gate_delay;
    and8 <= RW and reg8 after AND_gate_delay;
    and9 <= RW and reg9 after AND_gate_delay;
    and10 <= RW and reg10 after AND_gate_delay;
    and11 <= RW and reg11 after AND_gate_delay;
    and12 <= RW and reg12 after AND_gate_delay;
    and13 <= RW and reg13 after AND_gate_delay;
    and14 <= RW and reg14 after AND_gate_delay;
    and15 <= RW and reg15 after AND_gate_delay;
    and16 <= RW and reg16 after AND_gate_delay;
    and17 <= RW and reg17 after AND_gate_delay;
    and18 <= RW and reg18 after AND_gate_delay;
    and19 <= RW and reg19 after AND_gate_delay;
    and20 <= RW and reg20 after AND_gate_delay;
    and21 <= RW and reg21 after AND_gate_delay;
    and22 <= RW and reg22 after AND_gate_delay;
    and23 <= RW and reg23 after AND_gate_delay;
    and24 <= RW and reg24 after AND_gate_delay;
    and25 <= RW and reg25 after AND_gate_delay;
    and26 <= RW and reg26 after AND_gate_delay;
    and27 <= RW and reg27 after AND_gate_delay;
    and28 <= RW and reg28 after AND_gate_delay;
    and29 <= RW and reg29 after AND_gate_delay;
    and30 <= RW and reg30 after AND_gate_delay;
    and31 <= RW and reg31 after AND_gate_delay;
    
    rwtemp1 <= RW and temp1 after AND_gate_delay;
    rwtemp2 <= RW and temp2 after AND_gate_delay;
    rwtemp3 <= RW and temp3 after AND_gate_delay;
    rwtemp4 <= RW and temp4 after AND_gate_delay;
    rwtemp5 <= RW and temp5 after AND_gate_delay;
    rwtemp6 <= RW and temp6 after AND_gate_delay;
    rwtemp7 <= RW and temp7 after AND_gate_delay;
    rwtemp8 <= RW and temp8 after AND_gate_delay;
    rwtemp9 <= RW and temp9 after AND_gate_delay;
    rwtemp10 <= RW and temp10 after AND_gate_delay;
    rwtemp11 <= RW and temp11 after AND_gate_delay;
    rwtemp12 <= RW and temp12 after AND_gate_delay;
    rwtemp13 <= RW and temp13 after AND_gate_delay;
    rwtemp14 <= RW and temp14 after AND_gate_delay;
    rwtemp15 <= RW and temp15 after AND_gate_delay;
    
    tmand0 <= writeToMain and and0 after AND_gate_delay;
    tmand1 <= writeToMain and and1 after AND_gate_delay;
    tmand2 <= writeToMain and and2 after AND_gate_delay;
    tmand3 <= writeToMain and and3 after AND_gate_delay;
    tmand4 <= writeToMain and and4 after AND_gate_delay;
    tmand5 <= writeToMain and and5 after AND_gate_delay;
    tmand6 <= writeToMain and and6 after AND_gate_delay;
    tmand7 <= writeToMain and and7 after AND_gate_delay;
    tmand8 <= writeToMain and and8 after AND_gate_delay;
    tmand9 <= writeToMain and and9 after AND_gate_delay;
    tmand10 <= writeToMain and and10 after AND_gate_delay;
    tmand11 <= writeToMain and and11 after AND_gate_delay;
    tmand12 <= writeToMain and and12 after AND_gate_delay;
    tmand13 <= writeToMain and and13 after AND_gate_delay;
    tmand14 <= writeToMain and and14 after AND_gate_delay;
    tmand15 <= writeToMain and and15 after AND_gate_delay;
    tmand16 <= writeToMain and and16 after AND_gate_delay;
    tmand17 <= writeToMain and and17 after AND_gate_delay;
    tmand18 <= writeToMain and and18 after AND_gate_delay;
    tmand19 <= writeToMain and and19 after AND_gate_delay;
    tmand20 <= writeToMain and and20 after AND_gate_delay;
    tmand21 <= writeToMain and and21 after AND_gate_delay;
    tmand22 <= writeToMain and and22 after AND_gate_delay;
    tmand23 <= writeToMain and and23 after AND_gate_delay;
    tmand24 <= writeToMain and and24 after AND_gate_delay;
    tmand25 <= writeToMain and and25 after AND_gate_delay;
    tmand26 <= writeToMain and and26 after AND_gate_delay;
    tmand27 <= writeToMain and and27 after AND_gate_delay;
    tmand28 <= writeToMain and and28 after AND_gate_delay;
    tmand29 <= writeToMain and and29 after AND_gate_delay;
    tmand30 <= writeToMain and and30 after AND_gate_delay;
    tmand31 <= writeToMain and and31 after AND_gate_delay;
    
    -- Decoder instance
decoder: RF_DestReg_Decoder_23375183 PORT MAP (
    A => DR,
    Q0 => reg0,
    Q1 => reg1,
    Q2 => reg2,
    Q3 => reg3,
    Q4 => reg4,
    Q5 => reg5,
    Q6 => reg6,
    Q7 => reg7,
    Q8 => reg8,
    Q9 => reg9,
    Q10 => reg10,
    Q11 => reg11,
    Q12 => reg12,
    Q13 => reg13,
    Q14 => reg14,
    Q15 => reg15,
    Q16 => reg16,
    Q17 => reg17,
    Q18 => reg18,
    Q19 => reg19,
    Q20 => reg20,
    Q21 => reg21,
    Q22 => reg22,
    Q23 => reg23,
    Q24 => reg24,
    Q25 => reg25,
    Q26 => reg26,
    Q27 => reg27,
    Q28 => reg28,
    Q29 => reg29,
    Q30 => reg30,
    Q31 => reg31
);

tempDecoder: RF_TempDestReg_Decoder_23375183 PORT MAP (
    A => TD,
    Q0 => writeToMain,
    Q1 => temp1,
    Q2 => temp2,
    Q3 => temp3,
    Q4 => temp4,
    Q5 => temp5,
    Q6 => temp6,
    Q7 => temp7,
    Q8 => temp8,
    Q9 => temp9,
    Q10 => temp10,
    Q11 => temp11,
    Q12 => temp12,
    Q13 => temp13,
    Q14 => temp14,
    Q15 => temp15
);

bit0: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand0,
    Q => Q0
);

bit1: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand1,
    Q => Q1
);

bit2: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand2,
    Q => Q2
);

bit3: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand3,
    Q => Q3
);

bit4: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand4,
    Q => Q4
);

bit5: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand5,
    Q => Q5
);

bit6: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand6,
    Q => Q6
);

bit7: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand7,
    Q => Q7
);

bit8: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand8,
    Q => Q8
);

bit9: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand9,
    Q => Q9
);

bit10: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand10,
    Q => Q10
);

bit11: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand11,
    Q => Q11
);

bit12: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand12,
    Q => Q12
);

bit13: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand13,
    Q => Q13
);

bit14: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand14,
    Q => Q14
);

bit15: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand15,
    Q => Q15
);

bit16: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand16,
    Q => Q16
);

bit17: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand17,
    Q => Q17
);

bit18: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand18,
    Q => Q18
);

bit19: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand19,
    Q => Q19
);

bit20: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand20,
    Q => Q20
);

bit21: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand21,
    Q => Q21
);

bit22: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand22,
    Q => Q22
);

bit23: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand23,
    Q => Q23
);

bit24: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand24,
    Q => Q24
);

bit25: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand25,
    Q => Q25
);

bit26: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand26,
    Q => Q26
);

bit27: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand27,
    Q => Q27
);

bit28: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand28,
    Q => Q28
);

bit29: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand29,
    Q => Q29
);

bit30: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand30,
    Q => Q30
);

bit31: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => tmand31,
    Q => Q31
);

-- Temporary Registers
tempbit1: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => rwtemp1,
    Q => QT1
);

tempbit2: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => rwtemp2,
    Q => QT2
);

tempbit3: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => rwtemp3,
    Q => QT3
);

tempbit4: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => rwtemp4,
    Q => QT4
);

tempbit5: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => rwtemp5,
    Q => QT5
);

tempbit6: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => rwtemp6,
    Q => QT6
);

tempbit7: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => rwtemp7,
    Q => QT7
);

tempbit8: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => rwtemp8,
    Q => QT8
);

tempbit9: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => rwtemp9,
    Q => QT9
);

tempbit10: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => rwtemp10,
    Q => QT10
);

tempbit11: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => rwtemp11,
    Q => QT11
);

tempbit12: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => rwtemp12,
    Q => QT12
);

tempbit13: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => rwtemp13,
    Q => QT13
);

tempbit14: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => rwtemp14,
    Q => QT14
);

tempbit15: Register_32bit_23375183 PORT MAP (
    D => D,
    CLK => CLK,
    Reset => Reset,
    Load_FF => rwtemp15,
    Q => QT15
);
    
muxerA: Mux32_32bit_23375183 PORT MAP (
    IN00 => Q0,
    IN01 => Q1,
    IN02 => Q2,
    IN03 => Q3,
    IN04 => Q4,
    IN05 => Q5,
    IN06 => Q6,
    IN07 => Q7,
    IN08 => Q8,
    IN09 => Q9,
    IN10 => Q10,
    IN11 => Q11,
    IN12 => Q12,
    IN13 => Q13,
    IN14 => Q14,
    IN15 => Q15,
    IN16 => Q16,
    IN17 => Q17,
    IN18 => Q18,
    IN19 => Q19,
    IN20 => Q20,
    IN21 => Q21,
    IN22 => Q22,
    IN23 => Q23,
    IN24 => Q24,
    IN25 => Q25,
    IN26 => Q26,
    IN27 => Q27,
    IN28 => Q28,
    IN29 => Q29,
    IN30 => Q30,
    IN31 => Q31,
    S => SA,
    Y => ZA
);

muxerB: Mux32_32bit_23375183 PORT MAP (
    IN00 => Q0,
    IN01 => Q1,
    IN02 => Q2,
    IN03 => Q3,
    IN04 => Q4,
    IN05 => Q5,
    IN06 => Q6,
    IN07 => Q7,
    IN08 => Q8,
    IN09 => Q9,
    IN10 => Q10,
    IN11 => Q11,
    IN12 => Q12,
    IN13 => Q13,
    IN14 => Q14,
    IN15 => Q15,
    IN16 => Q16,
    IN17 => Q17,
    IN18 => Q18,
    IN19 => Q19,
    IN20 => Q20,
    IN21 => Q21,
    IN22 => Q22,
    IN23 => Q23,
    IN24 => Q24,
    IN25 => Q25,
    IN26 => Q26,
    IN27 => Q27,
    IN28 => Q28,
    IN29 => Q29,
    IN30 => Q30,
    IN31 => Q31,
    S => SB,
    Y => ZB
);

    
tempmuxerA: Mux16_32bit_23375183 PORT MAP (
    IN00 => ZA,
    IN01 => QT1,
    IN02 => QT2,
    IN03 => QT3,
    IN04 => QT4,
    IN05 => QT5,
    IN06 => QT6,
    IN07 => QT7,
    IN08 => QT8,
    IN09 => QT9,
    IN10 => QT10,
    IN11 => QT11,
    IN12 => QT12,
    IN13 => QT13,
    IN14 => QT14,
    IN15 => QT15,
    S => TA,
    Y => A
);

tempmuxerB: Mux16_32bit_23375183 PORT MAP (
    IN00 => ZB,
    IN01 => QT1,
    IN02 => QT2,
    IN03 => QT3,
    IN04 => QT4,
    IN05 => QT5,
    IN06 => QT6,
    IN07 => QT7,
    IN08 => QT8,
    IN09 => QT9,
    IN10 => QT10,
    IN11 => QT11,
    IN12 => QT12,
    IN13 => QT13,
    IN14 => QT14,
    IN15 => QT15,
    S => TB,
    Y => B
);


end Behavioral;

