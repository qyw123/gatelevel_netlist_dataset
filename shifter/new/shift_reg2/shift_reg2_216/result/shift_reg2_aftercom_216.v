
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n8, n61, n54, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117;
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
        enable), .CP(clk), .CD(n61), .Q(data_out[4]), .QN(n63) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n54), .K(n54), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n61), .Q(data_out[3]), .QN(n6) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n54), .K(n54), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n61), .Q(data_out[2]), .QN(n7) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n54), .K(n54), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n61), .Q(data_out[1]), .QN(n8) );
  GTECH_ZERO U64 ( .Z(n54) );
  GTECH_AND2 U65 ( .A(n64), .B(n65), .Z(shift_in[7]) );
  GTECH_NAND2 U66 ( .A(n66), .B(n67), .Z(n64) );
  GTECH_AOI222 U67 ( .A(data_in[0]), .B(n68), .C(data_in[7]), .D(n69), .E(n70), 
        .F(n71), .Z(n67) );
  GTECH_NOT U68 ( .A(n72), .Z(n68) );
  GTECH_AOI222 U69 ( .A(n73), .B(n74), .C(n75), .D(n76), .E(n77), .F(n78), .Z(
        n66) );
  GTECH_OAI22 U70 ( .A(n4), .B(n72), .C(n79), .D(n80), .Z(shift_in[6]) );
  GTECH_AND2 U71 ( .A(n81), .B(n82), .Z(n80) );
  GTECH_AOI222 U72 ( .A(n75), .B(n78), .C(data_in[6]), .D(n69), .E(n70), .F(
        n83), .Z(n82) );
  GTECH_NOT U73 ( .A(n5), .Z(n83) );
  GTECH_NAND2 U74 ( .A(n84), .B(n85), .Z(n69) );
  GTECH_AOI2N2 U75 ( .A(n73), .B(n76), .C(n2), .D(n86), .Z(n81) );
  GTECH_OAI22 U76 ( .A(n3), .B(n72), .C(n79), .D(n87), .Z(shift_in[5]) );
  GTECH_AND2 U77 ( .A(n88), .B(n89), .Z(n87) );
  GTECH_AOI222 U78 ( .A(data_in[5]), .B(n90), .C(n70), .D(n91), .E(n75), .F(
        n92), .Z(n89) );
  GTECH_NOT U79 ( .A(n63), .Z(n91) );
  GTECH_AOI2N2 U80 ( .A(n73), .B(n78), .C(n4), .D(n84), .Z(n88) );
  GTECH_OAI22 U81 ( .A(n5), .B(n72), .C(n79), .D(n93), .Z(shift_in[4]) );
  GTECH_AND2 U82 ( .A(n94), .B(n95), .Z(n93) );
  GTECH_AOI222 U83 ( .A(data_in[4]), .B(n90), .C(n70), .D(n74), .E(n75), .F(
        data_in[7]), .Z(n95) );
  GTECH_AOI2N2 U84 ( .A(n73), .B(n92), .C(n3), .D(n84), .Z(n94) );
  GTECH_OAI21 U85 ( .A(n63), .B(n72), .C(n96), .Z(shift_in[3]) );
  GTECH_OAI21 U86 ( .A(n97), .B(n98), .C(n65), .Z(n96) );
  GTECH_OAI22 U87 ( .A(n5), .B(n84), .C(n85), .D(n99), .Z(n98) );
  GTECH_NOT U88 ( .A(data_in[3]), .Z(n99) );
  GTECH_OAI22 U89 ( .A(n100), .B(n101), .C(n7), .D(n102), .Z(n97) );
  GTECH_NOT U90 ( .A(data_in[6]), .Z(n101) );
  GTECH_OAI22 U91 ( .A(n6), .B(n72), .C(n79), .D(n103), .Z(shift_in[2]) );
  GTECH_AND2 U92 ( .A(n104), .B(n105), .Z(n103) );
  GTECH_AOI222 U93 ( .A(data_in[2]), .B(n90), .C(n70), .D(n78), .E(data_in[5]), 
        .F(n75), .Z(n105) );
  GTECH_NOT U94 ( .A(n8), .Z(n78) );
  GTECH_AOI2N2 U95 ( .A(n77), .B(n106), .C(n63), .D(n84), .Z(n104) );
  GTECH_OAI22 U96 ( .A(n7), .B(n72), .C(n79), .D(n107), .Z(shift_in[1]) );
  GTECH_AND2 U97 ( .A(n108), .B(n109), .Z(n107) );
  GTECH_AOI222 U98 ( .A(data_in[1]), .B(n90), .C(n70), .D(n92), .E(data_in[4]), 
        .F(n75), .Z(n109) );
  GTECH_NOT U99 ( .A(n2), .Z(n92) );
  GTECH_NOT U100 ( .A(n102), .Z(n70) );
  GTECH_NAND2 U101 ( .A(n110), .B(n111), .Z(n102) );
  GTECH_AOI222 U102 ( .A(n73), .B(n106), .C(n112), .D(n74), .E(n77), .F(n71), 
        .Z(n108) );
  GTECH_NOT U103 ( .A(n86), .Z(n77) );
  GTECH_NOT U104 ( .A(n6), .Z(n74) );
  GTECH_NOT U105 ( .A(n4), .Z(n106) );
  GTECH_OAI22 U106 ( .A(n8), .B(n72), .C(n79), .D(n113), .Z(shift_in[0]) );
  GTECH_AND2 U107 ( .A(n114), .B(n115), .Z(n113) );
  GTECH_AOI222 U108 ( .A(n112), .B(n76), .C(data_in[3]), .D(n75), .E(n90), .F(
        data_in[0]), .Z(n115) );
  GTECH_NOT U109 ( .A(n85), .Z(n90) );
  GTECH_NAND3 U110 ( .A(shift_direction[0]), .B(n111), .C(shift_direction[1]), 
        .Z(n85) );
  GTECH_NOT U111 ( .A(n100), .Z(n75) );
  GTECH_NAND3 U112 ( .A(shift_direction[1]), .B(shift_direction[0]), .C(
        shift_direction[2]), .Z(n100) );
  GTECH_NOT U113 ( .A(n7), .Z(n76) );
  GTECH_NOT U114 ( .A(n84), .Z(n112) );
  GTECH_NAND3 U115 ( .A(shift_direction[0]), .B(n116), .C(shift_direction[2]), 
        .Z(n84) );
  GTECH_AOI2N2 U116 ( .A(n73), .B(n71), .C(n5), .D(n86), .Z(n114) );
  GTECH_NAND3 U117 ( .A(shift_direction[1]), .B(n110), .C(shift_direction[2]), 
        .Z(n86) );
  GTECH_NOT U118 ( .A(n3), .Z(n71) );
  GTECH_NOT U119 ( .A(n65), .Z(n79) );
  GTECH_NAND2 U120 ( .A(n73), .B(n111), .Z(n65) );
  GTECH_NOT U121 ( .A(n117), .Z(n73) );
  GTECH_NAND2 U122 ( .A(n110), .B(n116), .Z(n117) );
  GTECH_NOT U123 ( .A(shift_direction[0]), .Z(n110) );
  GTECH_NAND2 U124 ( .A(n116), .B(n111), .Z(n72) );
  GTECH_NOT U125 ( .A(shift_direction[2]), .Z(n111) );
  GTECH_NOT U126 ( .A(shift_direction[1]), .Z(n116) );
  GTECH_NOT U127 ( .A(reset), .Z(n61) );
endmodule

