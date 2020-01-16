-- Code submitted by: ZAIN RAJANI
-- Code Date: July 22, 2019
-- Code Description: Design 1:8 Demultiplexer
-- Coding Style: Structural Modelling
-- Libray Declaration and exporting them in the code
library IEEE;
use IEEE.std_logic_1164.all; -- Usage of multi-logic values
use IEEE.std_logic_arith.all; -- Usage of arithematic operation
use IEEE.std_logic_unsigned.all; -- Standard logic for unsigned bits 

-- Entity Declaration (Input and Output Port Declaration)
entity Demux_1_to_8 is
port ( Input_Data : in std_logic;   -- Input Data Line
		 select_lines : in std_logic_vector (2 downto 0); -- Selecting the channel
		 Output_lines : out std_logic_vector(7 downto 0) -- Output streamming line
		);
end entity Demux_1_to_8;
-- End of declaring ports

-- Description of the function/logic of 1:8 Demultiplexer (Architecture Description)
architecture structural_behaviour of Demux_1_to_8 is

--Declaration of component (Calling of the function)
component and_gate_4 --4 bit and gate
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
-- These signals can be declared as vector type
signal S0,S1,S2,nS0,nS1,nS2,D0,D1,D2,D3,D4,D5,D6,D7 : std_logic;

-- End of signal declaration

-- Actual Logic Code begins here
begin 


-- Calling of Not Gate for inverting outputs required as per the final output expression
N1: not_gate port map (select_lines(0),nS0);
N2: not_gate port map (select_lines(1),nS1);
N3: not_gate port map (select_lines(2),nS2);


-- Calling of and_gate as per output expresion
A0: and_gate_4 port map (nS2,nS1,nS0,Input_Data,D0);
A1: and_gate_4 port map (nS2,nS1,select_lines(0),Input_Data,D1);
A2: and_gate_4 port map (nS2,select_lines(1),nS0,Input_Data,D2);
A3: and_gate_4 port map (nS2,select_lines(1),select_lines(0),Input_Data,D3);
A4: and_gate_4 port map (select_lines(2),nS1,nS0,Input_Data,D4);
A5: and_gate_4 port map (select_lines(2),nS1,select_lines(0),Input_Data,D5);
A6: and_gate_4 port map (select_lines(2),select_lines(1),nS0,Input_Data,D6);
A7: and_gate_4 port map (select_lines(2),select_lines(1),select_lines(0),Input_Data,D7);


--Hardwiring the output 
Output_lines(0)<=D0;
Output_lines(1)<=D1;
Output_lines(2)<=D2;
Output_lines(3)<=D3;
Output_lines(4)<=D4;
Output_lines(5)<=D5;
Output_lines(6)<=D6;
Output_lines(7)<=D7;

end architecture structural_behaviour;
--End of the program code
