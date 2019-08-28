-- Code submitted by: ZAIN RAJANI (C0752681)
-- Code Date: July 22, 2019
-- Code Description: Design 16:1 Multiplexer
-- Coding Style: Structural Modelling
-- Libray Declaration and exporting them in the code
library IEEE;
use IEEE.std_logic_1164.all; -- Usage of multi-logic values 
use IEEE.std_logic_arith.all; -- Usage of arithematic operation
use IEEE.std_logic_unsigned.all; -- Standard logic for unsigned bits 

-- Entity Declaration (Input and Output Port Declaration)
entity mux161 is 
port (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P : in std_logic; -- 16 Input Data Lines
		S0,S1,S2,S3 : in std_logic;  -- 4 Select lines
		Z: out std_logic);   -- Output Line
end mux161;
-- End of declaring ports

-- Description of the function/logic of 16:1 Multiplexer (Architecture Description)
architecture mux161_struct of mux161 is

-- Calling of components used for 16:1 Multiplexer

component mux41
port (A,B,C,D,S0,S1 : in std_logic;
		Z: out std_logic);
end component;
-- Calling/Declaring the parts used ends here

-- Internal Wires Declared as signals
signal Z0,Z1,Z2,Z3 : std_logic;

-- End of declaring internal wires 

-- Main Program begins here
begin

-- Calling of 4:1 Multiplexer 5 times to make 16:1 Multiplexer
M0: mux41 port map (A,B,C,D,S0,S1,Z0);
M1: mux41 port map (E,F,G,H,S0,S1,Z1);
M2: mux41 port map (I,J,K,L,S0,S1,Z2);
M4: mux41 port map (M,N,O,P,S0,S1,Z3);
M5: mux41 port map (Z0,Z1,Z2,Z3,S2,S3,Z); -- Final Output Multiplexer

end mux161_struct;
-- End of the main program