-- Code submitted by: ZAIN RAJANI (C0752681)
-- Code Date: July 22, 2019
-- Code Description: Design 4:1 Multiplexer
-- Coding Style: Structural Modelling
-- Libray Declaration and exporting them in the code
library IEEE;
use IEEE.std_logic_1164.all; -- Usage of multi-logic values 
use IEEE.std_logic_arith.all; -- Usage of arithematic operation
use IEEE.std_logic_unsigned.all; -- Standard logic for unsigned bits 

-- Entity Declaration (Input and Output Port Declaration)
entity mux41 is 
port (A,B,C,D,S0,S1 : in std_logic; -- Input Lines (A,B,C,D) and Select Lines (S0,S1)
		Z: out std_logic);  --Output Line
end mux41;
-- End of declaring ports


-- Description of the function/logic of 4:1 Multiplexer (Architecture Description)
architecture mux41_gates of mux41 is 

-- Calling of components used for 4:1 Multiplexer

component not_gate 
port ( A: in std_logic; -- input bit with standard logic 
		 X: out std_logic -- output bit with standard logic
		);
end component;

component and_gate_3 --3 bit and gate
port ( A,B,C : in std_logic; -- input bit with standard logic 
		 X: out std_logic -- output bit with standard logic
		);
end component;

component or_gate_4 
port ( A,B,C,D : in std_logic; -- input bit with standard logic 
		 X: out std_logic -- output bit with standard logic
		);
end component;

-- Calling/Declaring the parts used ends here

-- Internal Wires Declared as signals
signal nS0,nS1,Y1,Y2,Y3,Y4,Y : std_logic;

-- End of declaring internal wires 

-- Main Program begins here
begin

-- Function Calls Made 
-- Not Gate to invert the select lines
N1: not_gate port map (S0,nS0);
N2: not_gate port map (S1,nS1);

-- AND Gate called to generate output of each line
A1: and_gate_3 port map (A,nS0,nS1,Y1);
A2: and_gate_3 port map (B,S0,nS1,Y2);
A3: and_gate_3 port map (C,nS0,S1,Y3);
A4: and_gate_3 port map (D,S0,S1,Y4);

-- OR Gate to generate the final output
OR1: or_gate_4 port map (Y1,Y2,Y3,Y4,Y);

-- Hardwiring the output
Z<=Y;

end mux41_gates;
-- End of the program
