-- Code submitted by: Zain Rajani
-- Code Date: July 03, 2019
-- Code Description: Design 8 bit comparator using 4 bit comparator
-- Coding Style: Structural Modelling
-- Libray Declaration and exporting them in the code
library IEEE;
use IEEE.std_logic_1164.all; -- Usage of multi-logic values 
use IEEE.std_logic_arith.all; -- Usage of arithematic operation
use IEEE.std_logic_unsigned.all; -- Standard logic for unsigned bits 

-- Entity Declaration (Input and Output Port Declaration)
entity eight_bit_comparator_b is 
port (A,B : in std_logic_vector (7 downto 0); -- Input Port Declaration
		AequalB,AgreaterB,AlessB : out std_logic); -- Output Port Declaration
end entity;
-- End of declaring ports

-- Description of the function/logic of 8 bit and gates (Architecture Description)
architecture operational of eight_bit_comparator_b is 

--Declaration of component (Calling of the function)

component four_comparator_b -- 4 bit comparator component
port (					-- port declaration of the component same as entity 
	  A,B   : in std_logic_vector(3 downto 0);
	  greater, equal, smaller  : out std_logic
   );
end component;

component final_comparision_check
port (e1,e2,g1,g2,l1,l2: in std_logic;
		eq,ls,gt: out std_logic);
end component;

-- End of component declaration
-- Internal wire declaration (i.e. Signal)
-- These signals can be declared as vector type also depends on programmer
signal e1,e2,g1,g2,l1,l2: std_logic;
signal eq,lt,gt: std_logic;

-- Connection to the component
begin

-- Four bit comparator being called 2 times for 8 bit comparator
S1: four_comparator_b port map (A(3 downto 0),B(3 downto 0),g1,e1,l1);
S2: four_comparator_b port map (A(7 downto 4),B(7 downto 4),g2,e2,l2);

-- Final Equality checking performing
S3: final_comparision_check port map (e1,e2,g1,g2,l1,l2,eq,lt,gt);

-- Hardwiring the final outputs
AequalB <= eq;
AgreaterB <= gt;
AlessB <= lt;
end operational;
-- Program Ends here
