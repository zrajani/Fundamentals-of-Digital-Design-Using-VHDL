-- Subitted by: Zain Rajani
-- Library Declaration
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


-- Defining the input and output ports of the 8 bit adder
entity parallel_adder4 is

-- Port Declaration
port ( input0, input1 : in std_logic_vector(3 downto 0);
		 carry_in : in std_logic;
		 sum : out std_logic_vector (3 downto 0);
		 carry_out : out std_logic
		 );
end parallel_adder4;


-- Defining the black box of the adder(functionality of the adder)
architecture parallel_adder4_function of parallel_adder4 is 

-- Wire Declaration/Internal Signal before getting to final output
signal sum_4 : std_logic_vector (4 downto 0);

begin

-- Experession for 4 input addition 
sum_4 <= '0'& input0 + input1 + carry_in;

-- Seperating the bits as sum and carry bits
sum <= sum_4(3 downto 0);
carry_out <= sum_4(4);

end parallel_adder4_function;
-- End of the program