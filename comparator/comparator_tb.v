// Testbench for 2-Bit Comparator
module comparator_tb;

reg [1:0] A;
reg [1:0] B;

wire A_greater_B;
wire A_equal_B;
wire A_less_B;

comparator uut (
    .A(A),
    .B(B),
    .A_greater_B(A_greater_B),
    .A_equal_B(A_equal_B),
    .A_less_B(A_less_B)
);

initial begin

    $display(" A  B | A>B  A=B  A<B");
    $display("----------------------");

    A = 2'b00; B = 2'b00;
    #10;
    $display("%b  %b |  %b    %b    %b",
             A, B, A_greater_B, A_equal_B, A_less_B);

    A = 2'b01; B = 2'b00;
    #10;
    $display("%b  %b |  %b    %b    %b",
             A, B, A_greater_B, A_equal_B, A_less_B);

    A = 2'b00; B = 2'b01;
    #10;
    $display("%b  %b |  %b    %b    %b",
             A, B, A_greater_B, A_equal_B, A_less_B);

    A = 2'b10; B = 2'b01;
    #10;
    $display("%b  %b |  %b    %b    %b",
             A, B, A_greater_B, A_equal_B, A_less_B);

    A = 2'b01; B = 2'b10;
    #10;
    $display("%b  %b |  %b    %b    %b",
             A, B, A_greater_B, A_equal_B, A_less_B);

    A = 2'b11; B = 2'b11;
    #10;
    $display("%b  %b |  %b    %b    %b",
             A, B, A_greater_B, A_equal_B, A_less_B);

    $finish;

end

endmodule