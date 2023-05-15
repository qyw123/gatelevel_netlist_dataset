
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n70, n63, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n63), .K(n63), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n70), .Q(data_out[0]), .QN(n2) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n63), .K(n63), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n70), .Q(data_out[6]), .QN(n3) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n63), .K(n63), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n70), .Q(data_out[7]), .QN(n4) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n63), .K(n63), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n70), .Q(data_out[5]), .QN(n5) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n63), .K(n63), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n70), .Q(data_out[4]), .QN(n6) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n63), .K(n63), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n70), .Q(data_out[3]), .QN(n7) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n63), .K(n63), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n70), .Q(data_out[2]), .QN(n8) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n63), .K(n63), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n70), .Q(data_out[1]), .QN(n9) );
  GTECH_ZERO U72 ( .Z(n63) );
  GTECH_AND2 U73 ( .A(n72), .B(n73), .Z(shift_in[7]) );
  GTECH_NAND3 U74 ( .A(n74), .B(n75), .C(n76), .Z(n73) );
  GTECH_OA21 U75 ( .A(n7), .B(n77), .C(n78), .Z(n76) );
  GTECH_OA22 U76 ( .A(n9), .B(n79), .C(n8), .D(n80), .Z(n78) );
  GTECH_OR_NOT U77 ( .A(n81), .B(data_in[0]), .Z(n75) );
  GTECH_OA22 U78 ( .A(n82), .B(n83), .C(n3), .D(n84), .Z(n74) );
  GTECH_OAI22 U79 ( .A(n4), .B(n81), .C(n85), .D(n86), .Z(shift_in[6]) );
  GTECH_AND2 U80 ( .A(n87), .B(n88), .Z(n86) );
  GTECH_OA21 U81 ( .A(n2), .B(n79), .C(n89), .Z(n88) );
  GTECH_OA22 U82 ( .A(n82), .B(n90), .C(n5), .D(n84), .Z(n89) );
  GTECH_NOT U83 ( .A(n91), .Z(n82) );
  GTECH_OR_NOT U84 ( .A(n92), .B(n93), .Z(n91) );
  GTECH_NOT U85 ( .A(n94), .Z(n92) );
  GTECH_OA22 U86 ( .A(n9), .B(n80), .C(n8), .D(n77), .Z(n87) );
  GTECH_OAI22 U87 ( .A(n3), .B(n81), .C(n85), .D(n95), .Z(shift_in[5]) );
  GTECH_AND2 U88 ( .A(n96), .B(n97), .Z(n95) );
  GTECH_OA21 U89 ( .A(n4), .B(n94), .C(n98), .Z(n97) );
  GTECH_OA22 U90 ( .A(n6), .B(n84), .C(n2), .D(n80), .Z(n98) );
  GTECH_OA22 U91 ( .A(n93), .B(n99), .C(n9), .D(n77), .Z(n96) );
  GTECH_OAI22 U92 ( .A(n5), .B(n81), .C(n85), .D(n100), .Z(shift_in[4]) );
  GTECH_AND2 U93 ( .A(n101), .B(n102), .Z(n100) );
  GTECH_OA21 U94 ( .A(n3), .B(n94), .C(n103), .Z(n102) );
  GTECH_OA22 U95 ( .A(n7), .B(n84), .C(n83), .D(n80), .Z(n103) );
  GTECH_NOT U96 ( .A(data_in[7]), .Z(n83) );
  GTECH_OA22 U97 ( .A(n93), .B(n104), .C(n2), .D(n77), .Z(n101) );
  GTECH_OAI22 U98 ( .A(n6), .B(n81), .C(n85), .D(n105), .Z(shift_in[3]) );
  GTECH_AND2 U99 ( .A(n106), .B(n107), .Z(n105) );
  GTECH_OA22 U100 ( .A(n8), .B(n84), .C(n80), .D(n90), .Z(n107) );
  GTECH_NOT U101 ( .A(data_in[6]), .Z(n90) );
  GTECH_OA22 U102 ( .A(n5), .B(n94), .C(n93), .D(n108), .Z(n106) );
  GTECH_OAI22 U103 ( .A(n7), .B(n81), .C(n85), .D(n109), .Z(shift_in[2]) );
  GTECH_AND2 U104 ( .A(n110), .B(n111), .Z(n109) );
  GTECH_OA21 U105 ( .A(n80), .B(n99), .C(n112), .Z(n111) );
  GTECH_OA22 U106 ( .A(n9), .B(n84), .C(n4), .D(n79), .Z(n112) );
  GTECH_NOT U107 ( .A(data_in[5]), .Z(n99) );
  GTECH_AOI2N2 U108 ( .A(data_in[2]), .B(n113), .C(n6), .D(n94), .Z(n110) );
  GTECH_OAI22 U109 ( .A(n8), .B(n81), .C(n85), .D(n114), .Z(shift_in[1]) );
  GTECH_AND2 U110 ( .A(n115), .B(n116), .Z(n114) );
  GTECH_OA21 U111 ( .A(n80), .B(n104), .C(n117), .Z(n116) );
  GTECH_OA22 U112 ( .A(n2), .B(n84), .C(n3), .D(n79), .Z(n117) );
  GTECH_OR_NOT U113 ( .A(shift_direction[2]), .B(n118), .Z(n84) );
  GTECH_NOT U114 ( .A(data_in[4]), .Z(n104) );
  GTECH_OA21 U115 ( .A(n4), .B(n77), .C(n119), .Z(n115) );
  GTECH_AOI2N2 U116 ( .A(data_in[1]), .B(n113), .C(n7), .D(n94), .Z(n119) );
  GTECH_NOT U117 ( .A(n93), .Z(n113) );
  GTECH_OAI22 U118 ( .A(n9), .B(n81), .C(n85), .D(n120), .Z(shift_in[0]) );
  GTECH_AND2 U119 ( .A(n121), .B(n122), .Z(n120) );
  GTECH_OA21 U120 ( .A(n8), .B(n94), .C(n123), .Z(n122) );
  GTECH_OA22 U121 ( .A(n5), .B(n79), .C(n80), .D(n108), .Z(n123) );
  GTECH_NOT U122 ( .A(data_in[3]), .Z(n108) );
  GTECH_NAND3 U123 ( .A(shift_direction[2]), .B(shift_direction[0]), .C(
        shift_direction[1]), .Z(n80) );
  GTECH_NAND3 U124 ( .A(shift_direction[2]), .B(n118), .C(shift_direction[1]), 
        .Z(n79) );
  GTECH_NAND3 U125 ( .A(shift_direction[0]), .B(n124), .C(shift_direction[2]), 
        .Z(n94) );
  GTECH_OA22 U126 ( .A(n125), .B(n93), .C(n3), .D(n77), .Z(n121) );
  GTECH_NAND3 U127 ( .A(shift_direction[0]), .B(n126), .C(shift_direction[1]), 
        .Z(n93) );
  GTECH_NOT U128 ( .A(shift_direction[2]), .Z(n126) );
  GTECH_NOT U129 ( .A(data_in[0]), .Z(n125) );
  GTECH_NOT U130 ( .A(n72), .Z(n85) );
  GTECH_OR_NOT U131 ( .A(shift_direction[2]), .B(n127), .Z(n72) );
  GTECH_NOT U132 ( .A(n77), .Z(n127) );
  GTECH_OR_NOT U133 ( .A(shift_direction[1]), .B(n118), .Z(n77) );
  GTECH_NOT U134 ( .A(shift_direction[0]), .Z(n118) );
  GTECH_OR_NOT U135 ( .A(shift_direction[2]), .B(n124), .Z(n81) );
  GTECH_NOT U136 ( .A(shift_direction[1]), .Z(n124) );
  GTECH_NOT U137 ( .A(reset), .Z(n70) );
endmodule

