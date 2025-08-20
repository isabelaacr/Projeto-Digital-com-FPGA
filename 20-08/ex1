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
    Port ( a, b, C : in  STD_LOGIC;
			t1, t2, t3, t4, t5: inout STD_LOGIC;
           x, y : out  STD_LOGIC);
end ISA;

architecture Behavioral of ISA is

begin
t1 <= b and c;
t2 <= not a and b and c;
t3 <= a and not b and c;
t4 <= (a and b and not c);
t5 <= (a and b and c);

x <= t1 and a and (not a and not t1);
y <= t2 or t3 or t4 or t5;

end Behavioral;
