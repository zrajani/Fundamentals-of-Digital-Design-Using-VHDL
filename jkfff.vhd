library IEEE;  
 use IEEE.STD_LOGIC_1164.ALL;  
 use IEEE.STD_LOGIC_ARITH.ALL;  
 use IEEE.STD_LOGIC_UNSIGNED.ALL;
  
 entity jkfff is  
 Port ( j     : in STD_LOGIC;  
        k     : in STD_LOGIC;  
        clock : in STD_LOGIC;  
        reset : in STD_LOGIC;  
        q     : out STD_LOGIC  
    );  
 end jkfff;  

 architecture JK_Work of jkfff is  
 signal jk    : std_logic_vector(1 downto 0) := "00";  
 signal qsig  : std_logic := '0';
  
 begin  
     jk  <= j & k;  
 process(reset,clock)  
 begin  
     if (reset = '1')then  
         qsig <='0';  
     elsif (clock'event and clock = '1')then  
         case (jk) is  
             when "00"   => qsig <= qsig;      
             when "01"   => qsig <= '0';  
             when "10"   => qsig <= '1';  
             when others => qsig <= not qsig;  
         end case;  
     end if;  
 end process;
  
 q <= qsig;  
 end JK_Work;