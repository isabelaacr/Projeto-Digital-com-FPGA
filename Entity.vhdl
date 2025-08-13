-- Entity define a interface externa do circuito
-- Portas de entrada e saída: IN (entrada); OUT (Saída); INOUT (Barramento bidirecional); BUFFER (Saída especial que permite a leitura do próprio valor interno para uso na lógica)

library ieee;
use ieee.std_logic_1164.all;

entity exemplo_componente is
    Port (
        clk           : in  std_logic;                  -- Sinal de clock (entrada)
        reset         : in  std_logic;                  -- Sinal de reset assíncrono (entrada)
        dado_entrada  : in  std_logic_vector(7 downto 0); -- Barramento de 8 bits para entrada de dados
        habilita_saida: in  std_logic;                  -- Sinal de habilitação para a saída (entrada)
        dado_saida    : out std_logic_vector(7 downto 0); -- Barramento de 8 bits para saída de dados
        pronto_saida  : out std_logic                   -- Sinal de indicação de dado pronto (saída)
    );
end entity exemplo_componente;
