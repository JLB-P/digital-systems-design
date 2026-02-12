// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Oct 21 08:58:54 2024
// Host        : jlbpacheco running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/repo/systemverilog/L07_edge detector/L07_edge
//               detector.sim/sim_1/synth/func/xsim/edge_detect_moore_tb_func_synth.v}
// Design      : edge_detect_moore
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module edge_detect_moore
   (clk,
    reset,
    level,
    tick);
  input clk;
  input reset;
  input level;
  output tick;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire level;
  wire level_IBUF;
  wire reset;
  wire reset_IBUF;
  wire [1:0]state_reg;
  wire \state_reg[0]__0_i_1_n_0 ;
  wire \state_reg[1]__0_i_1_n_0 ;
  wire \state_reg[1]__0_i_2_n_0 ;
  wire \state_reg_reg[1]_i_1_n_0 ;
  wire tick;
  wire tick_OBUF;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF level_IBUF_inst
       (.I(level),
        .O(level_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \state_reg[0]__0_i_1 
       (.I0(state_reg[0]),
        .O(\state_reg[0]__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \state_reg[1]__0_i_1 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .I2(level_IBUF),
        .O(\state_reg[1]__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \state_reg[1]__0_i_2 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(level_IBUF),
        .O(\state_reg[1]__0_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \state_reg_reg[0] 
       (.CLR(1'b0),
        .D(level_IBUF),
        .G(\state_reg_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(state_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg_reg[0]__0 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg[1]__0_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\state_reg[0]__0_i_1_n_0 ),
        .Q(state_reg[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \state_reg_reg[1] 
       (.CLR(1'b0),
        .D(level_IBUF),
        .G(\state_reg_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(state_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg_reg[1]__0 
       (.C(clk_IBUF_BUFG),
        .CE(\state_reg[1]__0_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\state_reg[1]__0_i_2_n_0 ),
        .Q(state_reg[1]));
  LUT3 #(
    .INIT(8'h04)) 
    \state_reg_reg[1]_i_1 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .I2(level_IBUF),
        .O(\state_reg_reg[1]_i_1_n_0 ));
  OBUF tick_OBUF_inst
       (.I(tick_OBUF),
        .O(tick));
  LUT2 #(
    .INIT(4'h2)) 
    tick_OBUF_inst_i_1
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .O(tick_OBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
