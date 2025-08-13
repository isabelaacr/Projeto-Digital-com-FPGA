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
    Port ( a, b, c: in  STD_LOGIC;
           y : out  STD_LOGIC);
end ISA;

architecture Behavioral of ISA is

begin
y <= (((a and b) or b) and c) ;

end Behavioral;
