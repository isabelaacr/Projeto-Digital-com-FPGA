# Tipos de dados
* Boolean
* Integer: números inteiros de 32 bits.
* Natural: inteiros não negativos.
* Real: [-1.0e38 a +1.0e38]
* Literais físicos: para quantidades. EX: Tempo, Volts, etc. Não sintetizável.
* Caracteres Literais: ASCII. Não sintetizável.

  ### SIGNED E UNSIGNED
Pacote sd_logic_arith da biblioteca ieee. 
* SIGNAL x SIGNED (7 downto 0);
* SIGNAL y UNSIGNED (0 to 3). UNSIGNED representa sempre um número maior ou igual a 0.

| Tipo/Atribuição      | Descrição                                 |
|----------------------|-------------------------------------------|
| `'0'`                | bit, std_logic, std_ulogic                |
| `"00011111"`         | Vetor de bits, std_logic_vector, unsigned |
| `B"101111"`          | Binário (decimal 47)                      |
| `O"57"`              | Octal (decimal 47)                        |
| `X"2F"`              | Hexadecimal (decimal 47)                  |
| `1_200`              | Inteiro com underscore                    |
| `TRUE`               | Booleano                                  |
| `1.2E-5`             | Real (não sintetizável)                   |
| `after 10 ns`        | Atraso físico (não sintetizável)          |