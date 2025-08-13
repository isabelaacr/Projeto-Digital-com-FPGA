# Projeto-Digital-com-FPGA

## PLD (Programmable Logic Device)
Circuito integrado que pode conter grande quantidade de circuitos lógicos, com uma estrutura que não é fixa. 
-> É um tipo de integrado que contém circuitos lógicos e chaves programáveis cujas funções são definidas pelo usuário.

## CPLD (Complex Programmable Logic Device)
-> É um circuito que pode conter múltiplos blocos de circuitos, com recursos de conexão (wiring) interna para conectar esses blocos;
-> Os elementos programáveis são células do tipo EEPROM (Eletrical Erasable PROM), ou seja, são reprogramáveis mediante apagamento prévio do conteúdo anterior.
-> A informação de programaação é armazenada em caráter não volátil, isto é, enquanto não houver uma operação explícita de apagamento elas são mantidas indefinidamente.


* Principais Características

-> Processo de fabricação CMOS: Baixo consumo de potência e maior confiabilidade.

-> Tecnologia de integração 0,5um, 0,35um e as mais atuais, 0,22um.

-> MAX usada para projetos combinacionais e máquinas de estados sequenciais.
Família 7000 – densidade entre 150 e 5.000 portas equivalentes; de 44 a 208 pinos.

-> FLEX usada em projetos mais complexos.
8000 densidade 2.500 a 24.000 portas equivalentes.
10k – densidade de até 250.000 portas equivalentes.
APEX 20k – densidade de até 1.500.000 portas equivalentes.

* Macrocell MAX 7000

- Características da matriz de termo produto.

-> Fornece sinais de entrada par porta OR e XOR (Funções lógicas e inversão lógica).

-> Entradas secundárias para entradas de controle do flip-flop (clock, enable, clear, preset).

-> Um termo produto pode ser invertido e realimentado para qualquer entrada de uma nova matriz de termo produto de qualquer macrocell dentro da LAB.

- Flip-flop

-> Configurado como D, T, JK, SR.

Três opções para programação do clock:

Sinal de clock global – melhor opção de desempenho.

Sinal de clock habilitado por sinal de controle (clock enable
em nível lógico alto).

Clock implementado independentemente por termo produto
– clock oriundo das macrocells ou de pinos de I/O.

## FPGA
São dispositivos programáveis que possuem uma arquitetura baseada em blocos lógicos configuráveis, chamados de CLB (Configuration Logical Blocks)
-> CLBs são formados por estruturas chamadas de blocos de entrada e saída (IOB - In/Out Blocks), os quais são responsáveis pela interface das saídas provenientes das combinações de CLBs.
-> Uma FPGA usa Blocos Lógicos reconfiguráveis
-> Os bits de configuração são selecionados de acordo com a função lógica desejada.
-> A configuração é uma tabela da verdade (lookup table) da funcionalidade
-> A FPGA pode implementar lógica puramente combinacional ou sequencial, ou seja, que faz uso de flip-flops.
-> LUTs = Look Up Tables
As LUTs podem ser programadas para qualquer tipo de porta necessária ao projeto. Há um número finito de LUTs em uma FPGA.
