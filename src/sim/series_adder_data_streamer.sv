`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2021 00:06:31
// Design Name: 
// Module Name: series_adder_data_streamer
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


module series_adder_data_streamer(
    
    input wire clk,
    input wire rst_p,
    input wire data_vld,
    input wire [M*32-1:0] data_i,
    output reg data_rdy,
    output reg [40-1:0] result_o,
    output reg result_vld    
);  

parameter M = 32;

`define PACK_ARRAY(PK_WIDTH, PK_LEN, PK_SRC, PK_DEST) genvar i_unpk; generate for (i_unpk = 0; i_unpk<PK_LEN; i_unpk = i_unpk+1) begin assign PK_DEST[PK_WIDTH*i_unpk+PK_WIDTH-1:PK_WIDTH*i_unpk] = PK_SRC[i_unpk]; end endgenerate
`define UNPACK_ARRAY(PK_WIDTH, PK_LEN, PK_SRC, PK_DEST) genvar i_pack; generate for(i_pack=0; i_pack<PK_LEN; i_pack=i_pack+1) begin assign PK_DEST[i_pack] = PK_SRC[i_pack*PK_WIDTH+PK_WIDTH-1:i_pack*PK_WIDTH]; end endgenerate

reg [M*32-1:0] data_r;
wire [32-1:0] data_unpacked [0:M-1];
wire [M-1:0] data_stream [32-1:0];
reg [4:0] data_in_ctr;
reg [2:0] data_out_ctr;
reg stream_data_vld;
wire [8-1:0] result_byte;
wire result_byte_vld;

`UNPACK_ARRAY(32,M,data_r,data_unpacked)

`define PACK_STREAM(STR_LEN, STR_WIDTH, SRC, DEST) genvar j_str,i_str; generate for(j_str=0; j_str<STR_WIDTH; j_str=j_str+1) for(i_str=0; i_str<STR_LEN; i_str=i_str+1) assign DEST[i_str][j_str] = SRC[j_str][i_str]; endgenerate

`PACK_STREAM(32, M, data_unpacked, data_stream)

reg     [1:0]state;
parameter IDLE = 0, STREAMING = 1, GET_LAST_BYTE = 2;

always @(posedge clk) begin

stream_data_vld <= 1'b0;
result_vld <= 1'b0;

case (state)

   IDLE: begin
      if(data_vld == 1'b1) begin
            state <= STREAMING;
            data_r <= data_i;
            data_in_ctr <= 0;
            data_out_ctr <= 0;
            data_rdy <= 1'b0;
            result_o <= 0;
            stream_data_vld <= 1'b1;
      end
   end
   
   STREAMING: begin
        
        
        if(data_in_ctr == 31) begin
            state <= GET_LAST_BYTE;            
        end
        else begin
            data_in_ctr <= data_in_ctr + 1;
            stream_data_vld <= 1'b1;
        end
        
        if(result_byte_vld == 1'b1) begin
            data_out_ctr <= data_out_ctr + 1;
            result_o <= result_o + (result_byte << (8*data_out_ctr));
        end
   end

   GET_LAST_BYTE: begin
   
        if(result_byte_vld == 1'b1) begin
            result_o <= result_o + (result_byte << (8*data_out_ctr));
            result_vld <= 1'b1;
            state <= IDLE;
            data_rdy <= 1'b1;
        end
   end
   
endcase

    if(rst_p == 1'b1) begin
        state <= IDLE;
        data_rdy <= 1'b1;
        stream_data_vld <= 1'b0;
        result_vld <= 1'b0;
    end 

end


series_adder #(M) dut_series_adder
(
    .clk(clk),
    .rst_p(rst_p),
    .num_bytes_i(16'b0000000000000100),
    .input_vld(stream_data_vld),
    .data_i(data_stream[data_in_ctr]),
    .result_byte_vld(result_byte_vld),
    .result_byte_lsb(),
    .result_byte_msb(),
    .result_byte_o(result_byte)
);


endmodule
