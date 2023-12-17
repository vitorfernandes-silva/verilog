# Descrição do Exercício

Dados cinco sinais de 1 bit (a, b, c, d e e), calcule todas as 25 comparações de um bit entre pares no vetor de saída de 25 bits. A saída deverá ser 1 se os dois bits comparados forem iguais.

```verilog
    out[24] = ~a ^ a; // a == a, então out[24] é sempre 1.
    out[23] = ~a ^ b; 
    out[22] = ~a ^ c;
    out[ 1] = ~e ^ d;
    out[ 0] = ~e ^ e;
```
Isso pode ser feito mais facilmente usando a **replicação** e os operadores de concatenação.

O vetor superior é uma concatenação de 5 repetições de cada entrada
O vetor inferior são 5 repetições de uma concatenação das 5 entradas

# Resposta Alternativa

```verilog
    module top_module (
	input a, b, c, d, e,
	output [24:0] out
);

	wire [24:0] top, bottom;
	assign top    = { {5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}} };
	assign bottom = {5{a,b,c,d,e}};
	assign out = ~top ^ bottom;	// Bitwise XNOR

	// Implementação em uma linha
	// assign out = ~{ {5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}} } ^ {5{a,b,c,d,e}};
	
endmodule

```