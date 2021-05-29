`timescale 1ns / 1ps

module bit_shift_module(
    input wire [5:0] num_of_ones,
    input wire [5-1:0] shift_by_n_pos,
    output wire [36:0] shifted_data
    );
    
    assign shifted_data = num_of_ones << shift_by_n_pos;
    
endmodule
