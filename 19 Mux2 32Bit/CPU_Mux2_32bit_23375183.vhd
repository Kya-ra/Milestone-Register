----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Kyara McWilliam
-- 
-- Create Date: 19.09.2023 11:44:54
-- Design Name: 
-- Module Name: Mux2_32bit - Behavioral
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

entity CPU_Mux2_32bit_23375183 is
    Port ( I0, I1 : in STD_LOGIC_VECTOR(31 downto 0);
           S : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (31 downto 0));
end CPU_Mux2_32bit_23375183;

architecture Behavioral of CPU_Mux2_32bit_23375183 is

    signal Snot : std_logic;
    
    signal and000, and001, and002, and003, and004, and005, and006, and007, and008, and009 : std_logic;
    signal and010, and011, and012, and013, and014, and015, and016, and017, and018, and019 : std_logic;
    signal and020, and021, and022, and023, and024, and025, and026, and027, and028, and029 : std_logic;
    signal and030, and031 : std_logic;
    
    signal and100, and101, and102, and103, and104, and105, and106, and107, and108, and109 : std_logic;
    signal and110, and111, and112, and113, and114, and115, and116, and117, and118, and119 : std_logic;
    signal and120, and121, and122, and123, and124, and125, and126, and127, and128, and129 : std_logic;
    signal and130, and131 : std_logic;


   --  Propagation Delay according to StdentID e.g. 26 33 57 25(DEC)
   constant AND_gate_delay : Time := 4ns;      -- least significant digit 6 = 5 + 1
   constant NAND_gate_delay : Time := 9ns;     -- next more significant digit 3 = 2 + 1
   constant OR_gate_delay : Time := 2ns;       -- next more significant digit 8 = 7 + 1
   constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
   constant XOR_gate_delay : Time := 8ns;      -- next more significant digit 4 = 3 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 7 = 6 + 1
   
