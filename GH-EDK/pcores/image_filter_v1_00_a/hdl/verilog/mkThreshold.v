//
// Generated by Bluespec Compiler, version 2012.01.A (build 26572, 2012-01-17)
//
// On Sun Mar 31 17:36:55 BST 2013
//
// Method conflict info:
// Method: filter
// Conflict-free: filter
//
//
// Ports:
// Name                         I/O  size props
// bin_out                        O     1
// CLK                            I     1 unused
// RST_N                          I     1 unused
// gry_in                         I     8
// threshold                      I     8
//
// Combinational paths from inputs to outputs:
//   (gry_in, threshold) -> bin_out
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
`define BSV_ASSIGNMENT_DELAY
`endif

module mkThreshold(CLK,
		   RST_N,

		   gry_in,
		   threshold,
		   bin_out);
  input  CLK;
  input  RST_N;

  // actionvalue method filter
  input  [7 : 0] gry_in;
  input  [7 : 0] threshold;
  output bin_out;

  // signals for module outputs
  wire bin_out;

  // actionvalue method filter
  assign bin_out = gry_in >= threshold ;
endmodule  // mkThreshold

