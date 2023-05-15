
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
         n124, n125;
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
  GTECH_NOT U74 ( .A(n72), .Z(shift_in[7]) );
  GTECH_AO21 U75 ( .A(n73), .B(n74), .C(n75), .Z(n72) );
  GTECH_AOI222 U76 ( .A(data_in[0]), .B(n76), .C(data_in[7]), .D(n77), .E(n78), 
        .F(n79), .Z(n74) );
  GTECH_NOT U77 ( .A(n80), .Z(n76) );
  GTECH_AOI222 U78 ( .A(n81), .B(n82), .C(n83), .D(n84), .E(n85), .F(n86), .Z(
        n73) );
  GTECH_OAI22 U79 ( .A(n64), .B(n80), .C(n75), .D(n87), .Z(shift_in[6]) );
  GTECH_AND2 U80 ( .A(n88), .B(n89), .Z(n87) );
  GTECH_AOI222 U81 ( .A(n83), .B(n86), .C(data_in[6]), .D(n77), .E(n78), .F(
        n90), .Z(n89) );
  GTECH_NOT U82 ( .A(n61), .Z(n90) );
  GTECH_NAND2 U83 ( .A(n91), .B(n92), .Z(n77) );
  GTECH_OA22 U84 ( .A(n71), .B(n93), .C(n52), .D(n94), .Z(n88) );
  GTECH_OAI22 U85 ( .A(n67), .B(n80), .C(n75), .D(n95), .Z(shift_in[5]) );
  GTECH_AND2 U86 ( .A(n96), .B(n97), .Z(n95) );
  GTECH_AOI222 U87 ( .A(data_in[5]), .B(n98), .C(n78), .D(n99), .E(n83), .F(
        n100), .Z(n97) );
  GTECH_NOT U88 ( .A(n58), .Z(n99) );
  GTECH_OA22 U89 ( .A(n64), .B(n91), .C(n49), .D(n94), .Z(n96) );
  GTECH_OAI22 U90 ( .A(n61), .B(n80), .C(n75), .D(n101), .Z(shift_in[4]) );
  GTECH_AND2 U91 ( .A(n102), .B(n103), .Z(n101) );
  GTECH_AOI222 U92 ( .A(data_in[4]), .B(n98), .C(n78), .D(n82), .E(n83), .F(
        data_in[7]), .Z(n103) );
  GTECH_OA22 U93 ( .A(n67), .B(n91), .C(n71), .D(n94), .Z(n102) );
  GTECH_OAI22 U94 ( .A(n58), .B(n80), .C(n75), .D(n104), .Z(shift_in[3]) );
  GTECH_AND2 U95 ( .A(n105), .B(n106), .Z(n104) );
  GTECH_OA22 U96 ( .A(n52), .B(n107), .C(n108), .D(n109), .Z(n106) );
  GTECH_NOT U97 ( .A(data_in[6]), .Z(n109) );
  GTECH_OA22 U98 ( .A(n92), .B(n110), .C(n61), .D(n91), .Z(n105) );
  GTECH_NOT U99 ( .A(data_in[3]), .Z(n110) );
  GTECH_OAI22 U100 ( .A(n55), .B(n80), .C(n75), .D(n111), .Z(shift_in[2]) );
  GTECH_AND2 U101 ( .A(n112), .B(n113), .Z(n111) );
  GTECH_AOI222 U102 ( .A(data_in[2]), .B(n98), .C(n78), .D(n86), .E(data_in[5]), .F(n83), .Z(n113) );
  GTECH_NOT U103 ( .A(n49), .Z(n86) );
  GTECH_OA22 U104 ( .A(n58), .B(n91), .C(n64), .D(n93), .Z(n112) );
  GTECH_OAI22 U105 ( .A(n52), .B(n80), .C(n75), .D(n114), .Z(shift_in[1]) );
  GTECH_AND2 U106 ( .A(n115), .B(n116), .Z(n114) );
  GTECH_AOI222 U107 ( .A(data_in[1]), .B(n98), .C(n78), .D(n100), .E(
        data_in[4]), .F(n83), .Z(n116) );
  GTECH_NOT U108 ( .A(n71), .Z(n100) );
  GTECH_NOT U109 ( .A(n107), .Z(n78) );
  GTECH_NAND2 U110 ( .A(n117), .B(n118), .Z(n107) );
  GTECH_AOI222 U111 ( .A(n81), .B(n119), .C(n120), .D(n82), .E(n85), .F(n79), 
        .Z(n115) );
  GTECH_NOT U112 ( .A(n67), .Z(n79) );
  GTECH_NOT U113 ( .A(n93), .Z(n85) );
  GTECH_NOT U114 ( .A(n55), .Z(n82) );
  GTECH_NOT U115 ( .A(n64), .Z(n119) );
  GTECH_OAI22 U116 ( .A(n49), .B(n80), .C(n75), .D(n121), .Z(shift_in[0]) );
  GTECH_AND2 U117 ( .A(n122), .B(n123), .Z(n121) );
  GTECH_AOI222 U118 ( .A(n120), .B(n84), .C(data_in[3]), .D(n83), .E(n98), .F(
        data_in[0]), .Z(n123) );
  GTECH_NOT U119 ( .A(n92), .Z(n98) );
  GTECH_NAND3 U120 ( .A(shift_direction[0]), .B(n118), .C(shift_direction[1]), 
        .Z(n92) );
  GTECH_NOT U121 ( .A(n108), .Z(n83) );
  GTECH_NAND3 U122 ( .A(shift_direction[1]), .B(shift_direction[0]), .C(
        shift_direction[2]), .Z(n108) );
  GTECH_NOT U123 ( .A(n52), .Z(n84) );
  GTECH_NOT U124 ( .A(n91), .Z(n120) );
  GTECH_NAND3 U125 ( .A(shift_direction[0]), .B(n124), .C(shift_direction[2]), 
        .Z(n91) );
  GTECH_OA22 U126 ( .A(n61), .B(n93), .C(n67), .D(n94), .Z(n122) );
  GTECH_NAND3 U127 ( .A(shift_direction[1]), .B(n117), .C(shift_direction[2]), 
        .Z(n93) );
  GTECH_NOT U128 ( .A(n125), .Z(n75) );
  GTECH_NAND2 U129 ( .A(n81), .B(n118), .Z(n125) );
  GTECH_NOT U130 ( .A(n94), .Z(n81) );
  GTECH_NAND2 U131 ( .A(n117), .B(n124), .Z(n94) );
  GTECH_NOT U132 ( .A(shift_direction[0]), .Z(n117) );
  GTECH_NAND2 U133 ( .A(n124), .B(n118), .Z(n80) );
  GTECH_NOT U134 ( .A(shift_direction[2]), .Z(n118) );
  GTECH_NOT U135 ( .A(shift_direction[1]), .Z(n124) );
  GTECH_NOT U136 ( .A(reset), .Z(n68) );
endmodule

