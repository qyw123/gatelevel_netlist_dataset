
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n61, n54, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113;
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
  GTECH_NAND2 U70 ( .A(n81), .B(n82), .Z(n68) );
  GTECH_AOI22 U71 ( .A(n72), .B(n83), .C(n74), .D(n67), .Z(n78) );
  GTECH_OAI21 U72 ( .A(n3), .B(n76), .C(n84), .Z(shift_in[5]) );
  GTECH_AO21 U73 ( .A(n85), .B(n86), .C(n65), .Z(n84) );
  GTECH_AOI222 U74 ( .A(n74), .B(n73), .C(n69), .D(n87), .E(n66), .F(n83), .Z(
        n86) );
  GTECH_AOI22 U75 ( .A(n88), .B(n89), .C(data_in[5]), .D(n90), .Z(n85) );
  GTECH_OAI21 U76 ( .A(n5), .B(n76), .C(n91), .Z(shift_in[4]) );
  GTECH_AO21 U77 ( .A(n92), .B(n93), .C(n65), .Z(n91) );
  GTECH_AOI222 U78 ( .A(n74), .B(n83), .C(n69), .D(n75), .E(n66), .F(
        data_in[7]), .Z(n93) );
  GTECH_AOI22 U79 ( .A(n88), .B(n70), .C(data_in[4]), .D(n90), .Z(n92) );
  GTECH_OAI21 U80 ( .A(n6), .B(n76), .C(n94), .Z(shift_in[3]) );
  GTECH_OAI21 U81 ( .A(n95), .B(n96), .C(n97), .Z(n94) );
  GTECH_OAI2N2 U82 ( .A(n5), .B(n82), .C(data_in[3]), .D(n90), .Z(n96) );
  GTECH_OAI2N2 U83 ( .A(n8), .B(n98), .C(data_in[6]), .D(n66), .Z(n95) );
  GTECH_OAI21 U84 ( .A(n7), .B(n76), .C(n99), .Z(shift_in[2]) );
  GTECH_AO21 U85 ( .A(n100), .B(n101), .C(n65), .Z(n99) );
  GTECH_AOI222 U86 ( .A(n72), .B(n89), .C(n69), .D(n73), .E(data_in[5]), .F(
        n66), .Z(n101) );
  GTECH_NOT U87 ( .A(n9), .Z(n73) );
  GTECH_AOI22 U88 ( .A(n88), .B(n87), .C(data_in[2]), .D(n90), .Z(n100) );
  GTECH_NOT U89 ( .A(n6), .Z(n87) );
  GTECH_OAI21 U90 ( .A(n8), .B(n76), .C(n102), .Z(shift_in[1]) );
  GTECH_AO21 U91 ( .A(n103), .B(n104), .C(n65), .Z(n102) );
  GTECH_AOI222 U92 ( .A(n72), .B(n70), .C(n69), .D(n83), .E(data_in[4]), .F(
        n66), .Z(n104) );
  GTECH_NOT U93 ( .A(n2), .Z(n83) );
  GTECH_NOT U94 ( .A(n98), .Z(n69) );
  GTECH_NAND2 U95 ( .A(n105), .B(n106), .Z(n98) );
  GTECH_AOI222 U96 ( .A(data_in[1]), .B(n90), .C(n74), .D(n89), .E(n88), .F(
        n75), .Z(n103) );
  GTECH_NOT U97 ( .A(n7), .Z(n75) );
  GTECH_NOT U98 ( .A(n4), .Z(n89) );
  GTECH_OAI21 U99 ( .A(n9), .B(n76), .C(n107), .Z(shift_in[0]) );
  GTECH_AO21 U100 ( .A(n108), .B(n109), .C(n65), .Z(n107) );
  GTECH_NOT U101 ( .A(n97), .Z(n65) );
  GTECH_NAND2 U102 ( .A(n71), .B(n105), .Z(n97) );
  GTECH_NOT U103 ( .A(n76), .Z(n71) );
  GTECH_AOI222 U104 ( .A(n74), .B(n70), .C(data_in[3]), .D(n66), .E(n72), .F(
        n80), .Z(n109) );
  GTECH_NOT U105 ( .A(n5), .Z(n80) );
  GTECH_NOT U106 ( .A(n110), .Z(n72) );
  GTECH_NAND3 U107 ( .A(shift_direction[2]), .B(n105), .C(shift_direction[1]), 
        .Z(n110) );
  GTECH_NOT U108 ( .A(n111), .Z(n66) );
  GTECH_NAND3 U109 ( .A(shift_direction[2]), .B(shift_direction[0]), .C(
        shift_direction[1]), .Z(n111) );
  GTECH_NOT U110 ( .A(n3), .Z(n70) );
  GTECH_NOT U111 ( .A(n112), .Z(n74) );
  GTECH_NAND2 U112 ( .A(n105), .B(n113), .Z(n112) );
  GTECH_NOT U113 ( .A(shift_direction[0]), .Z(n105) );
  GTECH_AOI22 U114 ( .A(n88), .B(n67), .C(n90), .D(data_in[0]), .Z(n108) );
  GTECH_NOT U115 ( .A(n81), .Z(n90) );
  GTECH_NAND3 U116 ( .A(shift_direction[0]), .B(n106), .C(shift_direction[1]), 
        .Z(n81) );
  GTECH_NOT U117 ( .A(n8), .Z(n67) );
  GTECH_NOT U118 ( .A(n82), .Z(n88) );
  GTECH_NAND3 U119 ( .A(shift_direction[0]), .B(n113), .C(shift_direction[2]), 
        .Z(n82) );
  GTECH_NAND2 U120 ( .A(n113), .B(n106), .Z(n76) );
  GTECH_NOT U121 ( .A(shift_direction[2]), .Z(n106) );
  GTECH_NOT U122 ( .A(shift_direction[1]), .Z(n113) );
  GTECH_NOT U123 ( .A(reset), .Z(n61) );
endmodule

