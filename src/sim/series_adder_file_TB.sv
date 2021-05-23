`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2021 13:35:57
// Design Name: 
// Module Name: series_adder_file_TB
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

function automatic void parse (
  output string out [],
  input string in,
  input byte separator = "|"
);

  automatic int index [$];
  foreach (in[i]) begin
    if (in[i] == separator) begin
      index.push_back(i-1);
      index.push_back(i+1);
    end
  end
  index.push_front(0);
  index.push_back(in.len()-1);
  
  out = new[index.size()/2];
  foreach (out[i]) begin
    out[i] = in.substr(index[2*i], index[2*i+1]);
  end

endfunction

parameter M = 8;

int fd;
string line;
int i;

string data_str[];
string result_str;
string pch;

int data[M-1:0];
int result_target;
int line_ctr;
int error_ctr;

initial begin

line_ctr = 0;
error_ctr = 0;

#50 

fd = $fopen("../../../../../src/sim/test_vector", "r");

$display("Simulation started");

if(fd != 0) begin
    while (!$feof(fd)) begin
        $fgets(line, fd);
     
        parse(data_str, line, " ");
       
        if(data_str.size != M+1) begin
            $display("Fatal error, TV line %d, TV size = %d, expected TV size = %d", line_ctr, data_str.size, M+1);
            $finish;
        end
        result_str = data_str[M];
                
        for(i = 0; i<M; i=i+1) begin
            data[i] = data_str[i].atoi();
            result_target = result_str.atoi();
        end
        
        #10
        data_vld <= 1'b1;
        #10
        data_vld <= 1'b0;
        wait (result_vld == 1'b1);
            $display("result = %d, expected result = %d", result, result_target);            
        if(result == result_target) begin
            $display("Comparison correct");
        end
        else begin
            $display("Comparison error");
            error_ctr = error_ctr + 1;
        end
        #500
        line_ctr = line_ctr+1;
       
    end
    $display("Simulation finished");
    if(error_ctr == 0) begin
        $display("Simulation passed");
    end
    else begin
        $display("Simulation failed, number of errors = %d", error_ctr);
    end
    $finish;
end
else begin
    $display("Fatal error, error opening test vector file");
    $finish;
end

end

`define PACK_ARRAY(PK_WIDTH, PK_LEN, PK_SRC, PK_DEST) genvar i_unpk; generate for (i_unpk = 0; i_unpk<PK_LEN; i_unpk = i_unpk+1) begin assign PK_DEST[PK_WIDTH*i_unpk+PK_WIDTH-1:PK_WIDTH*i_unpk] = PK_SRC[i_unpk]; end endgenerate
`define UNPACK_ARRAY(PK_WIDTH, PK_LEN, PK_SRC, PK_DEST) genvar i_pack; generate for(i_pack=0; i_pack<PK_LEN; i_pack=i_pack+1) begin assign PK_DEST[i_pack] = PK_SRC[i_pack*PK_WIDTH+PK_WIDTH-1:i_pack*PK_WIDTH]; end endgenerate

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
 
 
series_adder_axi_streamer #(M) u_series_adder_axi_streamer
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
