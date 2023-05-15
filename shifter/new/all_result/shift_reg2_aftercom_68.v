
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n62, n55, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n55), .K(n55), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[0]), .QN(n69) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n55), .K(n55), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[1]), .QN(n66) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n55), .K(n55), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[6]), .QN(n65) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n55), .K(n55), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[4]), .QN(n70) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n55), .K(n55), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[2]), .QN(n67) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n55), .K(n55), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[3]), .QN(n64) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n55), .K(n55), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[7]), .QN(n68) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n55), .K(n55), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[5]), .QN(n71) );
  GTECH_ZERO U72 ( .Z(n55) );
  GTECH_OA21 U73 ( .A(n72), .B(n73), .C(n74), .Z(shift_in[7]) );
  GTECH_OAI21 U74 ( .A(n75), .B(n76), .C(n77), .Z(n73) );
  GTECH_OA22 U75 ( .A(n64), .B(n78), .C(n66), .D(n79), .Z(n77) );
  GTECH_OAI21 U76 ( .A(n67), .B(n80), .C(n81), .Z(n72) );
  GTECH_OA22 U77 ( .A(n82), .B(n83), .C(n65), .D(n84), .Z(n81) );
  GTECH_OAI21 U78 ( .A(n68), .B(n75), .C(n85), .Z(shift_in[6]) );
  GTECH_OAI21 U79 ( .A(n86), .B(n87), .C(n74), .Z(n85) );
  GTECH_OAI22 U80 ( .A(n69), .B(n79), .C(n67), .D(n78), .Z(n87) );
  GTECH_OAI21 U81 ( .A(n66), .B(n80), .C(n88), .Z(n86) );
  GTECH_OA22 U82 ( .A(n82), .B(n89), .C(n71), .D(n84), .Z(n88) );
  GTECH_NOT U83 ( .A(n90), .Z(n82) );
  GTECH_NAND2 U84 ( .A(n91), .B(n92), .Z(n90) );
  GTECH_OAI21 U85 ( .A(n65), .B(n75), .C(n93), .Z(shift_in[5]) );
  GTECH_OAI21 U86 ( .A(n94), .B(n95), .C(n74), .Z(n93) );
  GTECH_OAI22 U87 ( .A(n91), .B(n96), .C(n68), .D(n92), .Z(n95) );
  GTECH_OAI21 U88 ( .A(n66), .B(n78), .C(n97), .Z(n94) );
  GTECH_OA22 U89 ( .A(n70), .B(n84), .C(n69), .D(n80), .Z(n97) );
  GTECH_OAI21 U90 ( .A(n71), .B(n75), .C(n98), .Z(shift_in[4]) );
  GTECH_OAI21 U91 ( .A(n99), .B(n100), .C(n74), .Z(n98) );
  GTECH_OAI22 U92 ( .A(n91), .B(n101), .C(n65), .D(n92), .Z(n100) );
  GTECH_OAI21 U93 ( .A(n69), .B(n78), .C(n102), .Z(n99) );
  GTECH_OA22 U94 ( .A(n64), .B(n84), .C(n83), .D(n80), .Z(n102) );
  GTECH_NOT U95 ( .A(data_in[7]), .Z(n83) );
  GTECH_OAI21 U96 ( .A(n70), .B(n75), .C(n103), .Z(shift_in[3]) );
  GTECH_OAI21 U97 ( .A(n104), .B(n105), .C(n74), .Z(n103) );
  GTECH_OAI22 U98 ( .A(n91), .B(n106), .C(n71), .D(n92), .Z(n105) );
  GTECH_OAI22 U99 ( .A(n80), .B(n89), .C(n67), .D(n84), .Z(n104) );
  GTECH_NOT U100 ( .A(data_in[6]), .Z(n89) );
  GTECH_OAI21 U101 ( .A(n64), .B(n75), .C(n107), .Z(shift_in[2]) );
  GTECH_OAI21 U102 ( .A(n108), .B(n109), .C(n74), .Z(n107) );
  GTECH_OAI2N2 U103 ( .A(n68), .B(n79), .C(data_in[2]), .D(n110), .Z(n109) );
  GTECH_OAI21 U104 ( .A(n70), .B(n92), .C(n111), .Z(n108) );
  GTECH_OA22 U105 ( .A(n66), .B(n84), .C(n80), .D(n96), .Z(n111) );
  GTECH_NOT U106 ( .A(data_in[5]), .Z(n96) );
  GTECH_OAI2N2 U107 ( .A(n67), .B(n75), .C(n74), .D(n112), .Z(shift_in[1]) );
  GTECH_OR3 U108 ( .A(n113), .B(n114), .C(n115), .Z(n112) );
  GTECH_OAI21 U109 ( .A(n68), .B(n78), .C(n116), .Z(n115) );
  GTECH_OA22 U110 ( .A(n101), .B(n80), .C(n84), .D(n69), .Z(n116) );
  GTECH_NAND2 U111 ( .A(n117), .B(n118), .Z(n84) );
  GTECH_NOT U112 ( .A(data_in[4]), .Z(n101) );
  GTECH_OAI2N2 U113 ( .A(n64), .B(n92), .C(data_in[1]), .D(n110), .Z(n114) );
  GTECH_NOT U114 ( .A(n91), .Z(n110) );
  GTECH_NOR2 U115 ( .A(n65), .B(n79), .Z(n113) );
  GTECH_OAI21 U116 ( .A(n66), .B(n75), .C(n119), .Z(shift_in[0]) );
  GTECH_OAI21 U117 ( .A(n120), .B(n121), .C(n74), .Z(n119) );
  GTECH_NAND2 U118 ( .A(n122), .B(n118), .Z(n74) );
  GTECH_NOT U119 ( .A(n75), .Z(n122) );
  GTECH_OAI22 U120 ( .A(n71), .B(n79), .C(n76), .D(n91), .Z(n121) );
  GTECH_OR3 U121 ( .A(shift_direction[2]), .B(n118), .C(n123), .Z(n91) );
  GTECH_NOT U122 ( .A(data_in[0]), .Z(n76) );
  GTECH_OR3 U123 ( .A(shift_direction[0]), .B(n117), .C(n123), .Z(n79) );
  GTECH_OAI21 U124 ( .A(n67), .B(n92), .C(n124), .Z(n120) );
  GTECH_OA22 U125 ( .A(n80), .B(n106), .C(n65), .D(n78), .Z(n124) );
  GTECH_NAND2 U126 ( .A(n123), .B(n118), .Z(n78) );
  GTECH_NOT U127 ( .A(data_in[3]), .Z(n106) );
  GTECH_OR3 U128 ( .A(n118), .B(n117), .C(n123), .Z(n80) );
  GTECH_OR3 U129 ( .A(shift_direction[1]), .B(n118), .C(n117), .Z(n92) );
  GTECH_NOT U130 ( .A(shift_direction[0]), .Z(n118) );
  GTECH_NAND2 U131 ( .A(n117), .B(n123), .Z(n75) );
  GTECH_NOT U132 ( .A(shift_direction[1]), .Z(n123) );
  GTECH_NOT U133 ( .A(shift_direction[2]), .Z(n117) );
  GTECH_NOT U134 ( .A(reset), .Z(n62) );
endmodule

