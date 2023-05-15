
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n62, n55, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n55), .K(n55), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[0]), .QN(n2) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n55), .K(n55), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[6]), .QN(n3) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n55), .K(n55), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[7]), .QN(n4) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n55), .K(n55), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[5]), .QN(n5) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n55), .K(n55), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[4]), .QN(n6) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n55), .K(n55), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[3]), .QN(n7) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n55), .K(n55), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[2]), .QN(n8) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n55), .K(n55), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[1]), .QN(n9) );
  GTECH_ZERO U64 ( .Z(n55) );
  GTECH_AOI21 U65 ( .A(n64), .B(n65), .C(n66), .Z(shift_in[7]) );
  GTECH_AOI222 U66 ( .A(n67), .B(n68), .C(data_in[7]), .D(n69), .E(n70), .F(
        n71), .Z(n65) );
  GTECH_AOI222 U67 ( .A(data_in[0]), .B(n72), .C(n73), .D(n74), .E(n75), .F(
        n76), .Z(n64) );
  GTECH_OAI21 U68 ( .A(n4), .B(n77), .C(n78), .Z(shift_in[6]) );
  GTECH_AO21 U69 ( .A(n79), .B(n80), .C(n66), .Z(n78) );
  GTECH_AOI222 U70 ( .A(n67), .B(n74), .C(data_in[6]), .D(n69), .E(n70), .F(
        n81), .Z(n80) );
  GTECH_NAND2 U71 ( .A(n82), .B(n83), .Z(n69) );
  GTECH_AOI2N2 U72 ( .A(n75), .B(n68), .C(n2), .D(n84), .Z(n79) );
  GTECH_OAI21 U73 ( .A(n3), .B(n77), .C(n85), .Z(shift_in[5]) );
  GTECH_AO21 U74 ( .A(n86), .B(n87), .C(n66), .Z(n85) );
  GTECH_AOI222 U75 ( .A(n75), .B(n74), .C(n70), .D(n88), .E(n67), .F(n89), .Z(
        n87) );
  GTECH_NOT U76 ( .A(n6), .Z(n88) );
  GTECH_AOI2N2 U77 ( .A(n90), .B(n91), .C(n83), .D(n92), .Z(n86) );
  GTECH_NOT U78 ( .A(data_in[5]), .Z(n92) );
  GTECH_OAI21 U79 ( .A(n5), .B(n77), .C(n93), .Z(shift_in[4]) );
  GTECH_AO21 U80 ( .A(n94), .B(n95), .C(n66), .Z(n93) );
  GTECH_AOI222 U81 ( .A(n75), .B(n89), .C(n70), .D(n76), .E(n67), .F(
        data_in[7]), .Z(n95) );
  GTECH_AOI2N2 U82 ( .A(n90), .B(n71), .C(n83), .D(n96), .Z(n94) );
  GTECH_NOT U83 ( .A(data_in[4]), .Z(n96) );
  GTECH_OAI21 U84 ( .A(n6), .B(n77), .C(n97), .Z(shift_in[3]) );
  GTECH_OAI21 U85 ( .A(n98), .B(n99), .C(n100), .Z(n97) );
  GTECH_OAI2N2 U86 ( .A(n83), .B(n101), .C(n90), .D(n81), .Z(n99) );
  GTECH_NOT U87 ( .A(data_in[3]), .Z(n101) );
  GTECH_OAI2N2 U88 ( .A(n8), .B(n102), .C(data_in[6]), .D(n67), .Z(n98) );
  GTECH_OAI21 U89 ( .A(n7), .B(n77), .C(n103), .Z(shift_in[2]) );
  GTECH_AO21 U90 ( .A(n104), .B(n105), .C(n66), .Z(n103) );
  GTECH_AOI222 U91 ( .A(n73), .B(n91), .C(n70), .D(n74), .E(data_in[5]), .F(
        n67), .Z(n105) );
  GTECH_NOT U92 ( .A(n9), .Z(n74) );
  GTECH_AOI2N2 U93 ( .A(data_in[2]), .B(n106), .C(n6), .D(n82), .Z(n104) );
  GTECH_OAI21 U94 ( .A(n8), .B(n77), .C(n107), .Z(shift_in[1]) );
  GTECH_AO21 U95 ( .A(n108), .B(n109), .C(n66), .Z(n107) );
  GTECH_AOI222 U96 ( .A(n73), .B(n71), .C(n70), .D(n89), .E(data_in[4]), .F(
        n67), .Z(n109) );
  GTECH_NOT U97 ( .A(n2), .Z(n89) );
  GTECH_NOT U98 ( .A(n102), .Z(n70) );
  GTECH_NAND2 U99 ( .A(n110), .B(n111), .Z(n102) );
  GTECH_AOI222 U100 ( .A(n90), .B(n76), .C(n75), .D(n91), .E(data_in[1]), .F(
        n106), .Z(n108) );
  GTECH_NOT U101 ( .A(n83), .Z(n106) );
  GTECH_NOT U102 ( .A(n4), .Z(n91) );
  GTECH_NOT U103 ( .A(n7), .Z(n76) );
  GTECH_OAI21 U104 ( .A(n9), .B(n77), .C(n112), .Z(shift_in[0]) );
  GTECH_AO21 U105 ( .A(n113), .B(n114), .C(n66), .Z(n112) );
  GTECH_NOT U106 ( .A(n100), .Z(n66) );
  GTECH_NAND2 U107 ( .A(n72), .B(n110), .Z(n100) );
  GTECH_NOT U108 ( .A(n77), .Z(n72) );
  GTECH_AOI222 U109 ( .A(n75), .B(n71), .C(data_in[3]), .D(n67), .E(n73), .F(
        n81), .Z(n114) );
  GTECH_NOT U110 ( .A(n5), .Z(n81) );
  GTECH_NOT U111 ( .A(n84), .Z(n73) );
  GTECH_OR3 U112 ( .A(shift_direction[0]), .B(n115), .C(n111), .Z(n84) );
  GTECH_NOT U113 ( .A(n116), .Z(n67) );
  GTECH_OR3 U114 ( .A(n110), .B(n115), .C(n111), .Z(n116) );
  GTECH_NOT U115 ( .A(n3), .Z(n71) );
  GTECH_NOT U116 ( .A(n117), .Z(n75) );
  GTECH_NAND2 U117 ( .A(n110), .B(n115), .Z(n117) );
  GTECH_AOI2N2 U118 ( .A(n90), .B(n68), .C(n118), .D(n83), .Z(n113) );
  GTECH_OR3 U119 ( .A(shift_direction[2]), .B(n110), .C(n115), .Z(n83) );
  GTECH_NOT U120 ( .A(data_in[0]), .Z(n118) );
  GTECH_NOT U121 ( .A(n8), .Z(n68) );
  GTECH_NOT U122 ( .A(n82), .Z(n90) );
  GTECH_OR3 U123 ( .A(shift_direction[1]), .B(n110), .C(n111), .Z(n82) );
  GTECH_NOT U124 ( .A(shift_direction[0]), .Z(n110) );
  GTECH_NAND2 U125 ( .A(n115), .B(n111), .Z(n77) );
  GTECH_NOT U126 ( .A(shift_direction[2]), .Z(n111) );
  GTECH_NOT U127 ( .A(shift_direction[1]), .Z(n115) );
  GTECH_NOT U128 ( .A(reset), .Z(n62) );
endmodule

