
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n61, n54, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115;
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
  GTECH_NOT U66 ( .A(n70), .Z(n66) );
  GTECH_AOI222 U67 ( .A(n71), .B(n72), .C(n73), .D(n74), .E(n75), .F(n76), .Z(
        n63) );
  GTECH_OAI22 U68 ( .A(n4), .B(n70), .C(n65), .D(n77), .Z(shift_in[6]) );
  GTECH_AND2 U69 ( .A(n78), .B(n79), .Z(n77) );
  GTECH_AOI222 U70 ( .A(n73), .B(n76), .C(data_in[6]), .D(n67), .E(n68), .F(
        n80), .Z(n79) );
  GTECH_NOT U71 ( .A(n5), .Z(n80) );
  GTECH_NAND2 U72 ( .A(n81), .B(n82), .Z(n67) );
  GTECH_AOI2N2 U73 ( .A(n71), .B(n74), .C(n2), .D(n83), .Z(n78) );
  GTECH_OAI22 U74 ( .A(n3), .B(n70), .C(n65), .D(n84), .Z(shift_in[5]) );
  GTECH_AND2 U75 ( .A(n85), .B(n86), .Z(n84) );
  GTECH_AOI222 U76 ( .A(data_in[5]), .B(n87), .C(n68), .D(n88), .E(n73), .F(
        n89), .Z(n86) );
  GTECH_NOT U77 ( .A(n6), .Z(n88) );
  GTECH_AOI2N2 U78 ( .A(n71), .B(n76), .C(n4), .D(n81), .Z(n85) );
  GTECH_OAI22 U79 ( .A(n5), .B(n70), .C(n65), .D(n90), .Z(shift_in[4]) );
  GTECH_AND2 U80 ( .A(n91), .B(n92), .Z(n90) );
  GTECH_AOI222 U81 ( .A(data_in[4]), .B(n87), .C(n68), .D(n72), .E(n73), .F(
        data_in[7]), .Z(n92) );
  GTECH_AOI2N2 U82 ( .A(n71), .B(n89), .C(n3), .D(n81), .Z(n91) );
  GTECH_OAI21 U83 ( .A(n6), .B(n70), .C(n93), .Z(shift_in[3]) );
  GTECH_OAI21 U84 ( .A(n94), .B(n95), .C(n96), .Z(n93) );
  GTECH_OAI22 U85 ( .A(n5), .B(n81), .C(n82), .D(n97), .Z(n95) );
  GTECH_NOT U86 ( .A(data_in[3]), .Z(n97) );
  GTECH_OAI22 U87 ( .A(n98), .B(n99), .C(n8), .D(n100), .Z(n94) );
  GTECH_NOT U88 ( .A(data_in[6]), .Z(n99) );
  GTECH_OAI22 U89 ( .A(n7), .B(n70), .C(n65), .D(n101), .Z(shift_in[2]) );
  GTECH_AND2 U90 ( .A(n102), .B(n103), .Z(n101) );
  GTECH_AOI222 U91 ( .A(data_in[2]), .B(n87), .C(n68), .D(n76), .E(data_in[5]), 
        .F(n73), .Z(n103) );
  GTECH_NOT U92 ( .A(n9), .Z(n76) );
  GTECH_AOI2N2 U93 ( .A(n75), .B(n104), .C(n6), .D(n81), .Z(n102) );
  GTECH_OAI22 U94 ( .A(n8), .B(n70), .C(n65), .D(n105), .Z(shift_in[1]) );
  GTECH_AND2 U95 ( .A(n106), .B(n107), .Z(n105) );
  GTECH_AOI222 U96 ( .A(data_in[1]), .B(n87), .C(n68), .D(n89), .E(data_in[4]), 
        .F(n73), .Z(n107) );
  GTECH_NOT U97 ( .A(n2), .Z(n89) );
  GTECH_NOT U98 ( .A(n100), .Z(n68) );
  GTECH_NAND2 U99 ( .A(n108), .B(n109), .Z(n100) );
  GTECH_AOI222 U100 ( .A(n71), .B(n104), .C(n110), .D(n72), .E(n75), .F(n69), 
        .Z(n106) );
  GTECH_NOT U101 ( .A(n83), .Z(n75) );
  GTECH_NOT U102 ( .A(n7), .Z(n72) );
  GTECH_NOT U103 ( .A(n4), .Z(n104) );
  GTECH_OAI22 U104 ( .A(n9), .B(n70), .C(n65), .D(n111), .Z(shift_in[0]) );
  GTECH_AND2 U105 ( .A(n112), .B(n113), .Z(n111) );
  GTECH_AOI222 U106 ( .A(n110), .B(n74), .C(data_in[3]), .D(n73), .E(n87), .F(
        data_in[0]), .Z(n113) );
  GTECH_NOT U107 ( .A(n82), .Z(n87) );
  GTECH_NAND3 U108 ( .A(shift_direction[0]), .B(n109), .C(shift_direction[1]), 
        .Z(n82) );
  GTECH_NOT U109 ( .A(n98), .Z(n73) );
  GTECH_NAND3 U110 ( .A(shift_direction[1]), .B(shift_direction[0]), .C(
        shift_direction[2]), .Z(n98) );
  GTECH_NOT U111 ( .A(n8), .Z(n74) );
  GTECH_NOT U112 ( .A(n81), .Z(n110) );
  GTECH_NAND3 U113 ( .A(shift_direction[0]), .B(n114), .C(shift_direction[2]), 
        .Z(n81) );
  GTECH_AOI2N2 U114 ( .A(n71), .B(n69), .C(n5), .D(n83), .Z(n112) );
  GTECH_NAND3 U115 ( .A(shift_direction[1]), .B(n108), .C(shift_direction[2]), 
        .Z(n83) );
  GTECH_NOT U116 ( .A(n3), .Z(n69) );
  GTECH_NOT U117 ( .A(n96), .Z(n65) );
  GTECH_NAND2 U118 ( .A(n71), .B(n109), .Z(n96) );
  GTECH_NOT U119 ( .A(n115), .Z(n71) );
  GTECH_NAND2 U120 ( .A(n108), .B(n114), .Z(n115) );
  GTECH_NOT U121 ( .A(shift_direction[0]), .Z(n108) );
  GTECH_NAND2 U122 ( .A(n114), .B(n109), .Z(n70) );
  GTECH_NOT U123 ( .A(shift_direction[2]), .Z(n109) );
  GTECH_NOT U124 ( .A(shift_direction[1]), .Z(n114) );
  GTECH_NOT U125 ( .A(reset), .Z(n61) );
endmodule

