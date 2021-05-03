`timescale 1ns / 1ps


module bit_shift_module_TB();
     // Inputs
    reg [4:0] num_of_ones;
    reg [1:0] shift_by_n_pos;

    // Outputs
    wire [7:0] shifted_data;

    // Instantiate the Unit Under Test (UUT)
    bit_shift_module DUT (
        .num_of_ones(num_of_ones),
        .shift_by_n_pos(shift_by_n_pos),
        .shifted_data(shifted_data)
    );

    initial begin
        num_of_ones = 5'b11011;  
        shift_by_n_pos = 0;
        #100;
        num_of_ones = 5'b11011;  
        shift_by_n_pos = 1;
        #100;
        num_of_ones = 5'b11011;  
        shift_by_n_pos = 2;
        #100;
        num_of_ones = 5'b11011;  
        shift_by_n_pos = 3;
        #100;
    end
    
endmodule
