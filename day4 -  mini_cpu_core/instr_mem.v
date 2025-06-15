module instr_mem (
    input [3:0] pc,                 // 4-bit Program Counter (up to 16 instructions)
    output [7:0] instr              // 8-bit instruction
);
    reg [7:0] memory[15:0];

    initial begin
        memory[0] = 8'b000_001_101; // MOV R1, 5
        memory[1] = 8'b000_010_011; // MOV R2, 3
        memory[2] = 8'b001_011_010; // ADD R3 = R2 + R1
        memory[3] = 8'b010_100_011; // SUB R4 = R3 - R2
        memory[4] = 8'b011_000_000; // HALT (custom opcode)
    end

    assign instr = memory[pc];
endmodule
