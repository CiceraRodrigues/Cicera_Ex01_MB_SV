module Cont2(input logic reset,clock output logic[3:0] s);
    logic direction, g1, g2;

    always @(posedge clock or posedge reset)

        if(reset) begin
            sa = 4'd0;
            direction = 1'b0;
            g1 = 1'b1;
            g2 = 1'b0;
        end

        else begin

            if(g1) begin
                if(direction)
                    sa = s - 4'd1;
                else
                    sa = sa + 4'd1;

                g2 = 1'b1;
            end
            else
                g1 = 1'b1;

            if((sa==4'd15 || s==4'd0) && g2) begin
                direction = ~direction;
                g1 = 1'b0;
                g2 = 1'b0;
            end
        end
endmodule