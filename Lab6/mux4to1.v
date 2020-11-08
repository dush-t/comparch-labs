module mux4to1 # (parameter N = 32) (
    output reg [N-1:0] out,
    input [N-1:0]      in0, in1, in2, in3,
    input [1:0]        sel
);
    always @ (in0, in1, in2, in3, sel) begin
        case (sel)
            2'b00: out = in0; 
            2'b01: out = in1; 
            2'b10: out = in2; 
            2'b11: out = in3; 
        endcase
    end

endmodule