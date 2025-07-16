module control_unit (
    input [6:0] opcode,
    output reg reg_write, mem_read, mem_write
);
    always @(*) begin
        case (opcode)
            7'b0000011: begin // load
                reg_write = 1; mem_read = 1; mem_write = 0;
            end
            7'b0100011: begin // store
                reg_write = 0; mem_read = 0; mem_write = 1;
            end
            7'b0110011: begin // R-type
                reg_write = 1; mem_read = 0; mem_write = 0;
            end
            default: begin
                reg_write = 0; mem_read = 0; mem_write = 0;
            end
        endcase
    end
endmodule
