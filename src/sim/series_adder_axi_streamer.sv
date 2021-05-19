`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2021 00:06:31
// Design Name: 
// Module Name: series_axi_data_streamer
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


module series_adder_axi_streamer(
    
    input wire clk,
    input wire rst_p,
    input wire data_vld,
    input wire [M*32-1:0] data_i,
    output reg data_rdy,
    output reg [40-1:0] result_o,
    output reg result_vld    
);  

parameter M = 8; 

`define PACK_ARRAY(PK_WIDTH, PK_LEN, PK_SRC, PK_DEST) genvar i_unpk; generate for (i_unpk = 0; i_unpk<PK_LEN; i_unpk = i_unpk+1) begin assign PK_DEST[PK_WIDTH*i_unpk+PK_WIDTH-1:PK_WIDTH*i_unpk] = PK_SRC[i_unpk]; end endgenerate
`define UNPACK_ARRAY(PK_WIDTH, PK_LEN, PK_SRC, PK_DEST) genvar i_pack; generate for(i_pack=0; i_pack<PK_LEN; i_pack=i_pack+1) begin assign PK_DEST[i_pack] = PK_SRC[i_pack*PK_WIDTH+PK_WIDTH-1:i_pack*PK_WIDTH]; end endgenerate

reg [M*32-1:0] data_r;
wire [32-1:0] data_unpacked [0:M-1];
wire [M-1:0] data_stream [32-1:0];

reg [6:0] data_in_ctr;

reg [32-1:0] axi_data;
reg axi_data_vld;
wire [32-1:0] axi_result;
wire axi_result_vld;
reg packet_ctr;

`UNPACK_ARRAY(32,M,data_r,data_unpacked)

`define PACK_STREAM(STR_LEN, STR_WIDTH, SRC, DEST) genvar j_str,i_str; generate for(j_str=0; j_str<STR_WIDTH; j_str=j_str+1) for(i_str=0; i_str<STR_LEN; i_str=i_str+1) assign DEST[i_str][j_str] = SRC[j_str][i_str]; endgenerate

`PACK_STREAM(32, M, data_unpacked, data_stream)

reg     [1:0]state;
parameter IDLE = 0, STREAMING = 1, WAIT_FOR_LAST_PACKET = 2;

always @(posedge clk) begin

    result_vld <= 1'b0;
    
    if(axi_result_vld == 1'b1) begin
        if(packet_ctr == 1'b0) begin
            result_o <= axi_result;
            packet_ctr <= 1'b1;
        end
        else begin
            result_o <= result_o + (axi_result<<32);
            packet_ctr <= 1'b0;
            result_vld <= 1'b1;
        end
    end
    
    if(rst_p == 1'b1) begin
        packet_ctr <= 1'b0;
        result_vld <= 1'b0;
    end 
end

always @(posedge clk) begin

axi_data_vld <= 1'b0;

case (state)

   IDLE: begin
        if(data_vld == 1'b1) begin
            data_r <= data_i;
            state <= STREAMING;
            axi_data <= 4;
            axi_data_vld <= 1'b1;
            data_in_ctr <= 0;
            data_rdy <= 1'b0;
        end
   end
   
   STREAMING: begin
        axi_data_vld <= 1'b1;
        axi_data <= data_stream[data_in_ctr];
        if(data_in_ctr == 32) begin
            state <= WAIT_FOR_LAST_PACKET;
            axi_data_vld <= 1'b0;
        end
        else begin
            data_in_ctr <= data_in_ctr + 1;
        end
   end

   WAIT_FOR_LAST_PACKET: begin
        if((axi_result_vld == 1'b1) & (packet_ctr == 1'b1)) begin
            state <= IDLE;
            data_rdy <= 1'b1;
        end
   end
   
endcase

    if(rst_p == 1'b1) begin
        state <= IDLE;
        axi_data_vld <= 1'b0;
        data_rdy <= 1'b1;
    end 

end


series_adder_axi_wrapper #(M) dut_series_adder_axi_wrapper
(

    .clk(clk),
    .rst_p(rst_p),
    .module_idle(),
    .data_rdy(),
    .data_vld(axi_data_vld),
    .data_i(axi_data),
    .result_o(axi_result),
    .result_first(),
    .result_last(),
    .result_vld(axi_result_vld),
    .result_rdy(1'b1)
);


endmodule
