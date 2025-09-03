library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity contador is
    Port (
        clk : in  STD_LOGIC;                       -- clock
        d   : out STD_LOGIC_VECTOR (6 downto 0)    -- saída para display
    );
end contador;

architecture Behavioral of contador is
    -- contador (0 a 9)
    signal cont : integer range 0 to 9 := 0;

    -- componente para converter número em display
    component disp_int is
        port (
            a : in integer range 0 to 15;
            b : out STD_LOGIC_VECTOR(6 downto 0)
        );
    end component;
begin

    -- instância do display
    u1 : disp_int port map (a => cont, b => d);

    -- processo de incremento
    process(clk)
    begin
        if rising_edge(clk) then
            if cont = 9 then
                cont <= 0;          -- volta para 0 depois de 9
            else
                cont <= cont + 1;   -- incrementa
            end if;
        end if;
    end process;

end Behavioral;