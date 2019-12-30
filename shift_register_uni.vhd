LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity shift_register_uni is
port (clock, clear, sl_in, sr_in : in bit;
		select_line : in bit_vector ( 1 downto 0 );
		data : in bit_vector ( 3 downto 0 );
		out_data : inout bit_vector (3 downto 0 ));
end shift_register_uni;

architecture universal_shift_register of shift_register_uni is
begin
process (clock, clear)
	begin 
		if clear = '0' then
			out_data <= "0000" ;
		elsif (clock'event and clock = '1') then
			case select_line is
				when "00" => null; -- No Operation
				when "01" => out_data <= (out_data srl 1) or (sr_in & "000") ; -- Shift Right Serial Input
				when "10" => out_data <= (out_data sll 1) or ("000" & sl_in) ; -- Shift Left Serial Input
				when "11" => out_data <= data; -- Parallel (Broadside) Load
			end case;
		end if;
end process;
end universal_shift_register;
