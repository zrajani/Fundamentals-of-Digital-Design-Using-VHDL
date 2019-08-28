library IEEE;
use IEEE.std_logic_1164.all;

entity priority_encoder is
port (D: in std_logic_vector (1 to 9);
	   A: out std_logic_vector (0 to 3));
end priority_encoder;

architecture LogicFunction of priority_encoder is 
begin
          process (D) begin
            if (D(1) = '1') then
                A <= "0001";
            elsif (D(2) = '1') then
                A <= "0010";
            elsif (D(3) = '1') then
                A <= "0011";
            elsif (D(4) = '1') then
                A <= "0100";
            elsif (D(5) = '1') then
                A <= "0101";
            elsif (D(6) = '1') then
                A <= "0110";
            elsif (D(7) = '1') then
                A <= "0111";
            elsif (D(8) = '1') then
                A <= "1000";
            elsif (D(9) = '1') then
                A <= "1001";
            else
                A <= "0000";
            end if;
    end process;
end LogicFunction;