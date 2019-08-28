--Declaring Libraries always compulsory
library ieee;
use ieee.std_logic_1164.all;


--Port Declaration input and output 
entity SOP is
port(	A,B,C,D: in std_logic;
	   X,Y: out std_logic);
end SOP;
--Describe the functionality
architecture behv1 of SOP is
begin

Y<= (not A and not B and not C and not D) or (not A and not B and not C and D) or (not A and B and not C and not D) or
(not A and B and C and not D) or (not A and not B and C and not D) or (A and not B and not C and not D) or (A and not B and C and not D) or 
(A and B and not C and not D) or (A and not B and not C and D)or (A and B and not C and D) or (A and B and C and not D);

X<=(not C) or (not D);

end behv1;