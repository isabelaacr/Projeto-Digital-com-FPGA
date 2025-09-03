-- Faça um circuito que tenha 5 bits de entrada e 3 saídas.
-- A lógica do circuito é dada por uma tabela verdade única (gerada por você e diferente de todos os demais colegas de aula).
-- Faça a programação, que implemente o circuito projetado, e faça também o test bench para fazer a simulação do circuito, explorando no mínimo 15 das 32 possibilidades da entrada.
-- Faça um relatório para apresentação do projeto, bem como a simulação do mesmo.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Circuito is
	Port (
    	A, B, C, D, E : in  STD_LOGIC;
    	S1, S2, S3	: out STD_LOGIC
	);
end Circuito;

architecture Behavioral of Circuito is
begin
	S1 <= A XOR (B AND C);
	S2 <= (A OR D) AND (NOT E);
	S3 <= (A AND B) OR (C XOR E);
end Behavioral;

-- Test Bench:

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_Circuito is
end tb_Circuito;

architecture behavior of tb_Circuito is
	-- Componente a ser testado
	component Circuito
    	Port (
        	A, B, C, D, E : in  STD_LOGIC;
        	S1, S2, S3	: out STD_LOGIC
    	);
	end component;

	-- Sinais internos
	signal A, B, C, D, E : STD_LOGIC := '0';
	signal S1, S2, S3	: STD_LOGIC;

begin
	-- Instanciação do DUT (Device Under Test)
	uut: Circuito
    	port map (
        	A => A, B => B, C => C, D => D, E => E,
        	S1 => S1, S2 => S2, S3 => S3
    	);

	-- Processo de estímulo
	stim_proc: process
	begin
    	-- 15 combinações de teste
    	A <= '0'; B <= '0'; C <= '0'; D <= '0'; E <= '0'; wait for 10 ns;
    	A <= '1'; B <= '0'; C <= '0'; D <= '0'; E <= '0'; wait for 10 ns;
    	A <= '0'; B <= '1'; C <= '0'; D <= '0'; E <= '0'; wait for 10 ns;
    	A <= '0'; B <= '0'; C <= '1'; D <= '0'; E <= '0'; wait for 10 ns;
    	A <= '1'; B <= '1'; C <= '0'; D <= '0'; E <= '1'; wait for 10 ns;
    	A <= '0'; B <= '1'; C <= '1'; D <= '0'; E <= '1'; wait for 10 ns;
    	A <= '1'; B <= '0'; C <= '1'; D <= '0'; E <= '1'; wait for 10 ns;
    	A <= '1'; B <= '1'; C <= '1'; D <= '0'; E <= '0'; wait for 10 ns;
    	A <= '1'; B <= '1'; C <= '1'; D <= '1'; E <= '0'; wait for 10 ns;
    	A <= '0'; B <= '0'; C <= '0'; D <= '1'; E <= '1'; wait for 10 ns;
    	A <= '0'; B <= '1'; C <= '0'; D <= '1'; E <= '0'; wait for 10 ns;
    	A <= '1'; B <= '0'; C <= '0'; D <= '1'; E <= '1'; wait for 10 ns;
    	A <= '0'; B <= '0'; C <= '1'; D <= '1'; E <= '0'; wait for 10 ns;
    	A <= '1'; B <= '1'; C <= '0'; D <= '1'; E <= '1'; wait for 10 ns;
    	A <= '1'; B <= '0'; C <= '1'; D <= '1'; E <= '0'; wait for 10 ns;

    	wait; -- mantém simulação rodando
	end process;
end behavior;
