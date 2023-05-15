
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n72, n65, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n65), .K(n65), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n72), .Q(data_out[0]), .QN(n2) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n65), .K(n65), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n72), .Q(data_out[6]), .QN(n3) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n65), .K(n65), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n72), .Q(data_out[7]), .QN(n4) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n65), .K(n65), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n72), .Q(data_out[5]), .QN(n5) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n65), .K(n65), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n72), .Q(data_out[4]), .QN(n6) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n65), .K(n65), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n72), .Q(data_out[3]), .QN(n7) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n65), .K(n65), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n72), .Q(data_out[2]), .QN(n8) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n65), .K(n65), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n72), .Q(data_out[1]), .QN(n9) );
  GTECH_ZERO U74 ( .Z(n65) );
  GTECH_AND2 U75 ( .A(n74), .B(n75), .Z(shift_in[7]) );
  GTECH_NAND2 U76 ( .A(n76), .B(n77), .Z(n75) );
  GTECH_OA21 U77 ( .A(n7), .B(n78), .C(n79), .Z(n77) );
  GTECH_OA22 U78 ( .A(n80), .B(n9), .C(n8), .D(n81), .Z(n79) );
  GTECH_AOI21 U79 ( .A(data_in[0]), .B(n82), .C(n83), .Z(n76) );
  GTECH_OAI2N2 U80 ( .A(n84), .B(n3), .C(data_in[7]), .D(n85), .Z(n83) );
  GTECH_NOT U81 ( .A(n86), .Z(n82) );
  GTECH_OAI2N2 U82 ( .A(n4), .B(n86), .C(n87), .D(n74), .Z(shift_in[6]) );
  GTECH_NAND2 U83 ( .A(n88), .B(n89), .Z(n87) );
  GTECH_OA21 U84 ( .A(n81), .B(n9), .C(n90), .Z(n89) );
  GTECH_AOI2N2 U85 ( .A(n85), .B(data_in[6]), .C(n84), .D(n5), .Z(n90) );
  GTECH_NAND2 U86 ( .A(n91), .B(n92), .Z(n85) );
  GTECH_OA22 U87 ( .A(n78), .B(n8), .C(n80), .D(n2), .Z(n88) );
  GTECH_OAI2N2 U88 ( .A(n3), .B(n86), .C(n93), .D(n74), .Z(shift_in[5]) );
  GTECH_NAND2 U89 ( .A(n94), .B(n95), .Z(n93) );
  GTECH_OA21 U90 ( .A(n92), .B(n4), .C(n96), .Z(n95) );
  GTECH_OA22 U91 ( .A(n81), .B(n2), .C(n84), .D(n6), .Z(n96) );
  GTECH_OA22 U92 ( .A(n78), .B(n9), .C(n97), .D(n91), .Z(n94) );
  GTECH_OAI2N2 U93 ( .A(n5), .B(n86), .C(n98), .D(n74), .Z(shift_in[4]) );
  GTECH_NAND2 U94 ( .A(n99), .B(n100), .Z(n98) );
  GTECH_OA21 U95 ( .A(n92), .B(n3), .C(n101), .Z(n100) );
  GTECH_OA21 U96 ( .A(n84), .B(n7), .C(n102), .Z(n101) );
  GTECH_OR_NOT U97 ( .A(n81), .B(data_in[7]), .Z(n102) );
  GTECH_OA22 U98 ( .A(n78), .B(n2), .C(n103), .D(n91), .Z(n99) );
  GTECH_OAI2N2 U99 ( .A(n6), .B(n86), .C(n104), .D(n74), .Z(shift_in[3]) );
  GTECH_NAND2 U100 ( .A(n105), .B(n106), .Z(n104) );
  GTECH_OA21 U101 ( .A(n84), .B(n8), .C(n107), .Z(n106) );
  GTECH_OR_NOT U102 ( .A(n81), .B(data_in[6]), .Z(n107) );
  GTECH_OA22 U103 ( .A(n108), .B(n91), .C(n92), .D(n5), .Z(n105) );
  GTECH_OAI2N2 U104 ( .A(n7), .B(n86), .C(n109), .D(n74), .Z(shift_in[2]) );
  GTECH_NAND2 U105 ( .A(n110), .B(n111), .Z(n109) );
  GTECH_OA21 U106 ( .A(n80), .B(n4), .C(n112), .Z(n111) );
  GTECH_OA22 U107 ( .A(n97), .B(n81), .C(n84), .D(n9), .Z(n112) );
  GTECH_NOT U108 ( .A(data_in[5]), .Z(n97) );
  GTECH_AOI2N2 U109 ( .A(data_in[2]), .B(n113), .C(n92), .D(n6), .Z(n110) );
  GTECH_OAI2N2 U110 ( .A(n8), .B(n86), .C(n114), .D(n74), .Z(shift_in[1]) );
  GTECH_NAND2 U111 ( .A(n115), .B(n116), .Z(n114) );
  GTECH_OA21 U112 ( .A(n80), .B(n3), .C(n117), .Z(n116) );
  GTECH_OA22 U113 ( .A(n103), .B(n81), .C(n84), .D(n2), .Z(n117) );
  GTECH_NAND2 U114 ( .A(n118), .B(n119), .Z(n84) );
  GTECH_NOT U115 ( .A(data_in[4]), .Z(n103) );
  GTECH_OA21 U116 ( .A(n78), .B(n4), .C(n120), .Z(n115) );
  GTECH_AOI2N2 U117 ( .A(data_in[1]), .B(n113), .C(n92), .D(n7), .Z(n120) );
  GTECH_NOT U118 ( .A(n91), .Z(n113) );
  GTECH_OAI2N2 U119 ( .A(n9), .B(n86), .C(n74), .D(n121), .Z(shift_in[0]) );
  GTECH_NAND2 U120 ( .A(n122), .B(n123), .Z(n121) );
  GTECH_OA21 U121 ( .A(n92), .B(n8), .C(n124), .Z(n123) );
  GTECH_OA22 U122 ( .A(n80), .B(n5), .C(n108), .D(n81), .Z(n124) );
  GTECH_NAND3 U123 ( .A(shift_direction[2]), .B(shift_direction[0]), .C(
        shift_direction[1]), .Z(n81) );
  GTECH_NOT U124 ( .A(data_in[3]), .Z(n108) );
  GTECH_NAND3 U125 ( .A(shift_direction[2]), .B(n118), .C(shift_direction[1]), 
        .Z(n80) );
  GTECH_NAND3 U126 ( .A(shift_direction[0]), .B(n125), .C(shift_direction[2]), 
        .Z(n92) );
  GTECH_OA21 U127 ( .A(n78), .B(n3), .C(n126), .Z(n122) );
  GTECH_OR_NOT U128 ( .A(n91), .B(data_in[0]), .Z(n126) );
  GTECH_NAND3 U129 ( .A(shift_direction[0]), .B(n119), .C(shift_direction[1]), 
        .Z(n91) );
  GTECH_NAND2 U130 ( .A(n127), .B(n119), .Z(n74) );
  GTECH_NOT U131 ( .A(n78), .Z(n127) );
  GTECH_NAND2 U132 ( .A(n118), .B(n125), .Z(n78) );
  GTECH_NOT U133 ( .A(shift_direction[0]), .Z(n118) );
  GTECH_NAND2 U134 ( .A(n125), .B(n119), .Z(n86) );
  GTECH_NOT U135 ( .A(shift_direction[2]), .Z(n119) );
  GTECH_NOT U136 ( .A(shift_direction[1]), .Z(n125) );
  GTECH_NOT U137 ( .A(reset), .Z(n72) );
endmodule

