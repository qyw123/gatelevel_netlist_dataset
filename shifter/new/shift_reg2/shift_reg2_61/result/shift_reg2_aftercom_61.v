
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n8, n63, n56, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n56), .K(n56), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n63), .Q(data_out[0]), .QN(n2) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n56), .K(n56), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n63), .Q(data_out[6]), .QN(n3) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n56), .K(n56), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n63), .Q(data_out[7]), .QN(n4) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n56), .K(n56), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n63), .Q(data_out[5]), .QN(n5) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n56), .K(n56), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n63), .Q(data_out[4]), .QN(n65) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n56), .K(n56), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n63), .Q(data_out[3]), .QN(n6) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n56), .K(n56), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n63), .Q(data_out[2]), .QN(n7) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n56), .K(n56), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n63), .Q(data_out[1]), .QN(n8) );
  GTECH_ZERO U66 ( .Z(n56) );
  GTECH_AND2 U67 ( .A(n66), .B(n67), .Z(shift_in[7]) );
  GTECH_NAND2 U68 ( .A(n68), .B(n69), .Z(n66) );
  GTECH_AOI222 U69 ( .A(data_in[0]), .B(n70), .C(data_in[7]), .D(n71), .E(n72), 
        .F(n73), .Z(n69) );
  GTECH_NOT U70 ( .A(n74), .Z(n70) );
  GTECH_AOI222 U71 ( .A(n75), .B(n76), .C(n77), .D(n78), .E(n79), .F(n80), .Z(
        n68) );
  GTECH_OAI22 U72 ( .A(n4), .B(n74), .C(n81), .D(n82), .Z(shift_in[6]) );
  GTECH_AND2 U73 ( .A(n83), .B(n84), .Z(n82) );
  GTECH_AOI222 U74 ( .A(n77), .B(n80), .C(data_in[6]), .D(n71), .E(n72), .F(
        n85), .Z(n84) );
  GTECH_NOT U75 ( .A(n5), .Z(n85) );
  GTECH_NAND2 U76 ( .A(n86), .B(n87), .Z(n71) );
  GTECH_OA22 U77 ( .A(n2), .B(n88), .C(n7), .D(n89), .Z(n83) );
  GTECH_OAI22 U78 ( .A(n3), .B(n74), .C(n81), .D(n90), .Z(shift_in[5]) );
  GTECH_AND2 U79 ( .A(n91), .B(n92), .Z(n90) );
  GTECH_AOI222 U80 ( .A(data_in[5]), .B(n93), .C(n72), .D(n94), .E(n77), .F(
        n95), .Z(n92) );
  GTECH_NOT U81 ( .A(n65), .Z(n94) );
  GTECH_OA22 U82 ( .A(n4), .B(n86), .C(n8), .D(n89), .Z(n91) );
  GTECH_OAI22 U83 ( .A(n5), .B(n74), .C(n81), .D(n96), .Z(shift_in[4]) );
  GTECH_AND2 U84 ( .A(n97), .B(n98), .Z(n96) );
  GTECH_AOI222 U85 ( .A(data_in[4]), .B(n93), .C(n72), .D(n76), .E(n77), .F(
        data_in[7]), .Z(n98) );
  GTECH_OA22 U86 ( .A(n3), .B(n86), .C(n2), .D(n89), .Z(n97) );
  GTECH_OAI21 U87 ( .A(n65), .B(n74), .C(n99), .Z(shift_in[3]) );
  GTECH_OAI21 U88 ( .A(n100), .B(n101), .C(n67), .Z(n99) );
  GTECH_OAI22 U89 ( .A(n5), .B(n86), .C(n87), .D(n102), .Z(n101) );
  GTECH_NOT U90 ( .A(data_in[3]), .Z(n102) );
  GTECH_OAI22 U91 ( .A(n103), .B(n104), .C(n7), .D(n105), .Z(n100) );
  GTECH_NOT U92 ( .A(data_in[6]), .Z(n104) );
  GTECH_OAI22 U93 ( .A(n6), .B(n74), .C(n81), .D(n106), .Z(shift_in[2]) );
  GTECH_AND2 U94 ( .A(n107), .B(n108), .Z(n106) );
  GTECH_AOI222 U95 ( .A(data_in[2]), .B(n93), .C(n72), .D(n80), .E(data_in[5]), 
        .F(n77), .Z(n108) );
  GTECH_NOT U96 ( .A(n8), .Z(n80) );
  GTECH_OA22 U97 ( .A(n65), .B(n86), .C(n4), .D(n88), .Z(n107) );
  GTECH_OAI22 U98 ( .A(n7), .B(n74), .C(n81), .D(n109), .Z(shift_in[1]) );
  GTECH_AND2 U99 ( .A(n110), .B(n111), .Z(n109) );
  GTECH_AOI222 U100 ( .A(data_in[1]), .B(n93), .C(n72), .D(n95), .E(data_in[4]), .F(n77), .Z(n111) );
  GTECH_NOT U101 ( .A(n2), .Z(n95) );
  GTECH_NOT U102 ( .A(n105), .Z(n72) );
  GTECH_NAND2 U103 ( .A(n112), .B(n113), .Z(n105) );
  GTECH_AOI222 U104 ( .A(n75), .B(n114), .C(n115), .D(n76), .E(n79), .F(n73), 
        .Z(n110) );
  GTECH_NOT U105 ( .A(n3), .Z(n73) );
  GTECH_NOT U106 ( .A(n88), .Z(n79) );
  GTECH_NOT U107 ( .A(n6), .Z(n76) );
  GTECH_NOT U108 ( .A(n4), .Z(n114) );
  GTECH_OAI22 U109 ( .A(n8), .B(n74), .C(n81), .D(n116), .Z(shift_in[0]) );
  GTECH_AND2 U110 ( .A(n117), .B(n118), .Z(n116) );
  GTECH_AOI222 U111 ( .A(n115), .B(n78), .C(data_in[3]), .D(n77), .E(n93), .F(
        data_in[0]), .Z(n118) );
  GTECH_NOT U112 ( .A(n87), .Z(n93) );
  GTECH_NAND3 U113 ( .A(shift_direction[0]), .B(n113), .C(shift_direction[1]), 
        .Z(n87) );
  GTECH_NOT U114 ( .A(n103), .Z(n77) );
  GTECH_NAND3 U115 ( .A(shift_direction[1]), .B(shift_direction[0]), .C(
        shift_direction[2]), .Z(n103) );
  GTECH_NOT U116 ( .A(n7), .Z(n78) );
  GTECH_NOT U117 ( .A(n86), .Z(n115) );
  GTECH_NAND3 U118 ( .A(shift_direction[0]), .B(n119), .C(shift_direction[2]), 
        .Z(n86) );
  GTECH_OA22 U119 ( .A(n5), .B(n88), .C(n3), .D(n89), .Z(n117) );
  GTECH_NAND3 U120 ( .A(shift_direction[1]), .B(n112), .C(shift_direction[2]), 
        .Z(n88) );
  GTECH_NOT U121 ( .A(n67), .Z(n81) );
  GTECH_NAND2 U122 ( .A(n75), .B(n113), .Z(n67) );
  GTECH_NOT U123 ( .A(n89), .Z(n75) );
  GTECH_NAND2 U124 ( .A(n112), .B(n119), .Z(n89) );
  GTECH_NOT U125 ( .A(shift_direction[0]), .Z(n112) );
  GTECH_NAND2 U126 ( .A(n119), .B(n113), .Z(n74) );
  GTECH_NOT U127 ( .A(shift_direction[2]), .Z(n113) );
  GTECH_NOT U128 ( .A(shift_direction[1]), .Z(n119) );
  GTECH_NOT U129 ( .A(reset), .Z(n63) );
endmodule

