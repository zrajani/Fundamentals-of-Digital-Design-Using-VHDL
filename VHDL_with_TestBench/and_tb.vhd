ibrary IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

entity and_TB is 
end and_TB;

Architecture ATB of and_TB is 
	component and1
	port (A,B:in std_logic; x:out std_logic);
	end component;
   signal a,b,x: std_logic;
begin
	uut: and1 port map(a,b,x);
process 
begin 
	a<='0';
	b<='0';
	wait for 10ns;
	
	a<='0';
	b<='1';
	wait for 10ns;
	
	a<='1';
	b<='0';
	wait for 10ns;
	
	a<='1';
	b<='1';
	wait for 10ns;
end process;
end ATB;
