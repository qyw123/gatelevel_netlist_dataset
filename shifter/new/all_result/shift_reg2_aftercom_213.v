
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n62, n55, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120;
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
  GTECH_NOT U65 ( .A(n64), .Z(shift_in[7]) );
  GTECH_AO21 U66 ( .A(n65), .B(n66), .C(n67), .Z(n64) );
  GTECH_AOI222 U67 ( .A(n68), .B(n69), .C(data_in[7]), .D(n70), .E(n71), .F(
        n72), .Z(n66) );
  GTECH_AOI222 U68 ( .A(data_in[0]), .B(n73), .C(n74), .D(n75), .E(n76), .F(
        n77), .Z(n65) );
  GTECH_OAI21 U69 ( .A(n4), .B(n78), .C(n79), .Z(shift_in[6]) );
  GTECH_AO21 U70 ( .A(n80), .B(n81), .C(n67), .Z(n79) );
  GTECH_AOI222 U71 ( .A(n68), .B(n75), .C(data_in[6]), .D(n70), .E(n71), .F(
        n82), .Z(n81) );
  GTECH_OR_NOT U72 ( .A(n83), .B(n84), .Z(n70) );
  GTECH_AOI2N2 U73 ( .A(n76), .B(n69), .C(n2), .D(n85), .Z(n80) );
  GTECH_OAI21 U74 ( .A(n3), .B(n78), .C(n86), .Z(shift_in[5]) );
  GTECH_AO21 U75 ( .A(n87), .B(n88), .C(n67), .Z(n86) );
  GTECH_AOI222 U76 ( .A(n76), .B(n75), .C(n71), .D(n89), .E(n68), .F(n90), .Z(
        n88) );
  GTECH_NOT U77 ( .A(n6), .Z(n89) );
  GTECH_AOI2N2 U78 ( .A(n91), .B(n92), .C(n93), .D(n94), .Z(n87) );
  GTECH_NOT U79 ( .A(data_in[5]), .Z(n94) );
  GTECH_OAI21 U80 ( .A(n5), .B(n78), .C(n95), .Z(shift_in[4]) );
  GTECH_AO21 U81 ( .A(n96), .B(n97), .C(n67), .Z(n95) );
  GTECH_AOI222 U82 ( .A(n76), .B(n90), .C(n71), .D(n77), .E(n68), .F(
        data_in[7]), .Z(n97) );
  GTECH_AOI2N2 U83 ( .A(n91), .B(n72), .C(n93), .D(n98), .Z(n96) );
  GTECH_NOT U84 ( .A(data_in[4]), .Z(n98) );
  GTECH_OAI21 U85 ( .A(n6), .B(n78), .C(n99), .Z(shift_in[3]) );
  GTECH_OAI21 U86 ( .A(n100), .B(n101), .C(n102), .Z(n99) );
  GTECH_OAI22 U87 ( .A(n5), .B(n84), .C(n93), .D(n103), .Z(n101) );
  GTECH_NOT U88 ( .A(data_in[3]), .Z(n103) );
  GTECH_OAI22 U89 ( .A(n104), .B(n105), .C(n8), .D(n106), .Z(n100) );
  GTECH_NOT U90 ( .A(data_in[6]), .Z(n105) );
  GTECH_OAI21 U91 ( .A(n7), .B(n78), .C(n107), .Z(shift_in[2]) );
  GTECH_AO21 U92 ( .A(n108), .B(n109), .C(n67), .Z(n107) );
  GTECH_AOI222 U93 ( .A(n74), .B(n92), .C(n71), .D(n75), .E(data_in[5]), .F(
        n68), .Z(n109) );
  GTECH_NOT U94 ( .A(n9), .Z(n75) );
  GTECH_AOI2N2 U95 ( .A(data_in[2]), .B(n83), .C(n6), .D(n84), .Z(n108) );
  GTECH_OAI21 U96 ( .A(n8), .B(n78), .C(n110), .Z(shift_in[1]) );
  GTECH_AO21 U97 ( .A(n111), .B(n112), .C(n67), .Z(n110) );
  GTECH_AOI222 U98 ( .A(n74), .B(n72), .C(n71), .D(n90), .E(data_in[4]), .F(
        n68), .Z(n112) );
  GTECH_NOT U99 ( .A(n2), .Z(n90) );
  GTECH_NOT U100 ( .A(n106), .Z(n71) );
  GTECH_OR_NOT U101 ( .A(shift_direction[2]), .B(n113), .Z(n106) );
  GTECH_AOI222 U102 ( .A(n91), .B(n77), .C(n76), .D(n92), .E(data_in[1]), .F(
        n83), .Z(n111) );
  GTECH_NOT U103 ( .A(n93), .Z(n83) );
  GTECH_NOT U104 ( .A(n4), .Z(n92) );
  GTECH_NOT U105 ( .A(n7), .Z(n77) );
  GTECH_OAI21 U106 ( .A(n9), .B(n78), .C(n114), .Z(shift_in[0]) );
  GTECH_AO21 U107 ( .A(n115), .B(n116), .C(n67), .Z(n114) );
  GTECH_NOT U108 ( .A(n102), .Z(n67) );
  GTECH_OR_NOT U109 ( .A(shift_direction[0]), .B(n73), .Z(n102) );
  GTECH_NOT U110 ( .A(n78), .Z(n73) );
  GTECH_AOI222 U111 ( .A(n76), .B(n72), .C(data_in[3]), .D(n68), .E(n74), .F(
        n82), .Z(n116) );
  GTECH_NOT U112 ( .A(n5), .Z(n82) );
  GTECH_NOT U113 ( .A(n85), .Z(n74) );
  GTECH_NAND3 U114 ( .A(shift_direction[1]), .B(n113), .C(shift_direction[2]), 
        .Z(n85) );
  GTECH_NOT U115 ( .A(n104), .Z(n68) );
  GTECH_NAND3 U116 ( .A(shift_direction[1]), .B(shift_direction[0]), .C(
        shift_direction[2]), .Z(n104) );
  GTECH_NOT U117 ( .A(n3), .Z(n72) );
  GTECH_NOT U118 ( .A(n117), .Z(n76) );
  GTECH_OR_NOT U119 ( .A(shift_direction[1]), .B(n113), .Z(n117) );
  GTECH_NOT U120 ( .A(shift_direction[0]), .Z(n113) );
  GTECH_AOI2N2 U121 ( .A(n91), .B(n69), .C(n118), .D(n93), .Z(n115) );
  GTECH_NAND3 U122 ( .A(shift_direction[0]), .B(n119), .C(shift_direction[1]), 
        .Z(n93) );
  GTECH_NOT U123 ( .A(shift_direction[2]), .Z(n119) );
  GTECH_NOT U124 ( .A(data_in[0]), .Z(n118) );
  GTECH_NOT U125 ( .A(n8), .Z(n69) );
  GTECH_NOT U126 ( .A(n84), .Z(n91) );
  GTECH_NAND3 U127 ( .A(shift_direction[0]), .B(n120), .C(shift_direction[2]), 
        .Z(n84) );
  GTECH_OR_NOT U128 ( .A(shift_direction[2]), .B(n120), .Z(n78) );
  GTECH_NOT U129 ( .A(shift_direction[1]), .Z(n120) );
  GTECH_NOT U130 ( .A(reset), .Z(n62) );
endmodule

