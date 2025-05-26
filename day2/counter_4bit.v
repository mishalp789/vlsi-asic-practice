module counter_4bit(
    input clk,
    input rst,
    output reg [3:0] count  // <-- Add `reg` here
);

    always @(posedge clk or posedge rst) begin
        if (rst)
            count <= 4'b0000;
        else
            count <= count + 1;
    end

endmodule

