`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2021 21:32:24
// Design Name: 
// Module Name: series_adder_axi_wrapper
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


module series_adder_axi_wrapper
    (

    input wire clk, // OK - Implemented
    input wire rst_p, // OK - Implemented
    
    output wire data_rdy,
    input wire data_vld, // OK - Implemented
    input wire [32-1:0] data_i, // OK - Implemented
    
    output reg [32-1:0] result_o, // OK - Implemented
    output reg result_vld, // OK - Implemented
    input wire result_rdy,
    
    output reg module_idle, // OK - Implemented
    output reg result_first, // OK - Implemented
    output reg result_last // OK - Implemented
    );
    
assign data_rdy = data_vld;  // nie mo�emy przyj�� danych za wcze�nie

reg [16-1:0] num_bytes_r;    
reg [32-1:0] data_r;
reg data_r_vld;

reg [3-1:0] bit_ctr;
reg [16-1:0] byte_ctr;
reg last_bit;
    
always @(posedge clk) begin

    data_r <= data_i;
    data_r_vld <= 1'b0;

    if(data_vld == 1'b1) begin
        if(module_idle == 1'b1) begin
            num_bytes_r <= data_i;
            module_idle <= 1'b0;
        end
        else begin
            data_r_vld <= 1'b1;
            if((bit_ctr == 7) & (byte_ctr == num_bytes_r-1)) begin
                byte_ctr <= 0;
                bit_ctr <= 0;
                module_idle <= 1'b1;
            end
            else if(bit_ctr == 7) begin
                byte_ctr <= byte_ctr + 1;
                bit_ctr <= bit_ctr + 1;
            end
            else begin
                bit_ctr <= bit_ctr + 1;
            end
        
        end
    
    end

    if(rst_p == 1'b1) begin
        module_idle <= 1'b1;
        data_r_vld <= 1'b0;
        byte_ctr <= 0;
        bit_ctr <= 0;
    end
    
end

reg [2-1:0] byte_out_ctr;
wire result_byte_vld;
wire result_byte_lsb;
wire result_byte_msb;
wire [8-1:0] result_byte;
reg first_uint;

always @(posedge clk) begin
    
    result_vld <= 1'b0;
    result_first <= 1'b0;
    result_last <= 1'b0;

    if(result_byte_vld) begin
        
        if(byte_out_ctr == 0) begin
            result_o <= result_byte;
        end
        else begin
            result_o <= result_o + (result_byte << (8*byte_out_ctr));
        end
        
        if((byte_out_ctr == 3) | (result_byte_msb == 1'b1)) begin
//        if((byte_out_ctr == 3) & (result_byte_vld == 1'b1)) begin // zla zmiana - trzeba odczyta� dwa bajty
            result_vld <= 1'b1;
            if(first_uint == 1'b1) begin
                result_first <= 1'b1;
            end
        end
        
        if(result_byte_msb == 1'b1) begin
            byte_out_ctr <= 0;
            result_last <= 1'b1;
        end
        else begin
            byte_out_ctr <= byte_out_ctr + 1;
        end
        
        if(result_byte_lsb) begin
            first_uint <= 1'b1;
        end
        else if((byte_out_ctr == 3) | (result_byte_msb == 1'b1)) begin
            first_uint <= 1'b0;
        end
        
    end
    
    if(rst_p == 1'b1) begin
        byte_out_ctr <= 0;
        result_vld <= 1'b0;
        result_first <= 1'b0;
        result_last <= 1'b0;
        first_uint <= 1'b0;
    end

end

series_adder #(32) u_series_adder
(
    .clk(clk),
    .rst_p(rst_p),
    .num_bytes_i(num_bytes_r),
    .input_vld(data_r_vld),
    .data_i(data_r),
    .result_byte_vld(result_byte_vld),
    .result_byte_lsb(result_byte_lsb),
    .result_byte_msb(result_byte_msb),
    .result_byte_o(result_byte)
);

endmodule
