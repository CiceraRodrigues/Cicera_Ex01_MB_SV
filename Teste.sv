module Teste cont1;
    logic clock, reset;
    wire[3:0] sa;

    initial begin

        clock = 0;
        reset = 1;

        #10;
        reset = 0;

        $display(sa);

        repeat(50) begin

            if(clock)
                $display(sa);
            
            clock = ~clock;
            #10;
        end
    end

    Cont1 c1(.clock(clock), .sa(sa), .reset(reset));
endmodule