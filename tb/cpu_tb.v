`timescale 1ns/1ps
module cpu_tb;

    reg clk = 0;
    reg reset = 1;

    pipelined_cpu uut (.clk(clk), .reset(reset));

    always #5 clk = ~clk;

    initial begin
        $dumpfile("waveforms/cpu_sim_output.vcd");
        $dumpvars(0, cpu_tb);
        #10 reset = 0;
        #100 $finish;
    end

endmodule

