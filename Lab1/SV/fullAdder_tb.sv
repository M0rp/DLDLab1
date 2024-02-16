`timescale 1ns / 1ps
module tb ();

   logic    a;
   logic 	b;
   logic 	cIn;
   logic 	sum;
   logic    cOut;
   logic    clk;   
   
  // instantiate device under test
   fullAdder dut (a, b, cIn, sum, cOut);

   // 2 ns clock
   initial 
     begin	
	clk = 1'b1;
	forever #10 clk = ~clk;
     end


   initial
     begin
    
	#0   a = $random;	
	#0   b = $random;	
	#0   cIn = $random;

	#20  a = $random;	
	#0   b = $random;	
	#0   cIn = $random;

	#20  a = $random;	
	#0   b = $random;	
	#0   cIn = $random;	

	#20  a = $random;	
	#0   b = $random;	
	#0   cIn = $random;	

	#20  a = $random;	
	#0   b = $random;	
	#0   cIn = $random;	

	#20  a = $random;	
	#0   b = $random;	
	#0   cIn = $random;	

	#20  a = $random;	
	#0   b = $random;	
	#0   cIn = $random;	

	#20  a = $random;	
	#0   b = $random;	
	#0   cIn = $random;

    #20  a = $random;	
	#0   b = $random;	
	#0   cIn = $random;	

	#20  a = $random;	
	#0   b = $random;	
	#0   cIn = $random;
	
     end

   
endmodule
