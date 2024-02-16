integer handle3;
integer desc3;
integer i;

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
                @(posedge clk)
                    begin
                        A = $random;
                        B = $random;
                    end
                @(negedge clk)
                    begin
                        $fdisplay(desc3, "%h %h || %h | %b", A, B, Sum, Sum_correct, (Suum == Sum_corr));
                    end
            end
    end

    segment_driver driver(
        .clk(smol_clk),
        .rst(btn[3]),
        .digit0(sw[3:0]),
        .digit1(4'b0111),
        .digit2(sw[7:4]),
        .digit3(4'b1111),
        .decimals({1'b0, btn[2:0]}),
        .segment_cathodes({sseg_dp, sseg_cg, sseg_cf, sseg_ce, sseg_cd, sseg_Cc, sseg_cb, sseg_ca}),
        .digit_anodes(sseg_an)
    )