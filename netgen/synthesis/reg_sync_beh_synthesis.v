////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: reg_sync_beh_synthesis.v
// /___/   /\     Timestamp: Tue Nov 12 22:40:11 2019
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim reg_sync_beh.ngc reg_sync_beh_synthesis.v 
// Device	: xc6slx9-3-ftg256
// Input file	: reg_sync_beh.ngc
// Output file	: E:\xilinx\projects\lab3-4\netgen\synthesis\reg_sync_beh_synthesis.v
// # of Modules	: 1
// Design Name	: reg_sync_beh
// Xilinx        : E:\xilinx1\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module reg_sync_beh (
  CLK, E, Din, Dout
);
  input CLK;
  input E;
  input [3 : 0] Din;
  output [3 : 0] Dout;
  wire Din_3_IBUF_0;
  wire Din_2_IBUF_1;
  wire Din_1_IBUF_2;
  wire Din_0_IBUF_3;
  wire CLK_BUFGP_4;
  wire E_IBUF_5;
  wire [3 : 0] reg_4;
  FDE   reg_0 (
    .C(CLK_BUFGP_4),
    .CE(E_IBUF_5),
    .D(Din_0_IBUF_3),
    .Q(reg_4[0])
  );
  FDE   reg_1 (
    .C(CLK_BUFGP_4),
    .CE(E_IBUF_5),
    .D(Din_1_IBUF_2),
    .Q(reg_4[1])
  );
  FDE   reg_2 (
    .C(CLK_BUFGP_4),
    .CE(E_IBUF_5),
    .D(Din_2_IBUF_1),
    .Q(reg_4[2])
  );
  FDE   reg_3 (
    .C(CLK_BUFGP_4),
    .CE(E_IBUF_5),
    .D(Din_3_IBUF_0),
    .Q(reg_4[3])
  );
  IBUF   Din_3_IBUF (
    .I(Din[3]),
    .O(Din_3_IBUF_0)
  );
  IBUF   Din_2_IBUF (
    .I(Din[2]),
    .O(Din_2_IBUF_1)
  );
  IBUF   Din_1_IBUF (
    .I(Din[1]),
    .O(Din_1_IBUF_2)
  );
  IBUF   Din_0_IBUF (
    .I(Din[0]),
    .O(Din_0_IBUF_3)
  );
  IBUF   E_IBUF (
    .I(E),
    .O(E_IBUF_5)
  );
  OBUF   Dout_3_OBUF (
    .I(reg_4[3]),
    .O(Dout[3])
  );
  OBUF   Dout_2_OBUF (
    .I(reg_4[2]),
    .O(Dout[2])
  );
  OBUF   Dout_1_OBUF (
    .I(reg_4[1]),
    .O(Dout[1])
  );
  OBUF   Dout_0_OBUF (
    .I(reg_4[0]),
    .O(Dout[0])
  );
  BUFGP   CLK_BUFGP (
    .I(CLK),
    .O(CLK_BUFGP_4)
  );
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

