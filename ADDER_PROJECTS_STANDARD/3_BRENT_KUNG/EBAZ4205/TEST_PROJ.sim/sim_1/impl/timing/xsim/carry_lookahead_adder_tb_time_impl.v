// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun May  2 23:16:23 2021
// Host        : DESKTOP-CB2MAD1 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               {C:/Users/lacze/Desktop/AGH-FPGA-S8/AGH-ZYNQ-S8-2021/ADDER_PROJECTS_STANDARD/2 -
//               ANDY/EBAZ4205/TEST_PROJ.sim/sim_1/impl/timing/xsim/carry_lookahead_adder_tb_time_impl.v}
// Design      : carry_lookahead_adder
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "ad0efade" *) (* WIDTH = "16" *) 
(* NotValidForBitStream *)
module carry_lookahead_adder
   (i_add1,
    i_add2,
    o_result);
  input [15:0]i_add1;
  input [15:0]i_add2;
  output [16:0]o_result;

  wire [15:0]i_add1;
  wire [15:0]i_add1_IBUF;
  wire [15:0]i_add2;
  wire [15:0]i_add2_IBUF;
  wire [16:0]o_result;
  wire [16:0]o_result_OBUF;
  wire w_C_11;
  wire w_C_13;
  wire w_C_15;
  wire w_C_3;
  wire w_C_5;
  wire w_C_7;
  wire w_C_9;

initial begin
 $sdf_annotate("carry_lookahead_adder_tb_time_impl.sdf",,,,"tool_control");
