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
  $dumpfile("gate.vcd");
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
