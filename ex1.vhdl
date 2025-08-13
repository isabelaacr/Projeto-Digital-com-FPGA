-- Family Spartan6 -> VHDL

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ISA is
    Port ( a, b, c : in  STD_LOGIC;
           x, y : out  STD_LOGIC);
end ISA;

architecture Behavioral of ISA is

begin
x <= (b and c) and a and ((not a) nor (b and c));
y <= (not a and b and c) or (a and not b and c) or (a and b and not c) or (a and b and c);

end Behavioral;
