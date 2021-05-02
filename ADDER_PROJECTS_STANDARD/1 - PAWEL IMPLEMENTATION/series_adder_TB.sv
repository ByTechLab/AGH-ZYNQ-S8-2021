`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2021 13:35:57
// Design Name: 
// Module Name: series_adder_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module series_adder_TB;

parameter M = 8;
parameter N = 32;

reg clk, rst_p;

reg [N-1:0] d0,d1,d2,d3,d4,d5,d6,d7;

reg [M-1:0] data;
reg data_vld;
wire result_vld;
wire [$clog2(M)+N-1:0] result;

int i;

initial begin
    clk <= 1'b1;
    rst_p <= 1'b1;
    data_vld <= 1'b0;
    d0 <= 20000;
    d1 <= 100000;
    d2 <= 1000000;
    d3 <= 1000000;
    d4 <= 1000000;
    d5 <= 1000000;
    d6 <= 1000000;   
    d7 <= 1000000;   
    #10 
    rst_p <= 1'b0; 
end


always
    #5 clk <= ~clk; 
 
 
//stream input data
initial begin

#50
for(i = 0; i<32; i++) begin
    data <= {d0[i], d1[i], d2[i], d3[i], d4[i], d5[i], d6[i], d7[i]};
    data_vld <= 1'b1;
    #10;
end
data_vld <= 1'b0;

end
   
series_adder #(M, N) dut_series_adder
(
    .clk(clk),
    .rst_p(rst_p),
    .data_vld(data_vld),
    .data(data),
    .result_vld(result_vld),
    .result(result)
);
    
endmodule
