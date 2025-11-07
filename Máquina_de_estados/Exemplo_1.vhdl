library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity maq is 
  Port (clk, entrada : in STD_LOGIC;
        saída        : out STD_LOGIC);
end maq;

archicteture Behavioral of maq is
  type estados is (a, b, c);
  signal est : estados;
begin

  process (clk)
  begin 
    if rising_edge (clk)
    then
      case est is 
      when a => if entrada '0' then est <= b;
                                saida <= 1;
                              else est <= c;
                                saida <= '1';
                end if;
      when b => if entrada '0' then est <= a;
                                saida <= 1;
                              else est <= c;
                                saida <= '1';
                end if;
      when b => if entrada '0' then est <= a;
                                saida <= 1;
                              else est <= c;
                                saida <= '1';
  end case;
  end if;
end process;

end Behavioral;
