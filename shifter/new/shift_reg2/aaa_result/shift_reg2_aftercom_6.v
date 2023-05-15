
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n49, n52, n55, n58, n61, n64, n67, n68, n47, n48, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127;
  wire   [7:0] shift_in;

  GTECH_FJK3S shift_reg_reg_0_ ( .J(n48), .K(n48), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n68), .SD(n47), .Q(data_out[0]), .QN(n71) );
  GTECH_FJK3S shift_reg_reg_6_ ( .J(n48), .K(n48), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n68), .SD(n47), .Q(data_out[6]), .QN(n67) );
  GTECH_FJK3S shift_reg_reg_7_ ( .J(n48), .K(n48), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n68), .SD(n47), .Q(data_out[7]), .QN(n64) );
  GTECH_FJK3S shift_reg_reg_5_ ( .J(n48), .K(n48), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n68), .SD(n47), .Q(data_out[5]), .QN(n61) );
  GTECH_FJK3S shift_reg_reg_4_ ( .J(n48), .K(n48), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n68), .SD(n47), .Q(data_out[4]), .QN(n58) );
  GTECH_FJK3S shift_reg_reg_3_ ( .J(n48), .K(n48), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n68), .SD(n47), .Q(data_out[3]), .QN(n55) );
  GTECH_FJK3S shift_reg_reg_2_ ( .J(n48), .K(n48), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n68), .SD(n47), .Q(data_out[2]), .QN(n52) );
  GTECH_FJK3S shift_reg_reg_1_ ( .J(n48), .K(n48), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n68), .SD(n47), .Q(data_out[1]), .QN(n49) );
  GTECH_ZERO U72 ( .Z(n48) );
  GTECH_ONE U73 ( .Z(n47) );
  GTECH_AOI21 U74 ( .A(n72), .B(n73), .C(n74), .Z(shift_in[7]) );
  GTECH_AOI222 U75 ( .A(n75), .B(n76), .C(data_in[7]), .D(n77), .E(n78), .F(
        n79), .Z(n73) );
  GTECH_NOT U76 ( .A(n52), .Z(n76) );
  GTECH_AOI222 U77 ( .A(data_in[0]), .B(n80), .C(n81), .D(n82), .E(n83), .F(
        n84), .Z(n72) );
  GTECH_OAI21 U78 ( .A(n64), .B(n85), .C(n86), .Z(shift_in[6]) );
  GTECH_AO21 U79 ( .A(n87), .B(n88), .C(n74), .Z(n86) );
  GTECH_AOI222 U80 ( .A(n75), .B(n82), .C(data_in[6]), .D(n77), .E(n78), .F(
        n89), .Z(n88) );
  GTECH_NAND2 U81 ( .A(n90), .B(n91), .Z(n77) );
  GTECH_OA22 U82 ( .A(n71), .B(n92), .C(n52), .D(n93), .Z(n87) );
  GTECH_OAI21 U83 ( .A(n67), .B(n85), .C(n94), .Z(shift_in[5]) );
  GTECH_AO21 U84 ( .A(n95), .B(n96), .C(n74), .Z(n94) );
  GTECH_AOI222 U85 ( .A(n83), .B(n82), .C(n78), .D(n97), .E(n75), .F(n98), .Z(
        n96) );
  GTECH_NOT U86 ( .A(n58), .Z(n97) );
  GTECH_OA22 U87 ( .A(n91), .B(n99), .C(n64), .D(n90), .Z(n95) );
  GTECH_NOT U88 ( .A(data_in[5]), .Z(n99) );
  GTECH_OAI21 U89 ( .A(n61), .B(n85), .C(n100), .Z(shift_in[4]) );
  GTECH_AO21 U90 ( .A(n101), .B(n102), .C(n74), .Z(n100) );
  GTECH_AOI222 U91 ( .A(n83), .B(n98), .C(n78), .D(n84), .E(n75), .F(
        data_in[7]), .Z(n102) );
  GTECH_OA22 U92 ( .A(n91), .B(n103), .C(n67), .D(n90), .Z(n101) );
  GTECH_NOT U93 ( .A(data_in[4]), .Z(n103) );
  GTECH_OAI21 U94 ( .A(n58), .B(n85), .C(n104), .Z(shift_in[3]) );
  GTECH_OAI21 U95 ( .A(n105), .B(n106), .C(n107), .Z(n104) );
  GTECH_OAI22 U96 ( .A(n61), .B(n90), .C(n91), .D(n108), .Z(n106) );
  GTECH_NOT U97 ( .A(data_in[3]), .Z(n108) );
  GTECH_OAI22 U98 ( .A(n109), .B(n110), .C(n52), .D(n111), .Z(n105) );
  GTECH_NOT U99 ( .A(data_in[6]), .Z(n110) );
  GTECH_OAI21 U100 ( .A(n55), .B(n85), .C(n112), .Z(shift_in[2]) );
  GTECH_AO21 U101 ( .A(n113), .B(n114), .C(n74), .Z(n112) );
  GTECH_AOI222 U102 ( .A(n81), .B(n115), .C(n78), .D(n82), .E(data_in[5]), .F(
        n75), .Z(n114) );
  GTECH_NOT U103 ( .A(n49), .Z(n82) );
  GTECH_AOI2N2 U104 ( .A(data_in[2]), .B(n116), .C(n58), .D(n90), .Z(n113) );
  GTECH_OAI21 U105 ( .A(n52), .B(n85), .C(n117), .Z(shift_in[1]) );
  GTECH_AO21 U106 ( .A(n118), .B(n119), .C(n74), .Z(n117) );
  GTECH_AOI222 U107 ( .A(n81), .B(n79), .C(n78), .D(n98), .E(data_in[4]), .F(
        n75), .Z(n119) );
  GTECH_NOT U108 ( .A(n71), .Z(n98) );
  GTECH_NOT U109 ( .A(n111), .Z(n78) );
  GTECH_NAND2 U110 ( .A(n120), .B(n121), .Z(n111) );
  GTECH_AOI222 U111 ( .A(n122), .B(n84), .C(n83), .D(n115), .E(data_in[1]), 
        .F(n116), .Z(n118) );
  GTECH_NOT U112 ( .A(n91), .Z(n116) );
  GTECH_NOT U113 ( .A(n64), .Z(n115) );
  GTECH_NOT U114 ( .A(n55), .Z(n84) );
  GTECH_NOT U115 ( .A(n90), .Z(n122) );
  GTECH_OAI21 U116 ( .A(n49), .B(n85), .C(n123), .Z(shift_in[0]) );
  GTECH_AO21 U117 ( .A(n124), .B(n125), .C(n74), .Z(n123) );
  GTECH_NOT U118 ( .A(n107), .Z(n74) );
  GTECH_NAND2 U119 ( .A(n80), .B(n120), .Z(n107) );
  GTECH_NOT U120 ( .A(n85), .Z(n80) );
  GTECH_AOI222 U121 ( .A(n83), .B(n79), .C(data_in[3]), .D(n75), .E(n81), .F(
        n89), .Z(n125) );
  GTECH_NOT U122 ( .A(n61), .Z(n89) );
  GTECH_NOT U123 ( .A(n92), .Z(n81) );
  GTECH_NAND3 U124 ( .A(shift_direction[1]), .B(n120), .C(shift_direction[2]), 
        .Z(n92) );
  GTECH_NOT U125 ( .A(n109), .Z(n75) );
  GTECH_NAND3 U126 ( .A(shift_direction[1]), .B(shift_direction[0]), .C(
        shift_direction[2]), .Z(n109) );
  GTECH_NOT U127 ( .A(n67), .Z(n79) );
  GTECH_NOT U128 ( .A(n93), .Z(n83) );
  GTECH_NAND2 U129 ( .A(n120), .B(n126), .Z(n93) );
  GTECH_NOT U130 ( .A(shift_direction[0]), .Z(n120) );
  GTECH_OA22 U131 ( .A(n127), .B(n91), .C(n52), .D(n90), .Z(n124) );
  GTECH_NAND3 U132 ( .A(shift_direction[0]), .B(n126), .C(shift_direction[2]), 
        .Z(n90) );
  GTECH_NAND3 U133 ( .A(shift_direction[0]), .B(n121), .C(shift_direction[1]), 
        .Z(n91) );
  GTECH_NOT U134 ( .A(data_in[0]), .Z(n127) );
  GTECH_NAND2 U135 ( .A(n126), .B(n121), .Z(n85) );
  GTECH_NOT U136 ( .A(shift_direction[2]), .Z(n121) );
  GTECH_NOT U137 ( .A(shift_direction[1]), .Z(n126) );
  GTECH_NOT U138 ( .A(reset), .Z(n68) );
endmodule

