module Cont1(input logic reset,clock output logic[3:0] sa);
    logic direction;

    always @(posedge clock or posedge reset)

        if(reset) begin
            sa = 4'd0;
            direction = 1'b0;
        end

        else begin
            if(direction)
                sa = sa - 4'd1;
            else
                sa = sa + 4'd1;

            if(sa==4'd15 || sa==4'd0)
                direction = ~direction;
        end
endmodule