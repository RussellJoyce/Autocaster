//
// Generated by Bluespec Compiler, version 2012.01.A (build 26572, 2012-01-17)
//
// On Thu Aug 29 17:21:55 BST 2013
//
// Method conflict info:
// Method: vsync
// Conflict-free: hsync, vde, rgb, xPos, yPos, trigUp, trigDown, press
// Conflicts: vsync
//
// Method: hsync
// Conflict-free: vsync, vde, rgb, xPos, yPos, trigUp, trigDown, press
// Conflicts: hsync
//
// Method: vde
// Conflict-free: vsync, hsync, rgb, xPos, yPos, trigUp, trigDown, press
// Conflicts: vde
//
// Method: rgb
// Conflict-free: vsync, hsync, vde, xPos, yPos, trigUp, trigDown, press
// Conflicts: rgb
//
// Method: xPos
// Conflict-free: vsync, hsync, vde, rgb, yPos, trigUp, trigDown, press
// Conflicts: xPos
//
// Method: yPos
// Conflict-free: vsync, hsync, vde, rgb, xPos, trigUp, trigDown, press
// Conflicts: yPos
//
// Method: trigUp
// Conflict-free: vsync, hsync, vde, rgb, xPos, yPos, trigDown, press
// Conflicts: trigUp
//
// Method: trigDown
// Conflict-free: vsync, hsync, vde, rgb, xPos, yPos, trigUp, press
// Conflicts: trigDown
//
// Method: press
// Conflict-free: vsync, hsync, vde, rgb, xPos, yPos, trigUp, trigDown, press
//
//
// Ports:
// Name                         I/O  size props
// press                          O     1 reg
// CLK                            I     1 clock
// RST_N                          I     1 reset
// rgb_pixel                      I    24
// xPos_val                       I    11
// yPos_val                       I    10
// trigUp_val                     I    24
// trigDown_val                   I    24
// vsync                          I     1
// hsync                          I     1
// vde                            I     1
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
`define BSV_ASSIGNMENT_DELAY
`endif

