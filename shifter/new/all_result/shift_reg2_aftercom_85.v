
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
         n132, n133, n134, n135;
  wire   [7:0] shift_in;

  GTECH_FJK3S shift_reg_reg_0_ ( .J(n57), .K(n57), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n77), .SD(n56), .Q(data_out[0]), .QN(n80) );
  GTECH_FJK3S shift_reg_reg_6_ ( .J(n57), .K(n57), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n77), .SD(n56), .Q(data_out[6]), .QN(n76) );
  GTECH_FJK3S shift_reg_reg_7_ ( .J(n57), .K(n57), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n77), .SD(n56), .Q(data_out[7]), .QN(n73) );
  GTECH_FJK3S shift_reg_reg_5_ ( .J(n57), .K(n57), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n77), .SD(n56), .Q(data_out[5]), .QN(n70) );
  GTECH_FJK3S shift_reg_reg_4_ ( .J(n57), .K(n57), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n77), .SD(n56), .Q(data_out[4]), .QN(n67) );
  GTECH_FJK3S shift_reg_reg_3_ ( .J(n57), .K(n57), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n77), .SD(n56), .Q(data_out[3]), .QN(n64) );
  GTECH_FJK3S shift_reg_reg_2_ ( .J(n57), .K(n57), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n77), .SD(n56), .Q(data_out[2]), .QN(n61) );
  GTECH_FJK3S shift_reg_reg_1_ ( .J(n57), .K(n57), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n77), .SD(n56), .Q(data_out[1]), .QN(n58) );
  GTECH_ZERO U81 ( .Z(n57) );
  GTECH_ONE U82 ( .Z(n56) );
  GTECH_AND2 U83 ( .A(n81), .B(n82), .Z(shift_in[7]) );
  GTECH_NAND3 U84 ( .A(n83), .B(n84), .C(n85), .Z(n82) );
  GTECH_OA21 U85 ( .A(n64), .B(n86), .C(n87), .Z(n85) );
  GTECH_OA22 U86 ( .A(n61), .B(n88), .C(n58), .D(n89), .Z(n87) );
  GTECH_OR_NOT U87 ( .A(n90), .B(data_in[0]), .Z(n84) );
  GTECH_OA22 U88 ( .A(n91), .B(n92), .C(n76), .D(n93), .Z(n83) );
  GTECH_OAI22 U89 ( .A(n73), .B(n90), .C(n94), .D(n95), .Z(shift_in[6]) );
  GTECH_AND2 U90 ( .A(n96), .B(n97), .Z(n95) );
  GTECH_OA21 U91 ( .A(n58), .B(n88), .C(n98), .Z(n97) );
  GTECH_OA22 U92 ( .A(n91), .B(n99), .C(n70), .D(n93), .Z(n98) );
  GTECH_NOT U93 ( .A(n100), .Z(n91) );
  GTECH_NAND2 U94 ( .A(n101), .B(n102), .Z(n100) );
  GTECH_OA22 U95 ( .A(n80), .B(n89), .C(n61), .D(n86), .Z(n96) );
  GTECH_OAI22 U96 ( .A(n76), .B(n90), .C(n94), .D(n103), .Z(shift_in[5]) );
  GTECH_AND2 U97 ( .A(n104), .B(n105), .Z(n103) );
  GTECH_OA21 U98 ( .A(n73), .B(n102), .C(n106), .Z(n105) );
  GTECH_OA22 U99 ( .A(n67), .B(n93), .C(n80), .D(n88), .Z(n106) );
  GTECH_OA22 U100 ( .A(n101), .B(n107), .C(n58), .D(n86), .Z(n104) );
  GTECH_OAI22 U101 ( .A(n70), .B(n90), .C(n94), .D(n108), .Z(shift_in[4]) );
  GTECH_AND2 U102 ( .A(n109), .B(n110), .Z(n108) );
  GTECH_OA21 U103 ( .A(n76), .B(n102), .C(n111), .Z(n110) );
  GTECH_OA22 U104 ( .A(n64), .B(n93), .C(n92), .D(n88), .Z(n111) );
  GTECH_NOT U105 ( .A(data_in[7]), .Z(n92) );
  GTECH_OA22 U106 ( .A(n101), .B(n112), .C(n80), .D(n86), .Z(n109) );
  GTECH_OAI22 U107 ( .A(n67), .B(n90), .C(n94), .D(n113), .Z(shift_in[3]) );
  GTECH_AND2 U108 ( .A(n114), .B(n115), .Z(n113) );
  GTECH_OA22 U109 ( .A(n61), .B(n93), .C(n88), .D(n99), .Z(n115) );
  GTECH_NOT U110 ( .A(data_in[6]), .Z(n99) );
  GTECH_OA22 U111 ( .A(n70), .B(n102), .C(n101), .D(n116), .Z(n114) );
  GTECH_OAI22 U112 ( .A(n64), .B(n90), .C(n94), .D(n117), .Z(shift_in[2]) );
  GTECH_AND2 U113 ( .A(n118), .B(n119), .Z(n117) );
  GTECH_OA21 U114 ( .A(n73), .B(n89), .C(n120), .Z(n119) );
  GTECH_OA22 U115 ( .A(n58), .B(n93), .C(n88), .D(n107), .Z(n120) );
  GTECH_NOT U116 ( .A(data_in[5]), .Z(n107) );
  GTECH_AOI2N2 U117 ( .A(data_in[2]), .B(n121), .C(n67), .D(n102), .Z(n118) );
  GTECH_OAI22 U118 ( .A(n61), .B(n90), .C(n94), .D(n122), .Z(shift_in[1]) );
  GTECH_AND2 U119 ( .A(n123), .B(n124), .Z(n122) );
  GTECH_OA21 U120 ( .A(n76), .B(n89), .C(n125), .Z(n124) );
  GTECH_OA22 U121 ( .A(n80), .B(n93), .C(n88), .D(n112), .Z(n125) );
  GTECH_NOT U122 ( .A(data_in[4]), .Z(n112) );
  GTECH_NAND2 U123 ( .A(n126), .B(n127), .Z(n93) );
  GTECH_OA21 U124 ( .A(n73), .B(n86), .C(n128), .Z(n123) );
  GTECH_AOI2N2 U125 ( .A(data_in[1]), .B(n121), .C(n64), .D(n102), .Z(n128) );
  GTECH_NOT U126 ( .A(n101), .Z(n121) );
  GTECH_OAI22 U127 ( .A(n58), .B(n90), .C(n94), .D(n129), .Z(shift_in[0]) );
  GTECH_AND2 U128 ( .A(n130), .B(n131), .Z(n129) );
  GTECH_OA21 U129 ( .A(n61), .B(n102), .C(n132), .Z(n131) );
  GTECH_OA22 U130 ( .A(n88), .B(n116), .C(n70), .D(n89), .Z(n132) );
  GTECH_NAND3 U131 ( .A(shift_direction[2]), .B(n126), .C(shift_direction[1]), 
        .Z(n89) );
  GTECH_NOT U132 ( .A(data_in[3]), .Z(n116) );
  GTECH_NAND3 U133 ( .A(shift_direction[2]), .B(shift_direction[0]), .C(
        shift_direction[1]), .Z(n88) );
  GTECH_NAND3 U134 ( .A(shift_direction[0]), .B(n133), .C(shift_direction[2]), 
        .Z(n102) );
  GTECH_OA22 U135 ( .A(n134), .B(n101), .C(n76), .D(n86), .Z(n130) );
  GTECH_NAND3 U136 ( .A(shift_direction[0]), .B(n127), .C(shift_direction[1]), 
        .Z(n101) );
  GTECH_NOT U137 ( .A(data_in[0]), .Z(n134) );
  GTECH_NOT U138 ( .A(n81), .Z(n94) );
  GTECH_NAND2 U139 ( .A(n135), .B(n127), .Z(n81) );
  GTECH_NOT U140 ( .A(n86), .Z(n135) );
  GTECH_NAND2 U141 ( .A(n126), .B(n133), .Z(n86) );
  GTECH_NOT U142 ( .A(shift_direction[0]), .Z(n126) );
  GTECH_NAND2 U143 ( .A(n133), .B(n127), .Z(n90) );
  GTECH_NOT U144 ( .A(shift_direction[2]), .Z(n127) );
  GTECH_NOT U145 ( .A(shift_direction[1]), .Z(n133) );
  GTECH_NOT U146 ( .A(reset), .Z(n77) );
endmodule

