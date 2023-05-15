
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n54, n47, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n47), .K(n47), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n54), .Q(data_out[0]), .QN(n60) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n47), .K(n47), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n54), .Q(data_out[5]), .QN(n63) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n47), .K(n47), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n54), .Q(data_out[6]), .QN(n61) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n47), .K(n47), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n54), .Q(data_out[7]), .QN(n58) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n47), .K(n47), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n54), .Q(data_out[1]), .QN(n57) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n47), .K(n47), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n54), .Q(data_out[2]), .QN(n59) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n47), .K(n47), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n54), .Q(data_out[3]), .QN(n56) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n47), .K(n47), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n54), .Q(data_out[4]), .QN(n62) );
  GTECH_ZERO U64 ( .Z(n47) );
  GTECH_OA21 U65 ( .A(n64), .B(n65), .C(n66), .Z(shift_in[7]) );
  GTECH_OAI21 U66 ( .A(n67), .B(n68), .C(n69), .Z(n65) );
  GTECH_OA22 U67 ( .A(n56), .B(n70), .C(n57), .D(n71), .Z(n69) );
  GTECH_OAI21 U68 ( .A(n59), .B(n72), .C(n73), .Z(n64) );
  GTECH_OA22 U69 ( .A(n74), .B(n75), .C(n61), .D(n76), .Z(n73) );
  GTECH_OAI21 U70 ( .A(n58), .B(n67), .C(n77), .Z(shift_in[6]) );
  GTECH_OAI21 U71 ( .A(n78), .B(n79), .C(n66), .Z(n77) );
  GTECH_OAI22 U72 ( .A(n60), .B(n71), .C(n59), .D(n70), .Z(n79) );
  GTECH_OAI21 U73 ( .A(n57), .B(n72), .C(n80), .Z(n78) );
  GTECH_OA22 U74 ( .A(n74), .B(n81), .C(n63), .D(n76), .Z(n80) );
  GTECH_NOT U75 ( .A(n82), .Z(n74) );
  GTECH_OR_NOT U76 ( .A(n83), .B(n84), .Z(n82) );
  GTECH_NOT U77 ( .A(n85), .Z(n83) );
  GTECH_OAI21 U78 ( .A(n61), .B(n67), .C(n86), .Z(shift_in[5]) );
  GTECH_OAI21 U79 ( .A(n87), .B(n88), .C(n66), .Z(n86) );
  GTECH_OAI22 U80 ( .A(n84), .B(n89), .C(n58), .D(n85), .Z(n88) );
  GTECH_OAI21 U81 ( .A(n57), .B(n70), .C(n90), .Z(n87) );
  GTECH_OA22 U82 ( .A(n62), .B(n76), .C(n60), .D(n72), .Z(n90) );
  GTECH_OAI21 U83 ( .A(n63), .B(n67), .C(n91), .Z(shift_in[4]) );
  GTECH_OAI21 U84 ( .A(n92), .B(n93), .C(n66), .Z(n91) );
  GTECH_OAI22 U85 ( .A(n84), .B(n94), .C(n61), .D(n85), .Z(n93) );
  GTECH_OAI21 U86 ( .A(n60), .B(n70), .C(n95), .Z(n92) );
  GTECH_OA22 U87 ( .A(n56), .B(n76), .C(n75), .D(n72), .Z(n95) );
  GTECH_NOT U88 ( .A(data_in[7]), .Z(n75) );
  GTECH_OAI21 U89 ( .A(n62), .B(n67), .C(n96), .Z(shift_in[3]) );
  GTECH_OAI21 U90 ( .A(n97), .B(n98), .C(n66), .Z(n96) );
  GTECH_OAI22 U91 ( .A(n84), .B(n99), .C(n63), .D(n85), .Z(n98) );
  GTECH_OAI22 U92 ( .A(n72), .B(n81), .C(n59), .D(n76), .Z(n97) );
  GTECH_NOT U93 ( .A(data_in[6]), .Z(n81) );
  GTECH_OAI21 U94 ( .A(n56), .B(n67), .C(n100), .Z(shift_in[2]) );
  GTECH_OAI21 U95 ( .A(n101), .B(n102), .C(n66), .Z(n100) );
  GTECH_OAI2N2 U96 ( .A(n58), .B(n71), .C(data_in[2]), .D(n103), .Z(n102) );
  GTECH_OAI21 U97 ( .A(n62), .B(n85), .C(n104), .Z(n101) );
  GTECH_OA22 U98 ( .A(n57), .B(n76), .C(n72), .D(n89), .Z(n104) );
  GTECH_NOT U99 ( .A(data_in[5]), .Z(n89) );
  GTECH_OAI21 U100 ( .A(n59), .B(n67), .C(n105), .Z(shift_in[1]) );
  GTECH_OAI21 U101 ( .A(n106), .B(n107), .C(n66), .Z(n105) );
  GTECH_OAI21 U102 ( .A(n61), .B(n71), .C(n108), .Z(n107) );
  GTECH_AOI2N2 U103 ( .A(data_in[1]), .B(n103), .C(n56), .D(n85), .Z(n108) );
  GTECH_NOT U104 ( .A(n84), .Z(n103) );
  GTECH_OAI21 U105 ( .A(n58), .B(n70), .C(n109), .Z(n106) );
  GTECH_OA22 U106 ( .A(n60), .B(n76), .C(n72), .D(n94), .Z(n109) );
  GTECH_NOT U107 ( .A(data_in[4]), .Z(n94) );
  GTECH_OR_NOT U108 ( .A(shift_direction[0]), .B(n110), .Z(n76) );
  GTECH_OAI21 U109 ( .A(n57), .B(n67), .C(n111), .Z(shift_in[0]) );
  GTECH_OAI21 U110 ( .A(n112), .B(n113), .C(n66), .Z(n111) );
  GTECH_OR_NOT U111 ( .A(shift_direction[0]), .B(n114), .Z(n66) );
  GTECH_NOT U112 ( .A(n67), .Z(n114) );
  GTECH_OAI22 U113 ( .A(n63), .B(n71), .C(n68), .D(n84), .Z(n113) );
  GTECH_NAND3 U114 ( .A(shift_direction[0]), .B(n110), .C(shift_direction[1]), 
        .Z(n84) );
  GTECH_NOT U115 ( .A(data_in[0]), .Z(n68) );
  GTECH_NAND3 U116 ( .A(shift_direction[2]), .B(n115), .C(shift_direction[1]), 
        .Z(n71) );
  GTECH_NOT U117 ( .A(shift_direction[0]), .Z(n115) );
  GTECH_OAI21 U118 ( .A(n59), .B(n85), .C(n116), .Z(n112) );
  GTECH_OA22 U119 ( .A(n72), .B(n99), .C(n61), .D(n70), .Z(n116) );
  GTECH_OR_NOT U120 ( .A(shift_direction[0]), .B(n117), .Z(n70) );
  GTECH_NOT U121 ( .A(data_in[3]), .Z(n99) );
  GTECH_NAND3 U122 ( .A(shift_direction[2]), .B(shift_direction[0]), .C(
        shift_direction[1]), .Z(n72) );
  GTECH_NAND3 U123 ( .A(shift_direction[0]), .B(n117), .C(shift_direction[2]), 
        .Z(n85) );
  GTECH_NOT U124 ( .A(shift_direction[1]), .Z(n117) );
  GTECH_OR_NOT U125 ( .A(shift_direction[1]), .B(n110), .Z(n67) );
  GTECH_NOT U126 ( .A(shift_direction[2]), .Z(n110) );
  GTECH_NOT U127 ( .A(reset), .Z(n54) );
endmodule

