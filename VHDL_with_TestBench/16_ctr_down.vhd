library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity ctr_d is
port (clk,reset:in std_logic;
Q:out std_logic_vector(3 downto 0));
end entity;
architecture ctr_dd of ctr_d is
begin
process(clk,reset)
variable temp:std_logic_vector(3 downto 0):="0000";
begin
if (clk'event and clk='1') then
if (reset='1') then
temp:="1111";
else 
temp:=temp-1;
end if;
end if;
Q<=temp;
end process;
end architecture;
