-- Code submitted by: ZAIN RAJANI (C0752681)
-- Code Date: July 02, 2019
-- Code Description: Design a one bit comparator
-- Coding Style: Behavioural Modelling
-- Libray Declaration and exporting them in the code
library IEEE;
use IEEE.std_logic_1164.all; -- Usage of multi-logic values 
use IEEE.std_logic_arith.all; -- Usage of arithematic operation
use IEEE.std_logic_unsigned.all; -- Standard logic for unsigned bits 

-- Entity Declaration (Input and Output Port Declaration)
entity single_bit_comparator is 
port ( A,B : in std_logic; -- input bit with standard logic 
		 AgreaterB, AequalB, AlessB: out std_logic -- output bit with standard logic
		);
end entity single_bit_comparator;
-- End of declaring ports

-- Description of the function/logic of single_bit_comparator (Architecture Description)
architecture LogicOperation of single_bit_comparator is
begin

	AgreaterB <= (A and not B);
	AlessB <= (not A and B);
	AequalB <= (A and B)or(not A and not B);

end architecture LogicOperation;
-- End of the program