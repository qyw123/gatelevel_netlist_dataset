
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n52, n55, n58, n61, n64, n67, n70, n71, n50, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127;
  wire   [7:0] shift_in;

  GTECH_FJK3S shift_reg_reg_0_ ( .J(1'b0), .K(1'b0), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n71), .SD(n50), .Q(data_out[0]), .QN(n74) );
  GTECH_FJK3S shift_reg_reg_5_ ( .J(1'b0), .K(1'b0), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n71), .SD(n50), .Q(data_out[5]), .QN(n70) );
  GTECH_FJK3S shift_reg_reg_3_ ( .J(1'b0), .K(1'b0), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n71), .SD(n50), .Q(data_out[3]), .QN(n67) );
  GTECH_FJK3S shift_reg_reg_7_ ( .J(1'b0), .K(1'b0), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n71), .SD(n50), .Q(data_out[7]), .QN(n64) );
  GTECH_FJK3S shift_reg_reg_1_ ( .J(1'b0), .K(1'b0), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n71), .SD(n50), .Q(data_out[1]), .QN(n61) );
  GTECH_FJK3S shift_reg_reg_6_ ( .J(1'b0), .K(1'b0), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n71), .SD(n50), .Q(data_out[6]), .QN(n58) );
  GTECH_FJK3S shift_reg_reg_4_ ( .J(1'b0), .K(1'b0), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n71), .SD(n50), .Q(data_out[4]), .QN(n55) );
  GTECH_FJK3S shift_reg_reg_2_ ( .J(1'b0), .K(1'b0), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n71), .SD(n50), .Q(data_out[2]), .QN(n52) );
  GTECH_ONE U75 ( .Z(n50) );
  GTECH_OA21 U76 ( .A(n75), .B(n76), .C(n77), .Z(shift_in[7]) );
  GTECH_OAI21 U77 ( .A(n78), .B(n79), .C(n80), .Z(n76) );
  GTECH_OA22 U78 ( .A(n67), .B(n81), .C(n61), .D(n82), .Z(n80) );
  GTECH_OAI21 U79 ( .A(n52), .B(n83), .C(n84), .Z(n75) );
  GTECH_OA22 U80 ( .A(n85), .B(n86), .C(n58), .D(n87), .Z(n84) );
  GTECH_OAI21 U81 ( .A(n64), .B(n78), .C(n88), .Z(shift_in[6]) );
  GTECH_OAI21 U82 ( .A(n89), .B(n90), .C(n77), .Z(n88) );
  GTECH_OAI22 U83 ( .A(n74), .B(n82), .C(n52), .D(n81), .Z(n90) );
  GTECH_OAI21 U84 ( .A(n61), .B(n83), .C(n91), .Z(n89) );
  GTECH_OA22 U85 ( .A(n85), .B(n92), .C(n70), .D(n87), .Z(n91) );
  GTECH_NOT U86 ( .A(n93), .Z(n85) );
  GTECH_NAND2 U87 ( .A(n94), .B(n95), .Z(n93) );
  GTECH_OAI21 U88 ( .A(n58), .B(n78), .C(n96), .Z(shift_in[5]) );
  GTECH_OAI21 U89 ( .A(n97), .B(n98), .C(n77), .Z(n96) );
  GTECH_OAI22 U90 ( .A(n94), .B(n99), .C(n64), .D(n95), .Z(n98) );
  GTECH_OAI21 U91 ( .A(n61), .B(n81), .C(n100), .Z(n97) );
  GTECH_OA22 U92 ( .A(n55), .B(n87), .C(n74), .D(n83), .Z(n100) );
  GTECH_OAI21 U93 ( .A(n70), .B(n78), .C(n101), .Z(shift_in[4]) );
  GTECH_OAI21 U94 ( .A(n102), .B(n103), .C(n77), .Z(n101) );
  GTECH_OAI22 U95 ( .A(n94), .B(n104), .C(n58), .D(n95), .Z(n103) );
  GTECH_OAI21 U96 ( .A(n74), .B(n81), .C(n105), .Z(n102) );
  GTECH_OA22 U97 ( .A(n67), .B(n87), .C(n86), .D(n83), .Z(n105) );
  GTECH_NOT U98 ( .A(data_in[7]), .Z(n86) );
  GTECH_OAI21 U99 ( .A(n55), .B(n78), .C(n106), .Z(shift_in[3]) );
  GTECH_OAI21 U100 ( .A(n107), .B(n108), .C(n77), .Z(n106) );
  GTECH_OAI22 U101 ( .A(n94), .B(n109), .C(n70), .D(n95), .Z(n108) );
  GTECH_OAI22 U102 ( .A(n83), .B(n92), .C(n52), .D(n87), .Z(n107) );
  GTECH_NOT U103 ( .A(data_in[6]), .Z(n92) );
  GTECH_OAI21 U104 ( .A(n67), .B(n78), .C(n110), .Z(shift_in[2]) );
  GTECH_OAI21 U105 ( .A(n111), .B(n112), .C(n77), .Z(n110) );
  GTECH_OAI2N2 U106 ( .A(n64), .B(n82), .C(data_in[2]), .D(n113), .Z(n112) );
  GTECH_OAI21 U107 ( .A(n55), .B(n95), .C(n114), .Z(n111) );
  GTECH_OA22 U108 ( .A(n61), .B(n87), .C(n83), .D(n99), .Z(n114) );
  GTECH_NOT U109 ( .A(data_in[5]), .Z(n99) );
  GTECH_OAI21 U110 ( .A(n52), .B(n78), .C(n115), .Z(shift_in[1]) );
  GTECH_OAI21 U111 ( .A(n116), .B(n117), .C(n77), .Z(n115) );
  GTECH_OAI21 U112 ( .A(n58), .B(n82), .C(n118), .Z(n117) );
  GTECH_AOI2N2 U113 ( .A(data_in[1]), .B(n113), .C(n67), .D(n95), .Z(n118) );
  GTECH_NOT U114 ( .A(n94), .Z(n113) );
  GTECH_OAI21 U115 ( .A(n64), .B(n81), .C(n119), .Z(n116) );
  GTECH_OA22 U116 ( .A(n74), .B(n87), .C(n83), .D(n104), .Z(n119) );
  GTECH_NOT U117 ( .A(data_in[4]), .Z(n104) );
  GTECH_NAND2 U118 ( .A(n120), .B(n121), .Z(n87) );
  GTECH_OAI21 U119 ( .A(n61), .B(n78), .C(n122), .Z(shift_in[0]) );
  GTECH_OAI21 U120 ( .A(n123), .B(n124), .C(n77), .Z(n122) );
  GTECH_NAND2 U121 ( .A(n125), .B(n121), .Z(n77) );
  GTECH_NOT U122 ( .A(n78), .Z(n125) );
  GTECH_OAI22 U123 ( .A(n70), .B(n82), .C(n79), .D(n94), .Z(n124) );
  GTECH_NAND3 U124 ( .A(shift_direction[0]), .B(n120), .C(shift_direction[1]), 
        .Z(n94) );
  GTECH_NOT U125 ( .A(data_in[0]), .Z(n79) );
  GTECH_NAND3 U126 ( .A(shift_direction[2]), .B(n121), .C(shift_direction[1]), 
        .Z(n82) );
  GTECH_OAI21 U127 ( .A(n52), .B(n95), .C(n126), .Z(n123) );
  GTECH_OA22 U128 ( .A(n83), .B(n109), .C(n58), .D(n81), .Z(n126) );
  GTECH_NAND2 U129 ( .A(n127), .B(n121), .Z(n81) );
  GTECH_NOT U130 ( .A(shift_direction[0]), .Z(n121) );
  GTECH_NOT U131 ( .A(data_in[3]), .Z(n109) );
  GTECH_NAND3 U132 ( .A(shift_direction[2]), .B(shift_direction[0]), .C(
        shift_direction[1]), .Z(n83) );
  GTECH_NAND3 U133 ( .A(shift_direction[0]), .B(n127), .C(shift_direction[2]), 
        .Z(n95) );
  GTECH_NAND2 U134 ( .A(n127), .B(n120), .Z(n78) );
  GTECH_NOT U135 ( .A(shift_direction[2]), .Z(n120) );
  GTECH_NOT U136 ( .A(shift_direction[1]), .Z(n127) );
  GTECH_NOT U137 ( .A(reset), .Z(n71) );
endmodule

