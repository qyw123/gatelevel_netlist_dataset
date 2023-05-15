
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n46, n49, n52, n55, n58, n61, n64, n65, n44, n45, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121;
  wire   [7:0] shift_in;

  GTECH_FJK3S shift_reg_reg_0_ ( .J(n45), .K(n45), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n65), .SD(n44), .Q(data_out[0]), .QN(n68) );
  GTECH_FJK3S shift_reg_reg_6_ ( .J(n45), .K(n45), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n65), .SD(n44), .Q(data_out[6]), .QN(n64) );
  GTECH_FJK3S shift_reg_reg_7_ ( .J(n45), .K(n45), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n65), .SD(n44), .Q(data_out[7]), .QN(n61) );
  GTECH_FJK3S shift_reg_reg_5_ ( .J(n45), .K(n45), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n65), .SD(n44), .Q(data_out[5]), .QN(n58) );
  GTECH_FJK3S shift_reg_reg_4_ ( .J(n45), .K(n45), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n65), .SD(n44), .Q(data_out[4]), .QN(n55) );
  GTECH_FJK3S shift_reg_reg_3_ ( .J(n45), .K(n45), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n65), .SD(n44), .Q(data_out[3]), .QN(n52) );
  GTECH_FJK3S shift_reg_reg_2_ ( .J(n45), .K(n45), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n65), .SD(n44), .Q(data_out[2]), .QN(n49) );
  GTECH_FJK3S shift_reg_reg_1_ ( .J(n45), .K(n45), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n65), .SD(n44), .Q(data_out[1]), .QN(n46) );
  GTECH_ZERO U69 ( .Z(n45) );
  GTECH_ONE U70 ( .Z(n44) );
  GTECH_AOI21 U71 ( .A(n69), .B(n70), .C(n71), .Z(shift_in[7]) );
  GTECH_AOI222 U72 ( .A(data_in[0]), .B(n72), .C(data_in[7]), .D(n73), .E(n74), 
        .F(n75), .Z(n70) );
  GTECH_NOT U73 ( .A(n76), .Z(n72) );
  GTECH_AOI222 U74 ( .A(n77), .B(n78), .C(n79), .D(n80), .E(n81), .F(n82), .Z(
        n69) );
  GTECH_OAI22 U75 ( .A(n61), .B(n76), .C(n71), .D(n83), .Z(shift_in[6]) );
  GTECH_AND2 U76 ( .A(n84), .B(n85), .Z(n83) );
  GTECH_AOI222 U77 ( .A(n79), .B(n82), .C(data_in[6]), .D(n73), .E(n74), .F(
        n86), .Z(n85) );
  GTECH_NOT U78 ( .A(n58), .Z(n86) );
  GTECH_NAND2 U79 ( .A(n87), .B(n88), .Z(n73) );
  GTECH_OA22 U80 ( .A(n68), .B(n89), .C(n49), .D(n90), .Z(n84) );
  GTECH_OAI22 U81 ( .A(n64), .B(n76), .C(n71), .D(n91), .Z(shift_in[5]) );
  GTECH_AND2 U82 ( .A(n92), .B(n93), .Z(n91) );
  GTECH_AOI222 U83 ( .A(data_in[5]), .B(n94), .C(n74), .D(n95), .E(n79), .F(
        n96), .Z(n93) );
  GTECH_NOT U84 ( .A(n55), .Z(n95) );
  GTECH_OA22 U85 ( .A(n61), .B(n87), .C(n46), .D(n90), .Z(n92) );
  GTECH_OAI22 U86 ( .A(n58), .B(n76), .C(n71), .D(n97), .Z(shift_in[4]) );
  GTECH_AND2 U87 ( .A(n98), .B(n99), .Z(n97) );
  GTECH_AOI222 U88 ( .A(data_in[4]), .B(n94), .C(n74), .D(n78), .E(n79), .F(
        data_in[7]), .Z(n99) );
  GTECH_OA22 U89 ( .A(n64), .B(n87), .C(n68), .D(n90), .Z(n98) );
  GTECH_OAI22 U90 ( .A(n55), .B(n76), .C(n71), .D(n100), .Z(shift_in[3]) );
  GTECH_AND2 U91 ( .A(n101), .B(n102), .Z(n100) );
  GTECH_OA22 U92 ( .A(n49), .B(n103), .C(n104), .D(n105), .Z(n102) );
  GTECH_NOT U93 ( .A(data_in[6]), .Z(n105) );
  GTECH_OA22 U94 ( .A(n88), .B(n106), .C(n58), .D(n87), .Z(n101) );
  GTECH_NOT U95 ( .A(data_in[3]), .Z(n106) );
  GTECH_OAI22 U96 ( .A(n52), .B(n76), .C(n71), .D(n107), .Z(shift_in[2]) );
  GTECH_AND2 U97 ( .A(n108), .B(n109), .Z(n107) );
  GTECH_AOI222 U98 ( .A(data_in[2]), .B(n94), .C(n74), .D(n82), .E(data_in[5]), 
        .F(n79), .Z(n109) );
  GTECH_NOT U99 ( .A(n46), .Z(n82) );
  GTECH_OA22 U100 ( .A(n55), .B(n87), .C(n61), .D(n89), .Z(n108) );
  GTECH_OAI22 U101 ( .A(n49), .B(n76), .C(n71), .D(n110), .Z(shift_in[1]) );
  GTECH_AND2 U102 ( .A(n111), .B(n112), .Z(n110) );
  GTECH_AOI222 U103 ( .A(data_in[1]), .B(n94), .C(n74), .D(n96), .E(data_in[4]), .F(n79), .Z(n112) );
  GTECH_NOT U104 ( .A(n68), .Z(n96) );
  GTECH_NOT U105 ( .A(n103), .Z(n74) );
  GTECH_NAND2 U106 ( .A(n113), .B(n114), .Z(n103) );
  GTECH_AOI222 U107 ( .A(n77), .B(n115), .C(n116), .D(n78), .E(n81), .F(n75), 
        .Z(n111) );
  GTECH_NOT U108 ( .A(n64), .Z(n75) );
  GTECH_NOT U109 ( .A(n89), .Z(n81) );
  GTECH_NOT U110 ( .A(n52), .Z(n78) );
  GTECH_NOT U111 ( .A(n61), .Z(n115) );
  GTECH_OAI22 U112 ( .A(n46), .B(n76), .C(n71), .D(n117), .Z(shift_in[0]) );
  GTECH_AND2 U113 ( .A(n118), .B(n119), .Z(n117) );
  GTECH_AOI222 U114 ( .A(n116), .B(n80), .C(data_in[3]), .D(n79), .E(n94), .F(
        data_in[0]), .Z(n119) );
  GTECH_NOT U115 ( .A(n88), .Z(n94) );
  GTECH_NAND3 U116 ( .A(shift_direction[0]), .B(n114), .C(shift_direction[1]), 
        .Z(n88) );
  GTECH_NOT U117 ( .A(n104), .Z(n79) );
  GTECH_NAND3 U118 ( .A(shift_direction[1]), .B(shift_direction[0]), .C(
        shift_direction[2]), .Z(n104) );
  GTECH_NOT U119 ( .A(n49), .Z(n80) );
  GTECH_NOT U120 ( .A(n87), .Z(n116) );
  GTECH_NAND3 U121 ( .A(shift_direction[0]), .B(n120), .C(shift_direction[2]), 
        .Z(n87) );
  GTECH_OA22 U122 ( .A(n58), .B(n89), .C(n64), .D(n90), .Z(n118) );
  GTECH_NAND3 U123 ( .A(shift_direction[1]), .B(n113), .C(shift_direction[2]), 
        .Z(n89) );
  GTECH_NOT U124 ( .A(n121), .Z(n71) );
  GTECH_NAND2 U125 ( .A(n77), .B(n114), .Z(n121) );
  GTECH_NOT U126 ( .A(n90), .Z(n77) );
  GTECH_NAND2 U127 ( .A(n113), .B(n120), .Z(n90) );
  GTECH_NOT U128 ( .A(shift_direction[0]), .Z(n113) );
  GTECH_NAND2 U129 ( .A(n120), .B(n114), .Z(n76) );
  GTECH_NOT U130 ( .A(shift_direction[2]), .Z(n114) );
  GTECH_NOT U131 ( .A(shift_direction[1]), .Z(n120) );
  GTECH_NOT U132 ( .A(reset), .Z(n65) );
endmodule

