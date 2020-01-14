--Implementation of 5 inputs XOR GATE

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity xor5 is 
port(A,B,C,D,E : in std_logic;
	  X: out std_logic);
end xor5;

architecture xor5_op of xor5 is 
begin

X<= A xor B xor C xor D xor E;

end xor5_op;
