module hazard_unit (
    input [4:0] rs1, rs2, ex_rd,
    input ex_mem_read,
    output reg stall
);
    always @(*) begin
        if (ex_mem_read && ((ex_rd == rs1) || (ex_rd == rs2))) begin
            stall = 1;
        end else begin
            stall = 0;
        end
    end
endmodule
