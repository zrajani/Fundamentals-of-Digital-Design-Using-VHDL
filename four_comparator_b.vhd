-- Code submitted by: 
-- Code Date: July 03, 2019
-- Code Description: 4 bit comparator
-- Coding Style: Dataflow Modelling
-- Libray Declaration and exporting them in the code
library IEEE;
use IEEE.std_logic_1164.all; -- Usage of multi-logic values 
use IEEE.std_logic_arith.all; -- Usage of arithematic operation
use IEEE.std_logic_unsigned.all; -- Standard logic for unsigned bits

-- Entity Declaration (Input and Output Port Declaration)
entity four_comparator_b is
  port (
	  A,B: in std_logic_vector(3 downto 0);
	  greater, equal, smaller  : out std_logic
   );
end four_comparator_b; 
-- End of declaring ports

-- Description of the function/logic 
architecture four_comparator_func of four_comparator_b is
begin
greater <= '1' when (A > B)
else '0';
equal <= '1' when (A = B)
else '0';
smaller <= '1' when (A < B)
else '0';
end four_comparator_func;
-- Program Ends here