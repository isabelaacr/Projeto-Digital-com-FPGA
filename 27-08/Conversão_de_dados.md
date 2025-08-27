# Conversão de dados
Dados de diferentes tipos não podem ser operados em conjunto. Para corrigir isto, pode-se incluir alguma função que faça a conversão de tipos.
O pacote std_logic_1164 inclui algumas rotinas para esta conversão.

Exemplo:

```VHDL
TYPE long IS INTEGER RANGE -100 TO 100;
TYPE short IS INTEGER RANGE -10 TO 10;
SIGNAL X: short;
SIGNAL y: long;

y <= long(2*x + 5);
```

| Função                      | Entrada aceita                           | Saída                        | Observação                                                                 |
|-----------------------------|------------------------------------------|------------------------------|----------------------------------------------------------------------------|
| Conv_integer(p)             | INTEGER, UNSIGNED, SIGNED, STD_ULOGIC    | INTEGER                      | Não aceita STD_LOGIC_VECTOR como entrada                                   |
| Conv_unsigned(p, b)         | INTEGER, UNSIGNED, SIGNED, STD_ULOGIC    | UNSIGNED com b bits          | b indica o tamanho do vetor de saída                                       |
| Conv_signed(p, b)           | INTEGER, UNSIGNED, SIGNED, STD_ULOGIC    | SIGNED com b bits            | b indica o tamanho do vetor de saída                                       |
| Conv_std_logic_vector(p, b) | INTEGER, UNSIGNED, SIGNED, STD_ULOGIC    | STD_LOGIC_VECTOR com b bits  | b indica o tamanho do vetor de saída                                       |



Example: Data conversion

LIBRARY ieee:

USE ieee.std logic 1164.all:
USE ieee.std logic arith.all:

SIGNAL a: IN UNSIGNED (7 DOWNTO 0);
SIGNAL b: IN UNSIGNED (7 DOWNTO 0);
SIGNAL y: OUT STD LOGIC VECTOR (7 DOWNTO 0);

y <= CONV_STD_LOGIC VECTOR ((a4b),8);
-- Legal operation: a+b is converted from UNSIGNED to an 8-bit STD LOGIC VECTOR value, then assigned to y.

Exemplo de soma.


