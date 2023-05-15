
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n61, n54, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n54), .K(n54), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n61), .Q(data_out[0]), .QN(n2) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n54), .K(n54), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n61), .Q(data_out[6]), .QN(n3) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n54), .K(n54), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n61), .Q(data_out[7]), .QN(n4) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n54), .K(n54), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n61), .Q(data_out[5]), .QN(n5) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n54), .K(n54), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n61), .Q(data_out[4]), .QN(n6) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n54), .K(n54), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n61), .Q(data_out[3]), .QN(n7) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n54), .K(n54), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n61), .Q(data_out[2]), .QN(n8) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n54), .K(n54), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n61), .Q(data_out[1]), .QN(n9) );
  GTECH_ZERO U63 ( .Z(n54) );
  GTECH_AOI21 U64 ( .A(n63), .B(n64), .C(n65), .Z(shift_in[7]) );
  GTECH_AOI222 U65 ( .A(n66), .B(n67), .C(data_in[7]), .D(n68), .E(n69), .F(
        n70), .Z(n64) );
  GTECH_NOT U66 ( .A(n8), .Z(n67) );
  GTECH_AOI222 U67 ( .A(data_in[0]), .B(n71), .C(n72), .D(n73), .E(n74), .F(
        n75), .Z(n63) );
  GTECH_OAI21 U68 ( .A(n4), .B(n76), .C(n77), .Z(shift_in[6]) );
  GTECH_AO21 U69 ( .A(n78), .B(n79), .C(n65), .Z(n77) );
  GTECH_AOI222 U70 ( .A(n66), .B(n73), .C(data_in[6]), .D(n68), .E(n69), .F(
        n80), .Z(n79) );
  GTECH_OR_NOT U71 ( .A(n81), .B(n82), .Z(n68) );
  GTECH_OA22 U72 ( .A(n2), .B(n83), .C(n8), .D(n84), .Z(n78) );
  GTECH_OAI21 U73 ( .A(n3), .B(n76), .C(n85), .Z(shift_in[5]) );
  GTECH_AO21 U74 ( .A(n86), .B(n87), .C(n65), .Z(n85) );
  GTECH_AOI222 U75 ( .A(n74), .B(n73), .C(n69), .D(n88), .E(n66), .F(n89), .Z(
        n87) );
  GTECH_NOT U76 ( .A(n6), .Z(n88) );
  GTECH_OA22 U77 ( .A(n90), .B(n91), .C(n4), .D(n82), .Z(n86) );
  GTECH_NOT U78 ( .A(data_in[5]), .Z(n91) );
  GTECH_OAI21 U79 ( .A(n5), .B(n76), .C(n92), .Z(shift_in[4]) );
  GTECH_AO21 U80 ( .A(n93), .B(n94), .C(n65), .Z(n92) );
  GTECH_AOI222 U81 ( .A(n74), .B(n89), .C(n69), .D(n75), .E(n66), .F(
        data_in[7]), .Z(n94) );
  GTECH_OA22 U82 ( .A(n90), .B(n95), .C(n3), .D(n82), .Z(n93) );
  GTECH_NOT U83 ( .A(data_in[4]), .Z(n95) );
  GTECH_OAI21 U84 ( .A(n6), .B(n76), .C(n96), .Z(shift_in[3]) );
  GTECH_OAI21 U85 ( .A(n97), .B(n98), .C(n99), .Z(n96) );
  GTECH_OAI2N2 U86 ( .A(n90), .B(n100), .C(n101), .D(n80), .Z(n98) );
  GTECH_NOT U87 ( .A(data_in[3]), .Z(n100) );
  GTECH_OAI2N2 U88 ( .A(n8), .B(n102), .C(data_in[6]), .D(n66), .Z(n97) );
  GTECH_OAI21 U89 ( .A(n7), .B(n76), .C(n103), .Z(shift_in[2]) );
  GTECH_AO21 U90 ( .A(n104), .B(n105), .C(n65), .Z(n103) );
  GTECH_AOI222 U91 ( .A(n72), .B(n106), .C(n69), .D(n73), .E(data_in[5]), .F(
        n66), .Z(n105) );
  GTECH_NOT U92 ( .A(n9), .Z(n73) );
  GTECH_AOI2N2 U93 ( .A(data_in[2]), .B(n81), .C(n6), .D(n82), .Z(n104) );
  GTECH_OAI21 U94 ( .A(n8), .B(n76), .C(n107), .Z(shift_in[1]) );
  GTECH_AO21 U95 ( .A(n108), .B(n109), .C(n65), .Z(n107) );
  GTECH_AOI222 U96 ( .A(n72), .B(n70), .C(n69), .D(n89), .E(data_in[4]), .F(
        n66), .Z(n109) );
  GTECH_NOT U97 ( .A(n2), .Z(n89) );
  GTECH_NOT U98 ( .A(n102), .Z(n69) );
  GTECH_OR_NOT U99 ( .A(shift_direction[2]), .B(n110), .Z(n102) );
  GTECH_AOI222 U100 ( .A(n101), .B(n75), .C(n74), .D(n106), .E(data_in[1]), 
        .F(n81), .Z(n108) );
  GTECH_NOT U101 ( .A(n90), .Z(n81) );
  GTECH_NOT U102 ( .A(n4), .Z(n106) );
  GTECH_NOT U103 ( .A(n7), .Z(n75) );
  GTECH_NOT U104 ( .A(n82), .Z(n101) );
  GTECH_OAI21 U105 ( .A(n9), .B(n76), .C(n111), .Z(shift_in[0]) );
  GTECH_AO21 U106 ( .A(n112), .B(n113), .C(n65), .Z(n111) );
  GTECH_NOT U107 ( .A(n99), .Z(n65) );
  GTECH_OR_NOT U108 ( .A(shift_direction[0]), .B(n71), .Z(n99) );
  GTECH_NOT U109 ( .A(n76), .Z(n71) );
  GTECH_AOI222 U110 ( .A(n74), .B(n70), .C(data_in[3]), .D(n66), .E(n72), .F(
        n80), .Z(n113) );
  GTECH_NOT U111 ( .A(n5), .Z(n80) );
  GTECH_NOT U112 ( .A(n83), .Z(n72) );
  GTECH_OR3 U113 ( .A(shift_direction[0]), .B(n114), .C(n115), .Z(n83) );
  GTECH_NOT U114 ( .A(n116), .Z(n66) );
  GTECH_OR3 U115 ( .A(n110), .B(n114), .C(n115), .Z(n116) );
  GTECH_NOT U116 ( .A(n3), .Z(n70) );
  GTECH_NOT U117 ( .A(n84), .Z(n74) );
  GTECH_OR_NOT U118 ( .A(shift_direction[1]), .B(n110), .Z(n84) );
  GTECH_OA22 U119 ( .A(n117), .B(n90), .C(n8), .D(n82), .Z(n112) );
  GTECH_OR3 U120 ( .A(shift_direction[1]), .B(n110), .C(n115), .Z(n82) );
  GTECH_NOT U121 ( .A(shift_direction[2]), .Z(n115) );
  GTECH_OR3 U122 ( .A(shift_direction[2]), .B(n110), .C(n114), .Z(n90) );
  GTECH_NOT U123 ( .A(shift_direction[0]), .Z(n110) );
  GTECH_NOT U124 ( .A(data_in[0]), .Z(n117) );
  GTECH_OR_NOT U125 ( .A(shift_direction[2]), .B(n114), .Z(n76) );
  GTECH_NOT U126 ( .A(shift_direction[1]), .Z(n114) );
  GTECH_NOT U127 ( .A(reset), .Z(n61) );
endmodule

