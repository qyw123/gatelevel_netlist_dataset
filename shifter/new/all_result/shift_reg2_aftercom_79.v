
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n63, n56, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n56), .K(n56), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n63), .Q(data_out[0]), .QN(n67) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n56), .K(n56), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n63), .Q(data_out[6]), .QN(n68) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n56), .K(n56), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n63), .Q(data_out[7]), .QN(n66) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n56), .K(n56), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n63), .Q(data_out[2]), .QN(n72) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n56), .K(n56), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n63), .Q(data_out[3]), .QN(n71) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n56), .K(n56), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n63), .Q(data_out[1]), .QN(n65) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n56), .K(n56), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n63), .Q(data_out[4]), .QN(n70) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n56), .K(n56), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n63), .Q(data_out[5]), .QN(n69) );
  GTECH_ZERO U73 ( .Z(n56) );
  GTECH_AND2 U74 ( .A(n73), .B(n74), .Z(shift_in[7]) );
  GTECH_OR3 U75 ( .A(n75), .B(n76), .C(n77), .Z(n74) );
  GTECH_OAI21 U76 ( .A(n71), .B(n78), .C(n79), .Z(n77) );
  GTECH_AOI22 U77 ( .A(n80), .B(n81), .C(data_in[7]), .D(n82), .Z(n79) );
  GTECH_NOT U78 ( .A(n68), .Z(n81) );
  GTECH_OAI22 U79 ( .A(n65), .B(n83), .C(n72), .D(n84), .Z(n76) );
  GTECH_AND_NOT U80 ( .A(data_in[0]), .B(n85), .Z(n75) );
  GTECH_OAI21 U81 ( .A(n66), .B(n85), .C(n86), .Z(shift_in[6]) );
  GTECH_OAI21 U82 ( .A(n87), .B(n88), .C(n73), .Z(n86) );
  GTECH_OAI22 U83 ( .A(n65), .B(n84), .C(n67), .D(n83), .Z(n88) );
  GTECH_OAI21 U84 ( .A(n72), .B(n78), .C(n89), .Z(n87) );
  GTECH_AOI22 U85 ( .A(data_in[6]), .B(n82), .C(n80), .D(n90), .Z(n89) );
  GTECH_NOT U86 ( .A(n69), .Z(n90) );
  GTECH_NAND2 U87 ( .A(n91), .B(n92), .Z(n82) );
  GTECH_OAI2N2 U88 ( .A(n68), .B(n85), .C(n73), .D(n93), .Z(shift_in[5]) );
  GTECH_OR3 U89 ( .A(n94), .B(n95), .C(n96), .Z(n93) );
  GTECH_OAI22 U90 ( .A(n67), .B(n84), .C(n66), .D(n91), .Z(n96) );
  GTECH_OAI22 U91 ( .A(n70), .B(n97), .C(n65), .D(n78), .Z(n95) );
  GTECH_AND_NOT U92 ( .A(data_in[5]), .B(n92), .Z(n94) );
  GTECH_OAI21 U93 ( .A(n69), .B(n85), .C(n98), .Z(shift_in[4]) );
  GTECH_OAI21 U94 ( .A(n99), .B(n100), .C(n73), .Z(n98) );
  GTECH_OAI22 U95 ( .A(n101), .B(n84), .C(n68), .D(n91), .Z(n100) );
  GTECH_NOT U96 ( .A(data_in[7]), .Z(n101) );
  GTECH_OAI21 U97 ( .A(n92), .B(n102), .C(n103), .Z(n99) );
  GTECH_AOI22 U98 ( .A(n80), .B(n104), .C(n105), .D(n106), .Z(n103) );
  GTECH_NOT U99 ( .A(n67), .Z(n106) );
  GTECH_NOT U100 ( .A(n78), .Z(n105) );
  GTECH_NOT U101 ( .A(n71), .Z(n104) );
  GTECH_NOT U102 ( .A(n97), .Z(n80) );
  GTECH_NOT U103 ( .A(data_in[4]), .Z(n102) );
  GTECH_OAI21 U104 ( .A(n70), .B(n85), .C(n107), .Z(shift_in[3]) );
  GTECH_OAI21 U105 ( .A(n108), .B(n109), .C(n73), .Z(n107) );
  GTECH_OAI22 U106 ( .A(n84), .B(n110), .C(n69), .D(n91), .Z(n109) );
  GTECH_NOT U107 ( .A(data_in[6]), .Z(n110) );
  GTECH_OAI22 U108 ( .A(n92), .B(n111), .C(n72), .D(n97), .Z(n108) );
  GTECH_OAI21 U109 ( .A(n71), .B(n85), .C(n112), .Z(shift_in[2]) );
  GTECH_OAI21 U110 ( .A(n113), .B(n114), .C(n73), .Z(n112) );
  GTECH_OAI22 U111 ( .A(n84), .B(n115), .C(n70), .D(n91), .Z(n114) );
  GTECH_NOT U112 ( .A(data_in[5]), .Z(n115) );
  GTECH_AO21 U113 ( .A(data_in[2]), .B(n116), .C(n117), .Z(n113) );
  GTECH_OAI22 U114 ( .A(n66), .B(n83), .C(n65), .D(n97), .Z(n117) );
  GTECH_OAI2N2 U115 ( .A(n72), .B(n85), .C(n73), .D(n118), .Z(shift_in[1]) );
  GTECH_OR4 U116 ( .A(n119), .B(n120), .C(n121), .D(n122), .Z(n118) );
  GTECH_OAI22 U117 ( .A(n67), .B(n97), .C(n66), .D(n78), .Z(n122) );
  GTECH_NAND2 U118 ( .A(n123), .B(n124), .Z(n97) );
  GTECH_NOR2 U119 ( .A(n68), .B(n83), .Z(n121) );
  GTECH_OAI2N2 U120 ( .A(n71), .B(n91), .C(data_in[1]), .D(n116), .Z(n120) );
  GTECH_NOT U121 ( .A(n92), .Z(n116) );
  GTECH_AND_NOT U122 ( .A(data_in[4]), .B(n84), .Z(n119) );
  GTECH_OAI2N2 U123 ( .A(n65), .B(n85), .C(n73), .D(n125), .Z(shift_in[0]) );
  GTECH_OR3 U124 ( .A(n126), .B(n127), .C(n128), .Z(n125) );
  GTECH_OAI22 U125 ( .A(n84), .B(n111), .C(n72), .D(n91), .Z(n128) );
  GTECH_NAND3 U126 ( .A(shift_direction[0]), .B(n129), .C(shift_direction[2]), 
        .Z(n91) );
  GTECH_NOT U127 ( .A(data_in[3]), .Z(n111) );
  GTECH_NAND3 U128 ( .A(shift_direction[1]), .B(shift_direction[0]), .C(
        shift_direction[2]), .Z(n84) );
  GTECH_OAI22 U129 ( .A(n68), .B(n78), .C(n69), .D(n83), .Z(n127) );
  GTECH_NAND3 U130 ( .A(shift_direction[1]), .B(n123), .C(shift_direction[2]), 
        .Z(n83) );
  GTECH_NAND2 U131 ( .A(n123), .B(n129), .Z(n78) );
  GTECH_AND_NOT U132 ( .A(data_in[0]), .B(n92), .Z(n126) );
  GTECH_NAND3 U133 ( .A(shift_direction[0]), .B(n124), .C(shift_direction[1]), 
        .Z(n92) );
  GTECH_NAND2 U134 ( .A(n130), .B(n123), .Z(n73) );
  GTECH_NOT U135 ( .A(shift_direction[0]), .Z(n123) );
  GTECH_NOT U136 ( .A(n85), .Z(n130) );
  GTECH_NAND2 U137 ( .A(n129), .B(n124), .Z(n85) );
  GTECH_NOT U138 ( .A(shift_direction[2]), .Z(n124) );
  GTECH_NOT U139 ( .A(shift_direction[1]), .Z(n129) );
  GTECH_NOT U140 ( .A(reset), .Z(n63) );
endmodule

