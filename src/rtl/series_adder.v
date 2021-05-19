`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Pawel Wargacki
// 
// Create Date: 13.04.2021 12:38:22
// Design Name: 
// Module Name: series_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// M - number of values to sum
//  
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Revision 1.00 - First working version
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

// Sumowanie M liczb N bitowych.  
// Projekt polega na realizacji procesora który na wejœciu otrzymuje równoczeœnie M bitów (np. 32 bity). 
// S¹ to pojedyncze bity M liczb, któych kolejne bity b(0), b(1), b(2), b(3), ..., b(N-1) s¹ podawane na wejœcie procesora w kolejnych przes³aniach z CPU. 
// Zadaniem bloku dedykwanego jest sumowanie liczb w kolejnych krokach i udostêpnienie CPU do odczytu wyniku sumy.   


module series_adder(
    
    input wire clk,
    input wire rst_p,
    input wire input_vld,
    input wire [16-1:0]num_bytes_i,
    input wire [M-1:0] data_i,
    output reg result_byte_vld,
    output reg result_byte_lsb,
    output reg result_byte_msb,
    output reg [8-1:0] result_byte_o
    
);  

parameter M = 32;

wire [$clog2(M):0] input_sum;
reg [$clog2(M):0] partial_sum_reg;

reg [16-1:0] byte_ctr;
reg [4-1:0] bit_ctr;
reg [8-1:0] result_byte_r;
reg send_carry_byte;

//register inputs
reg module_idle;
reg [16-1:0] num_bytes_r;
reg [M-1:0] data_reg;
reg data_vld_reg;
reg last_bit_in_byte;
reg last_byte;

always @(posedge clk) begin
    data_reg <= data_i;
    data_vld_reg <= input_vld;
    if(module_idle == 1'b1) begin
        num_bytes_r <= num_bytes_i;
    end
    if(rst_p == 1'b1) begin
        data_reg <= 0;
        data_vld_reg <= 1'b0;
    end
end

//sum all incomming bits
genvar i;
wire [$clog2(M):0] summation_steps [M-2:0];
generate
    assign summation_steps[0] = data_reg[0] + data_reg[1];
    for(i=0; i<M-2; i=i+1) begin
        assign summation_steps[i+1] = summation_steps[i] + data_reg[i+2];
    end
endgenerate

assign input_sum = summation_steps[M-2];

//increment bit counters
always @(posedge clk) begin

    last_bit_in_byte <= 1'b0;
    last_byte <= 1'b0;
    
    if(data_vld_reg == 1'b1) begin        
        module_idle <= 1'b0;
        if(bit_ctr == 7) begin
            bit_ctr <= 0;
            last_bit_in_byte <= 1'b1;
            if(byte_ctr == num_bytes_r - 1) begin
                byte_ctr <= 0;
                last_byte <= 1'b1;
                module_idle <= 1'b1;
            end
            else
                byte_ctr <= byte_ctr + 1;
        end
        else
            bit_ctr <= bit_ctr + 1;
    end
    
    if(rst_p == 1'b1) begin
        bit_ctr <= 0;
        byte_ctr <= 0;
        module_idle <= 1'b1;
        last_bit_in_byte <= 1'b0;
        last_byte <= 1'b0;
    end
end 

//set current bit in result vector and buffer carry bits 
always @(posedge clk) begin

    send_carry_byte <= last_byte;
    
    if((bit_ctr == 0) & (byte_ctr == 0)) begin
        partial_sum_reg <= input_sum >> 1;
        result_byte_r[bit_ctr] <= input_sum[0];
    end
    else begin
        partial_sum_reg <= (partial_sum_reg + input_sum) >> 1;
        result_byte_r[bit_ctr] <= partial_sum_reg[0] ^ input_sum[0];
    end;
    
    //send result byte
    if(last_bit_in_byte == 1'b1) begin
        result_byte_o <= result_byte_r;
    end
    else if(send_carry_byte == 1'b1) begin
        result_byte_o <= partial_sum_reg;
    end 
    
    //send lsb, msb signals
    if(send_carry_byte == 1'b1) begin
        result_byte_lsb <= 1'b0;
        result_byte_msb <= 1'b1;
    end
    else if((last_bit_in_byte == 1'b1) & (byte_ctr == 1)) begin
        result_byte_lsb <= 1'b1;
        result_byte_msb <= 1'b0;
    end
    else begin
        result_byte_lsb <= 1'b0;
        result_byte_msb <= 1'b0;
    end
    
    //send vld signal
    if((last_bit_in_byte == 1'b1) | (send_carry_byte == 1'b1))
        result_byte_vld <= 1'b1;
    else
        result_byte_vld <= 1'b0;
   
    if(rst_p == 1'b1) begin
        result_byte_vld <= 0;
        result_byte_lsb <= 1'b0;
        result_byte_msb <= 1'b0;
        send_carry_byte <= 1'b0;
    end
 
end

endmodule
