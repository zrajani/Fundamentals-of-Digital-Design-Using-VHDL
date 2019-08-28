library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity Decoder is 
port ( BCD_in: in std_logic_vector (3 downto 0);
		 Binary_out: out integer range 0 to 9);
end Decoder;

architecture Data_flow of Decoder is

begin

process (BCD_in)
begin 

case BCD_in is 
when "0000" => Binary_out <= 0; --0
when "0001" => Binary_out <= 1; --1
when "0010" => Binary_out <= 2; --2
when "0011" => Binary_out <= 3; --3
when "0100" => Binary_out <= 4; --4
when "0101" => Binary_out <= 5; --5
when "0110" => Binary_out <= 6; --6
when "0111" => Binary_out <= 7; --7
when "1000" => Binary_out <= 8; --8
when "1001" => Binary_out <= 9; --9
when others => Binary_out <= 0; -- Invalid Input

end case;
end process;
end Data_flow;