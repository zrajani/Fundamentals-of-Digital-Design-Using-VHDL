--Subitted by: Zain Rajani
--Library Declaration
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

--Declaration of the input and output pins of 8 bit adder
entity parallel_adder8 is 
	port (A : in std_logic_vector (7 downto 0);
			B : in std_logic_vector (7 downto 0);
			c_in : in std_logic;
			sum : out std_logic_vector (7 downto 0);
			c_out: out std_logic
			);
end parallel_adder8;

--Describe the functionality of the adder 8 bit using 4 bit IC74LS283
architecture parallel_adder8_functional of parallel_adder8 is

--Calling/Declaration of the component of 4 bit adder
component parallel_adder4 is 
	port ( input0, input1 : in std_logic_vector(3 downto 0);
			carry_in : in std_logic;
			sum : out std_logic_vector (3 downto 0);
			carry_out : out std_logic
		   );
end component;

-- Wire Declaration/Internal Signals 
signal carry : std_logic;

begin 

-- Calling the component to add 8 bit inputs
stage_1: parallel_adder4 port map(input0=>A(3 downto 0),input1=>B(3 downto 0),carry_in=>c_in,sum=>sum(3 downto 0),carry_out=>carry);
stage_2: parallel_adder4 port map(input0=>A(7 downto 4),input1=>B(7 downto 4),carry_in=>carry,sum=>sum(7 downto 4),carry_out=>c_out);


end parallel_adder8_functional;
-- End of the program