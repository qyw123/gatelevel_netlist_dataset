
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n61, n54, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116;
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
  GTECH_NOT U64 ( .A(n63), .Z(shift_in[7]) );
  GTECH_AO21 U65 ( .A(n64), .B(n65), .C(n66), .Z(n63) );
  GTECH_AOI222 U66 ( .A(data_in[0]), .B(n67), .C(data_in[7]), .D(n68), .E(n69), 
        .F(n70), .Z(n65) );
  GTECH_AOI222 U67 ( .A(n71), .B(n72), .C(n73), .D(n74), .E(n75), .F(n76), .Z(
        n64) );
  GTECH_OAI2N2 U68 ( .A(n66), .B(n77), .C(n67), .D(n78), .Z(shift_in[6]) );
  GTECH_AND2 U69 ( .A(n79), .B(n80), .Z(n77) );
  GTECH_AOI222 U70 ( .A(n73), .B(n76), .C(data_in[6]), .D(n68), .E(n69), .F(
        n81), .Z(n80) );
  GTECH_NAND2 U71 ( .A(n82), .B(n83), .Z(n68) );
  GTECH_OA22 U72 ( .A(n2), .B(n84), .C(n8), .D(n85), .Z(n79) );
  GTECH_OAI2N2 U73 ( .A(n66), .B(n86), .C(n67), .D(n70), .Z(shift_in[5]) );
  GTECH_AND2 U74 ( .A(n87), .B(n88), .Z(n86) );
  GTECH_AOI222 U75 ( .A(data_in[5]), .B(n89), .C(n69), .D(n90), .E(n73), .F(
        n91), .Z(n88) );
  GTECH_OA22 U76 ( .A(n4), .B(n82), .C(n9), .D(n85), .Z(n87) );
  GTECH_OAI2N2 U77 ( .A(n66), .B(n92), .C(n67), .D(n81), .Z(shift_in[4]) );
  GTECH_NOT U78 ( .A(n5), .Z(n81) );
  GTECH_AND2 U79 ( .A(n93), .B(n94), .Z(n92) );
  GTECH_AOI222 U80 ( .A(data_in[4]), .B(n89), .C(n69), .D(n72), .E(n73), .F(
        data_in[7]), .Z(n94) );
  GTECH_OA22 U81 ( .A(n3), .B(n82), .C(n2), .D(n85), .Z(n93) );
  GTECH_OAI2N2 U82 ( .A(n66), .B(n95), .C(n67), .D(n90), .Z(shift_in[3]) );
  GTECH_NOT U83 ( .A(n6), .Z(n90) );
  GTECH_AND2 U84 ( .A(n96), .B(n97), .Z(n95) );
  GTECH_OA22 U85 ( .A(n8), .B(n98), .C(n99), .D(n100), .Z(n97) );
  GTECH_NOT U86 ( .A(data_in[6]), .Z(n100) );
  GTECH_OA22 U87 ( .A(n83), .B(n101), .C(n5), .D(n82), .Z(n96) );
  GTECH_NOT U88 ( .A(data_in[3]), .Z(n101) );
  GTECH_OAI2N2 U89 ( .A(n66), .B(n102), .C(n67), .D(n72), .Z(shift_in[2]) );
  GTECH_AND2 U90 ( .A(n103), .B(n104), .Z(n102) );
  GTECH_AOI222 U91 ( .A(data_in[2]), .B(n89), .C(n69), .D(n76), .E(data_in[5]), 
        .F(n73), .Z(n104) );
  GTECH_OA22 U92 ( .A(n6), .B(n82), .C(n4), .D(n84), .Z(n103) );
  GTECH_OAI2N2 U93 ( .A(n66), .B(n105), .C(n67), .D(n74), .Z(shift_in[1]) );
  GTECH_AND2 U94 ( .A(n106), .B(n107), .Z(n105) );
  GTECH_AOI222 U95 ( .A(data_in[1]), .B(n89), .C(n69), .D(n91), .E(data_in[4]), 
        .F(n73), .Z(n107) );
  GTECH_NOT U96 ( .A(n2), .Z(n91) );
  GTECH_NOT U97 ( .A(n98), .Z(n69) );
  GTECH_NAND2 U98 ( .A(n108), .B(n109), .Z(n98) );
  GTECH_AOI222 U99 ( .A(n71), .B(n78), .C(n110), .D(n72), .E(n75), .F(n70), 
        .Z(n106) );
  GTECH_NOT U100 ( .A(n3), .Z(n70) );
  GTECH_NOT U101 ( .A(n84), .Z(n75) );
  GTECH_NOT U102 ( .A(n7), .Z(n72) );
  GTECH_NOT U103 ( .A(n4), .Z(n78) );
  GTECH_OAI2N2 U104 ( .A(n66), .B(n111), .C(n67), .D(n76), .Z(shift_in[0]) );
  GTECH_NOT U105 ( .A(n9), .Z(n76) );
  GTECH_NOT U106 ( .A(n112), .Z(n67) );
  GTECH_NAND2 U107 ( .A(n113), .B(n109), .Z(n112) );
  GTECH_AND2 U108 ( .A(n114), .B(n115), .Z(n111) );
  GTECH_AOI222 U109 ( .A(n110), .B(n74), .C(data_in[3]), .D(n73), .E(n89), .F(
        data_in[0]), .Z(n115) );
  GTECH_NOT U110 ( .A(n83), .Z(n89) );
  GTECH_NAND3 U111 ( .A(shift_direction[0]), .B(n109), .C(shift_direction[1]), 
        .Z(n83) );
  GTECH_NOT U112 ( .A(n99), .Z(n73) );
  GTECH_NAND3 U113 ( .A(shift_direction[1]), .B(shift_direction[0]), .C(
        shift_direction[2]), .Z(n99) );
  GTECH_NOT U114 ( .A(n8), .Z(n74) );
  GTECH_NOT U115 ( .A(n82), .Z(n110) );
  GTECH_NAND3 U116 ( .A(shift_direction[0]), .B(n113), .C(shift_direction[2]), 
        .Z(n82) );
  GTECH_OA22 U117 ( .A(n5), .B(n84), .C(n3), .D(n85), .Z(n114) );
  GTECH_NAND3 U118 ( .A(shift_direction[1]), .B(n108), .C(shift_direction[2]), 
        .Z(n84) );
  GTECH_NOT U119 ( .A(n116), .Z(n66) );
  GTECH_NAND2 U120 ( .A(n71), .B(n109), .Z(n116) );
  GTECH_NOT U121 ( .A(shift_direction[2]), .Z(n109) );
  GTECH_NOT U122 ( .A(n85), .Z(n71) );
  GTECH_NAND2 U123 ( .A(n108), .B(n113), .Z(n85) );
  GTECH_NOT U124 ( .A(shift_direction[1]), .Z(n113) );
  GTECH_NOT U125 ( .A(shift_direction[0]), .Z(n108) );
  GTECH_NOT U126 ( .A(reset), .Z(n61) );
endmodule

