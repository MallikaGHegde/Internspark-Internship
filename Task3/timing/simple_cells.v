module INV(input A, output Y);
    assign Y = ~A;
endmodule

module AND2(input A, input B, output Y);
    assign Y = A & B;
endmodule

module OR2(input A, input B, output Y);
    assign Y = A | B;
endmodule

module XOR2(input A, input B, output Y);
    assign Y = A ^ B;
endmodule
