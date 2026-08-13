module alu8bit (
    input  [7:0] A,
    input  [7:0] B,
    input  [2:0] ALU_Sel,
    output reg [7:0] ALU_Out,
    output Zero,
    output Carry
);

reg carry_out;

always @(*) begin
    carry_out = 1'b0;

    case (ALU_Sel)
        3'b000: begin
            {carry_out, ALU_Out} = A + B;      // Addition
        end

        3'b001: begin
            {carry_out, ALU_Out} = A - B;      // Subtraction
        end

        3'b010: begin
            ALU_Out = A & B;                   // AND
        end

        3'b011: begin
            ALU_Out = A | B;                   // OR
        end

        3'b100: begin
            ALU_Out = A ^ B;                   // XOR
        end

        3'b101: begin
            ALU_Out = ~A;                      // NOT
        end

        3'b110: begin
            ALU_Out = A << 1;                  // Left Shift
        end

        3'b111: begin
            ALU_Out = A >> 1;                  // Right Shift
        end

        default: begin
            ALU_Out = 8'b00000000;
        end
    endcase
end

assign Zero  = (ALU_Out == 8'b00000000);
assign Carry = carry_out;

endmodule
//testbench:
module alu8bit_tb;

reg [7:0] A;
reg [7:0] B;
reg [2:0] ALU_Sel;
wire [7:0] ALU_Out;
wire Zero;
wire Carry;
alu8bit a8b (A,B,ALU_Sel,ALU_Out,Zero,Carry);
initial begin
  $dumpfile("wave.vcd");
  $dumpvars(0, alu8bit_tb);
    A=8'd10;
    B=8'd5;
    ALU_Sel=3'b000;#5
    ALU_Sel=3'b001;#5
    ALU_Sel=3'b010;#5
    ALU_Sel=3'b011;#5
    ALU_Sel=3'b100;#5
    ALU_Sel=3'b101;#5
   ALU_Sel=3'b110;#5
   ALU_Sel=3'b111;#5
    $finish;
end
endmodule
