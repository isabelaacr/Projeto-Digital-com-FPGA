library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity maq is 
  Port (
    clk     : in  STD_LOGIC;
    entrada : in  STD_LOGIC;
    saida   : out STD_LOGIC
  );
end maq;

architecture Behavioral of maq is

  type estados is (S0, S1, S2, S3, S4, S5, S6);
  signal est : estados := S0;  

begin

  process (clk)
  begin 
    if rising_edge(clk) then
      case est is 

        when S0 =>
          if entrada = '0' then 
            est <= S1;
          else 
            est <= S0;
          end if;
          saida <= '0';

        when S1 =>
          if entrada = '0' then 
            est <= S2;
          else 
            est <= S3;
          end if;
          saida <= '0';

        when S2 =>
          if entrada = '0' then 
            est <= S4;
          else 
            est <= S0;
          end if;
          saida <= '0';

        when S3 =>
          if entrada = '0' then 
            est <= S5;
          else 
            est <= S6;
          end if;
          saida <= '1';

        when S4 =>
          if entrada = '0' then 
            est <= S1;
          else 
            est <= S2;
          end if;
          saida <= '0';

        when S5 =>
          if entrada = '0' then 
            est <= S6;
          else 
            est <= S0;
          end if;
          saida <= '1';

        when S6 =>
          if entrada = '0' then 
            est <= S0;
          else 
            est <= S1;
          end if;
          saida <= '1';

        when others =>
          est <= S0;
          saida <= '0';

      end case;
    end if;
  end process;

end Behavioral;
