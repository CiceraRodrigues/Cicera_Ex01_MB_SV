module TesteGeral;
    logic clock, reset;
    wire[3:0] sa1, sa2;

    initial begin
        clock = 0;
        reset = 1;

        #10;
        reset = 0;

        $display("C1: %d | C2: %d", sa1, sa2);

        repeat(50) begin

            if(clock)
                $display("C1: %d | C2: %d", sa1, sa2);
            
            clock = ~clock;
            #10;
        end
    end

    Cont1 c1(.clock(clock), .sa(sa1), .reset(reset));
    Cont2 c2(.clock(clock), .sa(sa2), .reset(reset));
endmodule