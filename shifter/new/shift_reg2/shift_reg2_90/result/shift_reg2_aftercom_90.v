
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n71, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(1'b0), .K(1'b0), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n71), .Q(data_out[0]), .QN(n2) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(1'b0), .K(1'b0), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n71), .Q(data_out[6]), .QN(n3) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(1'b0), .K(1'b0), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n71), .Q(data_out[7]), .QN(n4) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(1'b0), .K(1'b0), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n71), .Q(data_out[5]), .QN(n5) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(1'b0), .K(1'b0), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n71), .Q(data_out[4]), .QN(n6) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(1'b0), .K(1'b0), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n71), .Q(data_out[3]), .QN(n7) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(1'b0), .K(1'b0), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n71), .Q(data_out[2]), .QN(n8) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(1'b0), .K(1'b0), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n71), .Q(data_out[1]), .QN(n9) );
  GTECH_AND2 U73 ( .A(n73), .B(n74), .Z(shift_in[7]) );
  GTECH_NAND3 U74 ( .A(n75), .B(n76), .C(n77), .Z(n74) );
  GTECH_OA21 U75 ( .A(n7), .B(n78), .C(n79), .Z(n77) );
  GTECH_OA22 U76 ( .A(n8), .B(n80), .C(n9), .D(n81), .Z(n79) );
  GTECH_OR_NOT U77 ( .A(n82), .B(data_in[0]), .Z(n76) );
  GTECH_OA22 U78 ( .A(n83), .B(n84), .C(n3), .D(n85), .Z(n75) );
  GTECH_OAI22 U79 ( .A(n4), .B(n82), .C(n86), .D(n87), .Z(shift_in[6]) );
  GTECH_AND2 U80 ( .A(n88), .B(n89), .Z(n87) );
  GTECH_OA21 U81 ( .A(n9), .B(n80), .C(n90), .Z(n89) );
  GTECH_OA22 U82 ( .A(n83), .B(n91), .C(n5), .D(n85), .Z(n90) );
  GTECH_NOT U83 ( .A(n92), .Z(n83) );
  GTECH_NAND2 U84 ( .A(n93), .B(n94), .Z(n92) );
  GTECH_OA22 U85 ( .A(n2), .B(n81), .C(n8), .D(n78), .Z(n88) );
  GTECH_OAI22 U86 ( .A(n3), .B(n82), .C(n86), .D(n95), .Z(shift_in[5]) );
  GTECH_AND2 U87 ( .A(n96), .B(n97), .Z(n95) );
  GTECH_OA21 U88 ( .A(n4), .B(n94), .C(n98), .Z(n97) );
  GTECH_OA22 U89 ( .A(n6), .B(n85), .C(n2), .D(n80), .Z(n98) );
  GTECH_OA22 U90 ( .A(n93), .B(n99), .C(n9), .D(n78), .Z(n96) );
  GTECH_OAI22 U91 ( .A(n5), .B(n82), .C(n86), .D(n100), .Z(shift_in[4]) );
  GTECH_AND2 U92 ( .A(n101), .B(n102), .Z(n100) );
  GTECH_OA21 U93 ( .A(n3), .B(n94), .C(n103), .Z(n102) );
  GTECH_OA22 U94 ( .A(n7), .B(n85), .C(n84), .D(n80), .Z(n103) );
  GTECH_NOT U95 ( .A(data_in[7]), .Z(n84) );
  GTECH_OA22 U96 ( .A(n93), .B(n104), .C(n2), .D(n78), .Z(n101) );
  GTECH_OAI22 U97 ( .A(n6), .B(n82), .C(n86), .D(n105), .Z(shift_in[3]) );
  GTECH_AND2 U98 ( .A(n106), .B(n107), .Z(n105) );
  GTECH_OA22 U99 ( .A(n8), .B(n85), .C(n80), .D(n91), .Z(n107) );
  GTECH_NOT U100 ( .A(data_in[6]), .Z(n91) );
  GTECH_OA22 U101 ( .A(n5), .B(n94), .C(n93), .D(n108), .Z(n106) );
  GTECH_OAI22 U102 ( .A(n7), .B(n82), .C(n86), .D(n109), .Z(shift_in[2]) );
  GTECH_AND2 U103 ( .A(n110), .B(n111), .Z(n109) );
  GTECH_OA21 U104 ( .A(n4), .B(n81), .C(n112), .Z(n111) );
  GTECH_OA22 U105 ( .A(n9), .B(n85), .C(n80), .D(n99), .Z(n112) );
  GTECH_NOT U106 ( .A(data_in[5]), .Z(n99) );
  GTECH_AOI2N2 U107 ( .A(data_in[2]), .B(n113), .C(n6), .D(n94), .Z(n110) );
  GTECH_OAI22 U108 ( .A(n8), .B(n82), .C(n86), .D(n114), .Z(shift_in[1]) );
  GTECH_AND2 U109 ( .A(n115), .B(n116), .Z(n114) );
  GTECH_OA21 U110 ( .A(n3), .B(n81), .C(n117), .Z(n116) );
  GTECH_OA22 U111 ( .A(n2), .B(n85), .C(n80), .D(n104), .Z(n117) );
  GTECH_NOT U112 ( .A(data_in[4]), .Z(n104) );
  GTECH_NAND2 U113 ( .A(n118), .B(n119), .Z(n85) );
  GTECH_OA21 U114 ( .A(n4), .B(n78), .C(n120), .Z(n115) );
  GTECH_AOI2N2 U115 ( .A(data_in[1]), .B(n113), .C(n7), .D(n94), .Z(n120) );
  GTECH_NOT U116 ( .A(n93), .Z(n113) );
  GTECH_OAI22 U117 ( .A(n9), .B(n82), .C(n86), .D(n121), .Z(shift_in[0]) );
  GTECH_AND2 U118 ( .A(n122), .B(n123), .Z(n121) );
  GTECH_OA21 U119 ( .A(n8), .B(n94), .C(n124), .Z(n123) );
  GTECH_OA22 U120 ( .A(n80), .B(n108), .C(n5), .D(n81), .Z(n124) );
  GTECH_NAND3 U121 ( .A(shift_direction[2]), .B(n118), .C(shift_direction[1]), 
        .Z(n81) );
  GTECH_NOT U122 ( .A(data_in[3]), .Z(n108) );
  GTECH_NAND3 U123 ( .A(shift_direction[2]), .B(shift_direction[0]), .C(
        shift_direction[1]), .Z(n80) );
  GTECH_NAND3 U124 ( .A(shift_direction[0]), .B(n125), .C(shift_direction[2]), 
        .Z(n94) );
  GTECH_OA22 U125 ( .A(n126), .B(n93), .C(n3), .D(n78), .Z(n122) );
  GTECH_NAND3 U126 ( .A(shift_direction[0]), .B(n119), .C(shift_direction[1]), 
        .Z(n93) );
  GTECH_NOT U127 ( .A(data_in[0]), .Z(n126) );
  GTECH_NOT U128 ( .A(n73), .Z(n86) );
  GTECH_NAND2 U129 ( .A(n127), .B(n119), .Z(n73) );
  GTECH_NOT U130 ( .A(n78), .Z(n127) );
  GTECH_NAND2 U131 ( .A(n118), .B(n125), .Z(n78) );
  GTECH_NOT U132 ( .A(shift_direction[0]), .Z(n118) );
  GTECH_NAND2 U133 ( .A(n125), .B(n119), .Z(n82) );
  GTECH_NOT U134 ( .A(shift_direction[2]), .Z(n119) );
  GTECH_NOT U135 ( .A(shift_direction[1]), .Z(n125) );
  GTECH_NOT U136 ( .A(reset), .Z(n71) );
endmodule

