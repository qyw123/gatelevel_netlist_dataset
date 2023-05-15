
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n49, n52, n55, n58, n61, n64, n67, n68, n47, n48, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123;
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
  GTECH_AOI222 U75 ( .A(data_in[0]), .B(n75), .C(data_in[7]), .D(n76), .E(n77), 
        .F(n78), .Z(n73) );
  GTECH_AOI222 U76 ( .A(n79), .B(n80), .C(n81), .D(n82), .E(n83), .F(n84), .Z(
        n72) );
  GTECH_OAI2N2 U77 ( .A(n74), .B(n85), .C(n75), .D(n86), .Z(shift_in[6]) );
  GTECH_AND2 U78 ( .A(n87), .B(n88), .Z(n85) );
  GTECH_AOI222 U79 ( .A(n81), .B(n84), .C(data_in[6]), .D(n76), .E(n77), .F(
        n89), .Z(n88) );
  GTECH_NAND2 U80 ( .A(n90), .B(n91), .Z(n76) );
  GTECH_OA22 U81 ( .A(n71), .B(n92), .C(n52), .D(n93), .Z(n87) );
  GTECH_OAI2N2 U82 ( .A(n74), .B(n94), .C(n75), .D(n78), .Z(shift_in[5]) );
  GTECH_AND2 U83 ( .A(n95), .B(n96), .Z(n94) );
  GTECH_AOI222 U84 ( .A(data_in[5]), .B(n97), .C(n77), .D(n98), .E(n81), .F(
        n99), .Z(n96) );
  GTECH_NOT U85 ( .A(n58), .Z(n98) );
  GTECH_OA22 U86 ( .A(n64), .B(n90), .C(n49), .D(n93), .Z(n95) );
  GTECH_OAI2N2 U87 ( .A(n74), .B(n100), .C(n75), .D(n89), .Z(shift_in[4]) );
  GTECH_AND2 U88 ( .A(n101), .B(n102), .Z(n100) );
  GTECH_AOI222 U89 ( .A(data_in[4]), .B(n97), .C(n77), .D(n80), .E(n81), .F(
        data_in[7]), .Z(n102) );
  GTECH_OA22 U90 ( .A(n67), .B(n90), .C(n71), .D(n93), .Z(n101) );
  GTECH_OAI21 U91 ( .A(n58), .B(n103), .C(n104), .Z(shift_in[3]) );
  GTECH_OAI21 U92 ( .A(n105), .B(n106), .C(n107), .Z(n104) );
  GTECH_OAI2N2 U93 ( .A(n91), .B(n108), .C(n109), .D(n89), .Z(n106) );
  GTECH_NOT U94 ( .A(n61), .Z(n89) );
  GTECH_NOT U95 ( .A(data_in[3]), .Z(n108) );
  GTECH_OAI2N2 U96 ( .A(n52), .B(n110), .C(data_in[6]), .D(n81), .Z(n105) );
  GTECH_OAI2N2 U97 ( .A(n74), .B(n111), .C(n75), .D(n80), .Z(shift_in[2]) );
  GTECH_AND2 U98 ( .A(n112), .B(n113), .Z(n111) );
  GTECH_AOI222 U99 ( .A(data_in[2]), .B(n97), .C(n77), .D(n84), .E(data_in[5]), 
        .F(n81), .Z(n113) );
  GTECH_OA22 U100 ( .A(n58), .B(n90), .C(n64), .D(n92), .Z(n112) );
  GTECH_OAI2N2 U101 ( .A(n74), .B(n114), .C(n75), .D(n82), .Z(shift_in[1]) );
  GTECH_AND2 U102 ( .A(n115), .B(n116), .Z(n114) );
  GTECH_AOI222 U103 ( .A(data_in[1]), .B(n97), .C(n77), .D(n99), .E(data_in[4]), .F(n81), .Z(n116) );
  GTECH_NOT U104 ( .A(n71), .Z(n99) );
  GTECH_NOT U105 ( .A(n110), .Z(n77) );
  GTECH_NAND2 U106 ( .A(n117), .B(n118), .Z(n110) );
  GTECH_AOI222 U107 ( .A(n79), .B(n86), .C(n109), .D(n80), .E(n83), .F(n78), 
        .Z(n115) );
  GTECH_NOT U108 ( .A(n67), .Z(n78) );
  GTECH_NOT U109 ( .A(n92), .Z(n83) );
  GTECH_NOT U110 ( .A(n55), .Z(n80) );
  GTECH_NOT U111 ( .A(n64), .Z(n86) );
  GTECH_OAI2N2 U112 ( .A(n74), .B(n119), .C(n75), .D(n84), .Z(shift_in[0]) );
  GTECH_NOT U113 ( .A(n49), .Z(n84) );
  GTECH_NOT U114 ( .A(n103), .Z(n75) );
  GTECH_NAND2 U115 ( .A(n120), .B(n118), .Z(n103) );
  GTECH_AND2 U116 ( .A(n121), .B(n122), .Z(n119) );
  GTECH_AOI222 U117 ( .A(n109), .B(n82), .C(data_in[3]), .D(n81), .E(n97), .F(
        data_in[0]), .Z(n122) );
  GTECH_NOT U118 ( .A(n91), .Z(n97) );
  GTECH_NAND3 U119 ( .A(shift_direction[0]), .B(n118), .C(shift_direction[1]), 
        .Z(n91) );
  GTECH_NOT U120 ( .A(n123), .Z(n81) );
  GTECH_NAND3 U121 ( .A(shift_direction[1]), .B(shift_direction[0]), .C(
        shift_direction[2]), .Z(n123) );
  GTECH_NOT U122 ( .A(n52), .Z(n82) );
  GTECH_NOT U123 ( .A(n90), .Z(n109) );
  GTECH_NAND3 U124 ( .A(shift_direction[0]), .B(n120), .C(shift_direction[2]), 
        .Z(n90) );
  GTECH_OA22 U125 ( .A(n61), .B(n92), .C(n67), .D(n93), .Z(n121) );
  GTECH_NAND3 U126 ( .A(shift_direction[1]), .B(n117), .C(shift_direction[2]), 
        .Z(n92) );
  GTECH_NOT U127 ( .A(n107), .Z(n74) );
  GTECH_NAND2 U128 ( .A(n79), .B(n118), .Z(n107) );
  GTECH_NOT U129 ( .A(shift_direction[2]), .Z(n118) );
  GTECH_NOT U130 ( .A(n93), .Z(n79) );
  GTECH_NAND2 U131 ( .A(n117), .B(n120), .Z(n93) );
  GTECH_NOT U132 ( .A(shift_direction[1]), .Z(n120) );
  GTECH_NOT U133 ( .A(shift_direction[0]), .Z(n117) );
  GTECH_NOT U134 ( .A(reset), .Z(n68) );
endmodule

