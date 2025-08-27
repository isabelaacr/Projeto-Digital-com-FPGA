
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Gere em VHDL um circuito que apresente saida em nivel alto, quando uma entrada de 4 bits for um numero menor do que ou maior que 12.

entity Baggio is
    Port ( a: in  integer range 0 to 15;
           s: out  STD_LOGIC);
end Baggio;

architecture Behavioral of Baggio is

begin
	s <= '1' when a = 0 else
	'1' when a = 0 else
	'1' when a = 1 else
	'1' when a = 13 else
	'1' when a = 14 else
	'1' when a = 15 else
	'0';

		
end Behavioral;
