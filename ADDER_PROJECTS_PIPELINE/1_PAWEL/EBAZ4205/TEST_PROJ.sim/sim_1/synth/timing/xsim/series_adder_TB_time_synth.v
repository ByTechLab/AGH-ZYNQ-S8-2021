// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun May  2 23:34:58 2021
// Host        : DESKTOP-CB2MAD1 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/lacze/Desktop/AGH-FPGA-S8/AGH-ZYNQ-S8-2021/ADDER_PROJECTS_STANDARD/1_PAWEL/EBAZ4205/TEST_PROJ.sim/sim_1/synth/timing/xsim/series_adder_TB_time_synth.v
// Design      : series_adder
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* M = "8" *) (* N = "8" *) 
(* NotValidForBitStream *)
module series_adder
   (clk,
    rst_p,
    data_vld,
    data,
    result_vld,
    result);
  input clk;
  input rst_p;
  input data_vld;
  input [7:0]data;
  output result_vld;
  output [10:0]result;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]counter;
  wire \counter[3]_i_1_n_0 ;
  wire [7:0]data;
  wire [7:0]data_IBUF;
  wire \data_reg_reg_n_0_[0] ;
  wire data_vld;
  wire data_vld_IBUF;
  wire data_vld_reg;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_0_in1_in;
  wire p_0_in2_in;
  wire p_0_in3_in;
  wire p_0_in4_in;
  wire p_0_in5_in;
  wire [3:0]p_1_in;
  wire [0:0]partial_sum_reg;
  wire [3:0]partial_sum_reg1;
  wire \partial_sum_reg[0]_i_1_n_0 ;
  wire \partial_sum_reg[0]_i_2_n_0 ;
  wire \partial_sum_reg[0]_i_3_n_0 ;
  wire \partial_sum_reg[1]_i_1_n_0 ;
  wire \partial_sum_reg[1]_i_2_n_0 ;
  wire \partial_sum_reg[1]_i_3_n_0 ;
  wire \partial_sum_reg[1]_i_4_n_0 ;
  wire \partial_sum_reg[2]_i_1_n_0 ;
  wire \partial_sum_reg[2]_i_2_n_0 ;
  wire \partial_sum_reg[2]_i_3_n_0 ;
  wire \partial_sum_reg[2]_i_4_n_0 ;
  wire \partial_sum_reg[2]_i_5_n_0 ;
  wire \partial_sum_reg[2]_i_6_n_0 ;
  wire [2:1]partial_sum_reg__0;
  wire [10:0]result;
  wire \result[8]_i_2_n_0 ;
  wire \result[9]_i_2_n_0 ;
  wire \result[9]_i_3_n_0 ;
  wire \result[9]_i_4_n_0 ;
  wire \result[9]_i_5_n_0 ;
  wire [10:0]result_OBUF;
  wire [6:0]result_temp;
  wire \result_temp[0]_i_1_n_0 ;
  wire \result_temp[1]_i_1_n_0 ;
  wire \result_temp[2]_i_1_n_0 ;
  wire \result_temp[3]_i_1_n_0 ;
  wire \result_temp[4]_i_1_n_0 ;
  wire \result_temp[5]_i_1_n_0 ;
  wire \result_temp[6]_i_1_n_0 ;
  wire \result_temp[6]_i_2_n_0 ;
  wire result_vld;
  wire result_vld_OBUF;
  wire result_vld_i_1_n_0;
  wire rst_p;
  wire rst_p_IBUF;
  wire [0:0]\summation_steps[6] ;

