`timescale 1ns / 1ps
module tb ();

    logic [3:0] a;
    logic [3:0] b;
    logic carryIn;
    logic [3:0] sum;
    logic carryOut;
    logic clk;
    logic [3:0] sum_correct;
   
   // instantiate device under test
   rippleAdder dut (a, b, carryIn, sum, carryOut);

    integer handle3;
    integer desc3;
    integer i;

    assign sum_correct = a + b + carryIn;

    initial 
        begin	
            clk = 1'b1;
	forever #10 clk = ~clk;
        end

    initial
        begin
            handle3 = $fopen("rca.out");
            desc3 = handle3;
            #1250 $finish;
        end

    initial
        begin
            for(i=0; i < 128; i=i+1)
                begin
                    //Put vectors before beginning of clk
                    @(posedge clk)
                        begin
                            a = $random;
                            b = $random;
                            carryIn = $random;
                        end
                    @(negedge clk)
                        begin
                            $fdisplay(desc3, "%h %h %h || %h | %h | %b", a, b, carryIn, sum, sum_correct, (sum == sum_correct));
                        end
                end
        end
   
endmodule
