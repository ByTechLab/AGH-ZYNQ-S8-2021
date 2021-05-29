`timescale 1ns / 1ps

module parallel_adder_16x4
    #(
     parameter M = 32, // ilosc liczb do sumowania
     parameter N = 32 // d³ugosc liczb do sumowania
    )
    (
    input wire [M-1:0] data_bits,
    input wire clk,
    input wire rst,
    
    output reg [36:0] result,
    output reg data_rdy
    );
    
    reg [M-1:0] data_bits_input_reg;
    reg [5-1:0] counter_reg;
    reg [5-1:0] counter_reg_delayed;
    
    wire [6-1:0] ones;
    wire [36:0] shifted_data;
    
    wire [36:0] new_result;
    
    always @(posedge clk)
    begin
      if (rst) 
          begin
            data_bits_input_reg <= 0;
            data_rdy <= 1'b0;
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
            counter_reg <= 1'b0;
            counter_reg_delayed <= 0;
          end
      else 
          begin
            counter_reg <= counter_reg + 1'b1;
            counter_reg_delayed <= counter_reg;
          end
    end
    
    always@(*)
    begin
        if (counter_reg_delayed == 31)
        begin
            data_rdy = 1'b1;
        end
        else
        begin
            data_rdy = 1'b0;
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
            result <= 1'b0;
          end
      else 
          begin
            result <= new_result;
          end
    end
    
    carry_lookahead_adder #(.WIDTH(37)) carry_lookahead_inst
    (
         .i_add1(shifted_data),
         .i_add2(result),
         .o_result(new_result)
     );
    
    
endmodule
