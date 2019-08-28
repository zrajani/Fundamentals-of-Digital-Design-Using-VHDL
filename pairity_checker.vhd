-- Code submitted by: ZAIN RAJANI (C0752681)
-- Code Date: July 30, 2019
-- Code Description: Design Pairity Checker
-- Coding Style: Structural Modelling
-- Libray Declaration and exporting them in the code
library IEEE;
use IEEE.std_logic_1164.all; -- Usage of multi-logic values
use IEEE.std_logic_unsigned.all; -- Standard logic for unsigned bits

-- Entity Declaration (Input and Output Port Declaration)
entity pairity_checker is 
port(I0,I1,I2,I3,I4,I5,I6,I7,I8 : in std_logic; -- Input Data Lines along with Pairity bit
	  ODD,EVEN: out std_logic); -- Output Lines to check if even or odd pairity
end pairity_checker;
-- End of declaring ports

-- Description of the function/logic of Pairity Checker (Architecture Description)
architecture structural_behaviour of pairity_checker is 

-- Component Declaration (Component Call)
component xor2   -- 2 input xor gate
port(A,B : in std_logic;
	  X: out std_logic);
end component;

component xor5  -- 5 input xor gate
port(A,B,C,D,E : in std_logic;
	  X: out std_logic);
end component;

component not_gate 
port ( A: in std_logic; -- input bit with standard logic 
		 X: out std_logic -- output bit with standard logic
		);
end component;
-- End of Component Calling

--Declaring Signal (Internal Wires)
signal Z0,Z1,Z2,Z3,Z5,Z6 : std_logic;
--End of wire declaration

-- Main Code Logic Begins
begin

-- Main Calling of Comonent to perform the action/Passing values for operation
X21: xor2 port map (I0,I1,Z0);
X22: xor2 port map (I2,I3,Z1); 
X23: xor2 port map (I4,I5,Z2);
X24: xor2 port map (I6,I7,Z3);

X5: xor5 port map (Z0,Z1,Z2,Z3,I8,Z5);

X6: not_gate port map (Z5,Z6);
-- End of Component Calling

--Hardwiring the outputs
ODD<=Z5;
EVEN<=Z6;

end structural_behaviour;
-- End of the code