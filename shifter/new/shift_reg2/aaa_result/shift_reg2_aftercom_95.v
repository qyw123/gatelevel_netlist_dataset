
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
         n128;
  wire   [7:0] shift_in;

  GTECH_FJK3S shift_reg_reg_0_ ( .J(n52), .K(n52), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n72), .SD(n51), .Q(data_out[0]), .QN(n75) );
  GTECH_FJK3S shift_reg_reg_5_ ( .J(n52), .K(n52), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n72), .SD(n51), .Q(data_out[5]), .QN(n71) );
  GTECH_FJK3S shift_reg_reg_6_ ( .J(n52), .K(n52), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n72), .SD(n51), .Q(data_out[6]), .QN(n68) );
  GTECH_FJK3S shift_reg_reg_1_ ( .J(n52), .K(n52), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n72), .SD(n51), .Q(data_out[1]), .QN(n65) );
  GTECH_FJK3S shift_reg_reg_2_ ( .J(n52), .K(n52), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n72), .SD(n51), .Q(data_out[2]), .QN(n62) );
  GTECH_FJK3S shift_reg_reg_3_ ( .J(n52), .K(n52), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n72), .SD(n51), .Q(data_out[3]), .QN(n59) );
  GTECH_FJK3S shift_reg_reg_4_ ( .J(n52), .K(n52), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n72), .SD(n51), .Q(data_out[4]), .QN(n56) );
  GTECH_FJK3S shift_reg_reg_7_ ( .J(n52), .K(n52), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n72), .SD(n51), .Q(data_out[7]), .QN(n53) );
  GTECH_ZERO U76 ( .Z(n52) );
  GTECH_ONE U77 ( .Z(n51) );
  GTECH_OA21 U78 ( .A(n76), .B(n77), .C(n78), .Z(shift_in[7]) );
  GTECH_OAI21 U79 ( .A(n79), .B(n80), .C(n81), .Z(n77) );
  GTECH_OA22 U80 ( .A(n59), .B(n82), .C(n65), .D(n83), .Z(n81) );
  GTECH_OAI21 U81 ( .A(n62), .B(n84), .C(n85), .Z(n76) );
  GTECH_OA22 U82 ( .A(n86), .B(n87), .C(n68), .D(n88), .Z(n85) );
  GTECH_NOT U83 ( .A(n89), .Z(n86) );
  GTECH_OAI2N2 U84 ( .A(n53), .B(n79), .C(n78), .D(n90), .Z(shift_in[6]) );
  GTECH_NAND2 U85 ( .A(n91), .B(n92), .Z(n90) );
  GTECH_OA21 U86 ( .A(n65), .B(n84), .C(n93), .Z(n92) );
  GTECH_AOI2N2 U87 ( .A(n89), .B(data_in[6]), .C(n88), .D(n71), .Z(n93) );
  GTECH_NAND2 U88 ( .A(n94), .B(n95), .Z(n89) );
  GTECH_OA22 U89 ( .A(n75), .B(n83), .C(n62), .D(n82), .Z(n91) );
  GTECH_OAI21 U90 ( .A(n68), .B(n79), .C(n96), .Z(shift_in[5]) );
  GTECH_OAI21 U91 ( .A(n97), .B(n98), .C(n78), .Z(n96) );
  GTECH_OAI2N2 U92 ( .A(n53), .B(n95), .C(data_in[5]), .D(n99), .Z(n98) );
  GTECH_OAI21 U93 ( .A(n65), .B(n82), .C(n100), .Z(n97) );
  GTECH_OA22 U94 ( .A(n56), .B(n88), .C(n75), .D(n84), .Z(n100) );
  GTECH_OAI21 U95 ( .A(n71), .B(n79), .C(n101), .Z(shift_in[4]) );
  GTECH_OAI21 U96 ( .A(n102), .B(n103), .C(n78), .Z(n101) );
  GTECH_OAI2N2 U97 ( .A(n68), .B(n95), .C(data_in[4]), .D(n99), .Z(n103) );
  GTECH_OAI21 U98 ( .A(n75), .B(n82), .C(n104), .Z(n102) );
  GTECH_OA22 U99 ( .A(n59), .B(n88), .C(n87), .D(n84), .Z(n104) );
  GTECH_NOT U100 ( .A(data_in[7]), .Z(n87) );
  GTECH_OAI21 U101 ( .A(n56), .B(n79), .C(n105), .Z(shift_in[3]) );
  GTECH_OAI21 U102 ( .A(n106), .B(n107), .C(n78), .Z(n105) );
  GTECH_OAI2N2 U103 ( .A(n71), .B(n95), .C(data_in[3]), .D(n99), .Z(n107) );
  GTECH_OAI2N2 U104 ( .A(n62), .B(n88), .C(data_in[6]), .D(n108), .Z(n106) );
  GTECH_NOT U105 ( .A(n84), .Z(n108) );
  GTECH_OAI21 U106 ( .A(n59), .B(n79), .C(n109), .Z(shift_in[2]) );
  GTECH_OAI21 U107 ( .A(n110), .B(n111), .C(n78), .Z(n109) );
  GTECH_OAI2N2 U108 ( .A(n53), .B(n83), .C(data_in[2]), .D(n99), .Z(n111) );
  GTECH_OAI21 U109 ( .A(n56), .B(n95), .C(n112), .Z(n110) );
  GTECH_OA22 U110 ( .A(n65), .B(n88), .C(n84), .D(n113), .Z(n112) );
  GTECH_NOT U111 ( .A(data_in[5]), .Z(n113) );
  GTECH_OAI21 U112 ( .A(n62), .B(n79), .C(n114), .Z(shift_in[1]) );
  GTECH_OAI21 U113 ( .A(n115), .B(n116), .C(n78), .Z(n114) );
  GTECH_OAI21 U114 ( .A(n68), .B(n83), .C(n117), .Z(n116) );
  GTECH_AOI2N2 U115 ( .A(data_in[1]), .B(n99), .C(n59), .D(n95), .Z(n117) );
  GTECH_NOT U116 ( .A(n94), .Z(n99) );
  GTECH_OAI21 U117 ( .A(n53), .B(n82), .C(n118), .Z(n115) );
  GTECH_OA22 U118 ( .A(n75), .B(n88), .C(n84), .D(n119), .Z(n118) );
  GTECH_NOT U119 ( .A(data_in[4]), .Z(n119) );
  GTECH_NAND2 U120 ( .A(n120), .B(n121), .Z(n88) );
  GTECH_OAI2N2 U121 ( .A(n65), .B(n79), .C(n78), .D(n122), .Z(shift_in[0]) );
  GTECH_NAND2 U122 ( .A(n123), .B(n124), .Z(n122) );
  GTECH_OA21 U123 ( .A(n62), .B(n95), .C(n125), .Z(n124) );
  GTECH_OA21 U124 ( .A(n82), .B(n68), .C(n126), .Z(n125) );
  GTECH_OR_NOT U125 ( .A(n84), .B(data_in[3]), .Z(n126) );
  GTECH_NAND3 U126 ( .A(shift_direction[2]), .B(shift_direction[0]), .C(
        shift_direction[1]), .Z(n84) );
  GTECH_NAND2 U127 ( .A(n127), .B(n121), .Z(n82) );
  GTECH_NAND3 U128 ( .A(shift_direction[0]), .B(n127), .C(shift_direction[2]), 
        .Z(n95) );
  GTECH_OA22 U129 ( .A(n83), .B(n71), .C(n80), .D(n94), .Z(n123) );
  GTECH_NAND3 U130 ( .A(shift_direction[0]), .B(n120), .C(shift_direction[1]), 
        .Z(n94) );
  GTECH_NOT U131 ( .A(data_in[0]), .Z(n80) );
  GTECH_NAND3 U132 ( .A(shift_direction[2]), .B(n121), .C(shift_direction[1]), 
        .Z(n83) );
  GTECH_NAND2 U133 ( .A(n128), .B(n121), .Z(n78) );
  GTECH_NOT U134 ( .A(shift_direction[0]), .Z(n121) );
  GTECH_NOT U135 ( .A(n79), .Z(n128) );
  GTECH_NAND2 U136 ( .A(n127), .B(n120), .Z(n79) );
  GTECH_NOT U137 ( .A(shift_direction[2]), .Z(n120) );
  GTECH_NOT U138 ( .A(shift_direction[1]), .Z(n127) );
  GTECH_NOT U139 ( .A(reset), .Z(n72) );
endmodule

