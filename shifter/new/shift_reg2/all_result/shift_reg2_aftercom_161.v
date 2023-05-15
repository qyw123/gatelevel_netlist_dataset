
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
         n124;
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
  GTECH_NOT U76 ( .A(n79), .Z(n75) );
  GTECH_AOI222 U77 ( .A(n80), .B(n81), .C(n82), .D(n83), .E(n84), .F(n85), .Z(
        n72) );
  GTECH_OAI22 U78 ( .A(n64), .B(n79), .C(n74), .D(n86), .Z(shift_in[6]) );
  GTECH_AND2 U79 ( .A(n87), .B(n88), .Z(n86) );
  GTECH_AOI222 U80 ( .A(n82), .B(n85), .C(data_in[6]), .D(n76), .E(n77), .F(
        n89), .Z(n88) );
  GTECH_NOT U81 ( .A(n61), .Z(n89) );
  GTECH_NAND2 U82 ( .A(n90), .B(n91), .Z(n76) );
  GTECH_OA22 U83 ( .A(n71), .B(n92), .C(n52), .D(n93), .Z(n87) );
  GTECH_OAI22 U84 ( .A(n67), .B(n79), .C(n74), .D(n94), .Z(shift_in[5]) );
  GTECH_AND2 U85 ( .A(n95), .B(n96), .Z(n94) );
  GTECH_AOI222 U86 ( .A(data_in[5]), .B(n97), .C(n77), .D(n98), .E(n82), .F(
        n99), .Z(n96) );
  GTECH_NOT U87 ( .A(n58), .Z(n98) );
  GTECH_OA22 U88 ( .A(n64), .B(n90), .C(n49), .D(n93), .Z(n95) );
  GTECH_OAI22 U89 ( .A(n61), .B(n79), .C(n74), .D(n100), .Z(shift_in[4]) );
  GTECH_AND2 U90 ( .A(n101), .B(n102), .Z(n100) );
  GTECH_AOI222 U91 ( .A(data_in[4]), .B(n97), .C(n77), .D(n81), .E(n82), .F(
        data_in[7]), .Z(n102) );
  GTECH_OA22 U92 ( .A(n67), .B(n90), .C(n71), .D(n93), .Z(n101) );
  GTECH_OAI21 U93 ( .A(n58), .B(n79), .C(n103), .Z(shift_in[3]) );
  GTECH_OAI21 U94 ( .A(n104), .B(n105), .C(n106), .Z(n103) );
  GTECH_OAI22 U95 ( .A(n61), .B(n90), .C(n91), .D(n107), .Z(n105) );
  GTECH_NOT U96 ( .A(data_in[3]), .Z(n107) );
  GTECH_OAI22 U97 ( .A(n108), .B(n109), .C(n52), .D(n110), .Z(n104) );
  GTECH_NOT U98 ( .A(data_in[6]), .Z(n109) );
  GTECH_OAI22 U99 ( .A(n55), .B(n79), .C(n74), .D(n111), .Z(shift_in[2]) );
  GTECH_AND2 U100 ( .A(n112), .B(n113), .Z(n111) );
  GTECH_AOI222 U101 ( .A(data_in[2]), .B(n97), .C(n77), .D(n85), .E(data_in[5]), .F(n82), .Z(n113) );
  GTECH_NOT U102 ( .A(n49), .Z(n85) );
  GTECH_OA22 U103 ( .A(n58), .B(n90), .C(n64), .D(n92), .Z(n112) );
  GTECH_OAI22 U104 ( .A(n52), .B(n79), .C(n74), .D(n114), .Z(shift_in[1]) );
  GTECH_AND2 U105 ( .A(n115), .B(n116), .Z(n114) );
  GTECH_AOI222 U106 ( .A(data_in[1]), .B(n97), .C(n77), .D(n99), .E(data_in[4]), .F(n82), .Z(n116) );
  GTECH_NOT U107 ( .A(n71), .Z(n99) );
  GTECH_NOT U108 ( .A(n110), .Z(n77) );
  GTECH_NAND2 U109 ( .A(n117), .B(n118), .Z(n110) );
  GTECH_AOI222 U110 ( .A(n80), .B(n119), .C(n120), .D(n81), .E(n84), .F(n78), 
        .Z(n115) );
  GTECH_NOT U111 ( .A(n67), .Z(n78) );
  GTECH_NOT U112 ( .A(n92), .Z(n84) );
  GTECH_NOT U113 ( .A(n55), .Z(n81) );
  GTECH_NOT U114 ( .A(n64), .Z(n119) );
  GTECH_OAI22 U115 ( .A(n49), .B(n79), .C(n74), .D(n121), .Z(shift_in[0]) );
  GTECH_AND2 U116 ( .A(n122), .B(n123), .Z(n121) );
  GTECH_AOI222 U117 ( .A(n120), .B(n83), .C(data_in[3]), .D(n82), .E(n97), .F(
        data_in[0]), .Z(n123) );
  GTECH_NOT U118 ( .A(n91), .Z(n97) );
  GTECH_NAND3 U119 ( .A(shift_direction[0]), .B(n118), .C(shift_direction[1]), 
        .Z(n91) );
  GTECH_NOT U120 ( .A(n108), .Z(n82) );
  GTECH_NAND3 U121 ( .A(shift_direction[1]), .B(shift_direction[0]), .C(
        shift_direction[2]), .Z(n108) );
  GTECH_NOT U122 ( .A(n52), .Z(n83) );
  GTECH_NOT U123 ( .A(n90), .Z(n120) );
  GTECH_NAND3 U124 ( .A(shift_direction[0]), .B(n124), .C(shift_direction[2]), 
        .Z(n90) );
  GTECH_OA22 U125 ( .A(n61), .B(n92), .C(n67), .D(n93), .Z(n122) );
  GTECH_NAND3 U126 ( .A(shift_direction[1]), .B(n117), .C(shift_direction[2]), 
        .Z(n92) );
  GTECH_NOT U127 ( .A(n106), .Z(n74) );
  GTECH_NAND2 U128 ( .A(n80), .B(n118), .Z(n106) );
  GTECH_NOT U129 ( .A(n93), .Z(n80) );
  GTECH_NAND2 U130 ( .A(n117), .B(n124), .Z(n93) );
  GTECH_NOT U131 ( .A(shift_direction[0]), .Z(n117) );
  GTECH_NAND2 U132 ( .A(n124), .B(n118), .Z(n79) );
  GTECH_NOT U133 ( .A(shift_direction[2]), .Z(n118) );
  GTECH_NOT U134 ( .A(shift_direction[1]), .Z(n124) );
  GTECH_NOT U135 ( .A(reset), .Z(n68) );
endmodule

