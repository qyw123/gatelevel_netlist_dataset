
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
         n126, n127;
  wire   [7:0] shift_in;

  GTECH_FJK3S shift_reg_reg_0_ ( .J(n50), .K(n50), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n70), .SD(n49), .Q(data_out[0]), .QN(n73) );
  GTECH_FJK3S shift_reg_reg_6_ ( .J(n50), .K(n50), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n70), .SD(n49), .Q(data_out[6]), .QN(n69) );
  GTECH_FJK3S shift_reg_reg_7_ ( .J(n50), .K(n50), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n70), .SD(n49), .Q(data_out[7]), .QN(n66) );
  GTECH_FJK3S shift_reg_reg_5_ ( .J(n50), .K(n50), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n70), .SD(n49), .Q(data_out[5]), .QN(n63) );
  GTECH_FJK3S shift_reg_reg_4_ ( .J(n50), .K(n50), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n70), .SD(n49), .Q(data_out[4]), .QN(n60) );
  GTECH_FJK3S shift_reg_reg_3_ ( .J(n50), .K(n50), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n70), .SD(n49), .Q(data_out[3]), .QN(n57) );
  GTECH_FJK3S shift_reg_reg_2_ ( .J(n50), .K(n50), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n70), .SD(n49), .Q(data_out[2]), .QN(n54) );
  GTECH_FJK3S shift_reg_reg_1_ ( .J(n50), .K(n50), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n70), .SD(n49), .Q(data_out[1]), .QN(n51) );
  GTECH_ZERO U74 ( .Z(n50) );
  GTECH_ONE U75 ( .Z(n49) );
  GTECH_AND2 U76 ( .A(n74), .B(n75), .Z(shift_in[7]) );
  GTECH_NAND2 U77 ( .A(n76), .B(n77), .Z(n74) );
  GTECH_AOI222 U78 ( .A(data_in[0]), .B(n78), .C(data_in[7]), .D(n79), .E(n80), 
        .F(n81), .Z(n77) );
  GTECH_NOT U79 ( .A(n82), .Z(n78) );
  GTECH_AOI222 U80 ( .A(n83), .B(n84), .C(n85), .D(n86), .E(n87), .F(n88), .Z(
        n76) );
  GTECH_OAI22 U81 ( .A(n66), .B(n82), .C(n89), .D(n90), .Z(shift_in[6]) );
  GTECH_AND2 U82 ( .A(n91), .B(n92), .Z(n90) );
  GTECH_AOI222 U83 ( .A(n85), .B(n88), .C(data_in[6]), .D(n79), .E(n80), .F(
        n93), .Z(n92) );
  GTECH_NOT U84 ( .A(n63), .Z(n93) );
  GTECH_NAND2 U85 ( .A(n94), .B(n95), .Z(n79) );
  GTECH_OA22 U86 ( .A(n73), .B(n96), .C(n54), .D(n97), .Z(n91) );
  GTECH_OAI22 U87 ( .A(n69), .B(n82), .C(n89), .D(n98), .Z(shift_in[5]) );
  GTECH_AND2 U88 ( .A(n99), .B(n100), .Z(n98) );
  GTECH_AOI222 U89 ( .A(data_in[5]), .B(n101), .C(n80), .D(n102), .E(n85), .F(
        n103), .Z(n100) );
  GTECH_NOT U90 ( .A(n60), .Z(n102) );
  GTECH_OA22 U91 ( .A(n66), .B(n94), .C(n51), .D(n97), .Z(n99) );
  GTECH_OAI22 U92 ( .A(n63), .B(n82), .C(n89), .D(n104), .Z(shift_in[4]) );
  GTECH_AND2 U93 ( .A(n105), .B(n106), .Z(n104) );
  GTECH_AOI222 U94 ( .A(data_in[4]), .B(n101), .C(n80), .D(n84), .E(n85), .F(
        data_in[7]), .Z(n106) );
  GTECH_OA22 U95 ( .A(n69), .B(n94), .C(n73), .D(n97), .Z(n105) );
  GTECH_OAI21 U96 ( .A(n60), .B(n82), .C(n107), .Z(shift_in[3]) );
  GTECH_OAI21 U97 ( .A(n108), .B(n109), .C(n75), .Z(n107) );
  GTECH_OAI22 U98 ( .A(n63), .B(n94), .C(n95), .D(n110), .Z(n109) );
  GTECH_NOT U99 ( .A(data_in[3]), .Z(n110) );
  GTECH_OAI22 U100 ( .A(n111), .B(n112), .C(n54), .D(n113), .Z(n108) );
  GTECH_NOT U101 ( .A(data_in[6]), .Z(n112) );
  GTECH_OAI22 U102 ( .A(n57), .B(n82), .C(n89), .D(n114), .Z(shift_in[2]) );
  GTECH_AND2 U103 ( .A(n115), .B(n116), .Z(n114) );
  GTECH_AOI222 U104 ( .A(data_in[2]), .B(n101), .C(n80), .D(n88), .E(
        data_in[5]), .F(n85), .Z(n116) );
  GTECH_NOT U105 ( .A(n51), .Z(n88) );
  GTECH_OA22 U106 ( .A(n60), .B(n94), .C(n66), .D(n96), .Z(n115) );
  GTECH_OAI22 U107 ( .A(n54), .B(n82), .C(n89), .D(n117), .Z(shift_in[1]) );
  GTECH_AND2 U108 ( .A(n118), .B(n119), .Z(n117) );
  GTECH_AOI222 U109 ( .A(data_in[1]), .B(n101), .C(n80), .D(n103), .E(
        data_in[4]), .F(n85), .Z(n119) );
  GTECH_NOT U110 ( .A(n73), .Z(n103) );
  GTECH_NOT U111 ( .A(n113), .Z(n80) );
  GTECH_NAND2 U112 ( .A(n120), .B(n121), .Z(n113) );
  GTECH_AOI222 U113 ( .A(n83), .B(n122), .C(n123), .D(n84), .E(n87), .F(n81), 
        .Z(n118) );
  GTECH_NOT U114 ( .A(n69), .Z(n81) );
  GTECH_NOT U115 ( .A(n96), .Z(n87) );
  GTECH_NOT U116 ( .A(n57), .Z(n84) );
  GTECH_NOT U117 ( .A(n66), .Z(n122) );
  GTECH_OAI22 U118 ( .A(n51), .B(n82), .C(n89), .D(n124), .Z(shift_in[0]) );
  GTECH_AND2 U119 ( .A(n125), .B(n126), .Z(n124) );
  GTECH_AOI222 U120 ( .A(n123), .B(n86), .C(data_in[3]), .D(n85), .E(n101), 
        .F(data_in[0]), .Z(n126) );
  GTECH_NOT U121 ( .A(n95), .Z(n101) );
  GTECH_NAND3 U122 ( .A(shift_direction[0]), .B(n121), .C(shift_direction[1]), 
        .Z(n95) );
  GTECH_NOT U123 ( .A(n111), .Z(n85) );
  GTECH_NAND3 U124 ( .A(shift_direction[1]), .B(shift_direction[0]), .C(
        shift_direction[2]), .Z(n111) );
  GTECH_NOT U125 ( .A(n54), .Z(n86) );
  GTECH_NOT U126 ( .A(n94), .Z(n123) );
  GTECH_NAND3 U127 ( .A(shift_direction[0]), .B(n127), .C(shift_direction[2]), 
        .Z(n94) );
  GTECH_OA22 U128 ( .A(n63), .B(n96), .C(n69), .D(n97), .Z(n125) );
  GTECH_NAND3 U129 ( .A(shift_direction[1]), .B(n120), .C(shift_direction[2]), 
        .Z(n96) );
  GTECH_NOT U130 ( .A(n75), .Z(n89) );
  GTECH_NAND2 U131 ( .A(n83), .B(n121), .Z(n75) );
  GTECH_NOT U132 ( .A(n97), .Z(n83) );
  GTECH_NAND2 U133 ( .A(n120), .B(n127), .Z(n97) );
  GTECH_NOT U134 ( .A(shift_direction[0]), .Z(n120) );
  GTECH_NAND2 U135 ( .A(n127), .B(n121), .Z(n82) );
  GTECH_NOT U136 ( .A(shift_direction[2]), .Z(n121) );
  GTECH_NOT U137 ( .A(shift_direction[1]), .Z(n127) );
  GTECH_NOT U138 ( .A(reset), .Z(n70) );
endmodule

