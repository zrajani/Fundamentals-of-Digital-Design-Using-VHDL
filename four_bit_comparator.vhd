-- Code submitted by: ZAIN RAJANI (C0752681)
-- Code Date: July 02, 2019
-- Code Description: Design 4 bit comparator using 1 bit comparator
-- Coding Style: Structural Modelling
-- Libray Declaration and exporting them in the code
library IEEE;
use IEEE.std_logic_1164.all; -- Usage of multi-logic values 
use IEEE.std_logic_arith.all; -- Usage of arithematic operation
use IEEE.std_logic_unsigned.all; -- Standard logic for unsigned bits 

-- Entity Declaration (Input and Output Port Declaration)
entity four_bit_comparator is 
port ( A,B : in std_logic_vector (3 downto 0); -- input bit with standard logic 
		 AequalB,AgreaterB,AlessB: out std_logic -- output bit with standard logic
		);
end entity four_bit_comparator;
-- End of declaring ports

-- Description of the function/logic of 4 bit and gate (Architecture Description)
architecture LogicOperation of four_bit_comparator is

--Declaration of component (Calling of the function)

component single_bit_comparator --Single_bit_comparator
port ( A,B : in std_logic; -- input bit with standard logic 
		 AgreaterB, AequalB, AlessB: out std_logic -- output bit with standard logic
		);
end component;

component and_gate --2 bit and gate
Port( A : in std_logic;
		B : in std_logic;
		Y : out std_logic);
end component;

component and_gate_3 --3 bit and gate
port ( A,B,C : in std_logic; -- input bit with standard logic 
		 X: out std_logic -- output bit with standard logic
		);
end component;

component and_gate_4 --4 bit and gate
port ( A,B,C,D : in std_logic; -- input bit with standard logic 
		 X: out std_logic -- output bit with standard logic
		);
end component;

component or_gate_4 --4 bit or gate
port ( A,B,C,D : in std_logic; -- input bit with standard logic 
		 X: out std_logic -- output bit with standard logic
		);
end component;

component not_gate -- 1 bit not gate
port ( A: in std_logic; -- input bit with standard logic 
		 X: out std_logic -- output bit with standard logic
		);
end component;

-- Component declared ends here

-- Internal wire declaration (i.e. Signal)
-- These signals can be declared as vector type also depends on programmer
signal e0,e1,e2,e3,A10,A11,A12,A13,B10,B11,B12,B13 : std_logic;
signal finalaeb, finalagb, finalalb,y1,y2,y3,y4,y5 : std_logic;

-- End of signal declaration

-- Actual Logic Code begins here
begin
-- Actual Calling of components (like function call in C/C++)

-- Single comparator being called 4 times for 4 bit comparator
S1: single_bit_comparator port map(A(0),B(0),A10,e0,B10);
S2: single_bit_comparator port map(A(1),B(1),A11,e1,B11);
S3: single_bit_comparator port map(A(2),B(2),A12,e2,B12);
S4: single_bit_comparator port map(A(3),B(3),A13,e3,B13);

-- Calling and_gate for final check for equality condition
AEB:  and_gate_4 port map(e0,e1,e2,e3,finalaeb); 

-- Calling and_gate and or_gate for final check for inequality A>B
AGB1: and_gate port map(A12,e3,y1);
AGB2: and_gate_3 port map (A11,e3,e2,y2);
AGB3: and_gate_4 port map (A10,e3,e2,e1,y3);
AGB:  or_gate_4 port map(A13,y1,y2,y3,finalagb);

-- Calling not_gate and and_gate for final check for inequality A<B
ALB1: not_gate port map (finalagb,y4);
ALB2: not_gate port map (finalaeb,y5);
ALB:  and_gate port map (y4,y5,finalalb);

-- Hardwiring the output
AgreaterB <= finalagb;
AequalB <= finalaeb;
AlessB <= finalalb;
end architecture LogicOperation;
-- End of the program