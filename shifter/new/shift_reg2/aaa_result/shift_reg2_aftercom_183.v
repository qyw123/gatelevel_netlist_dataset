
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
  GTECH_NOT U64 ( .A(n63), .Z(shift_in[7]) );
  GTECH_AO21 U65 ( .A(n64), .B(n65), .C(n66), .Z(n63) );
  GTECH_AOI222 U66 ( .A(data_in[0]), .B(n67), .C(data_in[7]), .D(n68), .E(n69), 
        .F(n70), .Z(n65) );
  GTECH_NOT U67 ( .A(n71), .Z(n67) );
  GTECH_AOI222 U68 ( .A(n72), .B(n73), .C(n74), .D(n75), .E(n76), .F(n77), .Z(
        n64) );
  GTECH_OAI22 U69 ( .A(n4), .B(n71), .C(n66), .D(n78), .Z(shift_in[6]) );
  GTECH_AND2 U70 ( .A(n79), .B(n80), .Z(n78) );
  GTECH_AOI222 U71 ( .A(n74), .B(n77), .C(data_in[6]), .D(n68), .E(n69), .F(
        n81), .Z(n80) );
  GTECH_NAND2 U72 ( .A(n82), .B(n83), .Z(n68) );
  GTECH_AOI2N2 U73 ( .A(n72), .B(n75), .C(n2), .D(n84), .Z(n79) );
  GTECH_OAI22 U74 ( .A(n3), .B(n71), .C(n66), .D(n85), .Z(shift_in[5]) );
  GTECH_AND2 U75 ( .A(n86), .B(n87), .Z(n85) );
  GTECH_AOI222 U76 ( .A(data_in[5]), .B(n88), .C(n69), .D(n89), .E(n90), .F(
        n91), .Z(n87) );
  GTECH_AOI2N2 U77 ( .A(n72), .B(n77), .C(n2), .D(n92), .Z(n86) );
  GTECH_OAI22 U78 ( .A(n5), .B(n71), .C(n66), .D(n93), .Z(shift_in[4]) );
  GTECH_AND2 U79 ( .A(n94), .B(n95), .Z(n93) );
  GTECH_AOI222 U80 ( .A(data_in[4]), .B(n88), .C(n69), .D(n73), .E(n90), .F(
        n70), .Z(n95) );
  GTECH_AOI2N2 U81 ( .A(n72), .B(n96), .C(n97), .D(n92), .Z(n94) );
  GTECH_NOT U82 ( .A(data_in[7]), .Z(n97) );
  GTECH_OAI22 U83 ( .A(n6), .B(n71), .C(n66), .D(n98), .Z(shift_in[3]) );
  GTECH_AND2 U84 ( .A(n99), .B(n100), .Z(n98) );
  GTECH_AOI2N2 U85 ( .A(n90), .B(n81), .C(n8), .D(n101), .Z(n100) );
  GTECH_NOT U86 ( .A(n5), .Z(n81) );
  GTECH_AOI2N2 U87 ( .A(data_in[6]), .B(n74), .C(n82), .D(n102), .Z(n99) );
  GTECH_NOT U88 ( .A(data_in[3]), .Z(n102) );
  GTECH_OAI22 U89 ( .A(n7), .B(n71), .C(n66), .D(n103), .Z(shift_in[2]) );
  GTECH_AND2 U90 ( .A(n104), .B(n105), .Z(n103) );
  GTECH_AOI222 U91 ( .A(data_in[2]), .B(n88), .C(n69), .D(n77), .E(n90), .F(
        n89), .Z(n105) );
  GTECH_NOT U92 ( .A(n6), .Z(n89) );
  GTECH_NOT U93 ( .A(n9), .Z(n77) );
  GTECH_AOI2N2 U94 ( .A(n76), .B(n91), .C(n92), .D(n106), .Z(n104) );
  GTECH_NOT U95 ( .A(data_in[5]), .Z(n106) );
  GTECH_OAI22 U96 ( .A(n8), .B(n71), .C(n66), .D(n107), .Z(shift_in[1]) );
  GTECH_AND2 U97 ( .A(n108), .B(n109), .Z(n107) );
  GTECH_AOI222 U98 ( .A(data_in[1]), .B(n88), .C(n69), .D(n96), .E(n90), .F(
        n73), .Z(n109) );
  GTECH_NOT U99 ( .A(n7), .Z(n73) );
  GTECH_NOT U100 ( .A(n2), .Z(n96) );
  GTECH_NOT U101 ( .A(n101), .Z(n69) );
  GTECH_NAND2 U102 ( .A(n110), .B(n111), .Z(n101) );
  GTECH_AOI222 U103 ( .A(n72), .B(n91), .C(data_in[4]), .D(n74), .E(n76), .F(
        n70), .Z(n108) );
  GTECH_NOT U104 ( .A(n84), .Z(n76) );
  GTECH_NOT U105 ( .A(n4), .Z(n91) );
  GTECH_OAI22 U106 ( .A(n9), .B(n71), .C(n66), .D(n112), .Z(shift_in[0]) );
  GTECH_AND2 U107 ( .A(n113), .B(n114), .Z(n112) );
  GTECH_AOI222 U108 ( .A(data_in[3]), .B(n74), .C(n90), .D(n75), .E(n88), .F(
        data_in[0]), .Z(n114) );
  GTECH_NOT U109 ( .A(n82), .Z(n88) );
  GTECH_NAND3 U110 ( .A(shift_direction[0]), .B(n111), .C(shift_direction[1]), 
        .Z(n82) );
  GTECH_NOT U111 ( .A(n8), .Z(n75) );
  GTECH_NOT U112 ( .A(n83), .Z(n90) );
  GTECH_NAND3 U113 ( .A(shift_direction[0]), .B(n115), .C(shift_direction[2]), 
        .Z(n83) );
  GTECH_NOT U114 ( .A(n92), .Z(n74) );
  GTECH_NAND3 U115 ( .A(shift_direction[2]), .B(shift_direction[0]), .C(
        shift_direction[1]), .Z(n92) );
  GTECH_AOI2N2 U116 ( .A(n72), .B(n70), .C(n5), .D(n84), .Z(n113) );
  GTECH_NAND3 U117 ( .A(shift_direction[2]), .B(n110), .C(shift_direction[1]), 
        .Z(n84) );
  GTECH_NOT U118 ( .A(n3), .Z(n70) );
  GTECH_NOT U119 ( .A(n116), .Z(n66) );
  GTECH_NAND2 U120 ( .A(n72), .B(n111), .Z(n116) );
  GTECH_NOT U121 ( .A(n117), .Z(n72) );
  GTECH_NAND2 U122 ( .A(n110), .B(n115), .Z(n117) );
  GTECH_NOT U123 ( .A(shift_direction[0]), .Z(n110) );
  GTECH_NAND2 U124 ( .A(n115), .B(n111), .Z(n71) );
  GTECH_NOT U125 ( .A(shift_direction[2]), .Z(n111) );
  GTECH_NOT U126 ( .A(shift_direction[1]), .Z(n115) );
  GTECH_NOT U127 ( .A(reset), .Z(n61) );
endmodule

