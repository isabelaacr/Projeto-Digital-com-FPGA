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

```VHDL
LIBRARY ieee:

USE ieee.std logic 1164.all:
USE ieee.std logic arith.all:

SIGNAL a: IN UNSIGNED (7 DOWNTO 0);
SIGNAL b: IN UNSIGNED (7 DOWNTO 0);
SIGNAL y: OUT STD LOGIC VECTOR (7 DOWNTO 0);

y <= CONV_STD_LOGIC VECTOR ((a4b),8);
-- Legal operation: a+b is converted from UNSIGNED to an 8-bit STD LOGIC VECTOR value, then assigned to y.
```

Exemplo de soma.
```VHDL

library IEEE;
use IEEE.STD LOGIC 1164.all;
USE ieee.std logic arith.ALL;

entity soma is
port (
a : in unsigned (7 downto 0);
b: in unsigned(7 downto 0);
c : out unsigned (8 downto 0)
)
end soma:

architecture arg soma of soma is
begin
p: process (a, b)
begin
 c <= ('0' & a) + b

-- sinal de concatenação

end process;
end arq soma;
```

Outro exemplo de soma:

```VHDL
-- Solution 2: out=INTEGER
LIBRARY ieee;

USE ieee.std logic 1164.all;
USE ieee.std logic arith.all;


ENTITY adder2 IS
PORT ( a, b : IN SIGNED (3 DOWNTO O);
sum : OUT INTEGER RANGE -16 TO 15);

END adder2:


ARCHITECTURE adder2 oF adder2 IS
BEGIN

sum <= CONV INTEGER (a + b);
END adder2:
```

Alguns pacotes foram criados pela ieee, para permitir operações lógicas com std_logic.

```VHDL
LIBRARY ieee;
USE ieee.std_logic.all;
USE ieee.std_logic_unsigned.all;

SIGNAL a: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL b: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL x: OUT STD_LOGIC_VECTOR (7 DOWNTO 0);

v <= a +b ;
w <= a AND b;
```
