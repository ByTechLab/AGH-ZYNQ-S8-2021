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


module series_adder_file_TB;

int fd;
string line;
int i;

string data_str[M-1:0];
string result_str;

int data[M-1:0];
int result_target;

initial begin

#50 

fd = $fopen("test", "r");
if(fd != 0) begin
    while (!$feof(fd)) begin
        $fgets(line, fd);
        $sscanf(line,"%s %s %s %s %s %s %s %s %s", data_str[0],data_str[1],data_str[2],data_str[3],data_str[4],data_str[5],data_str[6],data_str[7],result_str);
        
        for(i = 0; i<M; i=i+1) begin
            data[i] = data_str[i].atoi();
            result_target = result_str.atoi();
        end
        
        #10
        data_vld <= 1'b1;
        #10
        data_vld <= 1'b0;
        wait (result_vld == 1'b1);
        if(result == result_target) begin
            $display("Comparison correct");
        end
        else begin
            $display("Comparison error");
        end
    end
    $display("Simulation finished");
    $finish;
end

end

`define PACK_ARRAY(PK_WIDTH, PK_LEN, PK_SRC, PK_DEST) genvar i_unpk; generate for (i_unpk = 0; i_unpk<PK_LEN; i_unpk = i_unpk+1) begin assign PK_DEST[PK_WIDTH*i_unpk+PK_WIDTH-1:PK_WIDTH*i_unpk] = PK_SRC[i_unpk]; end endgenerate
`define UNPACK_ARRAY(PK_WIDTH, PK_LEN, PK_SRC, PK_DEST) genvar i_pack; generate for(i_pack=0; i_pack<PK_LEN; i_pack=i_pack+1) begin assign PK_DEST[i_pack] = PK_SRC[i_pack*PK_WIDTH+PK_WIDTH-1:i_pack*PK_WIDTH]; end endgenerate

parameter M = 8;

reg clk, rst_p;

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
    #10 
    rst_p <= 1'b0; 
end


always
    #5 clk <= ~clk; 
 
 


series_adder_data_streamer #(M) u_series_adder_data_streamer
(
    .clk(clk),
    .rst_p(rst_p),
    .data_vld(data_vld),
    .data_i(data_packed),
    .data_rdy(data_ready),
    .result_o(result),
    .result_vld(result_vld)
);
    
endmodule
