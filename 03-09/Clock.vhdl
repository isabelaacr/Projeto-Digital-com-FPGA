library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ddd is
    port (
        clk : in  STD_LOGIC;                       -- clock (ex.: 100 MHz)
        sel : out STD_LOGIC_VECTOR(3 downto 0);    -- seleção de dígitos (ativo-baixo)
        d   : out STD_LOGIC_VECTOR(6 downto 0)     -- segmentos do display
    );
end ddd;

architecture Behavioral of ddd is
    -- Componente que converte número (0..9) para 7 segmentos.
    component disp is
        port (
            n : in  integer range 0 to 9;
            d : out STD_LOGIC_VECTOR(6 downto 0)
        );
    end component;

    signal numero : integer range 0 to 9 := 0;                -- valor exibido
    signal cont   : integer range 0 to 1_999_999 := 0;        -- 2_000_000 ciclos @100MHz ≈ 20 ms
begin
    -- Instância do conversor p/ 7 segmentos
    U1 : disp port map (n => numero, d => d);

    -- Multiplexação dos dígitos (dois dígitos: 1 e 2)
    process (clk)
    begin
        if rising_edge(clk) then
            -- Contador de tempo: 0..1_999_999 (20 ms no total, 10 ms cada metade)
            if cont = 1_999_999 then
                cont <= 0;
            else
                cont <= cont + 1;
            end if;

            -- Primeira metade do tempo: liga dígito 1 e mostra "1"
            if cont < 1_000_000 then
                sel    <= "1101";  -- liga apenas o dígito 1 (ativo-baixo)
                numero <= 1;
            -- Segunda metade: liga dígito 0 e mostra "2"
            else
                sel    <= "1110";  -- liga apenas o dígito 0 (ativo-baixo)
                numero <= 2;
            end if;
        end if;
    end process;
end Behavioral;