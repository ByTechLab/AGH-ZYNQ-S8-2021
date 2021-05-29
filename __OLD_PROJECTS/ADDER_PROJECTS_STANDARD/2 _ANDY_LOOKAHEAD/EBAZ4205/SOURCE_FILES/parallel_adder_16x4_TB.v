`timescale 1ns / 1ps

module parallel_adder_16x4_TB;

parameter M = 32; // ilosc liczb do sumowania
parameter N = 32; // d³ugosc liczb do sumowania

reg clk, rst;

reg [N-1:0] d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,d31;
reg [M-1:0] data;

wire [36:0] result;

wire data_rdy;

int i;

initial begin
    d0 <= 100000000;
    d1 <= 100000000;
    d2 <= 100000000;
    d3 <= 100000000;
    d4 <= 100000000;
    d5 <= 100000000;
    d6 <= 100000000;   
    d7 <= 100000000;
    d8 <= 100000000;
    d9 <= 100000000;
    d10 <= 100000000;
    d11 <= 100000000;
    d12 <= 100000000;
    d13 <= 100000000;
    d14 <= 100000000;   
    d15 <= 100000000;
    d16 <= 100000000;
    d17 <= 100000000;
    d18 <= 100000000;
    d19 <= 100000000;
    d20 <= 100000000;
    d21 <= 100000000;
    d22 <= 100000000;  
    d23 <= 100000000;
    d24 <= 100000000;
    d25 <= 100000000;
    d26 <= 100000000;
    d27 <= 100000000;
    d28 <= 100000000;
    d29 <= 100000000;
    d30 <= 100000000;   
    d31 <= 100000000;    

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
    for(i = 0; i<32; i++) begin
        data <= {d0[i], d1[i], d2[i], d3[i], d4[i], d5[i], d6[i], d7[i], d8[i], d9[i], d10[i], d11[i], d12[i], d13[i], d14[i], d15[i], d16[i], d17[i], d18[i], d19[i], d20[i], d21[i], d22[i], d23[i], d24[i], d25[i], d26[i], d27[i], d28[i], d29[i], d30[i], d31[i]};
        #10;
    end
end
 
parallel_adder_16x4 DUT
(
    .data_bits(data),
    .clk(clk),
    .rst(rst),
    
    .result(result),
    .data_rdy(data_rdy)
 );
    
endmodule

