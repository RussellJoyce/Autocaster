//
// Generated by Bluespec Compiler, version 2012.01.A (build 26572, 2012-01-17)
//
// On Wed Aug 14 13:15:37 BST 2013
//
// Method conflict info:
// Method: filter
// Conflict-free: hsync, vde
// Sequenced before (restricted): gry_out
// Conflicts: filter
//
// Method: gry_out
// Conflict-free: gry_out, hsync, vde
// Sequenced after (restricted): filter
//
// Method: hsync
// Conflict-free: filter, gry_out, vde
// Conflicts: hsync
//
// Method: vde
// Conflict-free: filter, gry_out, hsync
// Conflicts: vde
//
//
// Ports:
// Name                         I/O  size props
// gry_out                        O     8
// CLK                            I     1 clock
// RST_N                          I     1 reset
// bin_in                         I     1
// hsync                          I     1
// vde                            I     1 unused
//
// Combinational paths from inputs to outputs:
//   bin_in -> gry_out
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
`define BSV_ASSIGNMENT_DELAY
`endif

module mkBlur(CLK,
	      RST_N,

	      bin_in,

	      gry_out,

	      hsync,

	      vde);
  input  CLK;
  input  RST_N;

  // action method filter
  input  bin_in;

  // value method gry_out
  output [7 : 0] gry_out;

  // action method hsync
  input  hsync;

  // action method vde
  input  vde;

  // signals for module outputs
  wire [7 : 0] gry_out;

  // inlined wires
  wire [3 : 0] blurred$wget;

  // register lastPxl
  reg [1 : 0] lastPxl;
  wire [1 : 0] lastPxl$D_IN;
  wire lastPxl$EN;

  // register lastRow
  reg [1279 : 0] lastRow;
  wire [1279 : 0] lastRow$D_IN;
  wire lastRow$EN;

  // register ready
  reg ready;
  wire ready$D_IN, ready$EN;

  // register x
  reg [10 : 0] x;
  wire [10 : 0] x$D_IN;
  wire x$EN;

  // inputs to muxes for submodule ports
  wire [10 : 0] MUX_x$write_1__VAL_1;
  wire MUX_x$write_1__SEL_1;

  // remaining internal signals
  wire [1279 : 0] x__h662, y__h706;

  // value method gry_out
  assign gry_out = ready ? {2{blurred$wget}} : 8'd0 ;

  // inputs to muxes for submodule ports
  assign MUX_x$write_1__SEL_1 = !hsync && ready ;
  assign MUX_x$write_1__VAL_1 = x + 11'd1 ;

  // inlined wires
  assign blurred$wget = { lastRow[x], lastPxl, bin_in } ;

  // register lastPxl
  assign lastPxl$D_IN = { bin_in, lastPxl[1] } ;
  assign lastPxl$EN = ready ;

  // register lastRow
  assign lastRow$D_IN = bin_in ? lastRow | x__h662 : lastRow & y__h706 ;
  assign lastRow$EN = ready ;

  // register ready
  assign ready$D_IN = 1'd1 ;
  assign ready$EN = hsync && !ready ;

  // register x
  assign x$D_IN = MUX_x$write_1__SEL_1 ? MUX_x$write_1__VAL_1 : 11'd0 ;
  assign x$EN = MUX_x$write_1__SEL_1 || hsync && x != 11'd0 && ready ;

  // remaining internal signals
  assign x__h662 = 1280'd1 << x ;
  assign y__h706 = ~x__h662 ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (!RST_N)
      begin
        lastPxl <= `BSV_ASSIGNMENT_DELAY 2'd0;
	lastRow <= `BSV_ASSIGNMENT_DELAY 1280'd0;
	ready <= `BSV_ASSIGNMENT_DELAY 1'd0;
	x <= `BSV_ASSIGNMENT_DELAY 11'd0;
      end
    else
      begin
        if (lastPxl$EN) lastPxl <= `BSV_ASSIGNMENT_DELAY lastPxl$D_IN;
	if (lastRow$EN) lastRow <= `BSV_ASSIGNMENT_DELAY lastRow$D_IN;
	if (ready$EN) ready <= `BSV_ASSIGNMENT_DELAY ready$D_IN;
	if (x$EN) x <= `BSV_ASSIGNMENT_DELAY x$D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    lastPxl = 2'h2;
    lastRow =
	1280'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA;
    ready = 1'h0;
    x = 11'h2AA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkBlur

