
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n49, n52, n55, n58, n61, n64, n67, n68, n47, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126;
  wire   [7:0] shift_in;

  GTECH_FJK3S shift_reg_reg_0_ ( .J(1'b0), .K(1'b0), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n68), .SD(n47), .Q(data_out[0]), .QN(n71) );
  GTECH_FJK3S shift_reg_reg_6_ ( .J(1'b0), .K(1'b0), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n68), .SD(n47), .Q(data_out[6]), .QN(n67) );
  GTECH_FJK3S shift_reg_reg_7_ ( .J(1'b0), .K(1'b0), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n68), .SD(n47), .Q(data_out[7]), .QN(n64) );
  GTECH_FJK3S shift_reg_reg_5_ ( .J(1'b0), .K(1'b0), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n68), .SD(n47), .Q(data_out[5]), .QN(n61) );
  GTECH_FJK3S shift_reg_reg_4_ ( .J(1'b0), .K(1'b0), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n68), .SD(n47), .Q(data_out[4]), .QN(n58) );
  GTECH_FJK3S shift_reg_reg_3_ ( .J(1'b0), .K(1'b0), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n68), .SD(n47), .Q(data_out[3]), .QN(n55) );
  GTECH_FJK3S shift_reg_reg_2_ ( .J(1'b0), .K(1'b0), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n68), .SD(n47), .Q(data_out[2]), .QN(n52) );
  GTECH_FJK3S shift_reg_reg_1_ ( .J(1'b0), .K(1'b0), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n68), .SD(n47), .Q(data_out[1]), .QN(n49) );
  GTECH_ONE U72 ( .Z(n47) );
  GTECH_AOI21 U73 ( .A(n72), .B(n73), .C(n74), .Z(shift_in[7]) );
  GTECH_AOI222 U74 ( .A(n75), .B(n76), .C(data_in[7]), .D(n77), .E(n78), .F(
        n79), .Z(n73) );
  GTECH_NOT U75 ( .A(n52), .Z(n76) );
  GTECH_AOI222 U76 ( .A(data_in[0]), .B(n80), .C(n81), .D(n82), .E(n83), .F(
        n84), .Z(n72) );
  GTECH_OAI21 U77 ( .A(n64), .B(n85), .C(n86), .Z(shift_in[6]) );
  GTECH_AO21 U78 ( .A(n87), .B(n88), .C(n74), .Z(n86) );
  GTECH_AOI222 U79 ( .A(n75), .B(n82), .C(data_in[6]), .D(n77), .E(n78), .F(
        n89), .Z(n88) );
  GTECH_NAND2 U80 ( .A(n90), .B(n91), .Z(n77) );
  GTECH_OA22 U81 ( .A(n71), .B(n92), .C(n52), .D(n93), .Z(n87) );
  GTECH_OAI21 U82 ( .A(n67), .B(n85), .C(n94), .Z(shift_in[5]) );
  GTECH_AO21 U83 ( .A(n95), .B(n96), .C(n74), .Z(n94) );
  GTECH_AOI222 U84 ( .A(n83), .B(n82), .C(n78), .D(n97), .E(n75), .F(n98), .Z(
        n96) );
  GTECH_NOT U85 ( .A(n58), .Z(n97) );
  GTECH_OA22 U86 ( .A(n91), .B(n99), .C(n64), .D(n90), .Z(n95) );
  GTECH_NOT U87 ( .A(data_in[5]), .Z(n99) );
  GTECH_OAI21 U88 ( .A(n61), .B(n85), .C(n100), .Z(shift_in[4]) );
  GTECH_AO21 U89 ( .A(n101), .B(n102), .C(n74), .Z(n100) );
  GTECH_AOI222 U90 ( .A(n83), .B(n98), .C(n78), .D(n84), .E(n75), .F(
        data_in[7]), .Z(n102) );
  GTECH_OA22 U91 ( .A(n91), .B(n103), .C(n67), .D(n90), .Z(n101) );
  GTECH_NOT U92 ( .A(data_in[4]), .Z(n103) );
  GTECH_OAI21 U93 ( .A(n58), .B(n85), .C(n104), .Z(shift_in[3]) );
  GTECH_OAI21 U94 ( .A(n105), .B(n106), .C(n107), .Z(n104) );
  GTECH_OAI2N2 U95 ( .A(n91), .B(n108), .C(n109), .D(n89), .Z(n106) );
  GTECH_NOT U96 ( .A(data_in[3]), .Z(n108) );
  GTECH_OAI2N2 U97 ( .A(n52), .B(n110), .C(data_in[6]), .D(n75), .Z(n105) );
  GTECH_OAI21 U98 ( .A(n55), .B(n85), .C(n111), .Z(shift_in[2]) );
  GTECH_AO21 U99 ( .A(n112), .B(n113), .C(n74), .Z(n111) );
  GTECH_AOI222 U100 ( .A(n81), .B(n114), .C(n78), .D(n82), .E(data_in[5]), .F(
        n75), .Z(n113) );
  GTECH_NOT U101 ( .A(n49), .Z(n82) );
  GTECH_AOI2N2 U102 ( .A(data_in[2]), .B(n115), .C(n58), .D(n90), .Z(n112) );
  GTECH_OAI21 U103 ( .A(n52), .B(n85), .C(n116), .Z(shift_in[1]) );
  GTECH_AO21 U104 ( .A(n117), .B(n118), .C(n74), .Z(n116) );
  GTECH_AOI222 U105 ( .A(n81), .B(n79), .C(n78), .D(n98), .E(data_in[4]), .F(
        n75), .Z(n118) );
  GTECH_NOT U106 ( .A(n71), .Z(n98) );
  GTECH_NOT U107 ( .A(n110), .Z(n78) );
  GTECH_NAND2 U108 ( .A(n119), .B(n120), .Z(n110) );
  GTECH_AOI222 U109 ( .A(n109), .B(n84), .C(n83), .D(n114), .E(data_in[1]), 
        .F(n115), .Z(n117) );
  GTECH_NOT U110 ( .A(n91), .Z(n115) );
  GTECH_NOT U111 ( .A(n64), .Z(n114) );
  GTECH_NOT U112 ( .A(n55), .Z(n84) );
  GTECH_NOT U113 ( .A(n90), .Z(n109) );
  GTECH_OAI21 U114 ( .A(n49), .B(n85), .C(n121), .Z(shift_in[0]) );
  GTECH_AO21 U115 ( .A(n122), .B(n123), .C(n74), .Z(n121) );
  GTECH_NOT U116 ( .A(n107), .Z(n74) );
  GTECH_NAND2 U117 ( .A(n80), .B(n119), .Z(n107) );
  GTECH_NOT U118 ( .A(n85), .Z(n80) );
  GTECH_AOI222 U119 ( .A(n83), .B(n79), .C(data_in[3]), .D(n75), .E(n81), .F(
        n89), .Z(n123) );
  GTECH_NOT U120 ( .A(n61), .Z(n89) );
  GTECH_NOT U121 ( .A(n92), .Z(n81) );
  GTECH_NAND3 U122 ( .A(shift_direction[1]), .B(n119), .C(shift_direction[2]), 
        .Z(n92) );
  GTECH_NOT U123 ( .A(n124), .Z(n75) );
  GTECH_NAND3 U124 ( .A(shift_direction[1]), .B(shift_direction[0]), .C(
        shift_direction[2]), .Z(n124) );
  GTECH_NOT U125 ( .A(n67), .Z(n79) );
  GTECH_NOT U126 ( .A(n93), .Z(n83) );
  GTECH_NAND2 U127 ( .A(n119), .B(n125), .Z(n93) );
  GTECH_NOT U128 ( .A(shift_direction[0]), .Z(n119) );
  GTECH_OA22 U129 ( .A(n126), .B(n91), .C(n52), .D(n90), .Z(n122) );
  GTECH_NAND3 U130 ( .A(shift_direction[0]), .B(n125), .C(shift_direction[2]), 
        .Z(n90) );
  GTECH_NAND3 U131 ( .A(shift_direction[0]), .B(n120), .C(shift_direction[1]), 
        .Z(n91) );
  GTECH_NOT U132 ( .A(data_in[0]), .Z(n126) );
  GTECH_NAND2 U133 ( .A(n125), .B(n120), .Z(n85) );
  GTECH_NOT U134 ( .A(shift_direction[2]), .Z(n120) );
  GTECH_NOT U135 ( .A(shift_direction[1]), .Z(n125) );
  GTECH_NOT U136 ( .A(reset), .Z(n68) );
endmodule

