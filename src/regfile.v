module regfile (
    input clk,
    input we,
    input [4:0] ra1, ra2, wa,
    input [31:0] wd,
    output [31:0] rd1, rd2
);
    reg [31:0] regs[31:0];

    assign rd1 = regs[ra1];
    assign rd2 = regs[ra2];

    always @(posedge clk) begin
        if (we) regs[wa] <= wd;
    end
endmodule
