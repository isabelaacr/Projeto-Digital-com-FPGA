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