module mkFret(CLK,
	      RST_N,

	      vsync,

	      hsync,

	      vde,

	      rgb_pixel,

	      xPos_val,

	      yPos_val,

	      trigUp_val,

	      trigDown_val,

	      press);
  input  CLK;
  input  RST_N;

  // action method vsync
  input  vsync;

  // action method hsync
  input  hsync;

  // action method vde
  input  vde;

  // action method rgb
  input  [23 : 0] rgb_pixel;

  // action method xPos
  input  [10 : 0] xPos_val;

  // action method yPos
  input  [9 : 0] yPos_val;

  // action method trigUp
  input  [23 : 0] trigUp_val;

  // action method trigDown
  input  [23 : 0] trigDown_val;

  // value method press
  output press;

  // signals for module outputs
  wire press;

  // inlined wires
  wire [10 : 0] xCoords$wget,
		xCoords_1$wget,
		xCoords_10$wget,
		xCoords_11$wget,
		xCoords_12$wget,
		xCoords_13$wget,
		xCoords_14$wget,
		xCoords_15$wget,
		xCoords_16$wget,
		xCoords_2$wget,
		xCoords_3$wget,
		xCoords_4$wget,
		xCoords_5$wget,
		xCoords_6$wget,
		xCoords_7$wget,
		xCoords_9$wget;
  wire [9 : 0] yCoords$wget,
	       yCoords_1$wget,
	       yCoords_2$wget,
	       yCoords_3$wget,
	       yCoords_4$wget;

  // register fretPressed
  reg fretPressed;
  wire fretPressed$D_IN, fretPressed$EN;

  // register fretPressedDly
  reg fretPressedDly;
  wire fretPressedDly$D_IN, fretPressedDly$EN;

  // register fretValues
  reg fretValues;
  wire fretValues$D_IN, fretValues$EN;

  // register fretValues_1
  reg fretValues_1;
  wire fretValues_1$D_IN, fretValues_1$EN;

  // register fretValues_10
  reg fretValues_10;
  wire fretValues_10$D_IN, fretValues_10$EN;

  // register fretValues_11
  reg fretValues_11;
  wire fretValues_11$D_IN, fretValues_11$EN;

  // register fretValues_12
  reg fretValues_12;
  wire fretValues_12$D_IN, fretValues_12$EN;

  // register fretValues_13
  reg fretValues_13;
  wire fretValues_13$D_IN, fretValues_13$EN;

  // register fretValues_14
  reg fretValues_14;
  wire fretValues_14$D_IN, fretValues_14$EN;

  // register fretValues_15
  reg fretValues_15;
  wire fretValues_15$D_IN, fretValues_15$EN;

  // register fretValues_16
  reg fretValues_16;
  wire fretValues_16$D_IN, fretValues_16$EN;

  // register fretValues_17
  reg fretValues_17;
  wire fretValues_17$D_IN, fretValues_17$EN;

  // register fretValues_18
  reg fretValues_18;
  wire fretValues_18$D_IN, fretValues_18$EN;

  // register fretValues_19
  reg fretValues_19;
  wire fretValues_19$D_IN, fretValues_19$EN;

  // register fretValues_2
  reg fretValues_2;
  wire fretValues_2$D_IN, fretValues_2$EN;

  // register fretValues_20
  reg fretValues_20;
  wire fretValues_20$D_IN, fretValues_20$EN;

  // register fretValues_21
  reg fretValues_21;
  wire fretValues_21$D_IN, fretValues_21$EN;

  // register fretValues_3
  reg fretValues_3;
  wire fretValues_3$D_IN, fretValues_3$EN;

  // register fretValues_4
  reg fretValues_4;
  wire fretValues_4$D_IN, fretValues_4$EN;

  // register fretValues_5
  reg fretValues_5;
  wire fretValues_5$D_IN, fretValues_5$EN;

  // register fretValues_6
  reg fretValues_6;
  wire fretValues_6$D_IN, fretValues_6$EN;

  // register fretValues_7
  reg fretValues_7;
  wire fretValues_7$D_IN, fretValues_7$EN;

  // register fretValues_8
  reg fretValues_8;
  wire fretValues_8$D_IN, fretValues_8$EN;

  // register fretValues_9
  reg fretValues_9;
  wire fretValues_9$D_IN, fretValues_9$EN;

  // register x
  reg [10 : 0] x;
  wire [10 : 0] x$D_IN;
  wire x$EN;

  // register y
  reg [9 : 0] y;
  wire [9 : 0] y$D_IN;
  wire y$EN;

  // rule scheduling signals
  wire WILL_FIRE_RL_fret_off,
       WILL_FIRE_RL_new_line,
       WILL_FIRE_RL_new_pixel,
       WILL_FIRE_RL_start_pixel0h,
       WILL_FIRE_RL_start_pixel0v,
       WILL_FIRE_RL_start_pixel10h,
       WILL_FIRE_RL_start_pixel11h,
       WILL_FIRE_RL_start_pixel12h,
       WILL_FIRE_RL_start_pixel13h,
       WILL_FIRE_RL_start_pixel14h,
       WILL_FIRE_RL_start_pixel15h,
       WILL_FIRE_RL_start_pixel16h,
       WILL_FIRE_RL_start_pixel1h,
       WILL_FIRE_RL_start_pixel1v,
       WILL_FIRE_RL_start_pixel2h,
       WILL_FIRE_RL_start_pixel2v,
       WILL_FIRE_RL_start_pixel3h,
       WILL_FIRE_RL_start_pixel3v,
       WILL_FIRE_RL_start_pixel4h,
       WILL_FIRE_RL_start_pixel4v,
       WILL_FIRE_RL_start_pixel5h,
       WILL_FIRE_RL_start_pixel6h,
       WILL_FIRE_RL_start_pixel7h,
       WILL_FIRE_RL_start_pixel9h;

  // inputs to muxes for submodule ports
  wire [10 : 0] MUX_x$write_1__VAL_1;
  wire [9 : 0] MUX_y$write_1__VAL_1;
  wire MUX_fretValues$write_1__VAL_1,
       MUX_fretValues$write_1__VAL_2,
       MUX_x$write_1__SEL_2;

  // remaining internal signals
  wire fretValues_OR_fretValues_1_OR_fretValues_2_OR__ETC___d14,
       fretValues_OR_fretValues_1_OR_fretValues_2_OR__ETC___d26,
       fretValues_OR_fretValues_1_OR_fretValues_2_OR__ETC___d38,
       x_8_EQ_xCoords_10_wget__97_98_AND_y_2_EQ_yCoor_ETC___d389,
       x_8_EQ_xCoords_11_wget__07_08_AND_y_2_EQ_yCoor_ETC___d394,
       x_8_EQ_xCoords_12_wget__17_18_AND_y_2_EQ_yCoor_ETC___d399,
       x_8_EQ_xCoords_13_wget__27_28_AND_y_2_EQ_yCoor_ETC___d404,
       x_8_EQ_xCoords_14_wget__37_38_AND_y_2_EQ_yCoor_ETC___d409,
       x_8_EQ_xCoords_15_wget__47_48_AND_y_2_EQ_yCoor_ETC___d414,
       x_8_EQ_xCoords_16_wget__57_58_AND_y_2_EQ_yCoor_ETC___d419,
       x_8_EQ_xCoords_1_wget__07_08_AND_y_2_EQ_yCoord_ETC___d344,
       x_8_EQ_xCoords_2_wget__17_18_AND_y_2_EQ_yCoord_ETC___d349,
       x_8_EQ_xCoords_3_wget__27_28_AND_y_2_EQ_yCoord_ETC___d354,
       x_8_EQ_xCoords_4_wget__37_38_AND_y_2_EQ_yCoord_ETC___d359,
       x_8_EQ_xCoords_5_wget__47_48_AND_y_2_EQ_yCoord_ETC___d364,
       x_8_EQ_xCoords_6_wget__57_58_AND_y_2_EQ_yCoord_ETC___d369,
       x_8_EQ_xCoords_7_wget__67_68_AND_y_2_EQ_yCoord_ETC___d374,
       x_8_EQ_xCoords_8_wget__77_78_AND_y_2_EQ_yCoord_ETC___d181,
       x_8_EQ_xCoords_8_wget__77_78_AND_y_2_EQ_yCoord_ETC___d380,
       x_8_EQ_xCoords_8_wget__77_78_AND_y_2_EQ_yCoord_ETC___d426,
       x_8_EQ_xCoords_8_wget__77_78_AND_y_2_EQ_yCoord_ETC___d433,
       x_8_EQ_xCoords_8_wget__77_78_AND_y_2_EQ_yCoord_ETC___d440,
       x_8_EQ_xCoords_8_wget__77_78_AND_y_2_EQ_yCoord_ETC___d447,
       x_8_EQ_xCoords_8_wget__77_78_AND_y_2_EQ_yCoord_ETC___d454,
       x_8_EQ_xCoords_8_wget__77___d178,
       x_8_EQ_xCoords_9_wget__87_88_AND_y_2_EQ_yCoord_ETC___d384,
       x_8_EQ_xCoords_wget__1_2_AND_y_2_EQ_yCoords_5__ETC___d328,
       y_2_EQ_yCoords_5_wget__3___d84;

  // value method press
  assign press = fretPressedDly ;

  // rule RL_fret_off
  assign WILL_FIRE_RL_fret_off = !fretPressed && fretPressedDly && vsync ;

  // rule RL_start_pixel0h
  assign WILL_FIRE_RL_start_pixel0h =
	     x == xCoords$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     !fretPressed &&
	     !vsync ;

  // rule RL_start_pixel1h
  assign WILL_FIRE_RL_start_pixel1h =
	     x == xCoords_1$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     !fretPressed &&
	     !vsync ;

  // rule RL_start_pixel2h
  assign WILL_FIRE_RL_start_pixel2h =
	     x == xCoords_2$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     !fretPressed &&
	     !vsync ;

  // rule RL_start_pixel3h
  assign WILL_FIRE_RL_start_pixel3h =
	     x == xCoords_3$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     !fretPressed &&
	     !vsync ;

  // rule RL_start_pixel4h
  assign WILL_FIRE_RL_start_pixel4h =
	     x == xCoords_4$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     !fretPressed &&
	     !vsync ;

  // rule RL_start_pixel5h
  assign WILL_FIRE_RL_start_pixel5h =
	     x == xCoords_5$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     !fretPressed &&
	     !vsync ;

  // rule RL_start_pixel6h
  assign WILL_FIRE_RL_start_pixel6h =
	     x == xCoords_6$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     !fretPressed &&
	     !vsync ;

  // rule RL_start_pixel7h
  assign WILL_FIRE_RL_start_pixel7h =
	     x == xCoords_7$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     !fretPressed &&
	     !vsync ;

  // rule RL_start_pixel9h
  assign WILL_FIRE_RL_start_pixel9h =
	     x == xCoords_9$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     !fretPressed &&
	     !vsync ;

  // rule RL_start_pixel10h
  assign WILL_FIRE_RL_start_pixel10h =
	     x == xCoords_10$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     !fretPressed &&
	     !vsync ;

  // rule RL_start_pixel11h
  assign WILL_FIRE_RL_start_pixel11h =
	     x == xCoords_11$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     !fretPressed &&
	     !vsync ;

  // rule RL_start_pixel12h
  assign WILL_FIRE_RL_start_pixel12h =
	     x == xCoords_12$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     !fretPressed &&
	     !vsync ;

  // rule RL_start_pixel13h
  assign WILL_FIRE_RL_start_pixel13h =
	     x == xCoords_13$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     !fretPressed &&
	     !vsync ;

  // rule RL_start_pixel14h
  assign WILL_FIRE_RL_start_pixel14h =
	     x == xCoords_14$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     !fretPressed &&
	     !vsync ;

  // rule RL_start_pixel15h
  assign WILL_FIRE_RL_start_pixel15h =
	     x == xCoords_15$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     !fretPressed &&
	     !vsync ;

  // rule RL_start_pixel16h
  assign WILL_FIRE_RL_start_pixel16h =
	     x == xCoords_16$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     !fretPressed &&
	     !vsync ;

  // rule RL_start_pixel0v
  assign WILL_FIRE_RL_start_pixel0v =
	     x_8_EQ_xCoords_8_wget__77___d178 && y == yCoords$wget &&
	     !fretPressed &&
	     !vsync ;

  // rule RL_start_pixel1v
  assign WILL_FIRE_RL_start_pixel1v =
	     x_8_EQ_xCoords_8_wget__77___d178 && y == yCoords_1$wget &&
	     !fretPressed &&
	     !vsync ;

  // rule RL_start_pixel2v
  assign WILL_FIRE_RL_start_pixel2v =
	     x_8_EQ_xCoords_8_wget__77___d178 && y == yCoords_2$wget &&
	     !fretPressed &&
	     !vsync ;

  // rule RL_start_pixel3v
  assign WILL_FIRE_RL_start_pixel3v =
	     x_8_EQ_xCoords_8_wget__77___d178 && y == yCoords_3$wget &&
	     !fretPressed &&
	     !vsync ;

  // rule RL_start_pixel4v
  assign WILL_FIRE_RL_start_pixel4v =
	     x_8_EQ_xCoords_8_wget__77___d178 && y == yCoords_4$wget &&
	     !fretPressed &&
	     !vsync ;

  // rule RL_new_line
  assign WILL_FIRE_RL_new_line = hsync && !vsync && x != 11'd0 ;

  // rule RL_new_pixel
  assign WILL_FIRE_RL_new_pixel = vde && !hsync && !vsync ;

  // inputs to muxes for submodule ports
  assign MUX_x$write_1__SEL_2 = WILL_FIRE_RL_new_line || vsync ;
  assign MUX_fretValues$write_1__VAL_1 =
	     rgb_pixel[23:16] >= trigUp_val[23:16] &&
	     rgb_pixel[15:8] >= trigUp_val[15:8] &&
	     rgb_pixel[7:0] >= trigUp_val[7:0] ;
  assign MUX_fretValues$write_1__VAL_2 =
	     rgb_pixel[23:16] >= trigDown_val[23:16] ||
	     rgb_pixel[15:8] >= trigDown_val[15:8] ||
	     rgb_pixel[7:0] >= trigDown_val[7:0] ;
  assign MUX_x$write_1__VAL_1 = x + 11'd1 ;
  assign MUX_y$write_1__VAL_1 = y + 10'd1 ;

  // inlined wires
  assign xCoords$wget = xPos_val - 11'd8 ;
  assign xCoords_1$wget = xPos_val - 11'd7 ;
  assign xCoords_2$wget = xPos_val - 11'd6 ;
  assign xCoords_3$wget = xPos_val - 11'd5 ;
  assign xCoords_4$wget = xPos_val - 11'd4 ;
  assign xCoords_5$wget = xPos_val - 11'd3 ;
  assign xCoords_6$wget = xPos_val - 11'd2 ;
  assign xCoords_7$wget = xPos_val - 11'd1 ;
  assign xCoords_9$wget = xPos_val + 11'd1 ;
  assign xCoords_10$wget = xPos_val + 11'd2 ;
  assign xCoords_11$wget = xPos_val + 11'd3 ;
  assign xCoords_12$wget = xPos_val + 11'd4 ;
  assign xCoords_13$wget = xPos_val + 11'd5 ;
  assign xCoords_14$wget = xPos_val + 11'd6 ;
  assign xCoords_15$wget = xPos_val + 11'd7 ;
  assign xCoords_16$wget = xPos_val + 11'd8 ;
  assign yCoords$wget = yPos_val - 10'd5 ;
  assign yCoords_1$wget = yPos_val - 10'd4 ;
  assign yCoords_2$wget = yPos_val - 10'd3 ;
  assign yCoords_3$wget = yPos_val - 10'd2 ;
  assign yCoords_4$wget = yPos_val - 10'd1 ;

  // register fretPressed
  assign fretPressed$D_IN =
	     fretValues_OR_fretValues_1_OR_fretValues_2_OR__ETC___d38 ||
	     fretValues_19 ||
	     fretValues_20 ||
	     fretValues_21 ;
  assign fretPressed$EN = vsync ;

  // register fretPressedDly
  assign fretPressedDly$D_IN = !WILL_FIRE_RL_fret_off ;
  assign fretPressedDly$EN =
	     WILL_FIRE_RL_fret_off || fretPressed && !fretPressedDly ;

  // register fretValues
  assign fretValues$D_IN =
	     WILL_FIRE_RL_start_pixel0h ?
	       MUX_fretValues$write_1__VAL_1 :
	       MUX_fretValues$write_1__VAL_2 ;
  assign fretValues$EN =
	     WILL_FIRE_RL_start_pixel0h ||
	     x_8_EQ_xCoords_wget__1_2_AND_y_2_EQ_yCoords_5__ETC___d328 &&
	     !vsync ;

  // register fretValues_1
  assign fretValues_1$D_IN =
	     WILL_FIRE_RL_start_pixel1h ?
	       MUX_fretValues$write_1__VAL_1 :
	       MUX_fretValues$write_1__VAL_2 ;
  assign fretValues_1$EN =
	     WILL_FIRE_RL_start_pixel1h ||
	     x_8_EQ_xCoords_1_wget__07_08_AND_y_2_EQ_yCoord_ETC___d344 &&
	     !vsync ;

  // register fretValues_10
  assign fretValues_10$D_IN =
	     WILL_FIRE_RL_start_pixel10h ?
	       MUX_fretValues$write_1__VAL_1 :
	       MUX_fretValues$write_1__VAL_2 ;
  assign fretValues_10$EN =
	     WILL_FIRE_RL_start_pixel10h ||
	     x_8_EQ_xCoords_10_wget__97_98_AND_y_2_EQ_yCoor_ETC___d389 &&
	     !vsync ;

  // register fretValues_11
  assign fretValues_11$D_IN =
	     WILL_FIRE_RL_start_pixel11h ?
	       MUX_fretValues$write_1__VAL_1 :
	       MUX_fretValues$write_1__VAL_2 ;
  assign fretValues_11$EN =
	     WILL_FIRE_RL_start_pixel11h ||
	     x_8_EQ_xCoords_11_wget__07_08_AND_y_2_EQ_yCoor_ETC___d394 &&
	     !vsync ;

  // register fretValues_12
  assign fretValues_12$D_IN =
	     WILL_FIRE_RL_start_pixel12h ?
	       MUX_fretValues$write_1__VAL_1 :
	       MUX_fretValues$write_1__VAL_2 ;
  assign fretValues_12$EN =
	     WILL_FIRE_RL_start_pixel12h ||
	     x_8_EQ_xCoords_12_wget__17_18_AND_y_2_EQ_yCoor_ETC___d399 &&
	     !vsync ;

  // register fretValues_13
  assign fretValues_13$D_IN =
	     WILL_FIRE_RL_start_pixel13h ?
	       MUX_fretValues$write_1__VAL_1 :
	       MUX_fretValues$write_1__VAL_2 ;
  assign fretValues_13$EN =
	     WILL_FIRE_RL_start_pixel13h ||
	     x_8_EQ_xCoords_13_wget__27_28_AND_y_2_EQ_yCoor_ETC___d404 &&
	     !vsync ;

  // register fretValues_14
  assign fretValues_14$D_IN =
	     WILL_FIRE_RL_start_pixel14h ?
	       MUX_fretValues$write_1__VAL_1 :
	       MUX_fretValues$write_1__VAL_2 ;
  assign fretValues_14$EN =
	     WILL_FIRE_RL_start_pixel14h ||
	     x_8_EQ_xCoords_14_wget__37_38_AND_y_2_EQ_yCoor_ETC___d409 &&
	     !vsync ;

  // register fretValues_15
  assign fretValues_15$D_IN =
	     WILL_FIRE_RL_start_pixel15h ?
	       MUX_fretValues$write_1__VAL_1 :
	       MUX_fretValues$write_1__VAL_2 ;
  assign fretValues_15$EN =
	     WILL_FIRE_RL_start_pixel15h ||
	     x_8_EQ_xCoords_15_wget__47_48_AND_y_2_EQ_yCoor_ETC___d414 &&
	     !vsync ;

  // register fretValues_16
  assign fretValues_16$D_IN =
	     WILL_FIRE_RL_start_pixel16h ?
	       MUX_fretValues$write_1__VAL_1 :
	       MUX_fretValues$write_1__VAL_2 ;
  assign fretValues_16$EN =
	     WILL_FIRE_RL_start_pixel16h ||
	     x_8_EQ_xCoords_16_wget__57_58_AND_y_2_EQ_yCoor_ETC___d419 &&
	     !vsync ;

  // register fretValues_17
  assign fretValues_17$D_IN =
	     WILL_FIRE_RL_start_pixel0v ?
	       MUX_fretValues$write_1__VAL_1 :
	       MUX_fretValues$write_1__VAL_2 ;
  assign fretValues_17$EN =
	     WILL_FIRE_RL_start_pixel0v ||
	     x_8_EQ_xCoords_8_wget__77_78_AND_y_2_EQ_yCoord_ETC___d426 &&
	     !vsync ;

  // register fretValues_18
  assign fretValues_18$D_IN =
	     WILL_FIRE_RL_start_pixel1v ?
	       MUX_fretValues$write_1__VAL_1 :
	       MUX_fretValues$write_1__VAL_2 ;
  assign fretValues_18$EN =
	     WILL_FIRE_RL_start_pixel1v ||
	     x_8_EQ_xCoords_8_wget__77_78_AND_y_2_EQ_yCoord_ETC___d433 &&
	     !vsync ;

  // register fretValues_19
  assign fretValues_19$D_IN =
	     WILL_FIRE_RL_start_pixel2v ?
	       MUX_fretValues$write_1__VAL_1 :
	       MUX_fretValues$write_1__VAL_2 ;
  assign fretValues_19$EN =
	     WILL_FIRE_RL_start_pixel2v ||
	     x_8_EQ_xCoords_8_wget__77_78_AND_y_2_EQ_yCoord_ETC___d440 &&
	     !vsync ;

  // register fretValues_2
  assign fretValues_2$D_IN =
	     WILL_FIRE_RL_start_pixel2h ?
	       MUX_fretValues$write_1__VAL_1 :
	       MUX_fretValues$write_1__VAL_2 ;
  assign fretValues_2$EN =
	     WILL_FIRE_RL_start_pixel2h ||
	     x_8_EQ_xCoords_2_wget__17_18_AND_y_2_EQ_yCoord_ETC___d349 &&
	     !vsync ;

  // register fretValues_20
  assign fretValues_20$D_IN =
	     WILL_FIRE_RL_start_pixel3v ?
	       MUX_fretValues$write_1__VAL_1 :
	       MUX_fretValues$write_1__VAL_2 ;
  assign fretValues_20$EN =
	     WILL_FIRE_RL_start_pixel3v ||
	     x_8_EQ_xCoords_8_wget__77_78_AND_y_2_EQ_yCoord_ETC___d447 &&
	     !vsync ;

  // register fretValues_21
  assign fretValues_21$D_IN =
	     WILL_FIRE_RL_start_pixel4v ?
	       MUX_fretValues$write_1__VAL_1 :
	       MUX_fretValues$write_1__VAL_2 ;
  assign fretValues_21$EN =
	     WILL_FIRE_RL_start_pixel4v ||
	     x_8_EQ_xCoords_8_wget__77_78_AND_y_2_EQ_yCoord_ETC___d454 &&
	     !vsync ;

  // register fretValues_3
  assign fretValues_3$D_IN =
	     WILL_FIRE_RL_start_pixel3h ?
	       MUX_fretValues$write_1__VAL_1 :
	       MUX_fretValues$write_1__VAL_2 ;
  assign fretValues_3$EN =
	     WILL_FIRE_RL_start_pixel3h ||
	     x_8_EQ_xCoords_3_wget__27_28_AND_y_2_EQ_yCoord_ETC___d354 &&
	     !vsync ;

  // register fretValues_4
  assign fretValues_4$D_IN =
	     WILL_FIRE_RL_start_pixel4h ?
	       MUX_fretValues$write_1__VAL_1 :
	       MUX_fretValues$write_1__VAL_2 ;
  assign fretValues_4$EN =
	     WILL_FIRE_RL_start_pixel4h ||
	     x_8_EQ_xCoords_4_wget__37_38_AND_y_2_EQ_yCoord_ETC___d359 &&
	     !vsync ;

  // register fretValues_5
  assign fretValues_5$D_IN =
	     WILL_FIRE_RL_start_pixel5h ?
	       MUX_fretValues$write_1__VAL_1 :
	       MUX_fretValues$write_1__VAL_2 ;
  assign fretValues_5$EN =
	     WILL_FIRE_RL_start_pixel5h ||
	     x_8_EQ_xCoords_5_wget__47_48_AND_y_2_EQ_yCoord_ETC___d364 &&
	     !vsync ;

  // register fretValues_6
  assign fretValues_6$D_IN =
	     WILL_FIRE_RL_start_pixel6h ?
	       MUX_fretValues$write_1__VAL_1 :
	       MUX_fretValues$write_1__VAL_2 ;
  assign fretValues_6$EN =
	     WILL_FIRE_RL_start_pixel6h ||
	     x_8_EQ_xCoords_6_wget__57_58_AND_y_2_EQ_yCoord_ETC___d369 &&
	     !vsync ;

  // register fretValues_7
  assign fretValues_7$D_IN =
	     WILL_FIRE_RL_start_pixel7h ?
	       MUX_fretValues$write_1__VAL_1 :
	       MUX_fretValues$write_1__VAL_2 ;
  assign fretValues_7$EN =
	     WILL_FIRE_RL_start_pixel7h ||
	     x_8_EQ_xCoords_7_wget__67_68_AND_y_2_EQ_yCoord_ETC___d374 &&
	     !vsync ;

  // register fretValues_8
  assign fretValues_8$D_IN =
	     x_8_EQ_xCoords_8_wget__77_78_AND_y_2_EQ_yCoord_ETC___d181 ?
	       MUX_fretValues$write_1__VAL_1 :
	       MUX_fretValues$write_1__VAL_2 ;
  assign fretValues_8$EN =
	     x_8_EQ_xCoords_8_wget__77_78_AND_y_2_EQ_yCoord_ETC___d181 ||
	     x_8_EQ_xCoords_8_wget__77_78_AND_y_2_EQ_yCoord_ETC___d380 ;

  // register fretValues_9
  assign fretValues_9$D_IN =
	     WILL_FIRE_RL_start_pixel9h ?
	       MUX_fretValues$write_1__VAL_1 :
	       MUX_fretValues$write_1__VAL_2 ;
  assign fretValues_9$EN =
	     WILL_FIRE_RL_start_pixel9h ||
	     x_8_EQ_xCoords_9_wget__87_88_AND_y_2_EQ_yCoord_ETC___d384 &&
	     !vsync ;

  // register x
  assign x$D_IN = WILL_FIRE_RL_new_pixel ? MUX_x$write_1__VAL_1 : 11'd0 ;
  assign x$EN = WILL_FIRE_RL_new_pixel || WILL_FIRE_RL_new_line || vsync ;

  // register y
  assign y$D_IN = WILL_FIRE_RL_new_line ? MUX_y$write_1__VAL_1 : 10'd0 ;
  assign y$EN = MUX_x$write_1__SEL_2 ;

  // remaining internal signals
  assign fretValues_OR_fretValues_1_OR_fretValues_2_OR__ETC___d14 =
	     fretValues || fretValues_1 || fretValues_2 || fretValues_3 ||
	     fretValues_4 ||
	     fretValues_5 ||
	     fretValues_6 ;
  assign fretValues_OR_fretValues_1_OR_fretValues_2_OR__ETC___d26 =
	     fretValues_OR_fretValues_1_OR_fretValues_2_OR__ETC___d14 ||
	     fretValues_7 ||
	     fretValues_8 ||
	     fretValues_9 ||
	     fretValues_10 ||
	     fretValues_11 ||
	     fretValues_12 ;
  assign fretValues_OR_fretValues_1_OR_fretValues_2_OR__ETC___d38 =
	     fretValues_OR_fretValues_1_OR_fretValues_2_OR__ETC___d26 ||
	     fretValues_13 ||
	     fretValues_14 ||
	     fretValues_15 ||
	     fretValues_16 ||
	     fretValues_17 ||
	     fretValues_18 ;
  assign x_8_EQ_xCoords_10_wget__97_98_AND_y_2_EQ_yCoor_ETC___d389 =
	     x == xCoords_10$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     fretPressed ;
  assign x_8_EQ_xCoords_11_wget__07_08_AND_y_2_EQ_yCoor_ETC___d394 =
	     x == xCoords_11$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     fretPressed ;
  assign x_8_EQ_xCoords_12_wget__17_18_AND_y_2_EQ_yCoor_ETC___d399 =
	     x == xCoords_12$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     fretPressed ;
  assign x_8_EQ_xCoords_13_wget__27_28_AND_y_2_EQ_yCoor_ETC___d404 =
	     x == xCoords_13$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     fretPressed ;
  assign x_8_EQ_xCoords_14_wget__37_38_AND_y_2_EQ_yCoor_ETC___d409 =
	     x == xCoords_14$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     fretPressed ;
  assign x_8_EQ_xCoords_15_wget__47_48_AND_y_2_EQ_yCoor_ETC___d414 =
	     x == xCoords_15$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     fretPressed ;
  assign x_8_EQ_xCoords_16_wget__57_58_AND_y_2_EQ_yCoor_ETC___d419 =
	     x == xCoords_16$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     fretPressed ;
  assign x_8_EQ_xCoords_1_wget__07_08_AND_y_2_EQ_yCoord_ETC___d344 =
	     x == xCoords_1$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     fretPressed ;
  assign x_8_EQ_xCoords_2_wget__17_18_AND_y_2_EQ_yCoord_ETC___d349 =
	     x == xCoords_2$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     fretPressed ;
  assign x_8_EQ_xCoords_3_wget__27_28_AND_y_2_EQ_yCoord_ETC___d354 =
	     x == xCoords_3$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     fretPressed ;
  assign x_8_EQ_xCoords_4_wget__37_38_AND_y_2_EQ_yCoord_ETC___d359 =
	     x == xCoords_4$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     fretPressed ;
  assign x_8_EQ_xCoords_5_wget__47_48_AND_y_2_EQ_yCoord_ETC___d364 =
	     x == xCoords_5$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     fretPressed ;
  assign x_8_EQ_xCoords_6_wget__57_58_AND_y_2_EQ_yCoord_ETC___d369 =
	     x == xCoords_6$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     fretPressed ;
  assign x_8_EQ_xCoords_7_wget__67_68_AND_y_2_EQ_yCoord_ETC___d374 =
	     x == xCoords_7$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     fretPressed ;
  assign x_8_EQ_xCoords_8_wget__77_78_AND_y_2_EQ_yCoord_ETC___d181 =
	     x_8_EQ_xCoords_8_wget__77___d178 &&
	     y_2_EQ_yCoords_5_wget__3___d84 &&
	     !fretPressed &&
	     !vsync ;
  assign x_8_EQ_xCoords_8_wget__77_78_AND_y_2_EQ_yCoord_ETC___d380 =
	     x_8_EQ_xCoords_8_wget__77___d178 &&
	     y_2_EQ_yCoords_5_wget__3___d84 &&
	     fretPressed &&
	     !vsync ;
  assign x_8_EQ_xCoords_8_wget__77_78_AND_y_2_EQ_yCoord_ETC___d426 =
	     x_8_EQ_xCoords_8_wget__77___d178 && y == yCoords$wget &&
	     fretPressed ;
  assign x_8_EQ_xCoords_8_wget__77_78_AND_y_2_EQ_yCoord_ETC___d433 =
	     x_8_EQ_xCoords_8_wget__77___d178 && y == yCoords_1$wget &&
	     fretPressed ;
  assign x_8_EQ_xCoords_8_wget__77_78_AND_y_2_EQ_yCoord_ETC___d440 =
	     x_8_EQ_xCoords_8_wget__77___d178 && y == yCoords_2$wget &&
	     fretPressed ;
  assign x_8_EQ_xCoords_8_wget__77_78_AND_y_2_EQ_yCoord_ETC___d447 =
	     x_8_EQ_xCoords_8_wget__77___d178 && y == yCoords_3$wget &&
	     fretPressed ;
  assign x_8_EQ_xCoords_8_wget__77_78_AND_y_2_EQ_yCoord_ETC___d454 =
	     x_8_EQ_xCoords_8_wget__77___d178 && y == yCoords_4$wget &&
	     fretPressed ;
  assign x_8_EQ_xCoords_8_wget__77___d178 = x == xPos_val ;
  assign x_8_EQ_xCoords_9_wget__87_88_AND_y_2_EQ_yCoord_ETC___d384 =
	     x == xCoords_9$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     fretPressed ;
  assign x_8_EQ_xCoords_wget__1_2_AND_y_2_EQ_yCoords_5__ETC___d328 =
	     x == xCoords$wget && y_2_EQ_yCoords_5_wget__3___d84 &&
	     fretPressed ;
  assign y_2_EQ_yCoords_5_wget__3___d84 = y == yPos_val ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (!RST_N)
      begin
        fretPressed <= `BSV_ASSIGNMENT_DELAY 1'd0;
	fretPressedDly <= `BSV_ASSIGNMENT_DELAY 1'd0;
	fretValues <= `BSV_ASSIGNMENT_DELAY 1'd0;
	fretValues_1 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	fretValues_10 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	fretValues_11 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	fretValues_12 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	fretValues_13 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	fretValues_14 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	fretValues_15 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	fretValues_16 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	fretValues_17 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	fretValues_18 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	fretValues_19 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	fretValues_2 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	fretValues_20 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	fretValues_21 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	fretValues_3 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	fretValues_4 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	fretValues_5 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	fretValues_6 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	fretValues_7 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	fretValues_8 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	fretValues_9 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	x <= `BSV_ASSIGNMENT_DELAY 11'd0;
	y <= `BSV_ASSIGNMENT_DELAY 10'd0;
      end
    else
      begin
        if (fretPressed$EN)
	  fretPressed <= `BSV_ASSIGNMENT_DELAY fretPressed$D_IN;
	if (fretPressedDly$EN)
	  fretPressedDly <= `BSV_ASSIGNMENT_DELAY fretPressedDly$D_IN;
	if (fretValues$EN)
	  fretValues <= `BSV_ASSIGNMENT_DELAY fretValues$D_IN;
	if (fretValues_1$EN)
	  fretValues_1 <= `BSV_ASSIGNMENT_DELAY fretValues_1$D_IN;
	if (fretValues_10$EN)
	  fretValues_10 <= `BSV_ASSIGNMENT_DELAY fretValues_10$D_IN;
	if (fretValues_11$EN)
	  fretValues_11 <= `BSV_ASSIGNMENT_DELAY fretValues_11$D_IN;
	if (fretValues_12$EN)
	  fretValues_12 <= `BSV_ASSIGNMENT_DELAY fretValues_12$D_IN;
	if (fretValues_13$EN)
	  fretValues_13 <= `BSV_ASSIGNMENT_DELAY fretValues_13$D_IN;
	if (fretValues_14$EN)
	  fretValues_14 <= `BSV_ASSIGNMENT_DELAY fretValues_14$D_IN;
	if (fretValues_15$EN)
	  fretValues_15 <= `BSV_ASSIGNMENT_DELAY fretValues_15$D_IN;
	if (fretValues_16$EN)
	  fretValues_16 <= `BSV_ASSIGNMENT_DELAY fretValues_16$D_IN;
	if (fretValues_17$EN)
	  fretValues_17 <= `BSV_ASSIGNMENT_DELAY fretValues_17$D_IN;
	if (fretValues_18$EN)
	  fretValues_18 <= `BSV_ASSIGNMENT_DELAY fretValues_18$D_IN;
	if (fretValues_19$EN)
	  fretValues_19 <= `BSV_ASSIGNMENT_DELAY fretValues_19$D_IN;
	if (fretValues_2$EN)
	  fretValues_2 <= `BSV_ASSIGNMENT_DELAY fretValues_2$D_IN;
	if (fretValues_20$EN)
	  fretValues_20 <= `BSV_ASSIGNMENT_DELAY fretValues_20$D_IN;
	if (fretValues_21$EN)
	  fretValues_21 <= `BSV_ASSIGNMENT_DELAY fretValues_21$D_IN;
	if (fretValues_3$EN)
	  fretValues_3 <= `BSV_ASSIGNMENT_DELAY fretValues_3$D_IN;
	if (fretValues_4$EN)
	  fretValues_4 <= `BSV_ASSIGNMENT_DELAY fretValues_4$D_IN;
	if (fretValues_5$EN)
	  fretValues_5 <= `BSV_ASSIGNMENT_DELAY fretValues_5$D_IN;
	if (fretValues_6$EN)
	  fretValues_6 <= `BSV_ASSIGNMENT_DELAY fretValues_6$D_IN;
	if (fretValues_7$EN)
	  fretValues_7 <= `BSV_ASSIGNMENT_DELAY fretValues_7$D_IN;
	if (fretValues_8$EN)
	  fretValues_8 <= `BSV_ASSIGNMENT_DELAY fretValues_8$D_IN;
	if (fretValues_9$EN)
	  fretValues_9 <= `BSV_ASSIGNMENT_DELAY fretValues_9$D_IN;
	if (x$EN) x <= `BSV_ASSIGNMENT_DELAY x$D_IN;
	if (y$EN) y <= `BSV_ASSIGNMENT_DELAY y$D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    fretPressed = 1'h0;
    fretPressedDly = 1'h0;
    fretValues = 1'h0;
    fretValues_1 = 1'h0;
    fretValues_10 = 1'h0;
    fretValues_11 = 1'h0;
    fretValues_12 = 1'h0;
    fretValues_13 = 1'h0;
    fretValues_14 = 1'h0;
    fretValues_15 = 1'h0;
    fretValues_16 = 1'h0;
    fretValues_17 = 1'h0;
    fretValues_18 = 1'h0;
    fretValues_19 = 1'h0;
    fretValues_2 = 1'h0;
    fretValues_20 = 1'h0;
    fretValues_21 = 1'h0;
    fretValues_3 = 1'h0;
    fretValues_4 = 1'h0;
    fretValues_5 = 1'h0;
    fretValues_6 = 1'h0;
    fretValues_7 = 1'h0;
    fretValues_8 = 1'h0;
    fretValues_9 = 1'h0;
    x = 11'h2AA;
    y = 10'h2AA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkFret

