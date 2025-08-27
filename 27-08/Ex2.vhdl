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

-- Gere um circuito com 2 saidas Y e Z. As entradas A, B, C formam as seguintes logicas.
-- Temp = !A + B.!C
-- Y = temp XOR C
-- Z = !temp + B.A

entity Baggio is
    Port ( A, B, C : in  STD_LOGIC;
           temp : inout  STD_LOGIC;
           Y, Z : out  STD_LOGIC);
end Baggio;

architecture Behavioral of Baggio is

begin
	temp <= not A or (B and not C);
	Y <= temp xor C; 
	Z <= not temp or (B and A);
		
end Behavioral;
