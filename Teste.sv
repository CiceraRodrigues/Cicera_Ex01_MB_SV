module Teste cont2;
    logic clock, resst;
    wire[3:0] sa;

    initial begin

        clock = 0;
        reset = 1;
        
        #10;
        reset = 0;

        $display(sa);

        repeat(100) begin

            if(clock)
                $display(sa);
            
            clock = ~clock;
            #10;
        end
    end

    Cont2 c1(.clock(clock), .sa(sa), .reset(reset));
endmodule