library IEEE;
use IEEE.std_logic_1164.all;

entity mux is 
port (D0,D1,D2,D3 : in std_logic;
		S0,S1 : in std_logic;
		EN : in std_logic;
		Z : out std_logic);
end mux;

architecture mux_en of mux is 

signal Y,N1,N0 : std_logic;

begin 

N0<=(not S0);
N1<=(not S1);

Y<= ((N1 and N0 and D0) or (N1 and S0 and D1) or (S1 and N0 and D2) or (S1 and S0 and D3));
Z<= (EN and Y);

end mux_en;