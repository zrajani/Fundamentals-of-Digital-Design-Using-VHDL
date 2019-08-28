library IEEE;
use IEEE.std_logic_1164.all;
 
entity and_gate is
Port( A : in std_logic;
		B : in std_logic;
		Y : out std_logic);
end and_gate;
architecture Behavioral of and_gate is
begin

	Y<=(A and B);
	
end Behavioral;