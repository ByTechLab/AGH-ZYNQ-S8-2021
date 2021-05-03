`timescale 1ns / 1ps

module parallel_adder_16x4_TB;

parameter M = 16;
parameter N = 4;

reg clk, rst;

reg [N-1:0] d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15;
reg [M-1:0] data;

wire [7:0] result;

int i;

initial begin
    d0 <= 2;
    d1 <= 1;
    d2 <= 2;
    d3 <= 3;
    d4 <= 4;
    d5 <= 6;
    d6 <= 7;   
    d7 <= 1;
    d8 <= 2;
    d9 <= 1;
    d10 <= 2;
    d11 <= 3;
    d12 <= 4;
    d13 <= 6;
    d14 <= 7;   
    d15 <= 1;   

    clk <= 1'b0;
    rst <= 1'b0;
    #5
    rst <= 1'b1;
    #10 
    rst <= 1'b0;
end


always
    #5 clk <= ~clk; 
 
 
//stream input data
initial begin
    #15
    for(i = 0; i<4; i++) begin
        data <= {d0[i], d1[i], d2[i], d3[i], d4[i], d5[i], d6[i], d7[i], d8[i], d9[i], d10[i], d11[i], d12[i], d13[i], d14[i], d15[i]};
        #10;
    end
end
 
parallel_adder_16x4 DUT
(
    .data_bits(data),
    .clk(clk),
    .rst(rst),
    
    .result(result)
 );
    
endmodule

