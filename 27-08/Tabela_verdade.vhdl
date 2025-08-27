entity ex1 is
    Port (
        a  : in  integer range 0 to 15;     -- Entrada do tipo inteiro, valores de 0 a 15
        s1 : out std_logic;                 -- Saída do tipo std_logic
        s2 : out std_logic                  -- Saída do tipo std_logic
    );
end ex1;

architecture Behavioral of ex1 is
begin

    -- Seleção para s1 usando 'with select'
    with a select
        s1 <= '0'    when 4,
              '1'    when 5,
              '0'    when 6,
              '1'    when 7,
              '0'    when 9,
              '1'    when 11,
              '0'    when 15,
              '1'    when others; -- Valor padrão para os demais casos

    -- Atribuição sequencial para s2 usando 'if-elsif'
    process(a)
    begin
        if a = 1 then
            s2 <= '1';
        elsif a = 2 then
            s2 <= '1';
        elsif a = 6 then
            s2 <= '1';
        elsif a = 8 then
            s2 <= '0';
        elsif a = 12 then
            s2 <= '0';
        elsif a = 14 then
            s2 <= '0';
        else
            s2 <= '1';
        end if;
    end process;

end Behavioral;