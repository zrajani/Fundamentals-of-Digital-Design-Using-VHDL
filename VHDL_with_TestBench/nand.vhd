library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity nand1_b is
    Port ( a,b : in  STD_LOGIC;
           x : out  STD_LOGIC);
end nand1_b;
architecture nand2_b of nand1_b is
begin
process (a,b)
begin 
if (p='1' and q='1') then
r<='0';
else 
r<='1';
end if;
end process;
end nand2_b;
