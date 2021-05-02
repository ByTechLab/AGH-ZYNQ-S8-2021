`timescale 1ns / 1ps

 
module carry_lookahead_adder_tb ();
 
  parameter WIDTH = 16;
 
  reg [WIDTH-1:0] r_ADD_1 = 0;
  reg [WIDTH-1:0] r_ADD_2 = 0;
  wire [WIDTH:0]  w_RESULT;
  wire clk;
   
  carry_lookahead_adder #(.WIDTH(WIDTH)) carry_lookahead_inst
    (
     .i_add1(r_ADD_1),
     .i_add2(r_ADD_2),
     .o_result(w_RESULT)
     );
 
  initial
    begin
      #10;
      r_ADD_1 = 16'b0000000000000000;
      r_ADD_2 = 16'b0000000000000001;
      #10;
      r_ADD_1 = 16'b0000000100000000;
      r_ADD_2 = 16'b0000000000001000;
      #10;
      r_ADD_1 = 16'b0000010000000000;
      r_ADD_2 = 16'b0000000100101000;
      #10;
      r_ADD_1 = 16'b0010000000001000;
      r_ADD_2 = 16'b0000000000000000;
      #10;
    end
 
endmodule // carry_lookahead_adder_tb