module rippleAdder(input logic [3:0] a, b, input logic carryIn, output logic [3:0] sum, output logic carryOut);

    wire carry1;
    fullAdder adder1 (a[0], b[0], carryIn, sum[0], carry1);

    wire carry2;
    fullAdder adder2 (a[1], b[1], carry1, sum[1], carry2);

    wire carry3;
    fullAdder adder3 (a[2], b[2], carry2, sum[2], carry3);

    fullAdder adder4 (a[3], b[3], carry3, sum[3], carryOut);

endmodule