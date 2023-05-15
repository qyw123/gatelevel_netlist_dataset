
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n58, n61, n64, n67, n70, n73, n76, n77, n56, n57, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133;
  wire   [7:0] shift_in;

  GTECH_FJK3S shift_reg_reg_0_ ( .J(n57), .K(n57), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n77), .SD(n56), .Q(data_out[0]), .QN(n80) );
  GTECH_FJK3S shift_reg_reg_1_ ( .J(n57), .K(n57), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n77), .SD(n56), .Q(data_out[1]), .QN(n76) );
  GTECH_FJK3S shift_reg_reg_6_ ( .J(n57), .K(n57), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n77), .SD(n56), .Q(data_out[6]), .QN(n73) );
  GTECH_FJK3S shift_reg_reg_4_ ( .J(n57), .K(n57), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n77), .SD(n56), .Q(data_out[4]), .QN(n70) );
  GTECH_FJK3S shift_reg_reg_2_ ( .J(n57), .K(n57), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n77), .SD(n56), .Q(data_out[2]), .QN(n67) );
  GTECH_FJK3S shift_reg_reg_3_ ( .J(n57), .K(n57), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n77), .SD(n56), .Q(data_out[3]), .QN(n64) );
  GTECH_FJK3S shift_reg_reg_7_ ( .J(n57), .K(n57), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n77), .SD(n56), .Q(data_out[7]), .QN(n61) );
  GTECH_FJK3S shift_reg_reg_5_ ( .J(n57), .K(n57), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n77), .SD(n56), .Q(data_out[5]), .QN(n58) );
  GTECH_ZERO U81 ( .Z(n57) );
  GTECH_ONE U82 ( .Z(n56) );
  GTECH_OA21 U83 ( .A(n81), .B(n82), .C(n83), .Z(shift_in[7]) );
  GTECH_OAI21 U84 ( .A(n84), .B(n85), .C(n86), .Z(n82) );
  GTECH_OA22 U85 ( .A(n64), .B(n87), .C(n76), .D(n88), .Z(n86) );
  GTECH_OAI21 U86 ( .A(n67), .B(n89), .C(n90), .Z(n81) );
  GTECH_OA22 U87 ( .A(n91), .B(n92), .C(n73), .D(n93), .Z(n90) );
  GTECH_OAI21 U88 ( .A(n61), .B(n84), .C(n94), .Z(shift_in[6]) );
  GTECH_OAI21 U89 ( .A(n95), .B(n96), .C(n83), .Z(n94) );
  GTECH_OAI22 U90 ( .A(n80), .B(n88), .C(n67), .D(n87), .Z(n96) );
  GTECH_OAI21 U91 ( .A(n76), .B(n89), .C(n97), .Z(n95) );
  GTECH_OA22 U92 ( .A(n91), .B(n98), .C(n58), .D(n93), .Z(n97) );
  GTECH_NOT U93 ( .A(n99), .Z(n91) );
  GTECH_NAND2 U94 ( .A(n100), .B(n101), .Z(n99) );
  GTECH_OAI21 U95 ( .A(n73), .B(n84), .C(n102), .Z(shift_in[5]) );
  GTECH_OAI21 U96 ( .A(n103), .B(n104), .C(n83), .Z(n102) );
  GTECH_OAI22 U97 ( .A(n100), .B(n105), .C(n61), .D(n101), .Z(n104) );
  GTECH_OAI21 U98 ( .A(n76), .B(n87), .C(n106), .Z(n103) );
  GTECH_OA22 U99 ( .A(n70), .B(n93), .C(n80), .D(n89), .Z(n106) );
  GTECH_OAI21 U100 ( .A(n58), .B(n84), .C(n107), .Z(shift_in[4]) );
  GTECH_OAI21 U101 ( .A(n108), .B(n109), .C(n83), .Z(n107) );
  GTECH_OAI22 U102 ( .A(n100), .B(n110), .C(n73), .D(n101), .Z(n109) );
  GTECH_OAI21 U103 ( .A(n80), .B(n87), .C(n111), .Z(n108) );
  GTECH_OA22 U104 ( .A(n64), .B(n93), .C(n92), .D(n89), .Z(n111) );
  GTECH_NOT U105 ( .A(data_in[7]), .Z(n92) );
  GTECH_OAI21 U106 ( .A(n70), .B(n84), .C(n112), .Z(shift_in[3]) );
  GTECH_OAI21 U107 ( .A(n113), .B(n114), .C(n83), .Z(n112) );
  GTECH_OAI22 U108 ( .A(n100), .B(n115), .C(n58), .D(n101), .Z(n114) );
  GTECH_OAI22 U109 ( .A(n89), .B(n98), .C(n67), .D(n93), .Z(n113) );
  GTECH_NOT U110 ( .A(data_in[6]), .Z(n98) );
  GTECH_OAI21 U111 ( .A(n64), .B(n84), .C(n116), .Z(shift_in[2]) );
  GTECH_OAI21 U112 ( .A(n117), .B(n118), .C(n83), .Z(n116) );
  GTECH_OAI2N2 U113 ( .A(n61), .B(n88), .C(data_in[2]), .D(n119), .Z(n118) );
  GTECH_OAI21 U114 ( .A(n70), .B(n101), .C(n120), .Z(n117) );
  GTECH_OA22 U115 ( .A(n76), .B(n93), .C(n89), .D(n105), .Z(n120) );
  GTECH_NOT U116 ( .A(data_in[5]), .Z(n105) );
  GTECH_OAI2N2 U117 ( .A(n67), .B(n84), .C(n83), .D(n121), .Z(shift_in[1]) );
  GTECH_OR3 U118 ( .A(n122), .B(n123), .C(n124), .Z(n121) );
  GTECH_OAI21 U119 ( .A(n61), .B(n87), .C(n125), .Z(n124) );
  GTECH_OA22 U120 ( .A(n110), .B(n89), .C(n93), .D(n80), .Z(n125) );
  GTECH_NAND2 U121 ( .A(n126), .B(n127), .Z(n93) );
  GTECH_NOT U122 ( .A(data_in[4]), .Z(n110) );
  GTECH_OAI2N2 U123 ( .A(n64), .B(n101), .C(data_in[1]), .D(n119), .Z(n123) );
  GTECH_NOT U124 ( .A(n100), .Z(n119) );
  GTECH_NOR2 U125 ( .A(n73), .B(n88), .Z(n122) );
  GTECH_OAI21 U126 ( .A(n76), .B(n84), .C(n128), .Z(shift_in[0]) );
  GTECH_OAI21 U127 ( .A(n129), .B(n130), .C(n83), .Z(n128) );
  GTECH_NAND2 U128 ( .A(n131), .B(n127), .Z(n83) );
  GTECH_NOT U129 ( .A(n84), .Z(n131) );
  GTECH_OAI22 U130 ( .A(n58), .B(n88), .C(n85), .D(n100), .Z(n130) );
  GTECH_NAND3 U131 ( .A(shift_direction[0]), .B(n126), .C(shift_direction[1]), 
        .Z(n100) );
  GTECH_NOT U132 ( .A(data_in[0]), .Z(n85) );
  GTECH_NAND3 U133 ( .A(shift_direction[2]), .B(n127), .C(shift_direction[1]), 
        .Z(n88) );
  GTECH_OAI21 U134 ( .A(n67), .B(n101), .C(n132), .Z(n129) );
  GTECH_OA22 U135 ( .A(n89), .B(n115), .C(n73), .D(n87), .Z(n132) );
  GTECH_NAND2 U136 ( .A(n133), .B(n127), .Z(n87) );
  GTECH_NOT U137 ( .A(shift_direction[0]), .Z(n127) );
  GTECH_NOT U138 ( .A(data_in[3]), .Z(n115) );
  GTECH_NAND3 U139 ( .A(shift_direction[2]), .B(shift_direction[0]), .C(
        shift_direction[1]), .Z(n89) );
  GTECH_NAND3 U140 ( .A(shift_direction[0]), .B(n133), .C(shift_direction[2]), 
        .Z(n101) );
  GTECH_NAND2 U141 ( .A(n133), .B(n126), .Z(n84) );
  GTECH_NOT U142 ( .A(shift_direction[2]), .Z(n126) );
  GTECH_NOT U143 ( .A(shift_direction[1]), .Z(n133) );
  GTECH_NOT U144 ( .A(reset), .Z(n77) );
endmodule

