
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n62, n55, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119;
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
  GTECH_NOT U67 ( .A(n8), .Z(n68) );
  GTECH_AOI222 U68 ( .A(data_in[0]), .B(n72), .C(n73), .D(n74), .E(n75), .F(
        n76), .Z(n64) );
  GTECH_OAI21 U69 ( .A(n4), .B(n77), .C(n78), .Z(shift_in[6]) );
  GTECH_AO21 U70 ( .A(n79), .B(n80), .C(n66), .Z(n78) );
  GTECH_AOI222 U71 ( .A(n67), .B(n74), .C(data_in[6]), .D(n69), .E(n70), .F(
        n81), .Z(n80) );
  GTECH_NAND2 U72 ( .A(n82), .B(n83), .Z(n69) );
  GTECH_OA22 U73 ( .A(n2), .B(n84), .C(n8), .D(n85), .Z(n79) );
  GTECH_OAI21 U74 ( .A(n3), .B(n77), .C(n86), .Z(shift_in[5]) );
  GTECH_AO21 U75 ( .A(n87), .B(n88), .C(n66), .Z(n86) );
  GTECH_AOI222 U76 ( .A(n75), .B(n74), .C(n70), .D(n89), .E(n67), .F(n90), .Z(
        n88) );
  GTECH_OA22 U77 ( .A(n83), .B(n91), .C(n4), .D(n82), .Z(n87) );
  GTECH_NOT U78 ( .A(data_in[5]), .Z(n91) );
  GTECH_OAI21 U79 ( .A(n5), .B(n77), .C(n92), .Z(shift_in[4]) );
  GTECH_AO21 U80 ( .A(n93), .B(n94), .C(n66), .Z(n92) );
  GTECH_AOI222 U81 ( .A(n75), .B(n90), .C(n70), .D(n76), .E(n67), .F(
        data_in[7]), .Z(n94) );
  GTECH_OA22 U82 ( .A(n83), .B(n95), .C(n3), .D(n82), .Z(n93) );
  GTECH_NOT U83 ( .A(data_in[4]), .Z(n95) );
  GTECH_OAI21 U84 ( .A(n6), .B(n77), .C(n96), .Z(shift_in[3]) );
  GTECH_OAI21 U85 ( .A(n97), .B(n98), .C(n99), .Z(n96) );
  GTECH_OAI22 U86 ( .A(n5), .B(n82), .C(n83), .D(n100), .Z(n98) );
  GTECH_NOT U87 ( .A(data_in[3]), .Z(n100) );
  GTECH_OAI22 U88 ( .A(n101), .B(n102), .C(n8), .D(n103), .Z(n97) );
  GTECH_NOT U89 ( .A(data_in[6]), .Z(n102) );
  GTECH_OAI21 U90 ( .A(n7), .B(n77), .C(n104), .Z(shift_in[2]) );
  GTECH_AO21 U91 ( .A(n105), .B(n106), .C(n66), .Z(n104) );
  GTECH_AOI222 U92 ( .A(n73), .B(n107), .C(n70), .D(n74), .E(data_in[5]), .F(
        n67), .Z(n106) );
  GTECH_NOT U93 ( .A(n9), .Z(n74) );
  GTECH_AOI22 U94 ( .A(data_in[2]), .B(n108), .C(n109), .D(n89), .Z(n105) );
  GTECH_NOT U95 ( .A(n6), .Z(n89) );
  GTECH_OAI21 U96 ( .A(n8), .B(n77), .C(n110), .Z(shift_in[1]) );
  GTECH_AO21 U97 ( .A(n111), .B(n112), .C(n66), .Z(n110) );
  GTECH_AOI222 U98 ( .A(n73), .B(n71), .C(n70), .D(n90), .E(data_in[4]), .F(
        n67), .Z(n112) );
  GTECH_NOT U99 ( .A(n2), .Z(n90) );
  GTECH_NOT U100 ( .A(n103), .Z(n70) );
  GTECH_NAND2 U101 ( .A(n113), .B(n114), .Z(n103) );
  GTECH_AOI222 U102 ( .A(n109), .B(n76), .C(n75), .D(n107), .E(data_in[1]), 
        .F(n108), .Z(n111) );
  GTECH_NOT U103 ( .A(n83), .Z(n108) );
  GTECH_NOT U104 ( .A(n4), .Z(n107) );
  GTECH_NOT U105 ( .A(n7), .Z(n76) );
  GTECH_NOT U106 ( .A(n82), .Z(n109) );
  GTECH_OAI21 U107 ( .A(n9), .B(n77), .C(n115), .Z(shift_in[0]) );
  GTECH_AO21 U108 ( .A(n116), .B(n117), .C(n66), .Z(n115) );
  GTECH_NOT U109 ( .A(n99), .Z(n66) );
  GTECH_NAND2 U110 ( .A(n72), .B(n113), .Z(n99) );
  GTECH_NOT U111 ( .A(n77), .Z(n72) );
  GTECH_AOI222 U112 ( .A(n75), .B(n71), .C(data_in[3]), .D(n67), .E(n73), .F(
        n81), .Z(n117) );
  GTECH_NOT U113 ( .A(n5), .Z(n81) );
  GTECH_NOT U114 ( .A(n84), .Z(n73) );
  GTECH_OR3 U115 ( .A(shift_direction[0]), .B(n118), .C(n114), .Z(n84) );
  GTECH_NOT U116 ( .A(n101), .Z(n67) );
  GTECH_OR3 U117 ( .A(n113), .B(n118), .C(n114), .Z(n101) );
  GTECH_NOT U118 ( .A(n3), .Z(n71) );
  GTECH_NOT U119 ( .A(n85), .Z(n75) );
  GTECH_NAND2 U120 ( .A(n113), .B(n118), .Z(n85) );
  GTECH_OA22 U121 ( .A(n119), .B(n83), .C(n8), .D(n82), .Z(n116) );
  GTECH_OR3 U122 ( .A(shift_direction[1]), .B(n113), .C(n114), .Z(n82) );
  GTECH_OR3 U123 ( .A(shift_direction[2]), .B(n113), .C(n118), .Z(n83) );
  GTECH_NOT U124 ( .A(shift_direction[0]), .Z(n113) );
  GTECH_NOT U125 ( .A(data_in[0]), .Z(n119) );
  GTECH_NAND2 U126 ( .A(n118), .B(n114), .Z(n77) );
  GTECH_NOT U127 ( .A(shift_direction[2]), .Z(n114) );
  GTECH_NOT U128 ( .A(shift_direction[1]), .Z(n118) );
  GTECH_NOT U129 ( .A(reset), .Z(n62) );
endmodule

