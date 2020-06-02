library ieee;
use ieee.std_logic_1164.all;
entity fa is
port(A,B,Cin:in std_logic;
         sum,Cout:out std_logic);
end entity;
architecture fa_str of fa is
component ha_2 is
port(A,B:in std_logic;
         sum,carry:out std_logic);
end component;
component or1 is
port(a,b:in std_logic;
     c:out std_logic);
end component;
signal sum_1,carry_1,carry_2:std_logic;
begin
H1:ha_2 port map(A,B,sum_1,carry_1);
H2:ha_2 port map(sum_1,Cin,sum,carry_2);
O1:or1 port map(carry_1,carry_2,Cout);
end fa_str;
