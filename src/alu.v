module alu (input [3:0] a, b, output [3:0] result); assign result = a + b; endmodule
module alu (
    input  [31:0] a,
    input  [31:0] b,
    input  [2:0]  alu_op,
    output reg [31:0] result
);
    always @(*) begin
        case (alu_op)
            3'b000: result = a + b;
            3'b001: result = a - b;
            3'b010: result = a & b;
            3'b011: result = a | b;
            3'b100: result = a ^ b;
            default: result = 0;
        endcase
    end
endmodule
