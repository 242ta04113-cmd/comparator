// 2-Bit Comparator
module comparator (
    input  wire [1:0] A,
    input  wire [1:0] B,
    output wire A_greater_B,
    output wire A_equal_B,
    output wire A_less_B
);

assign A_greater_B = (A > B);
assign A_equal_B   = (A == B);
assign A_less_B    = (A < B);

endmodule