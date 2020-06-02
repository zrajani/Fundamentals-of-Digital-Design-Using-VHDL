library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity and1 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           x : out  STD_LOGIC);
end and1;

architecture and2 of and1 is
begin

x<=a and b;

end and2;
