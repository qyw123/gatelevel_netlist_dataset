
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n61, n54, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n54), .K(n54), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n61), .Q(data_out[0]), .QN(n2) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n54), .K(n54), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n61), .Q(data_out[6]), .QN(n3) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n54), .K(n54), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n61), .Q(data_out[7]), .QN(n4) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n54), .K(n54), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n61), .Q(data_out[5]), .QN(n63) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n54), .K(n54), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n61), .Q(data_out[4]), .QN(n5) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n54), .K(n54), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n61), .Q(data_out[3]), .QN(n6) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n54), .K(n54), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n61), .Q(data_out[2]), .QN(n64) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n54), .K(n54), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n61), .Q(data_out[1]), .QN(n7) );
  GTECH_ZERO U65 ( .Z(n54) );
  GTECH_NOT U66 ( .A(n65), .Z(shift_in[7]) );
  GTECH_AO21 U67 ( .A(n66), .B(n67), .C(n68), .Z(n65) );
  GTECH_AOI222 U68 ( .A(n69), .B(n70), .C(data_in[7]), .D(n71), .E(n72), .F(
        n73), .Z(n67) );
  GTECH_NOT U69 ( .A(n64), .Z(n70) );
  GTECH_AOI222 U70 ( .A(data_in[0]), .B(n74), .C(n75), .D(n76), .E(n77), .F(
        n78), .Z(n66) );
  GTECH_OAI21 U71 ( .A(n4), .B(n79), .C(n80), .Z(shift_in[6]) );
  GTECH_AO21 U72 ( .A(n81), .B(n82), .C(n68), .Z(n80) );
  GTECH_AOI222 U73 ( .A(n69), .B(n76), .C(data_in[6]), .D(n71), .E(n72), .F(
        n83), .Z(n82) );
  GTECH_NAND2 U74 ( .A(n84), .B(n85), .Z(n71) );
  GTECH_OA22 U75 ( .A(n2), .B(n86), .C(n64), .D(n87), .Z(n81) );
  GTECH_OAI21 U76 ( .A(n3), .B(n79), .C(n88), .Z(shift_in[5]) );
  GTECH_AO21 U77 ( .A(n89), .B(n90), .C(n68), .Z(n88) );
  GTECH_AOI222 U78 ( .A(n77), .B(n76), .C(n72), .D(n91), .E(n69), .F(n92), .Z(
        n90) );
  GTECH_OA22 U79 ( .A(n85), .B(n93), .C(n4), .D(n84), .Z(n89) );
  GTECH_NOT U80 ( .A(data_in[5]), .Z(n93) );
  GTECH_OAI21 U81 ( .A(n63), .B(n79), .C(n94), .Z(shift_in[4]) );
  GTECH_AO21 U82 ( .A(n95), .B(n96), .C(n68), .Z(n94) );
  GTECH_AOI222 U83 ( .A(n77), .B(n92), .C(n72), .D(n78), .E(n69), .F(
        data_in[7]), .Z(n96) );
  GTECH_OA22 U84 ( .A(n85), .B(n97), .C(n3), .D(n84), .Z(n95) );
  GTECH_NOT U85 ( .A(data_in[4]), .Z(n97) );
  GTECH_OAI21 U86 ( .A(n5), .B(n79), .C(n98), .Z(shift_in[3]) );
  GTECH_OAI21 U87 ( .A(n99), .B(n100), .C(n101), .Z(n98) );
  GTECH_OAI22 U88 ( .A(n63), .B(n84), .C(n85), .D(n102), .Z(n100) );
  GTECH_NOT U89 ( .A(data_in[3]), .Z(n102) );
  GTECH_OAI22 U90 ( .A(n103), .B(n104), .C(n64), .D(n105), .Z(n99) );
  GTECH_NOT U91 ( .A(data_in[6]), .Z(n104) );
  GTECH_OAI21 U92 ( .A(n6), .B(n79), .C(n106), .Z(shift_in[2]) );
  GTECH_AO21 U93 ( .A(n107), .B(n108), .C(n68), .Z(n106) );
  GTECH_AOI222 U94 ( .A(n75), .B(n109), .C(n72), .D(n76), .E(data_in[5]), .F(
        n69), .Z(n108) );
  GTECH_NOT U95 ( .A(n7), .Z(n76) );
  GTECH_AOI22 U96 ( .A(data_in[2]), .B(n110), .C(n111), .D(n91), .Z(n107) );
  GTECH_NOT U97 ( .A(n5), .Z(n91) );
  GTECH_OAI21 U98 ( .A(n64), .B(n79), .C(n112), .Z(shift_in[1]) );
  GTECH_AO21 U99 ( .A(n113), .B(n114), .C(n68), .Z(n112) );
  GTECH_AOI222 U100 ( .A(n75), .B(n73), .C(n72), .D(n92), .E(data_in[4]), .F(
        n69), .Z(n114) );
  GTECH_NOT U101 ( .A(n2), .Z(n92) );
  GTECH_NOT U102 ( .A(n105), .Z(n72) );
  GTECH_NAND2 U103 ( .A(n115), .B(n116), .Z(n105) );
  GTECH_AOI222 U104 ( .A(n111), .B(n78), .C(n77), .D(n109), .E(data_in[1]), 
        .F(n110), .Z(n113) );
  GTECH_NOT U105 ( .A(n85), .Z(n110) );
  GTECH_NOT U106 ( .A(n4), .Z(n109) );
  GTECH_NOT U107 ( .A(n6), .Z(n78) );
  GTECH_NOT U108 ( .A(n84), .Z(n111) );
  GTECH_OAI21 U109 ( .A(n7), .B(n79), .C(n117), .Z(shift_in[0]) );
  GTECH_AO21 U110 ( .A(n118), .B(n119), .C(n68), .Z(n117) );
  GTECH_NOT U111 ( .A(n101), .Z(n68) );
  GTECH_NAND2 U112 ( .A(n74), .B(n115), .Z(n101) );
  GTECH_NOT U113 ( .A(n79), .Z(n74) );
  GTECH_AOI222 U114 ( .A(n77), .B(n73), .C(data_in[3]), .D(n69), .E(n75), .F(
        n83), .Z(n119) );
  GTECH_NOT U115 ( .A(n63), .Z(n83) );
  GTECH_NOT U116 ( .A(n86), .Z(n75) );
  GTECH_NAND3 U117 ( .A(shift_direction[1]), .B(n115), .C(shift_direction[2]), 
        .Z(n86) );
  GTECH_NOT U118 ( .A(n103), .Z(n69) );
  GTECH_NAND3 U119 ( .A(shift_direction[1]), .B(shift_direction[0]), .C(
        shift_direction[2]), .Z(n103) );
  GTECH_NOT U120 ( .A(n3), .Z(n73) );
  GTECH_NOT U121 ( .A(n87), .Z(n77) );
  GTECH_NAND2 U122 ( .A(n115), .B(n120), .Z(n87) );
  GTECH_NOT U123 ( .A(shift_direction[0]), .Z(n115) );
  GTECH_OA22 U124 ( .A(n121), .B(n85), .C(n64), .D(n84), .Z(n118) );
  GTECH_NAND3 U125 ( .A(shift_direction[0]), .B(n120), .C(shift_direction[2]), 
        .Z(n84) );
  GTECH_NAND3 U126 ( .A(shift_direction[0]), .B(n116), .C(shift_direction[1]), 
        .Z(n85) );
  GTECH_NOT U127 ( .A(data_in[0]), .Z(n121) );
  GTECH_NAND2 U128 ( .A(n120), .B(n116), .Z(n79) );
  GTECH_NOT U129 ( .A(shift_direction[2]), .Z(n116) );
  GTECH_NOT U130 ( .A(shift_direction[1]), .Z(n120) );
  GTECH_NOT U131 ( .A(reset), .Z(n61) );
endmodule

