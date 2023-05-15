
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n76, n69, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n69), .K(n69), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n76), .Q(data_out[0]), .QN(n2) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n69), .K(n69), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n76), .Q(data_out[6]), .QN(n3) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n69), .K(n69), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n76), .Q(data_out[7]), .QN(n4) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n69), .K(n69), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n76), .Q(data_out[5]), .QN(n5) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n69), .K(n69), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n76), .Q(data_out[4]), .QN(n6) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n69), .K(n69), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n76), .Q(data_out[3]), .QN(n7) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n69), .K(n69), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n76), .Q(data_out[2]), .QN(n8) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n69), .K(n69), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n76), .Q(data_out[1]), .QN(n9) );
  GTECH_ZERO U78 ( .Z(n69) );
  GTECH_AND2 U79 ( .A(n78), .B(n79), .Z(shift_in[7]) );
  GTECH_OR4 U80 ( .A(n80), .B(n81), .C(n82), .D(n83), .Z(n79) );
  GTECH_OAI22 U81 ( .A(n9), .B(n84), .C(n8), .D(n85), .Z(n83) );
  GTECH_AND_NOT U82 ( .A(n86), .B(n7), .Z(n82) );
  GTECH_OAI2N2 U83 ( .A(n3), .B(n87), .C(data_in[7]), .D(n88), .Z(n81) );
  GTECH_AND_NOT U84 ( .A(data_in[0]), .B(n89), .Z(n80) );
  GTECH_OAI22 U85 ( .A(n4), .B(n89), .C(n90), .D(n91), .Z(shift_in[6]) );
  GTECH_AND_NOT U86 ( .A(n92), .B(n93), .Z(n91) );
  GTECH_OAI22 U87 ( .A(n8), .B(n94), .C(n84), .D(n2), .Z(n93) );
  GTECH_OA21 U88 ( .A(n85), .B(n9), .C(n95), .Z(n92) );
  GTECH_AOI2N2 U89 ( .A(n88), .B(data_in[6]), .C(n5), .D(n87), .Z(n95) );
  GTECH_NAND2 U90 ( .A(n96), .B(n97), .Z(n88) );
  GTECH_OAI22 U91 ( .A(n3), .B(n89), .C(n90), .D(n98), .Z(shift_in[5]) );
  GTECH_AND2 U92 ( .A(n99), .B(n100), .Z(n98) );
  GTECH_OA21 U93 ( .A(n97), .B(n4), .C(n101), .Z(n100) );
  GTECH_AOI2N2 U94 ( .A(n102), .B(n103), .C(n87), .D(n6), .Z(n101) );
  GTECH_OA21 U95 ( .A(n9), .B(n94), .C(n104), .Z(n99) );
  GTECH_OR_NOT U96 ( .A(n96), .B(data_in[5]), .Z(n104) );
  GTECH_OAI22 U97 ( .A(n5), .B(n89), .C(n90), .D(n105), .Z(shift_in[4]) );
  GTECH_AND2 U98 ( .A(n106), .B(n107), .Z(n105) );
  GTECH_OA21 U99 ( .A(n3), .B(n97), .C(n108), .Z(n107) );
  GTECH_AOI2N2 U100 ( .A(n102), .B(data_in[7]), .C(n7), .D(n87), .Z(n108) );
  GTECH_AOI2N2 U101 ( .A(n86), .B(n103), .C(n96), .D(n109), .Z(n106) );
  GTECH_NOT U102 ( .A(data_in[4]), .Z(n109) );
  GTECH_NOT U103 ( .A(n2), .Z(n103) );
  GTECH_OAI22 U104 ( .A(n6), .B(n89), .C(n90), .D(n110), .Z(shift_in[3]) );
  GTECH_AND2 U105 ( .A(n111), .B(n112), .Z(n110) );
  GTECH_AOI2N2 U106 ( .A(data_in[6]), .B(n102), .C(n8), .D(n87), .Z(n112) );
  GTECH_AOI2N2 U107 ( .A(data_in[3]), .B(n113), .C(n5), .D(n97), .Z(n111) );
  GTECH_OAI22 U108 ( .A(n7), .B(n89), .C(n90), .D(n114), .Z(shift_in[2]) );
  GTECH_AND2 U109 ( .A(n115), .B(n116), .Z(n114) );
  GTECH_OA21 U110 ( .A(n4), .B(n84), .C(n117), .Z(n116) );
  GTECH_AOI2N2 U111 ( .A(data_in[5]), .B(n102), .C(n9), .D(n87), .Z(n117) );
  GTECH_AOI2N2 U112 ( .A(data_in[2]), .B(n113), .C(n6), .D(n97), .Z(n115) );
  GTECH_OAI22 U113 ( .A(n8), .B(n89), .C(n90), .D(n118), .Z(shift_in[1]) );
  GTECH_AND2 U114 ( .A(n119), .B(n120), .Z(n118) );
  GTECH_OA21 U115 ( .A(n3), .B(n84), .C(n121), .Z(n120) );
  GTECH_AOI2N2 U116 ( .A(data_in[4]), .B(n102), .C(n2), .D(n87), .Z(n121) );
  GTECH_NAND2 U117 ( .A(n122), .B(n123), .Z(n87) );
  GTECH_NOT U118 ( .A(n85), .Z(n102) );
  GTECH_OA21 U119 ( .A(n4), .B(n94), .C(n124), .Z(n119) );
  GTECH_AOI2N2 U120 ( .A(data_in[1]), .B(n113), .C(n7), .D(n97), .Z(n124) );
  GTECH_NOT U121 ( .A(n96), .Z(n113) );
  GTECH_OAI22 U122 ( .A(n9), .B(n89), .C(n90), .D(n125), .Z(shift_in[0]) );
  GTECH_AND2 U123 ( .A(n126), .B(n127), .Z(n125) );
  GTECH_OA21 U124 ( .A(n97), .B(n8), .C(n128), .Z(n127) );
  GTECH_OA21 U125 ( .A(n5), .B(n84), .C(n129), .Z(n128) );
  GTECH_OR_NOT U126 ( .A(n85), .B(data_in[3]), .Z(n129) );
  GTECH_NAND3 U127 ( .A(shift_direction[2]), .B(shift_direction[0]), .C(
        shift_direction[1]), .Z(n85) );
  GTECH_NAND3 U128 ( .A(shift_direction[2]), .B(n122), .C(shift_direction[1]), 
        .Z(n84) );
  GTECH_NAND3 U129 ( .A(shift_direction[0]), .B(n130), .C(shift_direction[2]), 
        .Z(n97) );
  GTECH_OA21 U130 ( .A(n3), .B(n94), .C(n131), .Z(n126) );
  GTECH_OR_NOT U131 ( .A(n96), .B(data_in[0]), .Z(n131) );
  GTECH_NAND3 U132 ( .A(shift_direction[0]), .B(n123), .C(shift_direction[1]), 
        .Z(n96) );
  GTECH_NOT U133 ( .A(n78), .Z(n90) );
  GTECH_NAND2 U134 ( .A(n86), .B(n123), .Z(n78) );
  GTECH_NOT U135 ( .A(n94), .Z(n86) );
  GTECH_NAND2 U136 ( .A(n122), .B(n130), .Z(n94) );
  GTECH_NOT U137 ( .A(shift_direction[0]), .Z(n122) );
  GTECH_NAND2 U138 ( .A(n130), .B(n123), .Z(n89) );
  GTECH_NOT U139 ( .A(shift_direction[2]), .Z(n123) );
  GTECH_NOT U140 ( .A(shift_direction[1]), .Z(n130) );
  GTECH_NOT U141 ( .A(reset), .Z(n76) );
endmodule