initial begin
 $sdf_annotate("series_adder_TB_time_synth.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1 
       (.I0(counter[2]),
        .I1(counter[0]),
        .I2(counter[1]),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hBAAAAAAA)) 
    \counter[3]_i_1 
       (.I0(data_vld_reg),
        .I1(counter[3]),
        .I2(counter[2]),
        .I3(counter[0]),
        .I4(counter[1]),
        .O(\counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \counter[3]_i_2 
       (.I0(counter[3]),
        .I1(counter[2]),
        .I2(counter[1]),
        .I3(counter[0]),
        .O(p_1_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[3]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(counter[0]),
        .R(rst_p_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[3]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(counter[1]),
        .R(rst_p_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[3]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(counter[2]),
        .R(rst_p_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[3]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(counter[3]),
        .R(rst_p_IBUF));
  IBUF \data_IBUF[0]_inst 
       (.I(data[0]),
        .O(data_IBUF[0]));
  IBUF \data_IBUF[1]_inst 
       (.I(data[1]),
        .O(data_IBUF[1]));
  IBUF \data_IBUF[2]_inst 
       (.I(data[2]),
        .O(data_IBUF[2]));
  IBUF \data_IBUF[3]_inst 
       (.I(data[3]),
        .O(data_IBUF[3]));
  IBUF \data_IBUF[4]_inst 
       (.I(data[4]),
        .O(data_IBUF[4]));
  IBUF \data_IBUF[5]_inst 
       (.I(data[5]),
        .O(data_IBUF[5]));
  IBUF \data_IBUF[6]_inst 
       (.I(data[6]),
        .O(data_IBUF[6]));
  IBUF \data_IBUF[7]_inst 
       (.I(data[7]),
        .O(data_IBUF[7]));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data_IBUF[0]),
        .Q(\data_reg_reg_n_0_[0] ),
        .R(rst_p_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data_IBUF[1]),
        .Q(p_0_in),
        .R(rst_p_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data_IBUF[2]),
        .Q(p_0_in0_in),
        .R(rst_p_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data_IBUF[3]),
        .Q(p_0_in1_in),
        .R(rst_p_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data_IBUF[4]),
        .Q(p_0_in2_in),
        .R(rst_p_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data_IBUF[5]),
        .Q(p_0_in3_in),
        .R(rst_p_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data_IBUF[6]),
        .Q(p_0_in4_in),
        .R(rst_p_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data_IBUF[7]),
        .Q(p_0_in5_in),
        .R(rst_p_IBUF));
  IBUF data_vld_IBUF_inst
       (.I(data_vld),
        .O(data_vld_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    data_vld_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data_vld_IBUF),
        .Q(data_vld_reg),
        .R(rst_p_IBUF));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \partial_sum_reg[0]_i_1 
       (.I0(partial_sum_reg1[1]),
        .I1(\partial_sum_reg[2]_i_4_n_0 ),
        .I2(\partial_sum_reg[0]_i_2_n_0 ),
        .I3(\partial_sum_reg[1]_i_4_n_0 ),
        .I4(\partial_sum_reg[1]_i_3_n_0 ),
        .I5(\partial_sum_reg[0]_i_3_n_0 ),
        .O(\partial_sum_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \partial_sum_reg[0]_i_2 
       (.I0(p_0_in0_in),
        .I1(p_0_in),
        .I2(p_0_in1_in),
        .I3(\data_reg_reg_n_0_[0] ),
        .I4(p_0_in5_in),
        .I5(\result[9]_i_3_n_0 ),
        .O(\partial_sum_reg[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \partial_sum_reg[0]_i_3 
       (.I0(p_0_in4_in),
        .I1(p_0_in2_in),
        .I2(p_0_in3_in),
        .I3(p_0_in5_in),
        .I4(\data_reg_reg_n_0_[0] ),
        .O(\partial_sum_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h606F6F606F606F60)) 
    \partial_sum_reg[1]_i_1 
       (.I0(\partial_sum_reg[2]_i_2_n_0 ),
        .I1(\partial_sum_reg[1]_i_2_n_0 ),
        .I2(\partial_sum_reg[2]_i_4_n_0 ),
        .I3(\partial_sum_reg[2]_i_5_n_0 ),
        .I4(\partial_sum_reg[1]_i_3_n_0 ),
        .I5(\partial_sum_reg[1]_i_4_n_0 ),
        .O(\partial_sum_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11171777EEE8E888)) 
    \partial_sum_reg[1]_i_2 
       (.I0(\partial_sum_reg[1]_i_3_n_0 ),
        .I1(partial_sum_reg__0[1]),
        .I2(\data_reg_reg_n_0_[0] ),
        .I3(p_0_in5_in),
        .I4(partial_sum_reg),
        .I5(partial_sum_reg__0[2]),
        .O(\partial_sum_reg[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \partial_sum_reg[1]_i_3 
       (.I0(p_0_in2_in),
        .I1(p_0_in4_in),
        .I2(p_0_in3_in),
        .O(\partial_sum_reg[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \partial_sum_reg[1]_i_4 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(p_0_in0_in),
        .O(\partial_sum_reg[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE800E800E800)) 
    \partial_sum_reg[2]_i_1 
       (.I0(\partial_sum_reg[2]_i_2_n_0 ),
        .I1(partial_sum_reg__0[2]),
        .I2(\partial_sum_reg[2]_i_3_n_0 ),
        .I3(\partial_sum_reg[2]_i_4_n_0 ),
        .I4(\partial_sum_reg[2]_i_5_n_0 ),
        .I5(\partial_sum_reg[2]_i_6_n_0 ),
        .O(\partial_sum_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFFC8EE88EE80CC0)) 
    \partial_sum_reg[2]_i_2 
       (.I0(\result[9]_i_5_n_0 ),
        .I1(\partial_sum_reg[1]_i_4_n_0 ),
        .I2(\result[8]_i_2_n_0 ),
        .I3(\partial_sum_reg[1]_i_3_n_0 ),
        .I4(\result[9]_i_3_n_0 ),
        .I5(\result[9]_i_2_n_0 ),
        .O(\partial_sum_reg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \partial_sum_reg[2]_i_3 
       (.I0(partial_sum_reg),
        .I1(p_0_in5_in),
        .I2(\data_reg_reg_n_0_[0] ),
        .I3(partial_sum_reg__0[1]),
        .I4(\partial_sum_reg[1]_i_3_n_0 ),
        .O(\partial_sum_reg[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \partial_sum_reg[2]_i_4 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[3]),
        .I3(counter[2]),
        .O(\partial_sum_reg[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000FEE8FEE88000)) 
    \partial_sum_reg[2]_i_5 
       (.I0(\result[9]_i_3_n_0 ),
        .I1(p_0_in5_in),
        .I2(\data_reg_reg_n_0_[0] ),
        .I3(\result[9]_i_2_n_0 ),
        .I4(\partial_sum_reg[1]_i_3_n_0 ),
        .I5(\partial_sum_reg[1]_i_4_n_0 ),
        .O(\partial_sum_reg[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h54400000)) 
    \partial_sum_reg[2]_i_6 
       (.I0(\partial_sum_reg[2]_i_4_n_0 ),
        .I1(p_0_in2_in),
        .I2(p_0_in4_in),
        .I3(p_0_in3_in),
        .I4(\partial_sum_reg[1]_i_4_n_0 ),
        .O(\partial_sum_reg[2]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \partial_sum_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\partial_sum_reg[0]_i_1_n_0 ),
        .Q(partial_sum_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_sum_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\partial_sum_reg[1]_i_1_n_0 ),
        .Q(partial_sum_reg__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_sum_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\partial_sum_reg[2]_i_1_n_0 ),
        .Q(partial_sum_reg__0[2]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hE8)) 
    \result[10]_i_1 
       (.I0(\partial_sum_reg[2]_i_2_n_0 ),
        .I1(partial_sum_reg__0[2]),
        .I2(\partial_sum_reg[2]_i_3_n_0 ),
        .O(partial_sum_reg1[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \result[7]_i_1 
       (.I0(\result[9]_i_2_n_0 ),
        .I1(partial_sum_reg),
        .I2(p_0_in5_in),
        .I3(\data_reg_reg_n_0_[0] ),
        .I4(\result[9]_i_3_n_0 ),
        .O(partial_sum_reg1[0]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \result[8]_i_1 
       (.I0(\result[9]_i_2_n_0 ),
        .I1(\result[9]_i_3_n_0 ),
        .I2(\result[9]_i_5_n_0 ),
        .I3(\partial_sum_reg[1]_i_4_n_0 ),
        .I4(\partial_sum_reg[1]_i_3_n_0 ),
        .I5(\result[8]_i_2_n_0 ),
        .O(partial_sum_reg1[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h17E8)) 
    \result[8]_i_2 
       (.I0(\data_reg_reg_n_0_[0] ),
        .I1(p_0_in5_in),
        .I2(partial_sum_reg),
        .I3(partial_sum_reg__0[1]),
        .O(\result[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h011F077FFEE0F880)) 
    \result[9]_i_1 
       (.I0(\result[9]_i_2_n_0 ),
        .I1(\result[9]_i_3_n_0 ),
        .I2(\result[9]_i_4_n_0 ),
        .I3(\partial_sum_reg[1]_i_4_n_0 ),
        .I4(\result[9]_i_5_n_0 ),
        .I5(\partial_sum_reg[1]_i_2_n_0 ),
        .O(partial_sum_reg1[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \result[9]_i_2 
       (.I0(p_0_in1_in),
        .I1(p_0_in),
        .I2(p_0_in0_in),
        .O(\result[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \result[9]_i_3 
       (.I0(p_0_in4_in),
        .I1(p_0_in2_in),
        .I2(p_0_in3_in),
        .O(\result[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \result[9]_i_4 
       (.I0(\partial_sum_reg[1]_i_3_n_0 ),
        .I1(partial_sum_reg__0[1]),
        .I2(partial_sum_reg),
        .I3(p_0_in5_in),
        .I4(\data_reg_reg_n_0_[0] ),
        .O(\result[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \result[9]_i_5 
       (.I0(partial_sum_reg),
        .I1(p_0_in5_in),
        .I2(\data_reg_reg_n_0_[0] ),
        .O(\result[9]_i_5_n_0 ));
  OBUF \result_OBUF[0]_inst 
       (.I(result_OBUF[0]),
        .O(result[0]));
  OBUF \result_OBUF[10]_inst 
       (.I(result_OBUF[10]),
        .O(result[10]));
  OBUF \result_OBUF[1]_inst 
       (.I(result_OBUF[1]),
        .O(result[1]));
  OBUF \result_OBUF[2]_inst 
       (.I(result_OBUF[2]),
        .O(result[2]));
  OBUF \result_OBUF[3]_inst 
       (.I(result_OBUF[3]),
        .O(result[3]));
  OBUF \result_OBUF[4]_inst 
       (.I(result_OBUF[4]),
        .O(result[4]));
  OBUF \result_OBUF[5]_inst 
       (.I(result_OBUF[5]),
        .O(result[5]));
  OBUF \result_OBUF[6]_inst 
       (.I(result_OBUF[6]),
        .O(result[6]));
  OBUF \result_OBUF[7]_inst 
       (.I(result_OBUF[7]),
        .O(result[7]));
  OBUF \result_OBUF[8]_inst 
       (.I(result_OBUF[8]),
        .O(result[8]));
  OBUF \result_OBUF[9]_inst 
       (.I(result_OBUF[9]),
        .O(result[9]));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(result_vld_i_1_n_0),
        .D(result_temp[0]),
        .Q(result_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(result_vld_i_1_n_0),
        .D(partial_sum_reg1[3]),
        .Q(result_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(result_vld_i_1_n_0),
        .D(result_temp[1]),
        .Q(result_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(result_vld_i_1_n_0),
        .D(result_temp[2]),
        .Q(result_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(result_vld_i_1_n_0),
        .D(result_temp[3]),
        .Q(result_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(result_vld_i_1_n_0),
        .D(result_temp[4]),
        .Q(result_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(result_vld_i_1_n_0),
        .D(result_temp[5]),
        .Q(result_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(result_vld_i_1_n_0),
        .D(result_temp[6]),
        .Q(result_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(result_vld_i_1_n_0),
        .D(partial_sum_reg1[0]),
        .Q(result_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(result_vld_i_1_n_0),
        .D(partial_sum_reg1[1]),
        .Q(result_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(result_vld_i_1_n_0),
        .D(partial_sum_reg1[2]),
        .Q(result_OBUF[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \result_temp[0]_i_1 
       (.I0(result_temp[0]),
        .I1(\partial_sum_reg[2]_i_4_n_0 ),
        .I2(\summation_steps[6] ),
        .O(\result_temp[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \result_temp[0]_i_2 
       (.I0(\data_reg_reg_n_0_[0] ),
        .I1(p_0_in5_in),
        .I2(p_0_in4_in),
        .I3(p_0_in2_in),
        .I4(p_0_in3_in),
        .I5(\result[9]_i_2_n_0 ),
        .O(\summation_steps[6] ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \result_temp[1]_i_1 
       (.I0(\result_temp[6]_i_2_n_0 ),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(counter[3]),
        .I4(counter[2]),
        .I5(result_temp[1]),
        .O(\result_temp[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \result_temp[2]_i_1 
       (.I0(\result_temp[6]_i_2_n_0 ),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[3]),
        .I4(counter[2]),
        .I5(result_temp[2]),
        .O(\result_temp[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \result_temp[3]_i_1 
       (.I0(\result_temp[6]_i_2_n_0 ),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(counter[3]),
        .I4(counter[2]),
        .I5(result_temp[3]),
        .O(\result_temp[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \result_temp[4]_i_1 
       (.I0(\result_temp[6]_i_2_n_0 ),
        .I1(counter[2]),
        .I2(counter[3]),
        .I3(counter[1]),
        .I4(counter[0]),
        .I5(result_temp[4]),
        .O(\result_temp[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \result_temp[5]_i_1 
       (.I0(\result_temp[6]_i_2_n_0 ),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(counter[2]),
        .I4(counter[3]),
        .I5(result_temp[5]),
        .O(\result_temp[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \result_temp[6]_i_1 
       (.I0(\result_temp[6]_i_2_n_0 ),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[2]),
        .I4(counter[3]),
        .I5(result_temp[6]),
        .O(\result_temp[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \result_temp[6]_i_2 
       (.I0(\result[9]_i_2_n_0 ),
        .I1(\result[9]_i_3_n_0 ),
        .I2(p_0_in5_in),
        .I3(\data_reg_reg_n_0_[0] ),
        .I4(partial_sum_reg),
        .O(\result_temp[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \result_temp_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\result_temp[0]_i_1_n_0 ),
        .Q(result_temp[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_temp_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\result_temp[1]_i_1_n_0 ),
        .Q(result_temp[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_temp_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\result_temp[2]_i_1_n_0 ),
        .Q(result_temp[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_temp_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\result_temp[3]_i_1_n_0 ),
        .Q(result_temp[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_temp_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\result_temp[4]_i_1_n_0 ),
        .Q(result_temp[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_temp_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\result_temp[5]_i_1_n_0 ),
        .Q(result_temp[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_temp_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\result_temp[6]_i_1_n_0 ),
        .Q(result_temp[6]),
        .R(1'b0));
  OBUF result_vld_OBUF_inst
       (.I(result_vld_OBUF),
        .O(result_vld));
  LUT4 #(
    .INIT(16'h4000)) 
    result_vld_i_1
       (.I0(counter[3]),
        .I1(counter[2]),
        .I2(counter[0]),
        .I3(counter[1]),
        .O(result_vld_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    result_vld_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(result_vld_i_1_n_0),
        .Q(result_vld_OBUF),
        .R(rst_p_IBUF));
  IBUF rst_p_IBUF_inst
       (.I(rst_p),
        .O(rst_p_IBUF));
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
