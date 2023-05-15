
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n55, n48, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n48), .K(n48), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n55), .Q(data_out[0]), .QN(n61) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n48), .K(n48), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n55), .Q(data_out[5]), .QN(n63) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n48), .K(n48), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n55), .Q(data_out[6]), .QN(n57) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n48), .K(n48), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n55), .Q(data_out[1]), .QN(n58) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n48), .K(n48), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n55), .Q(data_out[2]), .QN(n60) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n48), .K(n48), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n55), .Q(data_out[3]), .QN(n64) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n48), .K(n48), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n55), .Q(data_out[4]), .QN(n62) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n48), .K(n48), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n55), .Q(data_out[7]), .QN(n59) );
  GTECH_ZERO U65 ( .Z(n48) );
  GTECH_AND2 U66 ( .A(n65), .B(n66), .Z(shift_in[7]) );
  GTECH_OR3 U67 ( .A(n67), .B(n68), .C(n69), .Z(n66) );
  GTECH_OAI21 U68 ( .A(n60), .B(n70), .C(n71), .Z(n69) );
  GTECH_AOI2N2 U69 ( .A(n72), .B(data_in[7]), .C(n57), .D(n73), .Z(n71) );
  GTECH_OAI22 U70 ( .A(n58), .B(n74), .C(n75), .D(n64), .Z(n68) );
  GTECH_AND_NOT U71 ( .A(data_in[0]), .B(n76), .Z(n67) );
  GTECH_OAI21 U72 ( .A(n59), .B(n76), .C(n77), .Z(shift_in[6]) );
  GTECH_OAI21 U73 ( .A(n78), .B(n79), .C(n65), .Z(n77) );
  GTECH_OAI22 U74 ( .A(n61), .B(n74), .C(n60), .D(n75), .Z(n79) );
  GTECH_OAI21 U75 ( .A(n58), .B(n70), .C(n80), .Z(n78) );
  GTECH_AOI2N2 U76 ( .A(n72), .B(data_in[6]), .C(n63), .D(n73), .Z(n80) );
  GTECH_NAND2 U77 ( .A(n81), .B(n82), .Z(n72) );
  GTECH_OAI2N2 U78 ( .A(n57), .B(n76), .C(n65), .D(n83), .Z(shift_in[5]) );
  GTECH_OR3 U79 ( .A(n84), .B(n85), .C(n86), .Z(n83) );
  GTECH_OAI21 U80 ( .A(n59), .B(n82), .C(n87), .Z(n86) );
  GTECH_OR_NOT U81 ( .A(n81), .B(data_in[5]), .Z(n87) );
  GTECH_OAI22 U82 ( .A(n61), .B(n70), .C(n73), .D(n62), .Z(n85) );
  GTECH_NOR2 U83 ( .A(n58), .B(n75), .Z(n84) );
  GTECH_OAI21 U84 ( .A(n63), .B(n76), .C(n88), .Z(shift_in[4]) );
  GTECH_OAI21 U85 ( .A(n89), .B(n90), .C(n65), .Z(n88) );
  GTECH_OAI22 U86 ( .A(n81), .B(n91), .C(n57), .D(n82), .Z(n90) );
  GTECH_NOT U87 ( .A(data_in[4]), .Z(n91) );
  GTECH_OAI21 U88 ( .A(n61), .B(n75), .C(n92), .Z(n89) );
  GTECH_AOI2N2 U89 ( .A(n93), .B(data_in[7]), .C(n64), .D(n73), .Z(n92) );
  GTECH_OAI21 U90 ( .A(n62), .B(n76), .C(n94), .Z(shift_in[3]) );
  GTECH_OAI21 U91 ( .A(n95), .B(n96), .C(n65), .Z(n94) );
  GTECH_OAI22 U92 ( .A(n81), .B(n97), .C(n63), .D(n82), .Z(n96) );
  GTECH_OAI22 U93 ( .A(n70), .B(n98), .C(n60), .D(n73), .Z(n95) );
  GTECH_NOT U94 ( .A(data_in[6]), .Z(n98) );
  GTECH_OAI21 U95 ( .A(n64), .B(n76), .C(n99), .Z(shift_in[2]) );
  GTECH_OAI21 U96 ( .A(n100), .B(n101), .C(n65), .Z(n99) );
  GTECH_OAI2N2 U97 ( .A(n59), .B(n74), .C(data_in[2]), .D(n102), .Z(n101) );
  GTECH_OAI21 U98 ( .A(n62), .B(n82), .C(n103), .Z(n100) );
  GTECH_AOI2N2 U99 ( .A(data_in[5]), .B(n93), .C(n58), .D(n73), .Z(n103) );
  GTECH_OAI21 U100 ( .A(n60), .B(n76), .C(n104), .Z(shift_in[1]) );
  GTECH_OAI21 U101 ( .A(n105), .B(n106), .C(n65), .Z(n104) );
  GTECH_OAI21 U102 ( .A(n57), .B(n74), .C(n107), .Z(n106) );
  GTECH_AOI2N2 U103 ( .A(data_in[1]), .B(n102), .C(n64), .D(n82), .Z(n107) );
  GTECH_NOT U104 ( .A(n81), .Z(n102) );
  GTECH_OAI21 U105 ( .A(n59), .B(n75), .C(n108), .Z(n105) );
  GTECH_AOI2N2 U106 ( .A(data_in[4]), .B(n93), .C(n61), .D(n73), .Z(n108) );
  GTECH_NAND2 U107 ( .A(n109), .B(n110), .Z(n73) );
  GTECH_NOT U108 ( .A(n70), .Z(n93) );
  GTECH_OAI2N2 U109 ( .A(n58), .B(n76), .C(n65), .D(n111), .Z(shift_in[0]) );
  GTECH_OR3 U110 ( .A(n112), .B(n113), .C(n114), .Z(n111) );
  GTECH_OAI21 U111 ( .A(n63), .B(n74), .C(n115), .Z(n114) );
  GTECH_OR_NOT U112 ( .A(n81), .B(data_in[0]), .Z(n115) );
  GTECH_OR3 U113 ( .A(shift_direction[2]), .B(n110), .C(n116), .Z(n81) );
  GTECH_OR3 U114 ( .A(shift_direction[0]), .B(n109), .C(n116), .Z(n74) );
  GTECH_OAI22 U115 ( .A(n57), .B(n75), .C(n97), .D(n70), .Z(n113) );
  GTECH_OR3 U116 ( .A(n110), .B(n109), .C(n116), .Z(n70) );
  GTECH_NOT U117 ( .A(data_in[3]), .Z(n97) );
  GTECH_NAND2 U118 ( .A(n116), .B(n110), .Z(n75) );
  GTECH_NOR2 U119 ( .A(n60), .B(n82), .Z(n112) );
  GTECH_OR3 U120 ( .A(shift_direction[1]), .B(n110), .C(n109), .Z(n82) );
  GTECH_NAND2 U121 ( .A(n117), .B(n110), .Z(n65) );
  GTECH_NOT U122 ( .A(shift_direction[0]), .Z(n110) );
  GTECH_NOT U123 ( .A(n76), .Z(n117) );
  GTECH_NAND2 U124 ( .A(n116), .B(n109), .Z(n76) );
  GTECH_NOT U125 ( .A(shift_direction[2]), .Z(n109) );
  GTECH_NOT U126 ( .A(shift_direction[1]), .Z(n116) );
  GTECH_NOT U127 ( .A(reset), .Z(n55) );
endmodule

