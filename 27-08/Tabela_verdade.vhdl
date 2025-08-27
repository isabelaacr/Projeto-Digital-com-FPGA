----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:00:17 08/27/2025 
-- Design Name: 
-- Module Name:    Baggio - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Baggio is
    Port ( abcd : in  STD_LOGIC_VECTOR (3 downto 0);
           s1 : out  STD_LOGIC_VECTOR (0 downto 0);
           s2 : out  STD_LOGIC_VECTOR (0 downto 0));
end Baggio;

architecture Behavioral of Baggio is

begin
	with abcd select
		s1 <= '0' when "0100",
		'0' when "0101",
		'0' when "0110",
		'0' when "0111",
		'0' when "1001",
		'0' when "1011",
		'0' when "1111",
		'1' when others;
		
		s2 <= '0' when abcd="0001" else
		'0' when abcd="0010" else
		'0' when abcd="0110" else
		'0' when abcd="1000" else
		'0' when abcd="1100" else
		'0' when abcd="1110" else
		'1';
		

end Behavioral;

