
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n61, n54, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n54), .K(n54), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n61), .Q(data_out[0]), .QN(n68) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n54), .K(n54), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n61), .Q(data_out[1]), .QN(n65) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n54), .K(n54), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n61), .Q(data_out[6]), .QN(n64) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n54), .K(n54), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n61), .Q(data_out[4]), .QN(n69) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n54), .K(n54), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n61), .Q(data_out[2]), .QN(n66) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n54), .K(n54), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n61), .Q(data_out[3]), .QN(n63) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n54), .K(n54), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n61), .Q(data_out[7]), .QN(n67) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n54), .K(n54), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n61), .Q(data_out[5]), .QN(n70) );
  GTECH_ZERO U71 ( .Z(n54) );
  GTECH_OA21 U72 ( .A(n71), .B(n72), .C(n73), .Z(shift_in[7]) );
  GTECH_OAI21 U73 ( .A(n74), .B(n75), .C(n76), .Z(n72) );
  GTECH_OA22 U74 ( .A(n63), .B(n77), .C(n65), .D(n78), .Z(n76) );
  GTECH_OAI21 U75 ( .A(n66), .B(n79), .C(n80), .Z(n71) );
  GTECH_OA22 U76 ( .A(n81), .B(n82), .C(n64), .D(n83), .Z(n80) );
  GTECH_OAI21 U77 ( .A(n67), .B(n74), .C(n84), .Z(shift_in[6]) );
  GTECH_OAI21 U78 ( .A(n85), .B(n86), .C(n73), .Z(n84) );
  GTECH_OAI22 U79 ( .A(n68), .B(n78), .C(n66), .D(n77), .Z(n86) );
  GTECH_OAI21 U80 ( .A(n65), .B(n79), .C(n87), .Z(n85) );
  GTECH_OA22 U81 ( .A(n81), .B(n88), .C(n70), .D(n83), .Z(n87) );
  GTECH_NOT U82 ( .A(n89), .Z(n81) );
  GTECH_NAND2 U83 ( .A(n90), .B(n91), .Z(n89) );
  GTECH_OAI21 U84 ( .A(n64), .B(n74), .C(n92), .Z(shift_in[5]) );
  GTECH_OAI21 U85 ( .A(n93), .B(n94), .C(n73), .Z(n92) );
  GTECH_OAI22 U86 ( .A(n90), .B(n95), .C(n67), .D(n91), .Z(n94) );
  GTECH_OAI21 U87 ( .A(n65), .B(n77), .C(n96), .Z(n93) );
  GTECH_OA22 U88 ( .A(n69), .B(n83), .C(n68), .D(n79), .Z(n96) );
  GTECH_OAI21 U89 ( .A(n70), .B(n74), .C(n97), .Z(shift_in[4]) );
  GTECH_OAI21 U90 ( .A(n98), .B(n99), .C(n73), .Z(n97) );
  GTECH_OAI22 U91 ( .A(n90), .B(n100), .C(n64), .D(n91), .Z(n99) );
  GTECH_OAI21 U92 ( .A(n68), .B(n77), .C(n101), .Z(n98) );
  GTECH_OA22 U93 ( .A(n63), .B(n83), .C(n82), .D(n79), .Z(n101) );
  GTECH_NOT U94 ( .A(data_in[7]), .Z(n82) );
  GTECH_OAI21 U95 ( .A(n69), .B(n74), .C(n102), .Z(shift_in[3]) );
  GTECH_OAI21 U96 ( .A(n103), .B(n104), .C(n73), .Z(n102) );
  GTECH_OAI22 U97 ( .A(n90), .B(n105), .C(n70), .D(n91), .Z(n104) );
  GTECH_OAI22 U98 ( .A(n79), .B(n88), .C(n66), .D(n83), .Z(n103) );
  GTECH_NOT U99 ( .A(data_in[6]), .Z(n88) );
  GTECH_OAI21 U100 ( .A(n63), .B(n74), .C(n106), .Z(shift_in[2]) );
  GTECH_OAI21 U101 ( .A(n107), .B(n108), .C(n73), .Z(n106) );
  GTECH_OAI2N2 U102 ( .A(n67), .B(n78), .C(data_in[2]), .D(n109), .Z(n108) );
  GTECH_OAI21 U103 ( .A(n69), .B(n91), .C(n110), .Z(n107) );
  GTECH_OA22 U104 ( .A(n65), .B(n83), .C(n79), .D(n95), .Z(n110) );
  GTECH_NOT U105 ( .A(data_in[5]), .Z(n95) );
  GTECH_OAI2N2 U106 ( .A(n66), .B(n74), .C(n73), .D(n111), .Z(shift_in[1]) );
  GTECH_OR3 U107 ( .A(n112), .B(n113), .C(n114), .Z(n111) );
  GTECH_OAI21 U108 ( .A(n67), .B(n77), .C(n115), .Z(n114) );
  GTECH_OA22 U109 ( .A(n100), .B(n79), .C(n83), .D(n68), .Z(n115) );
  GTECH_NAND2 U110 ( .A(n116), .B(n117), .Z(n83) );
  GTECH_NOT U111 ( .A(data_in[4]), .Z(n100) );
  GTECH_OAI2N2 U112 ( .A(n63), .B(n91), .C(data_in[1]), .D(n109), .Z(n113) );
  GTECH_NOT U113 ( .A(n90), .Z(n109) );
  GTECH_NOR2 U114 ( .A(n64), .B(n78), .Z(n112) );
  GTECH_OAI21 U115 ( .A(n65), .B(n74), .C(n118), .Z(shift_in[0]) );
  GTECH_OAI21 U116 ( .A(n119), .B(n120), .C(n73), .Z(n118) );
  GTECH_NAND2 U117 ( .A(n121), .B(n117), .Z(n73) );
  GTECH_NOT U118 ( .A(n74), .Z(n121) );
  GTECH_OAI22 U119 ( .A(n70), .B(n78), .C(n75), .D(n90), .Z(n120) );
  GTECH_NAND3 U120 ( .A(shift_direction[0]), .B(n116), .C(shift_direction[1]), 
        .Z(n90) );
  GTECH_NOT U121 ( .A(data_in[0]), .Z(n75) );
  GTECH_NAND3 U122 ( .A(shift_direction[2]), .B(n117), .C(shift_direction[1]), 
        .Z(n78) );
  GTECH_OAI21 U123 ( .A(n66), .B(n91), .C(n122), .Z(n119) );
  GTECH_OA22 U124 ( .A(n79), .B(n105), .C(n64), .D(n77), .Z(n122) );
  GTECH_NAND2 U125 ( .A(n123), .B(n117), .Z(n77) );
  GTECH_NOT U126 ( .A(shift_direction[0]), .Z(n117) );
  GTECH_NOT U127 ( .A(data_in[3]), .Z(n105) );
  GTECH_NAND3 U128 ( .A(shift_direction[2]), .B(shift_direction[0]), .C(
        shift_direction[1]), .Z(n79) );
  GTECH_NAND3 U129 ( .A(shift_direction[0]), .B(n123), .C(shift_direction[2]), 
        .Z(n91) );
  GTECH_NAND2 U130 ( .A(n116), .B(n123), .Z(n74) );
  GTECH_NOT U131 ( .A(shift_direction[1]), .Z(n123) );
  GTECH_NOT U132 ( .A(shift_direction[2]), .Z(n116) );
  GTECH_NOT U133 ( .A(reset), .Z(n61) );
endmodule

