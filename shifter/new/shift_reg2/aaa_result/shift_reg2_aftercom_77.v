
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
  GTECH_OA21 U73 ( .A(n72), .B(n73), .C(n74), .Z(shift_in[7]) );
  GTECH_AO21 U74 ( .A(n75), .B(n76), .C(n77), .Z(n73) );
  GTECH_OAI22 U75 ( .A(n8), .B(n78), .C(n9), .D(n79), .Z(n77) );
  GTECH_NOT U76 ( .A(n7), .Z(n76) );
  GTECH_AO21 U77 ( .A(data_in[0]), .B(n80), .C(n81), .Z(n72) );
  GTECH_OAI22 U78 ( .A(n3), .B(n82), .C(n83), .D(n84), .Z(n81) );
  GTECH_NOT U79 ( .A(n85), .Z(n80) );
  GTECH_OAI22 U80 ( .A(n4), .B(n85), .C(n86), .D(n87), .Z(shift_in[6]) );
  GTECH_AND2 U81 ( .A(n88), .B(n89), .Z(n87) );
  GTECH_OA21 U82 ( .A(n2), .B(n79), .C(n90), .Z(n89) );
  GTECH_OA22 U83 ( .A(n83), .B(n91), .C(n5), .D(n82), .Z(n90) );
  GTECH_NOT U84 ( .A(n92), .Z(n83) );
  GTECH_NAND2 U85 ( .A(n93), .B(n94), .Z(n92) );
  GTECH_OA22 U86 ( .A(n9), .B(n78), .C(n8), .D(n95), .Z(n88) );
  GTECH_OAI22 U87 ( .A(n3), .B(n85), .C(n86), .D(n96), .Z(shift_in[5]) );
  GTECH_AND2 U88 ( .A(n97), .B(n98), .Z(n96) );
  GTECH_OA21 U89 ( .A(n4), .B(n94), .C(n99), .Z(n98) );
  GTECH_OA22 U90 ( .A(n6), .B(n82), .C(n2), .D(n78), .Z(n99) );
  GTECH_OA22 U91 ( .A(n93), .B(n100), .C(n9), .D(n95), .Z(n97) );
  GTECH_OAI22 U92 ( .A(n5), .B(n85), .C(n86), .D(n101), .Z(shift_in[4]) );
  GTECH_AND2 U93 ( .A(n102), .B(n103), .Z(n101) );
  GTECH_OA21 U94 ( .A(n3), .B(n94), .C(n104), .Z(n103) );
  GTECH_OA22 U95 ( .A(n7), .B(n82), .C(n84), .D(n78), .Z(n104) );
  GTECH_NOT U96 ( .A(data_in[7]), .Z(n84) );
  GTECH_OA22 U97 ( .A(n93), .B(n105), .C(n2), .D(n95), .Z(n102) );
  GTECH_NOT U98 ( .A(data_in[4]), .Z(n105) );
  GTECH_OAI22 U99 ( .A(n6), .B(n85), .C(n86), .D(n106), .Z(shift_in[3]) );
  GTECH_AND2 U100 ( .A(n107), .B(n108), .Z(n106) );
  GTECH_OA22 U101 ( .A(n8), .B(n82), .C(n78), .D(n91), .Z(n108) );
  GTECH_NOT U102 ( .A(data_in[6]), .Z(n91) );
  GTECH_OA22 U103 ( .A(n5), .B(n94), .C(n93), .D(n109), .Z(n107) );
  GTECH_OAI22 U104 ( .A(n7), .B(n85), .C(n86), .D(n110), .Z(shift_in[2]) );
  GTECH_AND_NOT U105 ( .A(n111), .B(n112), .Z(n110) );
  GTECH_OAI2N2 U106 ( .A(n6), .B(n94), .C(data_in[2]), .D(n113), .Z(n112) );
  GTECH_OA21 U107 ( .A(n100), .B(n78), .C(n114), .Z(n111) );
  GTECH_OA22 U108 ( .A(n79), .B(n4), .C(n82), .D(n9), .Z(n114) );
  GTECH_NOT U109 ( .A(data_in[5]), .Z(n100) );
  GTECH_OAI22 U110 ( .A(n8), .B(n85), .C(n86), .D(n115), .Z(shift_in[1]) );
  GTECH_NOR4 U111 ( .A(n116), .B(n117), .C(n118), .D(n119), .Z(n115) );
  GTECH_OAI2N2 U112 ( .A(n7), .B(n94), .C(data_in[1]), .D(n113), .Z(n119) );
  GTECH_NOT U113 ( .A(n93), .Z(n113) );
  GTECH_NOR2 U114 ( .A(n95), .B(n4), .Z(n118) );
  GTECH_OAI22 U115 ( .A(n82), .B(n2), .C(n79), .D(n3), .Z(n117) );
  GTECH_NAND2 U116 ( .A(n120), .B(n121), .Z(n82) );
  GTECH_AND_NOT U117 ( .A(data_in[4]), .B(n78), .Z(n116) );
  GTECH_OAI22 U118 ( .A(n9), .B(n85), .C(n86), .D(n122), .Z(shift_in[0]) );
  GTECH_AND2 U119 ( .A(n123), .B(n124), .Z(n122) );
  GTECH_OA21 U120 ( .A(n8), .B(n94), .C(n125), .Z(n124) );
  GTECH_OA22 U121 ( .A(n5), .B(n79), .C(n78), .D(n109), .Z(n125) );
  GTECH_NOT U122 ( .A(data_in[3]), .Z(n109) );
  GTECH_NAND3 U123 ( .A(shift_direction[2]), .B(shift_direction[0]), .C(
        shift_direction[1]), .Z(n78) );
  GTECH_NAND3 U124 ( .A(shift_direction[2]), .B(n120), .C(shift_direction[1]), 
        .Z(n79) );
  GTECH_NAND3 U125 ( .A(shift_direction[0]), .B(n126), .C(shift_direction[2]), 
        .Z(n94) );
  GTECH_OA22 U126 ( .A(n127), .B(n93), .C(n3), .D(n95), .Z(n123) );
  GTECH_NAND3 U127 ( .A(shift_direction[0]), .B(n121), .C(shift_direction[1]), 
        .Z(n93) );
  GTECH_NOT U128 ( .A(data_in[0]), .Z(n127) );
  GTECH_NOT U129 ( .A(n74), .Z(n86) );
  GTECH_NAND2 U130 ( .A(n75), .B(n121), .Z(n74) );
  GTECH_NOT U131 ( .A(n95), .Z(n75) );
  GTECH_NAND2 U132 ( .A(n120), .B(n126), .Z(n95) );
  GTECH_NOT U133 ( .A(shift_direction[0]), .Z(n120) );
  GTECH_NAND2 U134 ( .A(n126), .B(n121), .Z(n85) );
  GTECH_NOT U135 ( .A(shift_direction[2]), .Z(n121) );
  GTECH_NOT U136 ( .A(shift_direction[1]), .Z(n126) );
  GTECH_NOT U137 ( .A(reset), .Z(n70) );
endmodule

