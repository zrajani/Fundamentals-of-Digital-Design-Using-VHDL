library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity xor2 is 
port(A,B : in std_logic;
	  X: out std_logic);
end xor2;

architecture xor2_op of xor2 is 
begin

X<= A xor B;

end xor2_op;
