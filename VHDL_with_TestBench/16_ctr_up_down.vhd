library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity ctr_16_updown is
port (clk,reset,dbit:in std_logic;
Q:out std_logic_vector(3 downto 0));
end entity;
architecture ctr_seq of ctr_16_updown is
begin
process(clk,reset,dbit)
variable temp:std_logic_vector(3 downto 0):="0000";
begin
if (dbit='1') then
 if (clk'event and clk='1') then
   if (reset='1') then
      temp:="0000";
   else 
      temp:=temp+1;
   end if;
 end if;
elsif (dbit='0') then
  if (clk'event and clk='1') then
   if (reset='1') then
      temp:="0000";
   else 
      temp:=temp-1;
   end if;
 end if;
end if; 
Q<=temp;
end process;
end architecture;
