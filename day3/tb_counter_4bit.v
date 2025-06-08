`timescale 1ns / 1ps

module tb_counter_4bit;
    reg clk;
    reg rst;
    wire [3:0] count;

    // Instantiate the counter
    counter_4bit uut (
        .clk(clk),
        .rst(rst),
        .count(count)
    );

    // Clock generation
    always #5 clk = ~clk;  // Toggle clock every 5ns → 100MHz

    initial begin
        // Initialize signals
        clk = 0;
        rst = 1;

        // Reset pulse
        #10 rst = 0;
        
        // Run simulation for some time
        #100 $finish;
    end

    // Dump waveform
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_counter_4bit);
    end
endmodule
