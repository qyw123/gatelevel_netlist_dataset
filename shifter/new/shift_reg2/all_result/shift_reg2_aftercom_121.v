
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n47, n50, n53, n56, n59, n62, n65, n66, n45, n46, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122;
  wire   [7:0] shift_in;

  GTECH_FJK3S shift_reg_reg_0_ ( .J(n46), .K(n46), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n66), .SD(n45), .Q(data_out[0]), .QN(n69) );
  GTECH_FJK3S shift_reg_reg_6_ ( .J(n46), .K(n46), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n66), .SD(n45), .Q(data_out[6]), .QN(n65) );
  GTECH_FJK3S shift_reg_reg_7_ ( .J(n46), .K(n46), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n66), .SD(n45), .Q(data_out[7]), .QN(n62) );
  GTECH_FJK3S shift_reg_reg_5_ ( .J(n46), .K(n46), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n66), .SD(n45), .Q(data_out[5]), .QN(n59) );
  GTECH_FJK3S shift_reg_reg_4_ ( .J(n46), .K(n46), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n66), .SD(n45), .Q(data_out[4]), .QN(n56) );
  GTECH_FJK3S shift_reg_reg_3_ ( .J(n46), .K(n46), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n66), .SD(n45), .Q(data_out[3]), .QN(n53) );
  GTECH_FJK3S shift_reg_reg_2_ ( .J(n46), .K(n46), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n66), .SD(n45), .Q(data_out[2]), .QN(n50) );
  GTECH_FJK3S shift_reg_reg_1_ ( .J(n46), .K(n46), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n66), .SD(n45), .Q(data_out[1]), .QN(n47) );
  GTECH_ZERO U70 ( .Z(n46) );
  GTECH_ONE U71 ( .Z(n45) );
  GTECH_AOI21 U72 ( .A(n70), .B(n71), .C(n72), .Z(shift_in[7]) );
  GTECH_AOI222 U73 ( .A(data_in[0]), .B(n73), .C(data_in[7]), .D(n74), .E(n75), 
        .F(n76), .Z(n71) );
  GTECH_NOT U74 ( .A(n77), .Z(n73) );
  GTECH_AOI222 U75 ( .A(n78), .B(n79), .C(n80), .D(n81), .E(n82), .F(n83), .Z(
        n70) );
  GTECH_OAI22 U76 ( .A(n62), .B(n77), .C(n72), .D(n84), .Z(shift_in[6]) );
  GTECH_AND2 U77 ( .A(n85), .B(n86), .Z(n84) );
  GTECH_AOI222 U78 ( .A(n80), .B(n83), .C(data_in[6]), .D(n74), .E(n75), .F(
        n87), .Z(n86) );
  GTECH_NOT U79 ( .A(n59), .Z(n87) );
  GTECH_NAND2 U80 ( .A(n88), .B(n89), .Z(n74) );
  GTECH_OA22 U81 ( .A(n69), .B(n90), .C(n50), .D(n91), .Z(n85) );
  GTECH_OAI22 U82 ( .A(n65), .B(n77), .C(n72), .D(n92), .Z(shift_in[5]) );
  GTECH_AND2 U83 ( .A(n93), .B(n94), .Z(n92) );
  GTECH_AOI222 U84 ( .A(data_in[5]), .B(n95), .C(n75), .D(n96), .E(n80), .F(
        n97), .Z(n94) );
  GTECH_NOT U85 ( .A(n56), .Z(n96) );
  GTECH_OA22 U86 ( .A(n62), .B(n88), .C(n47), .D(n91), .Z(n93) );
  GTECH_OAI22 U87 ( .A(n59), .B(n77), .C(n72), .D(n98), .Z(shift_in[4]) );
  GTECH_AND2 U88 ( .A(n99), .B(n100), .Z(n98) );
  GTECH_AOI222 U89 ( .A(data_in[4]), .B(n95), .C(n75), .D(n79), .E(n80), .F(
        data_in[7]), .Z(n100) );
  GTECH_OA22 U90 ( .A(n65), .B(n88), .C(n69), .D(n91), .Z(n99) );
  GTECH_OAI22 U91 ( .A(n56), .B(n77), .C(n72), .D(n101), .Z(shift_in[3]) );
  GTECH_AND2 U92 ( .A(n102), .B(n103), .Z(n101) );
  GTECH_OA22 U93 ( .A(n50), .B(n104), .C(n105), .D(n106), .Z(n103) );
  GTECH_NOT U94 ( .A(data_in[6]), .Z(n106) );
  GTECH_OA22 U95 ( .A(n89), .B(n107), .C(n59), .D(n88), .Z(n102) );
  GTECH_NOT U96 ( .A(data_in[3]), .Z(n107) );
  GTECH_OAI22 U97 ( .A(n53), .B(n77), .C(n72), .D(n108), .Z(shift_in[2]) );
  GTECH_AND2 U98 ( .A(n109), .B(n110), .Z(n108) );
  GTECH_AOI222 U99 ( .A(data_in[2]), .B(n95), .C(n75), .D(n83), .E(data_in[5]), 
        .F(n80), .Z(n110) );
  GTECH_NOT U100 ( .A(n47), .Z(n83) );
  GTECH_OA22 U101 ( .A(n56), .B(n88), .C(n62), .D(n90), .Z(n109) );
  GTECH_OAI22 U102 ( .A(n50), .B(n77), .C(n72), .D(n111), .Z(shift_in[1]) );
  GTECH_AND2 U103 ( .A(n112), .B(n113), .Z(n111) );
  GTECH_AOI222 U104 ( .A(data_in[1]), .B(n95), .C(n75), .D(n97), .E(data_in[4]), .F(n80), .Z(n113) );
  GTECH_NOT U105 ( .A(n69), .Z(n97) );
  GTECH_NOT U106 ( .A(n104), .Z(n75) );
  GTECH_NAND2 U107 ( .A(n114), .B(n115), .Z(n104) );
  GTECH_AOI222 U108 ( .A(n78), .B(n116), .C(n117), .D(n79), .E(n82), .F(n76), 
        .Z(n112) );
  GTECH_NOT U109 ( .A(n65), .Z(n76) );
  GTECH_NOT U110 ( .A(n90), .Z(n82) );
  GTECH_NOT U111 ( .A(n53), .Z(n79) );
  GTECH_NOT U112 ( .A(n62), .Z(n116) );
  GTECH_OAI22 U113 ( .A(n47), .B(n77), .C(n72), .D(n118), .Z(shift_in[0]) );
  GTECH_AND2 U114 ( .A(n119), .B(n120), .Z(n118) );
  GTECH_AOI222 U115 ( .A(n117), .B(n81), .C(data_in[3]), .D(n80), .E(n95), .F(
        data_in[0]), .Z(n120) );
  GTECH_NOT U116 ( .A(n89), .Z(n95) );
  GTECH_OR3 U117 ( .A(shift_direction[2]), .B(n114), .C(n121), .Z(n89) );
  GTECH_NOT U118 ( .A(n105), .Z(n80) );
  GTECH_OR3 U119 ( .A(n114), .B(n121), .C(n115), .Z(n105) );
  GTECH_NOT U120 ( .A(n50), .Z(n81) );
  GTECH_NOT U121 ( .A(n88), .Z(n117) );
  GTECH_OR3 U122 ( .A(shift_direction[1]), .B(n114), .C(n115), .Z(n88) );
  GTECH_OA22 U123 ( .A(n59), .B(n90), .C(n65), .D(n91), .Z(n119) );
  GTECH_OR3 U124 ( .A(shift_direction[0]), .B(n121), .C(n115), .Z(n90) );
  GTECH_NOT U125 ( .A(n122), .Z(n72) );
  GTECH_NAND2 U126 ( .A(n78), .B(n115), .Z(n122) );
  GTECH_NOT U127 ( .A(n91), .Z(n78) );
  GTECH_NAND2 U128 ( .A(n114), .B(n121), .Z(n91) );
  GTECH_NOT U129 ( .A(shift_direction[0]), .Z(n114) );
  GTECH_NAND2 U130 ( .A(n121), .B(n115), .Z(n77) );
  GTECH_NOT U131 ( .A(shift_direction[2]), .Z(n115) );
  GTECH_NOT U132 ( .A(shift_direction[1]), .Z(n121) );
  GTECH_NOT U133 ( .A(reset), .Z(n66) );
endmodule

