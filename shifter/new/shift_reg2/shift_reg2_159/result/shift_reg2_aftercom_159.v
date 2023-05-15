
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n48, n51, n54, n57, n60, n63, n66, n67, n46, n47, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125;
  wire   [7:0] shift_in;

  GTECH_FJK3S shift_reg_reg_0_ ( .J(n47), .K(n47), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n67), .SD(n46), .Q(data_out[0]), .QN(n70) );
  GTECH_FJK3S shift_reg_reg_6_ ( .J(n47), .K(n47), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n67), .SD(n46), .Q(data_out[6]), .QN(n66) );
  GTECH_FJK3S shift_reg_reg_7_ ( .J(n47), .K(n47), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n67), .SD(n46), .Q(data_out[7]), .QN(n63) );
  GTECH_FJK3S shift_reg_reg_5_ ( .J(n47), .K(n47), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n67), .SD(n46), .Q(data_out[5]), .QN(n60) );
  GTECH_FJK3S shift_reg_reg_4_ ( .J(n47), .K(n47), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n67), .SD(n46), .Q(data_out[4]), .QN(n57) );
  GTECH_FJK3S shift_reg_reg_3_ ( .J(n47), .K(n47), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n67), .SD(n46), .Q(data_out[3]), .QN(n54) );
  GTECH_FJK3S shift_reg_reg_2_ ( .J(n47), .K(n47), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n67), .SD(n46), .Q(data_out[2]), .QN(n51) );
  GTECH_FJK3S shift_reg_reg_1_ ( .J(n47), .K(n47), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n67), .SD(n46), .Q(data_out[1]), .QN(n48) );
  GTECH_ZERO U71 ( .Z(n47) );
  GTECH_ONE U72 ( .Z(n46) );
  GTECH_AOI21 U73 ( .A(n71), .B(n72), .C(n73), .Z(shift_in[7]) );
  GTECH_AOI222 U74 ( .A(n74), .B(n75), .C(data_in[7]), .D(n76), .E(n77), .F(
        n78), .Z(n72) );
  GTECH_NOT U75 ( .A(n51), .Z(n75) );
  GTECH_AOI222 U76 ( .A(data_in[0]), .B(n79), .C(n80), .D(n81), .E(n82), .F(
        n83), .Z(n71) );
  GTECH_OAI21 U77 ( .A(n63), .B(n84), .C(n85), .Z(shift_in[6]) );
  GTECH_AO21 U78 ( .A(n86), .B(n87), .C(n73), .Z(n85) );
  GTECH_AOI222 U79 ( .A(n74), .B(n81), .C(data_in[6]), .D(n76), .E(n77), .F(
        n88), .Z(n87) );
  GTECH_NAND2 U80 ( .A(n89), .B(n90), .Z(n76) );
  GTECH_OA22 U81 ( .A(n70), .B(n91), .C(n51), .D(n92), .Z(n86) );
  GTECH_OAI21 U82 ( .A(n66), .B(n84), .C(n93), .Z(shift_in[5]) );
  GTECH_AO21 U83 ( .A(n94), .B(n95), .C(n73), .Z(n93) );
  GTECH_AOI222 U84 ( .A(n82), .B(n81), .C(n77), .D(n96), .E(n74), .F(n97), .Z(
        n95) );
  GTECH_OA22 U85 ( .A(n90), .B(n98), .C(n63), .D(n89), .Z(n94) );
  GTECH_NOT U86 ( .A(data_in[5]), .Z(n98) );
  GTECH_OAI21 U87 ( .A(n60), .B(n84), .C(n99), .Z(shift_in[4]) );
  GTECH_AO21 U88 ( .A(n100), .B(n101), .C(n73), .Z(n99) );
  GTECH_AOI222 U89 ( .A(n82), .B(n97), .C(n77), .D(n83), .E(n74), .F(
        data_in[7]), .Z(n101) );
  GTECH_OA22 U90 ( .A(n90), .B(n102), .C(n66), .D(n89), .Z(n100) );
  GTECH_NOT U91 ( .A(data_in[4]), .Z(n102) );
  GTECH_OAI21 U92 ( .A(n57), .B(n84), .C(n103), .Z(shift_in[3]) );
  GTECH_OAI21 U93 ( .A(n104), .B(n105), .C(n106), .Z(n103) );
  GTECH_OAI2N2 U94 ( .A(n90), .B(n107), .C(n108), .D(n88), .Z(n105) );
  GTECH_NOT U95 ( .A(data_in[3]), .Z(n107) );
  GTECH_OAI2N2 U96 ( .A(n51), .B(n109), .C(data_in[6]), .D(n74), .Z(n104) );
  GTECH_OAI21 U97 ( .A(n54), .B(n84), .C(n110), .Z(shift_in[2]) );
  GTECH_AO21 U98 ( .A(n111), .B(n112), .C(n73), .Z(n110) );
  GTECH_AOI222 U99 ( .A(n80), .B(n113), .C(n77), .D(n81), .E(data_in[5]), .F(
        n74), .Z(n112) );
  GTECH_NOT U100 ( .A(n48), .Z(n81) );
  GTECH_AOI22 U101 ( .A(data_in[2]), .B(n114), .C(n108), .D(n96), .Z(n111) );
  GTECH_NOT U102 ( .A(n57), .Z(n96) );
  GTECH_OAI21 U103 ( .A(n51), .B(n84), .C(n115), .Z(shift_in[1]) );
  GTECH_AO21 U104 ( .A(n116), .B(n117), .C(n73), .Z(n115) );
  GTECH_AOI222 U105 ( .A(n80), .B(n78), .C(n77), .D(n97), .E(data_in[4]), .F(
        n74), .Z(n117) );
  GTECH_NOT U106 ( .A(n70), .Z(n97) );
  GTECH_NOT U107 ( .A(n109), .Z(n77) );
  GTECH_NAND2 U108 ( .A(n118), .B(n119), .Z(n109) );
  GTECH_AOI222 U109 ( .A(n108), .B(n83), .C(n82), .D(n113), .E(data_in[1]), 
        .F(n114), .Z(n116) );
  GTECH_NOT U110 ( .A(n90), .Z(n114) );
  GTECH_NOT U111 ( .A(n63), .Z(n113) );
  GTECH_NOT U112 ( .A(n54), .Z(n83) );
  GTECH_NOT U113 ( .A(n89), .Z(n108) );
  GTECH_OAI21 U114 ( .A(n48), .B(n84), .C(n120), .Z(shift_in[0]) );
  GTECH_AO21 U115 ( .A(n121), .B(n122), .C(n73), .Z(n120) );
  GTECH_NOT U116 ( .A(n106), .Z(n73) );
  GTECH_NAND2 U117 ( .A(n79), .B(n118), .Z(n106) );
  GTECH_NOT U118 ( .A(n84), .Z(n79) );
  GTECH_AOI222 U119 ( .A(n82), .B(n78), .C(data_in[3]), .D(n74), .E(n80), .F(
        n88), .Z(n122) );
  GTECH_NOT U120 ( .A(n60), .Z(n88) );
  GTECH_NOT U121 ( .A(n91), .Z(n80) );
  GTECH_NAND3 U122 ( .A(shift_direction[1]), .B(n118), .C(shift_direction[2]), 
        .Z(n91) );
  GTECH_NOT U123 ( .A(n123), .Z(n74) );
  GTECH_NAND3 U124 ( .A(shift_direction[1]), .B(shift_direction[0]), .C(
        shift_direction[2]), .Z(n123) );
  GTECH_NOT U125 ( .A(n66), .Z(n78) );
  GTECH_NOT U126 ( .A(n92), .Z(n82) );
  GTECH_NAND2 U127 ( .A(n118), .B(n124), .Z(n92) );
  GTECH_NOT U128 ( .A(shift_direction[0]), .Z(n118) );
  GTECH_OA22 U129 ( .A(n125), .B(n90), .C(n51), .D(n89), .Z(n121) );
  GTECH_NAND3 U130 ( .A(shift_direction[0]), .B(n124), .C(shift_direction[2]), 
        .Z(n89) );
  GTECH_NAND3 U131 ( .A(shift_direction[0]), .B(n119), .C(shift_direction[1]), 
        .Z(n90) );
  GTECH_NOT U132 ( .A(data_in[0]), .Z(n125) );
  GTECH_NAND2 U133 ( .A(n124), .B(n119), .Z(n84) );
  GTECH_NOT U134 ( .A(shift_direction[2]), .Z(n119) );
  GTECH_NOT U135 ( .A(shift_direction[1]), .Z(n124) );
  GTECH_NOT U136 ( .A(reset), .Z(n67) );
endmodule

