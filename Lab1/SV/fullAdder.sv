module fullAdder(input logic a, b, cIn, output logic sum, cOut);

    assign sum = (a & b & cIn) | (a & ~b & ~cIn) | (~a & b & ~cIn) | (~a & ~b & cIn);
    assign cOut = (a & b) | (a & cIn) | (b & cIn);

endmodule