`timescale 1ns / 1ps

module number_of_ones_TB;

    // Inputs
    reg [15:0] A;

    // Outputs
    wire [4:0] ones;

    // Instantiate the Unit Under Test (UUT)
    number_of_ones uut (
        .A(A), 
        .ones(ones)
    );

    initial begin
        A = 16'hFFFF;   #100;
        A = 16'hF56F;   #100;
        A = 16'h3FFF;   #100;
        A = 16'h0001;   #100;
        A = 16'hF10F;   #100;
        A = 16'h7822;   #100;
        A = 16'h7ABC;   #100;   
    end
      
endmodule