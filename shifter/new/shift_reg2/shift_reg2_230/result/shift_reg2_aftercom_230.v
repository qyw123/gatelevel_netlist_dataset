
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n61, n54, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114;
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
  GTECH_AOI222 U65 ( .A(data_in[0]), .B(n66), .C(data_in[7]), .D(n67), .E(n68), 
        .F(n69), .Z(n64) );
  GTECH_AOI222 U66 ( .A(n70), .B(n71), .C(n72), .D(n73), .E(n74), .F(n75), .Z(
        n63) );
  GTECH_OAI2N2 U67 ( .A(n65), .B(n76), .C(n66), .D(n77), .Z(shift_in[6]) );
  GTECH_AND2 U68 ( .A(n78), .B(n79), .Z(n76) );
  GTECH_AOI222 U69 ( .A(n72), .B(n75), .C(data_in[6]), .D(n67), .E(n68), .F(
        n80), .Z(n79) );
  GTECH_OR_NOT U70 ( .A(n81), .B(n82), .Z(n67) );
  GTECH_OA22 U71 ( .A(n2), .B(n83), .C(n8), .D(n84), .Z(n78) );
  GTECH_OAI2N2 U72 ( .A(n65), .B(n85), .C(n66), .D(n69), .Z(shift_in[5]) );
  GTECH_AND2 U73 ( .A(n86), .B(n87), .Z(n85) );
  GTECH_AOI222 U74 ( .A(data_in[5]), .B(n81), .C(n68), .D(n88), .E(n72), .F(
        n89), .Z(n87) );
  GTECH_NOT U75 ( .A(n6), .Z(n88) );
  GTECH_OA22 U76 ( .A(n4), .B(n82), .C(n9), .D(n84), .Z(n86) );
  GTECH_OAI2N2 U77 ( .A(n65), .B(n90), .C(n66), .D(n80), .Z(shift_in[4]) );
  GTECH_AND2 U78 ( .A(n91), .B(n92), .Z(n90) );
  GTECH_AOI222 U79 ( .A(data_in[4]), .B(n81), .C(n68), .D(n71), .E(n72), .F(
        data_in[7]), .Z(n92) );
  GTECH_OA22 U80 ( .A(n3), .B(n82), .C(n2), .D(n84), .Z(n91) );
  GTECH_OAI21 U81 ( .A(n6), .B(n93), .C(n94), .Z(shift_in[3]) );
  GTECH_OAI21 U82 ( .A(n95), .B(n96), .C(n97), .Z(n94) );
  GTECH_OAI2N2 U83 ( .A(n98), .B(n99), .C(n100), .D(n80), .Z(n96) );
  GTECH_NOT U84 ( .A(n5), .Z(n80) );
  GTECH_NOT U85 ( .A(data_in[3]), .Z(n99) );
  GTECH_OAI2N2 U86 ( .A(n8), .B(n101), .C(data_in[6]), .D(n72), .Z(n95) );
  GTECH_OAI2N2 U87 ( .A(n65), .B(n102), .C(n66), .D(n71), .Z(shift_in[2]) );
  GTECH_AND2 U88 ( .A(n103), .B(n104), .Z(n102) );
  GTECH_AOI222 U89 ( .A(data_in[2]), .B(n81), .C(n68), .D(n75), .E(data_in[5]), 
        .F(n72), .Z(n104) );
  GTECH_OA22 U90 ( .A(n6), .B(n82), .C(n4), .D(n83), .Z(n103) );
  GTECH_OAI2N2 U91 ( .A(n65), .B(n105), .C(n66), .D(n73), .Z(shift_in[1]) );
  GTECH_AND2 U92 ( .A(n106), .B(n107), .Z(n105) );
  GTECH_AOI222 U93 ( .A(data_in[1]), .B(n81), .C(n68), .D(n89), .E(data_in[4]), 
        .F(n72), .Z(n107) );
  GTECH_NOT U94 ( .A(n2), .Z(n89) );
  GTECH_NOT U95 ( .A(n101), .Z(n68) );
  GTECH_OR_NOT U96 ( .A(shift_direction[2]), .B(n108), .Z(n101) );
  GTECH_AOI222 U97 ( .A(n70), .B(n77), .C(n100), .D(n71), .E(n74), .F(n69), 
        .Z(n106) );
  GTECH_NOT U98 ( .A(n3), .Z(n69) );
  GTECH_NOT U99 ( .A(n83), .Z(n74) );
  GTECH_NOT U100 ( .A(n7), .Z(n71) );
  GTECH_NOT U101 ( .A(n4), .Z(n77) );
  GTECH_OAI2N2 U102 ( .A(n65), .B(n109), .C(n66), .D(n75), .Z(shift_in[0]) );
  GTECH_NOT U103 ( .A(n9), .Z(n75) );
  GTECH_NOT U104 ( .A(n93), .Z(n66) );
  GTECH_OR_NOT U105 ( .A(shift_direction[2]), .B(n110), .Z(n93) );
  GTECH_AND2 U106 ( .A(n111), .B(n112), .Z(n109) );
  GTECH_AOI222 U107 ( .A(n100), .B(n73), .C(data_in[3]), .D(n72), .E(n81), .F(
        data_in[0]), .Z(n112) );
  GTECH_NOT U108 ( .A(n98), .Z(n81) );
  GTECH_NAND3 U109 ( .A(shift_direction[0]), .B(n113), .C(shift_direction[1]), 
        .Z(n98) );
  GTECH_NOT U110 ( .A(shift_direction[2]), .Z(n113) );
  GTECH_NOT U111 ( .A(n114), .Z(n72) );
  GTECH_NAND3 U112 ( .A(shift_direction[1]), .B(shift_direction[0]), .C(
        shift_direction[2]), .Z(n114) );
  GTECH_NOT U113 ( .A(n8), .Z(n73) );
  GTECH_NOT U114 ( .A(n82), .Z(n100) );
  GTECH_NAND3 U115 ( .A(shift_direction[0]), .B(n110), .C(shift_direction[2]), 
        .Z(n82) );
  GTECH_NOT U116 ( .A(shift_direction[1]), .Z(n110) );
  GTECH_OA22 U117 ( .A(n5), .B(n83), .C(n3), .D(n84), .Z(n111) );
  GTECH_NAND3 U118 ( .A(shift_direction[1]), .B(n108), .C(shift_direction[2]), 
        .Z(n83) );
  GTECH_NOT U119 ( .A(n97), .Z(n65) );
  GTECH_OR_NOT U120 ( .A(shift_direction[2]), .B(n70), .Z(n97) );
  GTECH_NOT U121 ( .A(n84), .Z(n70) );
  GTECH_OR_NOT U122 ( .A(shift_direction[1]), .B(n108), .Z(n84) );
  GTECH_NOT U123 ( .A(shift_direction[0]), .Z(n108) );
  GTECH_NOT U124 ( .A(reset), .Z(n61) );
endmodule

