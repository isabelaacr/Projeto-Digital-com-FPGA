library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


-- Ler dois números e mostrar num display de 7 segmentos mostrando o maior 

-- Entidade principal
entity comp is
    port (
        n1, n2 : in integer range 0 to 9;            -- entradas numéricas
        d      : out std_logic_vector(6 downto 0)    -- saída para display 7 segmentos
    );
end comp;

architecture Behavioral of comp is
    signal temp : integer range 0 to 2 := 0;
    
    -- Componente para converter número inteiro (0,1,2) em display de 7 segmentos
    component disp_int is
        port (
            num : in integer range 0 to 9;
            seg : out std_logic_vector(6 downto 0)
        );
    end component;

begin
    process(n1, n2)
    begin
        if n1 >= n2 then
            temp <= 1;     -- mostra 1
        else
            temp <= 2;     -- mostra 2
        end if;
    end process;

    -- Mapeia saída para display
    U1 : disp_int port map(num => temp, seg => d);

end Behavioral;