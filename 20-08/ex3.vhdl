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
    Port ( a, b, C, d : in  STD_LOGIC;
			t1, t2, t3: inout STD_LOGIC;
          g : out  STD_LOGIC);
end ISA;

architecture Behavioral of ISA is

begin
t1 <= not c and d;
t2 <= a and c and not d;
t3 <= c and d and b;


g <= t1 or t2 or t3;

end Behavioral;
