library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ddd is
    port (
        clk : in  STD_LOGIC;                       -- clock de 100 MHz
        sel : out STD_LOGIC_VECTOR(3 downto 0);    -- anodos do display
        d   : out STD_LOGIC_VECTOR(6 downto 0)     -- segmentos a-g
    );
end ddd;

architecture Behavioral of ddd is

    -- Componente para converter inteiro em display 7 segmentos
    component disp is
        port (
            n : in  integer range 0 to 9;
            d : out STD_LOGIC_VECTOR(6 downto 0)
        );
    end component;

    signal numero : integer range 0 to 9 := 0;    -- número mostrado no display

begin

    -- Instancia o conversor de número -> display
    u1 : disp port map ( n => numero, d => d );

    -- Processo de multiplexação e temporização
    process(clk)
        variable cont : integer range 0 to 10_000_000 := 0; -- ~100ms @ 100MHz
    begin
        if rising_edge(clk) then
            if cont < 10_000_000 then
                cont := cont + 1;
            else
                cont := 0;  -- reinicia o contador
            end if;

            -- Alterna dígitos a cada metade do contador
            if cont < 5_000_000 then
                sel    <= "1110";   -- habilita dígito 0 (AN0)
                numero <= 1;        -- mostra 1
            else
                sel    <= "1101";   -- habilita dígito 1 (AN1)
                numero <= 2;        -- mostra 2
            end if;
        end if;
    end process;

end Behavioral;