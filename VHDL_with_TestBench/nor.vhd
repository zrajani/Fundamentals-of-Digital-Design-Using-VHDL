library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity nor1 is
    Port ( A,B: in  STD_LOGIC;
           x : out  STD_LOGIC);
end nor1;
architecture nor2 of nor1 is
begin
 x<=a nor b;
end nor2;
