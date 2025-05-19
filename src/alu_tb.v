
`timescale 1ns / 1ps

module alu_tb;

reg [7:0] A, B;
reg [2:0] ALUControl;
wire [7:0] Result;

alu uut (
    .A(A),
    .B(B),
    .ALUControl(ALUControl),
    .Result(Result)
);

initial begin
    $dumpfile("alu_tb_output.vcd");
    $dumpvars(0, alu_tb);

    A = 8'b00001111;
    B = 8'b00000011;

    ALUControl = 3'b000; #10;  // ADD
    ALUControl = 3'b001; #10;  // SUB
    ALUControl = 3'b010; #10;  // AND
    ALUControl = 3'b011; #10;  // OR
    ALUControl = 3'b100; #10;  // XOR
    ALUControl = 3'b101; #10;  // Shift left
    ALUControl = 3'b110; #10;  // Shift right
    ALUControl = 3'b111; #10;  // Zero

    $finish;
end

endmodule
