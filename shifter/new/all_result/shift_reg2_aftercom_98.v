
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n54, n47, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n47), .K(n47), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n54), .Q(data_out[0]), .QN(n60) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n47), .K(n47), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n54), .Q(data_out[5]), .QN(n59) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n47), .K(n47), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n54), .Q(data_out[3]), .QN(n56) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n47), .K(n47), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n54), .Q(data_out[4]), .QN(n62) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n47), .K(n47), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n54), .Q(data_out[2]), .QN(n63) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n47), .K(n47), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n54), .Q(data_out[7]), .QN(n58) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n47), .K(n47), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n54), .Q(data_out[1]), .QN(n57) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n47), .K(n47), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n54), .Q(data_out[6]), .QN(n61) );
  GTECH_ZERO U64 ( .Z(n47) );
  GTECH_AND2 U65 ( .A(n64), .B(n65), .Z(shift_in[7]) );
  GTECH_OR3 U66 ( .A(n66), .B(n67), .C(n68), .Z(n65) );
  GTECH_OAI21 U67 ( .A(n63), .B(n69), .C(n70), .Z(n68) );
  GTECH_AOI2N2 U68 ( .A(n71), .B(data_in[7]), .C(n61), .D(n72), .Z(n70) );
  GTECH_OAI22 U69 ( .A(n57), .B(n73), .C(n74), .D(n56), .Z(n67) );
  GTECH_AND_NOT U70 ( .A(data_in[0]), .B(n75), .Z(n66) );
  GTECH_OAI21 U71 ( .A(n58), .B(n75), .C(n76), .Z(shift_in[6]) );
  GTECH_OAI21 U72 ( .A(n77), .B(n78), .C(n64), .Z(n76) );
  GTECH_OAI22 U73 ( .A(n60), .B(n73), .C(n63), .D(n74), .Z(n78) );
  GTECH_OAI21 U74 ( .A(n57), .B(n69), .C(n79), .Z(n77) );
  GTECH_AOI2N2 U75 ( .A(n71), .B(data_in[6]), .C(n59), .D(n72), .Z(n79) );
  GTECH_NAND2 U76 ( .A(n80), .B(n81), .Z(n71) );
  GTECH_OAI2N2 U77 ( .A(n61), .B(n75), .C(n64), .D(n82), .Z(shift_in[5]) );
  GTECH_OR3 U78 ( .A(n83), .B(n84), .C(n85), .Z(n82) );
  GTECH_OAI21 U79 ( .A(n58), .B(n81), .C(n86), .Z(n85) );
  GTECH_OR_NOT U80 ( .A(n80), .B(data_in[5]), .Z(n86) );
  GTECH_OAI22 U81 ( .A(n60), .B(n69), .C(n72), .D(n62), .Z(n84) );
  GTECH_NOR2 U82 ( .A(n57), .B(n74), .Z(n83) );
  GTECH_OAI21 U83 ( .A(n59), .B(n75), .C(n87), .Z(shift_in[4]) );
  GTECH_OAI21 U84 ( .A(n88), .B(n89), .C(n64), .Z(n87) );
  GTECH_OAI22 U85 ( .A(n80), .B(n90), .C(n61), .D(n81), .Z(n89) );
  GTECH_NOT U86 ( .A(data_in[4]), .Z(n90) );
  GTECH_OAI21 U87 ( .A(n60), .B(n74), .C(n91), .Z(n88) );
  GTECH_AOI2N2 U88 ( .A(n92), .B(data_in[7]), .C(n56), .D(n72), .Z(n91) );
  GTECH_OAI21 U89 ( .A(n62), .B(n75), .C(n93), .Z(shift_in[3]) );
  GTECH_OAI21 U90 ( .A(n94), .B(n95), .C(n64), .Z(n93) );
  GTECH_OAI22 U91 ( .A(n80), .B(n96), .C(n59), .D(n81), .Z(n95) );
  GTECH_OAI22 U92 ( .A(n69), .B(n97), .C(n63), .D(n72), .Z(n94) );
  GTECH_NOT U93 ( .A(data_in[6]), .Z(n97) );
  GTECH_OAI21 U94 ( .A(n56), .B(n75), .C(n98), .Z(shift_in[2]) );
  GTECH_OAI21 U95 ( .A(n99), .B(n100), .C(n64), .Z(n98) );
  GTECH_OAI2N2 U96 ( .A(n58), .B(n73), .C(data_in[2]), .D(n101), .Z(n100) );
  GTECH_OAI21 U97 ( .A(n62), .B(n81), .C(n102), .Z(n99) );
  GTECH_AOI2N2 U98 ( .A(data_in[5]), .B(n92), .C(n57), .D(n72), .Z(n102) );
  GTECH_OAI21 U99 ( .A(n63), .B(n75), .C(n103), .Z(shift_in[1]) );
  GTECH_OAI21 U100 ( .A(n104), .B(n105), .C(n64), .Z(n103) );
  GTECH_OAI21 U101 ( .A(n61), .B(n73), .C(n106), .Z(n105) );
  GTECH_AOI2N2 U102 ( .A(data_in[1]), .B(n101), .C(n56), .D(n81), .Z(n106) );
  GTECH_NOT U103 ( .A(n80), .Z(n101) );
  GTECH_OAI21 U104 ( .A(n58), .B(n74), .C(n107), .Z(n104) );
  GTECH_AOI2N2 U105 ( .A(data_in[4]), .B(n92), .C(n60), .D(n72), .Z(n107) );
  GTECH_NAND2 U106 ( .A(n108), .B(n109), .Z(n72) );
  GTECH_NOT U107 ( .A(n69), .Z(n92) );
  GTECH_OAI2N2 U108 ( .A(n57), .B(n75), .C(n64), .D(n110), .Z(shift_in[0]) );
  GTECH_OR3 U109 ( .A(n111), .B(n112), .C(n113), .Z(n110) );
  GTECH_OAI21 U110 ( .A(n59), .B(n73), .C(n114), .Z(n113) );
  GTECH_OR_NOT U111 ( .A(n80), .B(data_in[0]), .Z(n114) );
  GTECH_NAND3 U112 ( .A(shift_direction[0]), .B(n108), .C(shift_direction[1]), 
        .Z(n80) );
  GTECH_NAND3 U113 ( .A(shift_direction[2]), .B(n109), .C(shift_direction[1]), 
        .Z(n73) );
  GTECH_OAI22 U114 ( .A(n61), .B(n74), .C(n96), .D(n69), .Z(n112) );
  GTECH_NAND3 U115 ( .A(shift_direction[2]), .B(shift_direction[0]), .C(
        shift_direction[1]), .Z(n69) );
  GTECH_NOT U116 ( .A(data_in[3]), .Z(n96) );
  GTECH_NAND2 U117 ( .A(n115), .B(n109), .Z(n74) );
  GTECH_NOR2 U118 ( .A(n63), .B(n81), .Z(n111) );
  GTECH_NAND3 U119 ( .A(shift_direction[0]), .B(n115), .C(shift_direction[2]), 
        .Z(n81) );
  GTECH_NAND2 U120 ( .A(n116), .B(n109), .Z(n64) );
  GTECH_NOT U121 ( .A(shift_direction[0]), .Z(n109) );
  GTECH_NOT U122 ( .A(n75), .Z(n116) );
  GTECH_NAND2 U123 ( .A(n115), .B(n108), .Z(n75) );
  GTECH_NOT U124 ( .A(shift_direction[2]), .Z(n108) );
  GTECH_NOT U125 ( .A(shift_direction[1]), .Z(n115) );
  GTECH_NOT U126 ( .A(reset), .Z(n54) );
endmodule

