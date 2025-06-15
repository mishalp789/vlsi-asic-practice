module control_unit (
    input [7:0] instr,
    output [1:0] opcode,
    output [2:0] rd, rs
);
    assign opcode = instr[7:6];
    assign rd     = instr[5:3];
    assign rs     = instr[2:0];
endmodule
