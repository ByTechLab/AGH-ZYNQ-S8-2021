`timescale 1ns / 1ps

module parallel_adder_16x4(
    input wire [15:0] data_bits,
    input wire clk,
    input wire rst,
    
    output reg [7:0] result
    );
    
    parameter WIDTH = 8;
    
    reg [15:0] data_bits_input_reg;
    reg [1:0] counter_reg;
    reg [1:0] counter_reg_delayed;
    
    wire [4:0] ones;
    wire [7:0] shifted_data;
    
    wire [7:0] new_result;
    
    always @(posedge clk)
    begin
      if (rst) 
          begin
            data_bits_input_reg <= 0;
          end
      else 
          begin
            data_bits_input_reg <= data_bits;
          end
    end

    always @ (posedge clk) 
    begin
      if (rst) 
          begin
            counter_reg <= 'b0;
            counter_reg_delayed <= 0;
          end
      else 
          begin
            counter_reg <= counter_reg + 1'b1;
            counter_reg_delayed <= counter_reg;
          end
    end
    
    number_of_ones ones_counter 
     (
        .A(data_bits_input_reg), 
        .ones(ones)
     );
     
    bit_shift_module shifter 
    (
        .num_of_ones(ones),
        .shift_by_n_pos(counter_reg_delayed),
        .shifted_data(shifted_data)
    );
    
    always @ (negedge clk) 
    begin
      if (rst) 
          begin
            result <= 'b0;
          end
      else 
          begin
            result <= new_result;
          end
    end
    
    carry_lookahead_adder #(.WIDTH(WIDTH)) carry_lookahead_inst
    (
         .i_add1(shifted_data),
         .i_add2(result),
         .o_result(new_result)
     );
    
    
endmodule
