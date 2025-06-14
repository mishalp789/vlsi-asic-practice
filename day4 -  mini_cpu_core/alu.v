module alu(
	input [1:0] op,
	input [7:0] a,b,
	output [7:0] result
);

	always @(*) begin
		case(op)
			2'b00: result = a+b;
			2'b01: result = a-b;
			2'b10: result = a&b;
			2'b11: result = a|b;
		endcase
	end
endmodule
