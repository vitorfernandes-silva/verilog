module top(
    input a, b,
    output out
);

mod_a instance1(a, b, out);

endmodule

module mod_a ( input in1, input in2, output out );
    // Module body
endmodule