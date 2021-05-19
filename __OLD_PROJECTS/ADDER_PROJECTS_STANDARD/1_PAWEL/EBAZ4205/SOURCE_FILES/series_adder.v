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
// N - length of each summed value
// Output vector length - N + log2(M)
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
    input wire data_vld,
    input wire [M-1:0] data,
    output reg result_vld,
    output reg [$clog2(M)+N-1:0] result
    
);  
parameter M = 32;
parameter N = 8;


wire [$clog2(M):0] input_sum;
reg [$clog2(M):0] partial_sum_reg;
reg [$clog2(N):0] counter;
reg [$clog2(M)+N-1:0] result_temp;


//register inputs
reg [M-1:0] data_reg;
reg data_vld_reg;

always @(posedge clk) begin
    data_reg <= data;
    data_vld_reg <= data_vld;
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

//increment bit counter
always @(posedge clk) begin
    if(counter == N-1) begin
        counter <= 0;
    end
    else if(data_vld_reg == 1'b1) begin
        counter <= counter +1;
    end
    
    if(rst_p == 1'b1) begin
        counter <= 0;
    end
end 

//set current bit in result vector and buffer carry bits 
always @(posedge clk) begin
    if(counter == 0) begin
        partial_sum_reg <= input_sum >> 1;
        result_temp[counter] <= input_sum[0];
    end
    else begin
        partial_sum_reg <= (partial_sum_reg + input_sum) >> 1;
        result_temp[counter] <= partial_sum_reg[0] ^ input_sum[0];
    end;
    
    if(counter == N-1) begin
        result <= {partial_sum_reg + input_sum,result_temp[N-2:0]};
        result_vld <= 1;
    end
    else begin
        result_vld <= 0;
    end
    
    if(rst_p == 1'b1) begin
        result_vld <= 0;
    end
 
end

endmodule
