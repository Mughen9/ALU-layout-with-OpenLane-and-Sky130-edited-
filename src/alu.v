module alu (
    input  [7:0] A,
    input  [7:0] B,
    input  [2:0] ALUControl,
    output reg [7:0] Result
);

always @(*) begin
    case (ALUControl)
        3'b000: Result = A + B;
        3'b001: Result = A - B;
        3'b010: Result = A & B;
        3'b011: Result = A | B;
        3'b100: Result = A ^ B;
        3'b101: Result = A << 1;
        3'b110: Result = A >> 1;
        3'b111: Result = 8'b00000000;
        default: Result = 8'b00000000;
    endcase
end

endmodule