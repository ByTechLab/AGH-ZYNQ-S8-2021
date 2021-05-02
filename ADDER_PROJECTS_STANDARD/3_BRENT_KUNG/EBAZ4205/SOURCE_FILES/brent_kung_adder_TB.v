`timescale 1ns / 1ps

 
module carry_lookahead_adder_tb ();
 
  parameter WIDTH = 64;
 
  reg [WIDTH-1:0] r_ADD_1 = 0;
  reg [WIDTH-1:0] r_ADD_2 = 0;
  wire [WIDTH:0]  w_RESULT;
  wire clk;
   
  Brent_Kung_Adder Brent_Kung_Adder_inst
    (
     .A(r_ADD_1),
     .B(r_ADD_2),
     .S(w_RESULT)
     );
 
  initial
    begin
      #10;
      r_ADD_1 = 64'd1;
      r_ADD_2 = 64'd1;
      #10;
      r_ADD_1 = 64'd1123;
      r_ADD_2 = 64'd1123;
      #10;
    end
 
endmodule // carry_lookahead_adder_tb