begin
    Snot <= not S after NOT_gate_delay;

    and000 <= Snot and I0(0) after AND_gate_delay;
    and001 <= Snot and I0(1) after AND_gate_delay;
    and002 <= Snot and I0(2) after AND_gate_delay;
    and003 <= Snot and I0(3) after AND_gate_delay;
    and004 <= Snot and I0(4) after AND_gate_delay;
    and005 <= Snot and I0(5) after AND_gate_delay;
    and006 <= Snot and I0(6) after AND_gate_delay;
    and007 <= Snot and I0(7) after AND_gate_delay;
    and008 <= Snot and I0(8) after AND_gate_delay;
    and009 <= Snot and I0(9) after AND_gate_delay;
    and010 <= Snot and I0(10) after AND_gate_delay;
    and011 <= Snot and I0(11) after AND_gate_delay;
    and012 <= Snot and I0(12) after AND_gate_delay;
    and013 <= Snot and I0(13) after AND_gate_delay;
    and014 <= Snot and I0(14) after AND_gate_delay;
    and015 <= Snot and I0(15) after AND_gate_delay;
    and016 <= Snot and I0(16) after AND_gate_delay;
    and017 <= Snot and I0(17) after AND_gate_delay;
    and018 <= Snot and I0(18) after AND_gate_delay;
    and019 <= Snot and I0(19) after AND_gate_delay;
    and020 <= Snot and I0(20) after AND_gate_delay;
    and021 <= Snot and I0(21) after AND_gate_delay;
    and022 <= Snot and I0(22) after AND_gate_delay;
    and023 <= Snot and I0(23) after AND_gate_delay;
    and024 <= Snot and I0(24) after AND_gate_delay;
    and025 <= Snot and I0(25) after AND_gate_delay;
    and026 <= Snot and I0(26) after AND_gate_delay;
    and027 <= Snot and I0(27) after AND_gate_delay;
    and028 <= Snot and I0(28) after AND_gate_delay;
    and029 <= Snot and I0(29) after AND_gate_delay;
    and030 <= Snot and I0(30) after AND_gate_delay;
    and031 <= Snot and I0(31) after AND_gate_delay;
    
    and100 <= S and I1(0) after AND_gate_delay;
    and101 <= S and I1(1) after AND_gate_delay;
    and102 <= S and I1(2) after AND_gate_delay;
    and103 <= S and I1(3) after AND_gate_delay;
    and104 <= S and I1(4) after AND_gate_delay;
    and105 <= S and I1(5) after AND_gate_delay;
    and106 <= S and I1(6) after AND_gate_delay;
    and107 <= S and I1(7) after AND_gate_delay;
    and108 <= S and I1(8) after AND_gate_delay;
    and109 <= S and I1(9) after AND_gate_delay;
    and110 <= S and I1(10) after AND_gate_delay;
    and111 <= S and I1(11) after AND_gate_delay;
    and112 <= S and I1(12) after AND_gate_delay;
    and113 <= S and I1(13) after AND_gate_delay;
    and114 <= S and I1(14) after AND_gate_delay;
    and115 <= S and I1(15) after AND_gate_delay;
    and116 <= S and I1(16) after AND_gate_delay;
    and117 <= S and I1(17) after AND_gate_delay;
    and118 <= S and I1(18) after AND_gate_delay;
    and119 <= S and I1(19) after AND_gate_delay;
    and120 <= S and I1(20) after AND_gate_delay;
    and121 <= S and I1(21) after AND_gate_delay;
    and122 <= S and I1(22) after AND_gate_delay;
    and123 <= S and I1(23) after AND_gate_delay;
    and124 <= S and I1(24) after AND_gate_delay;
    and125 <= S and I1(25) after AND_gate_delay;
    and126 <= S and I1(26) after AND_gate_delay;
    and127 <= S and I1(27) after AND_gate_delay;
    and128 <= S and I1(28) after AND_gate_delay;
    and129 <= S and I1(29) after AND_gate_delay;
    and130 <= S and I1(30) after AND_gate_delay;
    and131 <= S and I1(31) after AND_gate_delay;

    Y(0) <= and000 or and100 after OR_gate_delay;
    Y(1) <= and001 or and101 after OR_gate_delay;
    Y(2) <= and002 or and102 after OR_gate_delay;
    Y(3) <= and003 or and103 after OR_gate_delay;
    Y(4) <= and004 or and104 after OR_gate_delay;
    Y(5) <= and005 or and105 after OR_gate_delay;
    Y(6) <= and006 or and106 after OR_gate_delay;
    Y(7) <= and007 or and107 after OR_gate_delay;
    Y(8) <= and008 or and108 after OR_gate_delay;
    Y(9) <= and009 or and109 after OR_gate_delay;
    Y(10) <= and010 or and110 after OR_gate_delay;
    Y(11) <= and011 or and111 after OR_gate_delay;
    Y(12) <= and012 or and112 after OR_gate_delay;
    Y(13) <= and013 or and113 after OR_gate_delay;
    Y(14) <= and014 or and114 after OR_gate_delay;
    Y(15) <= and015 or and115 after OR_gate_delay;
    Y(16) <= and016 or and116 after OR_gate_delay;
    Y(17) <= and017 or and117 after OR_gate_delay;
    Y(18) <= and018 or and118 after OR_gate_delay;
    Y(19) <= and019 or and119 after OR_gate_delay;
    Y(20) <= and020 or and120 after OR_gate_delay;
    Y(21) <= and021 or and121 after OR_gate_delay;
    Y(22) <= and022 or and122 after OR_gate_delay;
    Y(23) <= and023 or and123 after OR_gate_delay;
    Y(24) <= and024 or and124 after OR_gate_delay;
    Y(25) <= and025 or and125 after OR_gate_delay;
    Y(26) <= and026 or and126 after OR_gate_delay;
    Y(27) <= and027 or and127 after OR_gate_delay;
    Y(28) <= and028 or and128 after OR_gate_delay;
    Y(29) <= and029 or and129 after OR_gate_delay;
    Y(30) <= and030 or and130 after OR_gate_delay;
    Y(31) <= and031 or and131 after OR_gate_delay;


end Behavioral;
