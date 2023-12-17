# Descrição do Exercício

Neste exercício, crie uma instância do módulo mod_a e, em seguida, conecte os três pinos do módulo (``in1, in2,`` and ``out``) às três portas do seu módulo de nível superior (``wires a, b`` and ``out``). O módulo mod_a é fornecido a você e você deve instanciá-lo.

Ao conectar módulos, apenas as portas do módulo são importantes. Você não precisa conhecer o código dentro do módulo. O código do módulo ``mod_a`` é assim:

```verilog
    module mod_a ( input in1, input in2, output out );
    // Module body
    endmodule

```

A hierarquia de módulos é criada instanciando um módulo dentro de outro, desde que todos os módulos utilizados pertençam ao mesmo projeto (para que o compilador saiba onde encontrar o módulo). O código de um módulo não é escrito dentro do corpo de outro módulo (o código de módulos diferentes não é aninhado).

Você pode conectar sinais ao módulo por nome ou posição da porta. Para prática extra, experimente os dois métodos.