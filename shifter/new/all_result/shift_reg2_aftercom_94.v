
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n53, n56, n59, n62, n65, n68, n71, n72, n51, n52, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129;
  wire   [7:0] shift_in;

  GTECH_FJK3S shift_reg_reg_0_ ( .J(n52), .K(n52), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n72), .SD(n51), .Q(data_out[0]), .QN(n75) );
  GTECH_FJK3S shift_reg_reg_5_ ( .J(n52), .K(n52), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n72), .SD(n51), .Q(data_out[5]), .QN(n71) );
  GTECH_FJK3S shift_reg_reg_6_ ( .J(n52), .K(n52), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n72), .SD(n51), .Q(data_out[6]), .QN(n68) );
  GTECH_FJK3S shift_reg_reg_7_ ( .J(n52), .K(n52), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n72), .SD(n51), .Q(data_out[7]), .QN(n65) );
  GTECH_FJK3S shift_reg_reg_1_ ( .J(n52), .K(n52), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n72), .SD(n51), .Q(data_out[1]), .QN(n62) );
  GTECH_FJK3S shift_reg_reg_2_ ( .J(n52), .K(n52), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n72), .SD(n51), .Q(data_out[2]), .QN(n59) );
  GTECH_FJK3S shift_reg_reg_3_ ( .J(n52), .K(n52), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n72), .SD(n51), .Q(data_out[3]), .QN(n56) );
  GTECH_FJK3S shift_reg_reg_4_ ( .J(n52), .K(n52), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n72), .SD(n51), .Q(data_out[4]), .QN(n53) );
  GTECH_ZERO U76 ( .Z(n52) );
  GTECH_ONE U77 ( .Z(n51) );
  GTECH_OA21 U78 ( .A(n76), .B(n77), .C(n78), .Z(shift_in[7]) );
  GTECH_OAI21 U79 ( .A(n79), .B(n80), .C(n81), .Z(n77) );
  GTECH_OA22 U80 ( .A(n56), .B(n82), .C(n62), .D(n83), .Z(n81) );
  GTECH_OAI21 U81 ( .A(n59), .B(n84), .C(n85), .Z(n76) );
  GTECH_OA22 U82 ( .A(n86), .B(n87), .C(n68), .D(n88), .Z(n85) );
  GTECH_OAI21 U83 ( .A(n65), .B(n79), .C(n89), .Z(shift_in[6]) );
  GTECH_OAI21 U84 ( .A(n90), .B(n91), .C(n78), .Z(n89) );
  GTECH_OAI22 U85 ( .A(n75), .B(n83), .C(n59), .D(n82), .Z(n91) );
  GTECH_OAI21 U86 ( .A(n62), .B(n84), .C(n92), .Z(n90) );
  GTECH_OA22 U87 ( .A(n86), .B(n93), .C(n71), .D(n88), .Z(n92) );
  GTECH_NOT U88 ( .A(n94), .Z(n86) );
  GTECH_OR_NOT U89 ( .A(n95), .B(n96), .Z(n94) );
  GTECH_NOT U90 ( .A(n97), .Z(n95) );
  GTECH_OAI21 U91 ( .A(n68), .B(n79), .C(n98), .Z(shift_in[5]) );
  GTECH_OAI21 U92 ( .A(n99), .B(n100), .C(n78), .Z(n98) );
  GTECH_OAI22 U93 ( .A(n96), .B(n101), .C(n65), .D(n97), .Z(n100) );
  GTECH_OAI21 U94 ( .A(n62), .B(n82), .C(n102), .Z(n99) );
  GTECH_OA22 U95 ( .A(n53), .B(n88), .C(n75), .D(n84), .Z(n102) );
  GTECH_OAI21 U96 ( .A(n71), .B(n79), .C(n103), .Z(shift_in[4]) );
  GTECH_OAI21 U97 ( .A(n104), .B(n105), .C(n78), .Z(n103) );
  GTECH_OAI22 U98 ( .A(n96), .B(n106), .C(n68), .D(n97), .Z(n105) );
  GTECH_OAI21 U99 ( .A(n75), .B(n82), .C(n107), .Z(n104) );
  GTECH_OA22 U100 ( .A(n56), .B(n88), .C(n87), .D(n84), .Z(n107) );
  GTECH_NOT U101 ( .A(data_in[7]), .Z(n87) );
  GTECH_OAI21 U102 ( .A(n53), .B(n79), .C(n108), .Z(shift_in[3]) );
  GTECH_OAI21 U103 ( .A(n109), .B(n110), .C(n78), .Z(n108) );
  GTECH_OAI22 U104 ( .A(n96), .B(n111), .C(n71), .D(n97), .Z(n110) );
  GTECH_OAI22 U105 ( .A(n84), .B(n93), .C(n59), .D(n88), .Z(n109) );
  GTECH_NOT U106 ( .A(data_in[6]), .Z(n93) );
  GTECH_OAI21 U107 ( .A(n56), .B(n79), .C(n112), .Z(shift_in[2]) );
  GTECH_OAI21 U108 ( .A(n113), .B(n114), .C(n78), .Z(n112) );
  GTECH_OAI2N2 U109 ( .A(n65), .B(n83), .C(data_in[2]), .D(n115), .Z(n114) );
  GTECH_OAI21 U110 ( .A(n53), .B(n97), .C(n116), .Z(n113) );
  GTECH_OA22 U111 ( .A(n62), .B(n88), .C(n84), .D(n101), .Z(n116) );
  GTECH_NOT U112 ( .A(data_in[5]), .Z(n101) );
  GTECH_OAI21 U113 ( .A(n59), .B(n79), .C(n117), .Z(shift_in[1]) );
  GTECH_OAI21 U114 ( .A(n118), .B(n119), .C(n78), .Z(n117) );
  GTECH_OAI21 U115 ( .A(n68), .B(n83), .C(n120), .Z(n119) );
  GTECH_AOI2N2 U116 ( .A(data_in[1]), .B(n115), .C(n56), .D(n97), .Z(n120) );
  GTECH_NOT U117 ( .A(n96), .Z(n115) );
  GTECH_OAI21 U118 ( .A(n65), .B(n82), .C(n121), .Z(n118) );
  GTECH_OA22 U119 ( .A(n75), .B(n88), .C(n84), .D(n106), .Z(n121) );
  GTECH_NOT U120 ( .A(data_in[4]), .Z(n106) );
  GTECH_OR_NOT U121 ( .A(shift_direction[0]), .B(n122), .Z(n88) );
  GTECH_OAI21 U122 ( .A(n62), .B(n79), .C(n123), .Z(shift_in[0]) );
  GTECH_OAI21 U123 ( .A(n124), .B(n125), .C(n78), .Z(n123) );
  GTECH_OR_NOT U124 ( .A(shift_direction[0]), .B(n126), .Z(n78) );
  GTECH_NOT U125 ( .A(n79), .Z(n126) );
  GTECH_OAI22 U126 ( .A(n71), .B(n83), .C(n80), .D(n96), .Z(n125) );
  GTECH_NAND3 U127 ( .A(shift_direction[0]), .B(n122), .C(shift_direction[1]), 
        .Z(n96) );
  GTECH_NOT U128 ( .A(data_in[0]), .Z(n80) );
  GTECH_NAND3 U129 ( .A(shift_direction[2]), .B(n127), .C(shift_direction[1]), 
        .Z(n83) );
  GTECH_OAI21 U130 ( .A(n59), .B(n97), .C(n128), .Z(n124) );
  GTECH_OA22 U131 ( .A(n84), .B(n111), .C(n68), .D(n82), .Z(n128) );
  GTECH_OR_NOT U132 ( .A(shift_direction[1]), .B(n127), .Z(n82) );
  GTECH_NOT U133 ( .A(shift_direction[0]), .Z(n127) );
  GTECH_NOT U134 ( .A(data_in[3]), .Z(n111) );
  GTECH_NAND3 U135 ( .A(shift_direction[2]), .B(shift_direction[0]), .C(
        shift_direction[1]), .Z(n84) );
  GTECH_NAND3 U136 ( .A(shift_direction[0]), .B(n129), .C(shift_direction[2]), 
        .Z(n97) );
  GTECH_NOT U137 ( .A(shift_direction[1]), .Z(n129) );
  GTECH_OR_NOT U138 ( .A(shift_direction[1]), .B(n122), .Z(n79) );
  GTECH_NOT U139 ( .A(shift_direction[2]), .Z(n122) );
  GTECH_NOT U140 ( .A(reset), .Z(n72) );
endmodule

