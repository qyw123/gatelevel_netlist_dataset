
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n47, n50, n53, n56, n59, n62, n65, n66, n45, n46, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123;
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
  GTECH_NAND2 U79 ( .A(n88), .B(n89), .Z(n74) );
  GTECH_AOI2N2 U80 ( .A(n78), .B(n81), .C(n69), .D(n90), .Z(n85) );
  GTECH_OAI22 U81 ( .A(n65), .B(n77), .C(n72), .D(n91), .Z(shift_in[5]) );
  GTECH_AND2 U82 ( .A(n92), .B(n93), .Z(n91) );
  GTECH_AOI222 U83 ( .A(data_in[5]), .B(n94), .C(n75), .D(n95), .E(n96), .F(
        n97), .Z(n93) );
  GTECH_AOI2N2 U84 ( .A(n78), .B(n83), .C(n69), .D(n98), .Z(n92) );
  GTECH_OAI22 U85 ( .A(n59), .B(n77), .C(n72), .D(n99), .Z(shift_in[4]) );
  GTECH_AND2 U86 ( .A(n100), .B(n101), .Z(n99) );
  GTECH_AOI222 U87 ( .A(data_in[4]), .B(n94), .C(n75), .D(n79), .E(n96), .F(
        n76), .Z(n101) );
  GTECH_AOI2N2 U88 ( .A(n78), .B(n102), .C(n103), .D(n98), .Z(n100) );
  GTECH_NOT U89 ( .A(data_in[7]), .Z(n103) );
  GTECH_OAI22 U90 ( .A(n56), .B(n77), .C(n72), .D(n104), .Z(shift_in[3]) );
  GTECH_AND2 U91 ( .A(n105), .B(n106), .Z(n104) );
  GTECH_AOI2N2 U92 ( .A(n96), .B(n87), .C(n50), .D(n107), .Z(n106) );
  GTECH_NOT U93 ( .A(n59), .Z(n87) );
  GTECH_AOI2N2 U94 ( .A(data_in[6]), .B(n80), .C(n88), .D(n108), .Z(n105) );
  GTECH_NOT U95 ( .A(data_in[3]), .Z(n108) );
  GTECH_OAI22 U96 ( .A(n53), .B(n77), .C(n72), .D(n109), .Z(shift_in[2]) );
  GTECH_AND2 U97 ( .A(n110), .B(n111), .Z(n109) );
  GTECH_AOI222 U98 ( .A(data_in[2]), .B(n94), .C(n75), .D(n83), .E(n96), .F(
        n95), .Z(n111) );
  GTECH_NOT U99 ( .A(n56), .Z(n95) );
  GTECH_NOT U100 ( .A(n47), .Z(n83) );
  GTECH_AOI2N2 U101 ( .A(n82), .B(n97), .C(n98), .D(n112), .Z(n110) );
  GTECH_NOT U102 ( .A(data_in[5]), .Z(n112) );
  GTECH_OAI22 U103 ( .A(n50), .B(n77), .C(n72), .D(n113), .Z(shift_in[1]) );
  GTECH_AND2 U104 ( .A(n114), .B(n115), .Z(n113) );
  GTECH_AOI222 U105 ( .A(data_in[1]), .B(n94), .C(n75), .D(n102), .E(n96), .F(
        n79), .Z(n115) );
  GTECH_NOT U106 ( .A(n53), .Z(n79) );
  GTECH_NOT U107 ( .A(n69), .Z(n102) );
  GTECH_NOT U108 ( .A(n107), .Z(n75) );
  GTECH_NAND2 U109 ( .A(n116), .B(n117), .Z(n107) );
  GTECH_AOI222 U110 ( .A(n78), .B(n97), .C(data_in[4]), .D(n80), .E(n82), .F(
        n76), .Z(n114) );
  GTECH_NOT U111 ( .A(n90), .Z(n82) );
  GTECH_NOT U112 ( .A(n62), .Z(n97) );
  GTECH_OAI22 U113 ( .A(n47), .B(n77), .C(n72), .D(n118), .Z(shift_in[0]) );
  GTECH_AND2 U114 ( .A(n119), .B(n120), .Z(n118) );
  GTECH_AOI222 U115 ( .A(data_in[3]), .B(n80), .C(n96), .D(n81), .E(n94), .F(
        data_in[0]), .Z(n120) );
  GTECH_NOT U116 ( .A(n88), .Z(n94) );
  GTECH_NAND3 U117 ( .A(shift_direction[0]), .B(n117), .C(shift_direction[1]), 
        .Z(n88) );
  GTECH_NOT U118 ( .A(n50), .Z(n81) );
  GTECH_NOT U119 ( .A(n89), .Z(n96) );
  GTECH_NAND3 U120 ( .A(shift_direction[0]), .B(n121), .C(shift_direction[2]), 
        .Z(n89) );
  GTECH_NOT U121 ( .A(n98), .Z(n80) );
  GTECH_NAND3 U122 ( .A(shift_direction[2]), .B(shift_direction[0]), .C(
        shift_direction[1]), .Z(n98) );
  GTECH_AOI2N2 U123 ( .A(n78), .B(n76), .C(n59), .D(n90), .Z(n119) );
  GTECH_NAND3 U124 ( .A(shift_direction[2]), .B(n116), .C(shift_direction[1]), 
        .Z(n90) );
  GTECH_NOT U125 ( .A(n65), .Z(n76) );
  GTECH_NOT U126 ( .A(n122), .Z(n72) );
  GTECH_NAND2 U127 ( .A(n78), .B(n117), .Z(n122) );
  GTECH_NOT U128 ( .A(n123), .Z(n78) );
  GTECH_NAND2 U129 ( .A(n116), .B(n121), .Z(n123) );
  GTECH_NOT U130 ( .A(shift_direction[0]), .Z(n116) );
  GTECH_NAND2 U131 ( .A(n121), .B(n117), .Z(n77) );
  GTECH_NOT U132 ( .A(shift_direction[2]), .Z(n117) );
  GTECH_NOT U133 ( .A(shift_direction[1]), .Z(n121) );
  GTECH_NOT U134 ( .A(reset), .Z(n66) );
endmodule

