
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
         n124, n125, n126;
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
  GTECH_AOI222 U76 ( .A(data_in[0]), .B(n80), .C(n81), .D(n82), .E(n83), .F(
        n84), .Z(n72) );
  GTECH_OAI21 U77 ( .A(n64), .B(n85), .C(n86), .Z(shift_in[6]) );
  GTECH_AO21 U78 ( .A(n87), .B(n88), .C(n74), .Z(n86) );
  GTECH_AOI222 U79 ( .A(n75), .B(n82), .C(data_in[6]), .D(n77), .E(n78), .F(
        n89), .Z(n88) );
  GTECH_NAND2 U80 ( .A(n90), .B(n91), .Z(n77) );
  GTECH_AOI2N2 U81 ( .A(n83), .B(n76), .C(n71), .D(n92), .Z(n87) );
  GTECH_OAI21 U82 ( .A(n67), .B(n85), .C(n93), .Z(shift_in[5]) );
  GTECH_AO21 U83 ( .A(n94), .B(n95), .C(n74), .Z(n93) );
  GTECH_AOI222 U84 ( .A(n83), .B(n82), .C(n78), .D(n96), .E(n75), .F(n97), .Z(
        n95) );
  GTECH_NOT U85 ( .A(n58), .Z(n96) );
  GTECH_AOI2N2 U86 ( .A(n98), .B(n99), .C(n91), .D(n100), .Z(n94) );
  GTECH_NOT U87 ( .A(data_in[5]), .Z(n100) );
  GTECH_OAI21 U88 ( .A(n61), .B(n85), .C(n101), .Z(shift_in[4]) );
  GTECH_AO21 U89 ( .A(n102), .B(n103), .C(n74), .Z(n101) );
  GTECH_AOI222 U90 ( .A(n83), .B(n97), .C(n78), .D(n84), .E(n75), .F(
        data_in[7]), .Z(n103) );
  GTECH_AOI2N2 U91 ( .A(n98), .B(n79), .C(n91), .D(n104), .Z(n102) );
  GTECH_NOT U92 ( .A(data_in[4]), .Z(n104) );
  GTECH_OAI21 U93 ( .A(n58), .B(n85), .C(n105), .Z(shift_in[3]) );
  GTECH_OAI21 U94 ( .A(n106), .B(n107), .C(n108), .Z(n105) );
  GTECH_OAI2N2 U95 ( .A(n91), .B(n109), .C(n98), .D(n89), .Z(n107) );
  GTECH_NOT U96 ( .A(data_in[3]), .Z(n109) );
  GTECH_OAI2N2 U97 ( .A(n52), .B(n110), .C(data_in[6]), .D(n75), .Z(n106) );
  GTECH_OAI21 U98 ( .A(n55), .B(n85), .C(n111), .Z(shift_in[2]) );
  GTECH_AO21 U99 ( .A(n112), .B(n113), .C(n74), .Z(n111) );
  GTECH_AOI222 U100 ( .A(n81), .B(n99), .C(n78), .D(n82), .E(data_in[5]), .F(
        n75), .Z(n113) );
  GTECH_NOT U101 ( .A(n49), .Z(n82) );
  GTECH_AOI2N2 U102 ( .A(data_in[2]), .B(n114), .C(n58), .D(n90), .Z(n112) );
  GTECH_OAI21 U103 ( .A(n52), .B(n85), .C(n115), .Z(shift_in[1]) );
  GTECH_AO21 U104 ( .A(n116), .B(n117), .C(n74), .Z(n115) );
  GTECH_AOI222 U105 ( .A(n81), .B(n79), .C(n78), .D(n97), .E(data_in[4]), .F(
        n75), .Z(n117) );
  GTECH_NOT U106 ( .A(n71), .Z(n97) );
  GTECH_NOT U107 ( .A(n110), .Z(n78) );
  GTECH_NAND2 U108 ( .A(n118), .B(n119), .Z(n110) );
  GTECH_AOI222 U109 ( .A(n98), .B(n84), .C(n83), .D(n99), .E(data_in[1]), .F(
        n114), .Z(n116) );
  GTECH_NOT U110 ( .A(n91), .Z(n114) );
  GTECH_NOT U111 ( .A(n64), .Z(n99) );
  GTECH_NOT U112 ( .A(n55), .Z(n84) );
  GTECH_OAI21 U113 ( .A(n49), .B(n85), .C(n120), .Z(shift_in[0]) );
  GTECH_AO21 U114 ( .A(n121), .B(n122), .C(n74), .Z(n120) );
  GTECH_NOT U115 ( .A(n108), .Z(n74) );
  GTECH_NAND2 U116 ( .A(n80), .B(n118), .Z(n108) );
  GTECH_NOT U117 ( .A(n85), .Z(n80) );
  GTECH_AOI222 U118 ( .A(n83), .B(n79), .C(data_in[3]), .D(n75), .E(n81), .F(
        n89), .Z(n122) );
  GTECH_NOT U119 ( .A(n61), .Z(n89) );
  GTECH_NOT U120 ( .A(n92), .Z(n81) );
  GTECH_NAND3 U121 ( .A(shift_direction[1]), .B(n118), .C(shift_direction[2]), 
        .Z(n92) );
  GTECH_NOT U122 ( .A(n123), .Z(n75) );
  GTECH_NAND3 U123 ( .A(shift_direction[1]), .B(shift_direction[0]), .C(
        shift_direction[2]), .Z(n123) );
  GTECH_NOT U124 ( .A(n67), .Z(n79) );
  GTECH_NOT U125 ( .A(n124), .Z(n83) );
  GTECH_NAND2 U126 ( .A(n118), .B(n125), .Z(n124) );
  GTECH_NOT U127 ( .A(shift_direction[0]), .Z(n118) );
  GTECH_AOI2N2 U128 ( .A(n98), .B(n76), .C(n126), .D(n91), .Z(n121) );
  GTECH_NAND3 U129 ( .A(shift_direction[0]), .B(n119), .C(shift_direction[1]), 
        .Z(n91) );
  GTECH_NOT U130 ( .A(data_in[0]), .Z(n126) );
  GTECH_NOT U131 ( .A(n52), .Z(n76) );
  GTECH_NOT U132 ( .A(n90), .Z(n98) );
  GTECH_NAND3 U133 ( .A(shift_direction[0]), .B(n125), .C(shift_direction[2]), 
        .Z(n90) );
  GTECH_NAND2 U134 ( .A(n125), .B(n119), .Z(n85) );
  GTECH_NOT U135 ( .A(shift_direction[2]), .Z(n119) );
  GTECH_NOT U136 ( .A(shift_direction[1]), .Z(n125) );
  GTECH_NOT U137 ( .A(reset), .Z(n68) );
endmodule

