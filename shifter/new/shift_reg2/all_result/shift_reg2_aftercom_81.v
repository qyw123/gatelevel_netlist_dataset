
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n62, n55, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n55), .K(n55), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[0]), .QN(n69) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n55), .K(n55), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[5]), .QN(n71) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n55), .K(n55), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[6]), .QN(n65) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n55), .K(n55), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[4]), .QN(n70) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n55), .K(n55), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[2]), .QN(n68) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n55), .K(n55), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[3]), .QN(n64) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n55), .K(n55), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[7]), .QN(n67) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n55), .K(n55), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[1]), .QN(n66) );
  GTECH_ZERO U72 ( .Z(n55) );
  GTECH_OA21 U73 ( .A(n72), .B(n73), .C(n74), .Z(shift_in[7]) );
  GTECH_OAI21 U74 ( .A(n75), .B(n76), .C(n77), .Z(n73) );
  GTECH_OA22 U75 ( .A(n64), .B(n78), .C(n66), .D(n79), .Z(n77) );
  GTECH_OAI21 U76 ( .A(n68), .B(n80), .C(n81), .Z(n72) );
  GTECH_OA22 U77 ( .A(n82), .B(n83), .C(n65), .D(n84), .Z(n81) );
  GTECH_OAI21 U78 ( .A(n67), .B(n75), .C(n85), .Z(shift_in[6]) );
  GTECH_OAI21 U79 ( .A(n86), .B(n87), .C(n74), .Z(n85) );
  GTECH_OAI22 U80 ( .A(n69), .B(n79), .C(n68), .D(n78), .Z(n87) );
  GTECH_OAI21 U81 ( .A(n66), .B(n80), .C(n88), .Z(n86) );
  GTECH_OA22 U82 ( .A(n82), .B(n89), .C(n71), .D(n84), .Z(n88) );
  GTECH_NOT U83 ( .A(n90), .Z(n82) );
  GTECH_OR_NOT U84 ( .A(n91), .B(n92), .Z(n90) );
  GTECH_NOT U85 ( .A(n93), .Z(n91) );
  GTECH_OAI21 U86 ( .A(n65), .B(n75), .C(n94), .Z(shift_in[5]) );
  GTECH_OAI21 U87 ( .A(n95), .B(n96), .C(n74), .Z(n94) );
  GTECH_OAI22 U88 ( .A(n92), .B(n97), .C(n67), .D(n93), .Z(n96) );
  GTECH_OAI21 U89 ( .A(n66), .B(n78), .C(n98), .Z(n95) );
  GTECH_OA22 U90 ( .A(n70), .B(n84), .C(n69), .D(n80), .Z(n98) );
  GTECH_OAI21 U91 ( .A(n71), .B(n75), .C(n99), .Z(shift_in[4]) );
  GTECH_OAI21 U92 ( .A(n100), .B(n101), .C(n74), .Z(n99) );
  GTECH_OAI22 U93 ( .A(n92), .B(n102), .C(n65), .D(n93), .Z(n101) );
  GTECH_OAI21 U94 ( .A(n69), .B(n78), .C(n103), .Z(n100) );
  GTECH_OA22 U95 ( .A(n64), .B(n84), .C(n83), .D(n80), .Z(n103) );
  GTECH_NOT U96 ( .A(data_in[7]), .Z(n83) );
  GTECH_OAI21 U97 ( .A(n70), .B(n75), .C(n104), .Z(shift_in[3]) );
  GTECH_OAI21 U98 ( .A(n105), .B(n106), .C(n74), .Z(n104) );
  GTECH_OAI22 U99 ( .A(n92), .B(n107), .C(n71), .D(n93), .Z(n106) );
  GTECH_OAI22 U100 ( .A(n80), .B(n89), .C(n68), .D(n84), .Z(n105) );
  GTECH_NOT U101 ( .A(data_in[6]), .Z(n89) );
  GTECH_OAI21 U102 ( .A(n64), .B(n75), .C(n108), .Z(shift_in[2]) );
  GTECH_OAI21 U103 ( .A(n109), .B(n110), .C(n74), .Z(n108) );
  GTECH_OAI2N2 U104 ( .A(n67), .B(n79), .C(data_in[2]), .D(n111), .Z(n110) );
  GTECH_OAI21 U105 ( .A(n70), .B(n93), .C(n112), .Z(n109) );
  GTECH_OA22 U106 ( .A(n66), .B(n84), .C(n80), .D(n97), .Z(n112) );
  GTECH_NOT U107 ( .A(data_in[5]), .Z(n97) );
  GTECH_OAI2N2 U108 ( .A(n68), .B(n75), .C(n74), .D(n113), .Z(shift_in[1]) );
  GTECH_OR3 U109 ( .A(n114), .B(n115), .C(n116), .Z(n113) );
  GTECH_OAI21 U110 ( .A(n67), .B(n78), .C(n117), .Z(n116) );
  GTECH_OA22 U111 ( .A(n102), .B(n80), .C(n84), .D(n69), .Z(n117) );
  GTECH_OR_NOT U112 ( .A(shift_direction[0]), .B(n118), .Z(n84) );
  GTECH_NOT U113 ( .A(data_in[4]), .Z(n102) );
  GTECH_OAI2N2 U114 ( .A(n64), .B(n93), .C(data_in[1]), .D(n111), .Z(n115) );
  GTECH_NOT U115 ( .A(n92), .Z(n111) );
  GTECH_NOR2 U116 ( .A(n65), .B(n79), .Z(n114) );
  GTECH_OAI21 U117 ( .A(n66), .B(n75), .C(n119), .Z(shift_in[0]) );
  GTECH_OAI21 U118 ( .A(n120), .B(n121), .C(n74), .Z(n119) );
  GTECH_OR_NOT U119 ( .A(shift_direction[0]), .B(n122), .Z(n74) );
  GTECH_NOT U120 ( .A(n75), .Z(n122) );
  GTECH_OAI22 U121 ( .A(n71), .B(n79), .C(n76), .D(n92), .Z(n121) );
  GTECH_NAND3 U122 ( .A(shift_direction[0]), .B(n118), .C(shift_direction[1]), 
        .Z(n92) );
  GTECH_NOT U123 ( .A(data_in[0]), .Z(n76) );
  GTECH_NAND3 U124 ( .A(shift_direction[2]), .B(n123), .C(shift_direction[1]), 
        .Z(n79) );
  GTECH_NOT U125 ( .A(shift_direction[0]), .Z(n123) );
  GTECH_OAI21 U126 ( .A(n68), .B(n93), .C(n124), .Z(n120) );
  GTECH_OA22 U127 ( .A(n80), .B(n107), .C(n65), .D(n78), .Z(n124) );
  GTECH_OR_NOT U128 ( .A(shift_direction[0]), .B(n125), .Z(n78) );
  GTECH_NOT U129 ( .A(data_in[3]), .Z(n107) );
  GTECH_NAND3 U130 ( .A(shift_direction[2]), .B(shift_direction[0]), .C(
        shift_direction[1]), .Z(n80) );
  GTECH_NAND3 U131 ( .A(shift_direction[0]), .B(n125), .C(shift_direction[2]), 
        .Z(n93) );
  GTECH_NOT U132 ( .A(shift_direction[1]), .Z(n125) );
  GTECH_OR_NOT U133 ( .A(shift_direction[1]), .B(n118), .Z(n75) );
  GTECH_NOT U134 ( .A(shift_direction[2]), .Z(n118) );
  GTECH_NOT U135 ( .A(reset), .Z(n62) );
endmodule

