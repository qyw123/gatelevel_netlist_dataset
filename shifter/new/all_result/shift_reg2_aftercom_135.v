
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n61, n54, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118;
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
  GTECH_AOI222 U66 ( .A(data_in[0]), .B(n71), .C(n72), .D(n73), .E(n74), .F(
        n75), .Z(n63) );
  GTECH_OAI21 U67 ( .A(n4), .B(n76), .C(n77), .Z(shift_in[6]) );
  GTECH_AO21 U68 ( .A(n78), .B(n79), .C(n65), .Z(n77) );
  GTECH_AOI222 U69 ( .A(n66), .B(n73), .C(data_in[6]), .D(n68), .E(n69), .F(
        n80), .Z(n79) );
  GTECH_OR_NOT U70 ( .A(n81), .B(n82), .Z(n68) );
  GTECH_AOI2N2 U71 ( .A(n74), .B(n67), .C(n2), .D(n83), .Z(n78) );
  GTECH_OAI21 U72 ( .A(n3), .B(n76), .C(n84), .Z(shift_in[5]) );
  GTECH_AO21 U73 ( .A(n85), .B(n86), .C(n65), .Z(n84) );
  GTECH_AOI222 U74 ( .A(n74), .B(n73), .C(n69), .D(n87), .E(n66), .F(n88), .Z(
        n86) );
  GTECH_NOT U75 ( .A(n6), .Z(n87) );
  GTECH_AOI2N2 U76 ( .A(n89), .B(n90), .C(n91), .D(n92), .Z(n85) );
  GTECH_NOT U77 ( .A(data_in[5]), .Z(n92) );
  GTECH_OAI21 U78 ( .A(n5), .B(n76), .C(n93), .Z(shift_in[4]) );
  GTECH_AO21 U79 ( .A(n94), .B(n95), .C(n65), .Z(n93) );
  GTECH_AOI222 U80 ( .A(n74), .B(n88), .C(n69), .D(n75), .E(n66), .F(
        data_in[7]), .Z(n95) );
  GTECH_AOI2N2 U81 ( .A(n89), .B(n70), .C(n91), .D(n96), .Z(n94) );
  GTECH_NOT U82 ( .A(data_in[4]), .Z(n96) );
  GTECH_OAI21 U83 ( .A(n6), .B(n76), .C(n97), .Z(shift_in[3]) );
  GTECH_OAI21 U84 ( .A(n98), .B(n99), .C(n100), .Z(n97) );
  GTECH_OAI22 U85 ( .A(n5), .B(n82), .C(n91), .D(n101), .Z(n99) );
  GTECH_NOT U86 ( .A(data_in[3]), .Z(n101) );
  GTECH_OAI22 U87 ( .A(n102), .B(n103), .C(n8), .D(n104), .Z(n98) );
  GTECH_NOT U88 ( .A(data_in[6]), .Z(n103) );
  GTECH_OAI21 U89 ( .A(n7), .B(n76), .C(n105), .Z(shift_in[2]) );
  GTECH_AO21 U90 ( .A(n106), .B(n107), .C(n65), .Z(n105) );
  GTECH_AOI222 U91 ( .A(n72), .B(n90), .C(n69), .D(n73), .E(data_in[5]), .F(
        n66), .Z(n107) );
  GTECH_NOT U92 ( .A(n9), .Z(n73) );
  GTECH_AOI2N2 U93 ( .A(data_in[2]), .B(n81), .C(n6), .D(n82), .Z(n106) );
  GTECH_OAI21 U94 ( .A(n8), .B(n76), .C(n108), .Z(shift_in[1]) );
  GTECH_AO21 U95 ( .A(n109), .B(n110), .C(n65), .Z(n108) );
  GTECH_AOI222 U96 ( .A(n72), .B(n70), .C(n69), .D(n88), .E(data_in[4]), .F(
        n66), .Z(n110) );
  GTECH_NOT U97 ( .A(n2), .Z(n88) );
  GTECH_NOT U98 ( .A(n104), .Z(n69) );
  GTECH_OR_NOT U99 ( .A(shift_direction[2]), .B(n111), .Z(n104) );
  GTECH_AOI222 U100 ( .A(n89), .B(n75), .C(n74), .D(n90), .E(data_in[1]), .F(
        n81), .Z(n109) );
  GTECH_NOT U101 ( .A(n91), .Z(n81) );
  GTECH_NOT U102 ( .A(n4), .Z(n90) );
  GTECH_NOT U103 ( .A(n7), .Z(n75) );
  GTECH_OAI21 U104 ( .A(n9), .B(n76), .C(n112), .Z(shift_in[0]) );
  GTECH_AO21 U105 ( .A(n113), .B(n114), .C(n65), .Z(n112) );
  GTECH_NOT U106 ( .A(n100), .Z(n65) );
  GTECH_OR_NOT U107 ( .A(shift_direction[0]), .B(n71), .Z(n100) );
  GTECH_NOT U108 ( .A(n76), .Z(n71) );
  GTECH_AOI222 U109 ( .A(n74), .B(n70), .C(data_in[3]), .D(n66), .E(n72), .F(
        n80), .Z(n114) );
  GTECH_NOT U110 ( .A(n5), .Z(n80) );
  GTECH_NOT U111 ( .A(n83), .Z(n72) );
  GTECH_OR3 U112 ( .A(shift_direction[0]), .B(n115), .C(n116), .Z(n83) );
  GTECH_NOT U113 ( .A(n102), .Z(n66) );
  GTECH_OR3 U114 ( .A(n111), .B(n115), .C(n116), .Z(n102) );
  GTECH_NOT U115 ( .A(n3), .Z(n70) );
  GTECH_NOT U116 ( .A(n117), .Z(n74) );
  GTECH_OR_NOT U117 ( .A(shift_direction[1]), .B(n111), .Z(n117) );
  GTECH_AOI2N2 U118 ( .A(n89), .B(n67), .C(n118), .D(n91), .Z(n113) );
  GTECH_OR3 U119 ( .A(shift_direction[2]), .B(n111), .C(n115), .Z(n91) );
  GTECH_NOT U120 ( .A(data_in[0]), .Z(n118) );
  GTECH_NOT U121 ( .A(n8), .Z(n67) );
  GTECH_NOT U122 ( .A(n82), .Z(n89) );
  GTECH_OR3 U123 ( .A(shift_direction[1]), .B(n111), .C(n116), .Z(n82) );
  GTECH_NOT U124 ( .A(shift_direction[2]), .Z(n116) );
  GTECH_NOT U125 ( .A(shift_direction[0]), .Z(n111) );
  GTECH_OR_NOT U126 ( .A(shift_direction[2]), .B(n115), .Z(n76) );
  GTECH_NOT U127 ( .A(shift_direction[1]), .Z(n115) );
  GTECH_NOT U128 ( .A(reset), .Z(n61) );
endmodule

