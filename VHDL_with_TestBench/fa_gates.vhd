library ieee;
use ieee.std_logic_1164.all;
entity ha_2 is
port(A,B:in std_logic;
 sum,carry:out std_logic);
end entity;
architecture ha_str of ha_2 is
component xor1 is
port(a,b:in std_logic;
     c:out std_logic);
end component;
component and1 is
port(A,B:in std_logic;
      X:out std_logic);
end component;
begin
X1:xor1 port map(A,B,sum);
A1:and1 port map(A,B,carry);
end architecture;
