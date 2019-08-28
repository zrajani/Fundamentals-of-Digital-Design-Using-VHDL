-- Code submitted by: ZAIN RAJANI (C0752681)
-- Code Date: July 02, 2019
-- Code Description: Design 1 bit not gate
-- Coding Style: Behavioural Modelling
-- Libray Declaration and exporting them in the code
library IEEE;
use IEEE.std_logic_1164.all; -- Usage of multi-logic values 
use IEEE.std_logic_arith.all; -- Usage of arithematic operation
use IEEE.std_logic_unsigned.all; -- Standard logic for unsigned bits 

-- Entity Declaration (Input and Output Port Declaration)
entity not_gate is 
port ( A: in std_logic; -- input bit with standard logic 
		 X: out std_logic -- output bit with standard logic
		);
end entity not_gate;
-- End of declaring ports

-- Description of the function/logic of 4 bit and gate (Architecture Description)
architecture LogicOperation of not_gate is
begin

	X <= (not A);

end architecture LogicOperation;
-- End of the program