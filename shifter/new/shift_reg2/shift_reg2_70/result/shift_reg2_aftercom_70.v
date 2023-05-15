
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n51, n54, n57, n60, n63, n66, n69, n70, n49, n50, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126;
  wire   [7:0] shift_in;

  GTECH_FJK3S shift_reg_reg_0_ ( .J(n50), .K(n50), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n70), .SD(n49), .Q(data_out[0]), .QN(n73) );
  GTECH_FJK3S shift_reg_reg_5_ ( .J(n50), .K(n50), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n70), .SD(n49), .Q(data_out[5]), .QN(n69) );
  GTECH_FJK3S shift_reg_reg_6_ ( .J(n50), .K(n50), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n70), .SD(n49), .Q(data_out[6]), .QN(n66) );
  GTECH_FJK3S shift_reg_reg_7_ ( .J(n50), .K(n50), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n70), .SD(n49), .Q(data_out[7]), .QN(n63) );
  GTECH_FJK3S shift_reg_reg_1_ ( .J(n50), .K(n50), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n70), .SD(n49), .Q(data_out[1]), .QN(n60) );
  GTECH_FJK3S shift_reg_reg_2_ ( .J(n50), .K(n50), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n70), .SD(n49), .Q(data_out[2]), .QN(n57) );
  GTECH_FJK3S shift_reg_reg_3_ ( .J(n50), .K(n50), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n70), .SD(n49), .Q(data_out[3]), .QN(n54) );
  GTECH_FJK3S shift_reg_reg_4_ ( .J(n50), .K(n50), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n70), .SD(n49), .Q(data_out[4]), .QN(n51) );
  GTECH_ZERO U74 ( .Z(n50) );
  GTECH_ONE U75 ( .Z(n49) );
  GTECH_OA21 U76 ( .A(n74), .B(n75), .C(n76), .Z(shift_in[7]) );
  GTECH_OAI21 U77 ( .A(n77), .B(n78), .C(n79), .Z(n75) );
  GTECH_OA22 U78 ( .A(n54), .B(n80), .C(n60), .D(n81), .Z(n79) );
  GTECH_OAI21 U79 ( .A(n57), .B(n82), .C(n83), .Z(n74) );
  GTECH_OA22 U80 ( .A(n84), .B(n85), .C(n66), .D(n86), .Z(n83) );
  GTECH_OAI21 U81 ( .A(n63), .B(n77), .C(n87), .Z(shift_in[6]) );
  GTECH_OAI21 U82 ( .A(n88), .B(n89), .C(n76), .Z(n87) );
  GTECH_OAI22 U83 ( .A(n73), .B(n81), .C(n57), .D(n80), .Z(n89) );
  GTECH_OAI21 U84 ( .A(n60), .B(n82), .C(n90), .Z(n88) );
  GTECH_OA22 U85 ( .A(n84), .B(n91), .C(n69), .D(n86), .Z(n90) );
  GTECH_NOT U86 ( .A(n92), .Z(n84) );
  GTECH_NAND2 U87 ( .A(n93), .B(n94), .Z(n92) );
  GTECH_OAI21 U88 ( .A(n66), .B(n77), .C(n95), .Z(shift_in[5]) );
  GTECH_OAI21 U89 ( .A(n96), .B(n97), .C(n76), .Z(n95) );
  GTECH_OAI22 U90 ( .A(n93), .B(n98), .C(n63), .D(n94), .Z(n97) );
  GTECH_OAI21 U91 ( .A(n60), .B(n80), .C(n99), .Z(n96) );
  GTECH_OA22 U92 ( .A(n51), .B(n86), .C(n73), .D(n82), .Z(n99) );
  GTECH_OAI21 U93 ( .A(n69), .B(n77), .C(n100), .Z(shift_in[4]) );
  GTECH_OAI21 U94 ( .A(n101), .B(n102), .C(n76), .Z(n100) );
  GTECH_OAI22 U95 ( .A(n93), .B(n103), .C(n66), .D(n94), .Z(n102) );
  GTECH_OAI21 U96 ( .A(n73), .B(n80), .C(n104), .Z(n101) );
  GTECH_OA22 U97 ( .A(n54), .B(n86), .C(n85), .D(n82), .Z(n104) );
  GTECH_NOT U98 ( .A(data_in[7]), .Z(n85) );
  GTECH_OAI21 U99 ( .A(n51), .B(n77), .C(n105), .Z(shift_in[3]) );
  GTECH_OAI21 U100 ( .A(n106), .B(n107), .C(n76), .Z(n105) );
  GTECH_OAI22 U101 ( .A(n93), .B(n108), .C(n69), .D(n94), .Z(n107) );
  GTECH_OAI22 U102 ( .A(n82), .B(n91), .C(n57), .D(n86), .Z(n106) );
  GTECH_NOT U103 ( .A(data_in[6]), .Z(n91) );
  GTECH_OAI21 U104 ( .A(n54), .B(n77), .C(n109), .Z(shift_in[2]) );
  GTECH_OAI21 U105 ( .A(n110), .B(n111), .C(n76), .Z(n109) );
  GTECH_OAI2N2 U106 ( .A(n63), .B(n81), .C(data_in[2]), .D(n112), .Z(n111) );
  GTECH_OAI21 U107 ( .A(n51), .B(n94), .C(n113), .Z(n110) );
  GTECH_OA22 U108 ( .A(n60), .B(n86), .C(n82), .D(n98), .Z(n113) );
  GTECH_NOT U109 ( .A(data_in[5]), .Z(n98) );
  GTECH_OAI21 U110 ( .A(n57), .B(n77), .C(n114), .Z(shift_in[1]) );
  GTECH_OAI21 U111 ( .A(n115), .B(n116), .C(n76), .Z(n114) );
  GTECH_OAI21 U112 ( .A(n66), .B(n81), .C(n117), .Z(n116) );
  GTECH_AOI2N2 U113 ( .A(data_in[1]), .B(n112), .C(n54), .D(n94), .Z(n117) );
  GTECH_NOT U114 ( .A(n93), .Z(n112) );
  GTECH_OAI21 U115 ( .A(n63), .B(n80), .C(n118), .Z(n115) );
  GTECH_OA22 U116 ( .A(n73), .B(n86), .C(n82), .D(n103), .Z(n118) );
  GTECH_NOT U117 ( .A(data_in[4]), .Z(n103) );
  GTECH_NAND2 U118 ( .A(n119), .B(n120), .Z(n86) );
  GTECH_OAI21 U119 ( .A(n60), .B(n77), .C(n121), .Z(shift_in[0]) );
  GTECH_OAI21 U120 ( .A(n122), .B(n123), .C(n76), .Z(n121) );
  GTECH_NAND2 U121 ( .A(n124), .B(n120), .Z(n76) );
  GTECH_NOT U122 ( .A(n77), .Z(n124) );
  GTECH_OAI22 U123 ( .A(n69), .B(n81), .C(n78), .D(n93), .Z(n123) );
  GTECH_OR3 U124 ( .A(shift_direction[2]), .B(n120), .C(n125), .Z(n93) );
  GTECH_NOT U125 ( .A(data_in[0]), .Z(n78) );
  GTECH_OR3 U126 ( .A(shift_direction[0]), .B(n119), .C(n125), .Z(n81) );
  GTECH_OAI21 U127 ( .A(n57), .B(n94), .C(n126), .Z(n122) );
  GTECH_OA22 U128 ( .A(n82), .B(n108), .C(n66), .D(n80), .Z(n126) );
  GTECH_NAND2 U129 ( .A(n125), .B(n120), .Z(n80) );
  GTECH_NOT U130 ( .A(data_in[3]), .Z(n108) );
  GTECH_OR3 U131 ( .A(n120), .B(n119), .C(n125), .Z(n82) );
  GTECH_OR3 U132 ( .A(shift_direction[1]), .B(n120), .C(n119), .Z(n94) );
  GTECH_NOT U133 ( .A(shift_direction[0]), .Z(n120) );
  GTECH_NAND2 U134 ( .A(n125), .B(n119), .Z(n77) );
  GTECH_NOT U135 ( .A(shift_direction[2]), .Z(n119) );
  GTECH_NOT U136 ( .A(shift_direction[1]), .Z(n125) );
  GTECH_NOT U137 ( .A(reset), .Z(n70) );
endmodule

