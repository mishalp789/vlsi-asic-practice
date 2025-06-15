module reg_file (
    input clk,
    input we,
    input [2:0] r_addr1, r_addr2, w_addr,
    input [7:0] w_data,
    output [7:0] r_data1, r_data2
);
    reg [7:0] regs[7:0];

    assign r_data1 = regs[r_addr1];
    assign r_data2 = regs[r_addr2];

    always @(posedge clk) begin
        if (we)
            regs[w_addr] <= w_data;
    end
endmodule
