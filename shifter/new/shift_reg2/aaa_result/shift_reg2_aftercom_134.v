
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n63, n56, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n56), .K(n56), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n63), .Q(data_out[0]), .QN(n2) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n56), .K(n56), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n63), .Q(data_out[6]), .QN(n3) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n56), .K(n56), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n63), .Q(data_out[7]), .QN(n4) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n56), .K(n56), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n63), .Q(data_out[5]), .QN(n5) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n56), .K(n56), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n63), .Q(data_out[4]), .QN(n6) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n56), .K(n56), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n63), .Q(data_out[3]), .QN(n7) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n56), .K(n56), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n63), .Q(data_out[2]), .QN(n8) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n56), .K(n56), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n63), .Q(data_out[1]), .QN(n9) );
  GTECH_ZERO U65 ( .Z(n56) );
  GTECH_NOT U66 ( .A(n65), .Z(shift_in[7]) );
  GTECH_AO21 U67 ( .A(n66), .B(n67), .C(n68), .Z(n65) );
  GTECH_AOI222 U68 ( .A(n69), .B(n70), .C(data_in[7]), .D(n71), .E(n72), .F(
        n73), .Z(n67) );
  GTECH_AOI222 U69 ( .A(data_in[0]), .B(n74), .C(n75), .D(n76), .E(n77), .F(
        n78), .Z(n66) );
  GTECH_OAI21 U70 ( .A(n4), .B(n79), .C(n80), .Z(shift_in[6]) );
  GTECH_AO21 U71 ( .A(n81), .B(n82), .C(n68), .Z(n80) );
  GTECH_AOI222 U72 ( .A(n69), .B(n76), .C(data_in[6]), .D(n71), .E(n72), .F(
        n83), .Z(n82) );
  GTECH_NAND2 U73 ( .A(n84), .B(n85), .Z(n71) );
  GTECH_AOI2N2 U74 ( .A(n77), .B(n70), .C(n2), .D(n86), .Z(n81) );
  GTECH_OAI21 U75 ( .A(n3), .B(n79), .C(n87), .Z(shift_in[5]) );
  GTECH_AO21 U76 ( .A(n88), .B(n89), .C(n68), .Z(n87) );
  GTECH_AOI222 U77 ( .A(n77), .B(n76), .C(n72), .D(n90), .E(n69), .F(n91), .Z(
        n89) );
  GTECH_NOT U78 ( .A(n6), .Z(n90) );
  GTECH_AOI2N2 U79 ( .A(n92), .B(n93), .C(n85), .D(n94), .Z(n88) );
  GTECH_NOT U80 ( .A(data_in[5]), .Z(n94) );
  GTECH_OAI21 U81 ( .A(n5), .B(n79), .C(n95), .Z(shift_in[4]) );
  GTECH_AO21 U82 ( .A(n96), .B(n97), .C(n68), .Z(n95) );
  GTECH_AOI222 U83 ( .A(n77), .B(n91), .C(n72), .D(n78), .E(n69), .F(
        data_in[7]), .Z(n97) );
  GTECH_AOI2N2 U84 ( .A(n92), .B(n73), .C(n85), .D(n98), .Z(n96) );
  GTECH_NOT U85 ( .A(data_in[4]), .Z(n98) );
  GTECH_OAI21 U86 ( .A(n6), .B(n79), .C(n99), .Z(shift_in[3]) );
  GTECH_OAI21 U87 ( .A(n100), .B(n101), .C(n102), .Z(n99) );
  GTECH_OAI22 U88 ( .A(n5), .B(n84), .C(n85), .D(n103), .Z(n101) );
  GTECH_NOT U89 ( .A(data_in[3]), .Z(n103) );
  GTECH_OAI22 U90 ( .A(n104), .B(n105), .C(n8), .D(n106), .Z(n100) );
  GTECH_NOT U91 ( .A(data_in[6]), .Z(n105) );
  GTECH_OAI21 U92 ( .A(n7), .B(n79), .C(n107), .Z(shift_in[2]) );
  GTECH_AO21 U93 ( .A(n108), .B(n109), .C(n68), .Z(n107) );
  GTECH_AOI222 U94 ( .A(n75), .B(n93), .C(n72), .D(n76), .E(data_in[5]), .F(
        n69), .Z(n109) );
  GTECH_NOT U95 ( .A(n9), .Z(n76) );
  GTECH_AOI2N2 U96 ( .A(data_in[2]), .B(n110), .C(n6), .D(n84), .Z(n108) );
  GTECH_OAI21 U97 ( .A(n8), .B(n79), .C(n111), .Z(shift_in[1]) );
  GTECH_AO21 U98 ( .A(n112), .B(n113), .C(n68), .Z(n111) );
  GTECH_AOI222 U99 ( .A(n75), .B(n73), .C(n72), .D(n91), .E(data_in[4]), .F(
        n69), .Z(n113) );
  GTECH_NOT U100 ( .A(n2), .Z(n91) );
  GTECH_NOT U101 ( .A(n106), .Z(n72) );
  GTECH_NAND2 U102 ( .A(n114), .B(n115), .Z(n106) );
  GTECH_AOI222 U103 ( .A(n92), .B(n78), .C(n77), .D(n93), .E(data_in[1]), .F(
        n110), .Z(n112) );
  GTECH_NOT U104 ( .A(n85), .Z(n110) );
  GTECH_NOT U105 ( .A(n4), .Z(n93) );
  GTECH_NOT U106 ( .A(n7), .Z(n78) );
  GTECH_OAI21 U107 ( .A(n9), .B(n79), .C(n116), .Z(shift_in[0]) );
  GTECH_AO21 U108 ( .A(n117), .B(n118), .C(n68), .Z(n116) );
  GTECH_NOT U109 ( .A(n102), .Z(n68) );
  GTECH_NAND2 U110 ( .A(n74), .B(n114), .Z(n102) );
  GTECH_NOT U111 ( .A(n79), .Z(n74) );
  GTECH_AOI222 U112 ( .A(n77), .B(n73), .C(data_in[3]), .D(n69), .E(n75), .F(
        n83), .Z(n118) );
  GTECH_NOT U113 ( .A(n5), .Z(n83) );
  GTECH_NOT U114 ( .A(n86), .Z(n75) );
  GTECH_OR3 U115 ( .A(shift_direction[0]), .B(n119), .C(n115), .Z(n86) );
  GTECH_NOT U116 ( .A(n104), .Z(n69) );
  GTECH_OR3 U117 ( .A(n114), .B(n119), .C(n115), .Z(n104) );
  GTECH_NOT U118 ( .A(n3), .Z(n73) );
  GTECH_NOT U119 ( .A(n120), .Z(n77) );
  GTECH_NAND2 U120 ( .A(n114), .B(n119), .Z(n120) );
  GTECH_AOI2N2 U121 ( .A(n92), .B(n70), .C(n121), .D(n85), .Z(n117) );
  GTECH_OR3 U122 ( .A(shift_direction[2]), .B(n114), .C(n119), .Z(n85) );
  GTECH_NOT U123 ( .A(data_in[0]), .Z(n121) );
  GTECH_NOT U124 ( .A(n8), .Z(n70) );
  GTECH_NOT U125 ( .A(n84), .Z(n92) );
  GTECH_OR3 U126 ( .A(shift_direction[1]), .B(n114), .C(n115), .Z(n84) );
  GTECH_NOT U127 ( .A(shift_direction[0]), .Z(n114) );
  GTECH_NAND2 U128 ( .A(n119), .B(n115), .Z(n79) );
  GTECH_NOT U129 ( .A(shift_direction[2]), .Z(n115) );
  GTECH_NOT U130 ( .A(shift_direction[1]), .Z(n119) );
  GTECH_NOT U131 ( .A(reset), .Z(n63) );
endmodule

