LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY teste IS
END teste;

ARCHITECTURE behavior OF teste IS
    COMPONENT a1
        PORT(
            a, b, c, d : IN bit;
            f, g       : OUT bit
        );
    END COMPONENT;

    signal a, b, c, d, f, g : bit;

    constant period : time := 10 ns;
BEGIN

    u1: a1 PORT MAP (a, b, c, d, f, g);

    process
    begin
        d <= '0';
        wait for period;
        d <= '1';
        wait for period;
    end process;

process
    begin
        a <= '0';
        wait for period;
        a <= '1';
        wait for period;
    end process;

    process
    begin
        b <= '0';
        wait for period*2;
        b <= '1';
        wait for period*2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- hold reset state for 100 ns.
        wait for 100 ns;
        c <= '1';
        wait for 30 ns;
        c <= '0';
        wait for 200 ns;
        c <= '1';

        wait;
    end process;
END behavior;