end
  IBUF \i_add1_IBUF[0]_inst 
       (.I(i_add1[0]),
        .O(i_add1_IBUF[0]));
  IBUF \i_add1_IBUF[10]_inst 
       (.I(i_add1[10]),
        .O(i_add1_IBUF[10]));
  IBUF \i_add1_IBUF[11]_inst 
       (.I(i_add1[11]),
        .O(i_add1_IBUF[11]));
  IBUF \i_add1_IBUF[12]_inst 
       (.I(i_add1[12]),
        .O(i_add1_IBUF[12]));
  IBUF \i_add1_IBUF[13]_inst 
       (.I(i_add1[13]),
        .O(i_add1_IBUF[13]));
  IBUF \i_add1_IBUF[14]_inst 
       (.I(i_add1[14]),
        .O(i_add1_IBUF[14]));
  IBUF \i_add1_IBUF[15]_inst 
       (.I(i_add1[15]),
        .O(i_add1_IBUF[15]));
  IBUF \i_add1_IBUF[1]_inst 
       (.I(i_add1[1]),
        .O(i_add1_IBUF[1]));
  IBUF \i_add1_IBUF[2]_inst 
       (.I(i_add1[2]),
        .O(i_add1_IBUF[2]));
  IBUF \i_add1_IBUF[3]_inst 
       (.I(i_add1[3]),
        .O(i_add1_IBUF[3]));
  IBUF \i_add1_IBUF[4]_inst 
       (.I(i_add1[4]),
        .O(i_add1_IBUF[4]));
  IBUF \i_add1_IBUF[5]_inst 
       (.I(i_add1[5]),
        .O(i_add1_IBUF[5]));
  IBUF \i_add1_IBUF[6]_inst 
       (.I(i_add1[6]),
        .O(i_add1_IBUF[6]));
  IBUF \i_add1_IBUF[7]_inst 
       (.I(i_add1[7]),
        .O(i_add1_IBUF[7]));
  IBUF \i_add1_IBUF[8]_inst 
       (.I(i_add1[8]),
        .O(i_add1_IBUF[8]));
  IBUF \i_add1_IBUF[9]_inst 
       (.I(i_add1[9]),
        .O(i_add1_IBUF[9]));
  IBUF \i_add2_IBUF[0]_inst 
       (.I(i_add2[0]),
        .O(i_add2_IBUF[0]));
  IBUF \i_add2_IBUF[10]_inst 
       (.I(i_add2[10]),
        .O(i_add2_IBUF[10]));
  IBUF \i_add2_IBUF[11]_inst 
       (.I(i_add2[11]),
        .O(i_add2_IBUF[11]));
  IBUF \i_add2_IBUF[12]_inst 
       (.I(i_add2[12]),
        .O(i_add2_IBUF[12]));
  IBUF \i_add2_IBUF[13]_inst 
       (.I(i_add2[13]),
        .O(i_add2_IBUF[13]));
  IBUF \i_add2_IBUF[14]_inst 
       (.I(i_add2[14]),
        .O(i_add2_IBUF[14]));
  IBUF \i_add2_IBUF[15]_inst 
       (.I(i_add2[15]),
        .O(i_add2_IBUF[15]));
  IBUF \i_add2_IBUF[1]_inst 
       (.I(i_add2[1]),
        .O(i_add2_IBUF[1]));
  IBUF \i_add2_IBUF[2]_inst 
       (.I(i_add2[2]),
        .O(i_add2_IBUF[2]));
  IBUF \i_add2_IBUF[3]_inst 
       (.I(i_add2[3]),
        .O(i_add2_IBUF[3]));
  IBUF \i_add2_IBUF[4]_inst 
       (.I(i_add2[4]),
        .O(i_add2_IBUF[4]));
  IBUF \i_add2_IBUF[5]_inst 
       (.I(i_add2[5]),
        .O(i_add2_IBUF[5]));
  IBUF \i_add2_IBUF[6]_inst 
       (.I(i_add2[6]),
        .O(i_add2_IBUF[6]));
  IBUF \i_add2_IBUF[7]_inst 
       (.I(i_add2[7]),
        .O(i_add2_IBUF[7]));
  IBUF \i_add2_IBUF[8]_inst 
       (.I(i_add2[8]),
        .O(i_add2_IBUF[8]));
  IBUF \i_add2_IBUF[9]_inst 
       (.I(i_add2[9]),
        .O(i_add2_IBUF[9]));
  OBUF \o_result_OBUF[0]_inst 
       (.I(o_result_OBUF[0]),
        .O(o_result[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_result_OBUF[0]_inst_i_1 
       (.I0(i_add2_IBUF[0]),
        .I1(i_add1_IBUF[0]),
        .O(o_result_OBUF[0]));
  OBUF \o_result_OBUF[10]_inst 
       (.I(o_result_OBUF[10]),
        .O(o_result[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \o_result_OBUF[10]_inst_i_1 
       (.I0(w_C_9),
        .I1(i_add1_IBUF[9]),
        .I2(i_add2_IBUF[9]),
        .I3(i_add1_IBUF[10]),
        .I4(i_add2_IBUF[10]),
        .O(o_result_OBUF[10]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \o_result_OBUF[10]_inst_i_2 
       (.I0(i_add2_IBUF[8]),
        .I1(i_add1_IBUF[8]),
        .I2(i_add2_IBUF[7]),
        .I3(i_add1_IBUF[7]),
        .I4(w_C_7),
        .O(w_C_9));
  OBUF \o_result_OBUF[11]_inst 
       (.I(o_result_OBUF[11]),
        .O(o_result[11]));
  LUT3 #(
    .INIT(8'h96)) 
    \o_result_OBUF[11]_inst_i_1 
       (.I0(w_C_11),
        .I1(i_add1_IBUF[11]),
        .I2(i_add2_IBUF[11]),
        .O(o_result_OBUF[11]));
  OBUF \o_result_OBUF[12]_inst 
       (.I(o_result_OBUF[12]),
        .O(o_result[12]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \o_result_OBUF[12]_inst_i_1 
       (.I0(w_C_11),
        .I1(i_add1_IBUF[11]),
        .I2(i_add2_IBUF[11]),
        .I3(i_add1_IBUF[12]),
        .I4(i_add2_IBUF[12]),
        .O(o_result_OBUF[12]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \o_result_OBUF[12]_inst_i_2 
       (.I0(i_add2_IBUF[10]),
        .I1(i_add1_IBUF[10]),
        .I2(i_add2_IBUF[9]),
        .I3(i_add1_IBUF[9]),
        .I4(w_C_9),
        .O(w_C_11));
  OBUF \o_result_OBUF[13]_inst 
       (.I(o_result_OBUF[13]),
        .O(o_result[13]));
  LUT3 #(
    .INIT(8'h96)) 
    \o_result_OBUF[13]_inst_i_1 
       (.I0(w_C_13),
        .I1(i_add1_IBUF[13]),
        .I2(i_add2_IBUF[13]),
        .O(o_result_OBUF[13]));
  OBUF \o_result_OBUF[14]_inst 
       (.I(o_result_OBUF[14]),
        .O(o_result[14]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \o_result_OBUF[14]_inst_i_1 
       (.I0(w_C_13),
        .I1(i_add1_IBUF[13]),
        .I2(i_add2_IBUF[13]),
        .I3(i_add1_IBUF[14]),
        .I4(i_add2_IBUF[14]),
        .O(o_result_OBUF[14]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \o_result_OBUF[14]_inst_i_2 
       (.I0(i_add2_IBUF[12]),
        .I1(i_add1_IBUF[12]),
        .I2(i_add2_IBUF[11]),
        .I3(i_add1_IBUF[11]),
        .I4(w_C_11),
        .O(w_C_13));
  OBUF \o_result_OBUF[15]_inst 
       (.I(o_result_OBUF[15]),
        .O(o_result[15]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \o_result_OBUF[15]_inst_i_1 
       (.I0(w_C_15),
        .I1(i_add1_IBUF[15]),
        .I2(i_add2_IBUF[15]),
        .O(o_result_OBUF[15]));
  OBUF \o_result_OBUF[16]_inst 
       (.I(o_result_OBUF[16]),
        .O(o_result[16]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \o_result_OBUF[16]_inst_i_1 
       (.I0(i_add2_IBUF[15]),
        .I1(i_add1_IBUF[15]),
        .I2(w_C_15),
        .O(o_result_OBUF[16]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \o_result_OBUF[16]_inst_i_2 
       (.I0(i_add2_IBUF[14]),
        .I1(i_add1_IBUF[14]),
        .I2(i_add2_IBUF[13]),
        .I3(i_add1_IBUF[13]),
        .I4(w_C_13),
        .O(w_C_15));
  OBUF \o_result_OBUF[1]_inst 
       (.I(o_result_OBUF[1]),
        .O(o_result[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \o_result_OBUF[1]_inst_i_1 
       (.I0(i_add2_IBUF[0]),
        .I1(i_add1_IBUF[0]),
        .I2(i_add1_IBUF[1]),
        .I3(i_add2_IBUF[1]),
        .O(o_result_OBUF[1]));
  OBUF \o_result_OBUF[2]_inst 
       (.I(o_result_OBUF[2]),
        .O(o_result[2]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \o_result_OBUF[2]_inst_i_1 
       (.I0(i_add2_IBUF[0]),
        .I1(i_add1_IBUF[0]),
        .I2(i_add1_IBUF[1]),
        .I3(i_add2_IBUF[1]),
        .I4(i_add1_IBUF[2]),
        .I5(i_add2_IBUF[2]),
        .O(o_result_OBUF[2]));
  OBUF \o_result_OBUF[3]_inst 
       (.I(o_result_OBUF[3]),
        .O(o_result[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \o_result_OBUF[3]_inst_i_1 
       (.I0(w_C_3),
        .I1(i_add1_IBUF[3]),
        .I2(i_add2_IBUF[3]),
        .O(o_result_OBUF[3]));
  OBUF \o_result_OBUF[4]_inst 
       (.I(o_result_OBUF[4]),
        .O(o_result[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \o_result_OBUF[4]_inst_i_1 
       (.I0(w_C_3),
        .I1(i_add1_IBUF[3]),
        .I2(i_add2_IBUF[3]),
        .I3(i_add1_IBUF[4]),
        .I4(i_add2_IBUF[4]),
        .O(o_result_OBUF[4]));
  LUT6 #(
    .INIT(64'hEEE8E888E888E888)) 
    \o_result_OBUF[4]_inst_i_2 
       (.I0(i_add2_IBUF[2]),
        .I1(i_add1_IBUF[2]),
        .I2(i_add2_IBUF[1]),
        .I3(i_add1_IBUF[1]),
        .I4(i_add1_IBUF[0]),
        .I5(i_add2_IBUF[0]),
        .O(w_C_3));
  OBUF \o_result_OBUF[5]_inst 
       (.I(o_result_OBUF[5]),
        .O(o_result[5]));
  LUT3 #(
    .INIT(8'h96)) 
    \o_result_OBUF[5]_inst_i_1 
       (.I0(w_C_5),
        .I1(i_add1_IBUF[5]),
        .I2(i_add2_IBUF[5]),
        .O(o_result_OBUF[5]));
  OBUF \o_result_OBUF[6]_inst 
       (.I(o_result_OBUF[6]),
        .O(o_result[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \o_result_OBUF[6]_inst_i_1 
       (.I0(w_C_5),
        .I1(i_add1_IBUF[5]),
        .I2(i_add2_IBUF[5]),
        .I3(i_add1_IBUF[6]),
        .I4(i_add2_IBUF[6]),
        .O(o_result_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \o_result_OBUF[6]_inst_i_2 
       (.I0(i_add2_IBUF[4]),
        .I1(i_add1_IBUF[4]),
        .I2(i_add2_IBUF[3]),
        .I3(i_add1_IBUF[3]),
        .I4(w_C_3),
        .O(w_C_5));
  OBUF \o_result_OBUF[7]_inst 
       (.I(o_result_OBUF[7]),
        .O(o_result[7]));
  LUT3 #(
    .INIT(8'h96)) 
    \o_result_OBUF[7]_inst_i_1 
       (.I0(w_C_7),
        .I1(i_add1_IBUF[7]),
        .I2(i_add2_IBUF[7]),
        .O(o_result_OBUF[7]));
  OBUF \o_result_OBUF[8]_inst 
       (.I(o_result_OBUF[8]),
        .O(o_result[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \o_result_OBUF[8]_inst_i_1 
       (.I0(w_C_7),
        .I1(i_add1_IBUF[7]),
        .I2(i_add2_IBUF[7]),
        .I3(i_add1_IBUF[8]),
        .I4(i_add2_IBUF[8]),
        .O(o_result_OBUF[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \o_result_OBUF[8]_inst_i_2 
       (.I0(i_add2_IBUF[6]),
        .I1(i_add1_IBUF[6]),
        .I2(i_add2_IBUF[5]),
        .I3(i_add1_IBUF[5]),
        .I4(w_C_5),
        .O(w_C_7));
  OBUF \o_result_OBUF[9]_inst 
       (.I(o_result_OBUF[9]),
        .O(o_result[9]));
  LUT3 #(
    .INIT(8'h96)) 
    \o_result_OBUF[9]_inst_i_1 
       (.I0(w_C_9),
        .I1(i_add1_IBUF[9]),
        .I2(i_add2_IBUF[9]),
        .O(o_result_OBUF[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
