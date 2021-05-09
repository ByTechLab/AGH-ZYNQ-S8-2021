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

`define PACK_ARRAY(PK_WIDTH, PK_LEN, PK_SRC, PK_DEST) genvar i_unpk; generate for (i_unpk = 0; i_unpk<PK_LEN; i_unpk = i_unpk+1) begin assign PK_DEST[PK_WIDTH*i_unpk+PK_WIDTH-1:PK_WIDTH*i_unpk] = PK_SRC[i_unpk]; end endgenerate
`define UNPACK_ARRAY(PK_WIDTH, PK_LEN, PK_SRC, PK_DEST) genvar i_pack; generate for(i_pack=0; i_pack<PK_LEN; i_pack=i_pack+1) begin assign PK_DEST[i_pack] = PK_SRC[i_pack*PK_WIDTH+PK_WIDTH-1:i_pack*PK_WIDTH]; end endgenerate


parameter M = 8;

reg clk, rst_p;

reg [32-1:0] data [0:M-1];

reg data_vld;
wire result_vld;
wire [40-1:0] result;

wire [M*32-1:0] data_packed;

wire data_ready;

`PACK_ARRAY(32, M, data, data_packed)

initial begin
    clk <= 1'b1;
    rst_p <= 1'b1;
    data_vld <= 1'b0;
    data[0] <= 20000;
    data[1] <= 100000;
    data[2] <= 1000000;
    data[3] <= 1000000;
    data[4] <= 1000000;
    data[5] <= 1000000;
    data[6] <= 1000000;   
    data[7] <= 1000000;   
    #10 
    rst_p <= 1'b0; 
end


always
    #5 clk <= ~clk; 
 
 
//stream input data
initial begin

#50

data_vld <= 1'b1;
#10
data_vld <= 1'b0;

end

   
series_adder_data_streamer #(M) u_series_adder_data_streamer
(
    .clk(clk),
    .rst_p(rst_p),
    .data_vld(data_vld),
    .data_i(data_packed),
    .data_rdy(data_ready),
    .result_o(),
    .result_vld(result_vld)
);
    
endmodule
