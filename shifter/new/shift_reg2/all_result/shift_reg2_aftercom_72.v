
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
        enable), .CP(clk), .CD(n55), .Q(data_out[5]), .QN(n64) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n48), .K(n48), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n55), .Q(data_out[6]), .QN(n62) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n48), .K(n48), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n55), .Q(data_out[7]), .QN(n59) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n48), .K(n48), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n55), .Q(data_out[1]), .QN(n58) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n48), .K(n48), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n55), .Q(data_out[2]), .QN(n60) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n48), .K(n48), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n55), .Q(data_out[3]), .QN(n57) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n48), .K(n48), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n55), .Q(data_out[4]), .QN(n63) );
  GTECH_ZERO U65 ( .Z(n48) );
  GTECH_OA21 U66 ( .A(n65), .B(n66), .C(n67), .Z(shift_in[7]) );
  GTECH_OAI21 U67 ( .A(n68), .B(n69), .C(n70), .Z(n66) );
  GTECH_OA22 U68 ( .A(n57), .B(n71), .C(n58), .D(n72), .Z(n70) );
  GTECH_OAI21 U69 ( .A(n60), .B(n73), .C(n74), .Z(n65) );
  GTECH_OA22 U70 ( .A(n75), .B(n76), .C(n62), .D(n77), .Z(n74) );
  GTECH_OAI21 U71 ( .A(n59), .B(n68), .C(n78), .Z(shift_in[6]) );
  GTECH_OAI21 U72 ( .A(n79), .B(n80), .C(n67), .Z(n78) );
  GTECH_OAI22 U73 ( .A(n61), .B(n72), .C(n60), .D(n71), .Z(n80) );
  GTECH_OAI21 U74 ( .A(n58), .B(n73), .C(n81), .Z(n79) );
  GTECH_OA22 U75 ( .A(n75), .B(n82), .C(n64), .D(n77), .Z(n81) );
  GTECH_NOT U76 ( .A(n83), .Z(n75) );
  GTECH_NAND2 U77 ( .A(n84), .B(n85), .Z(n83) );
  GTECH_OAI21 U78 ( .A(n62), .B(n68), .C(n86), .Z(shift_in[5]) );
  GTECH_OAI21 U79 ( .A(n87), .B(n88), .C(n67), .Z(n86) );
  GTECH_OAI22 U80 ( .A(n84), .B(n89), .C(n59), .D(n85), .Z(n88) );
  GTECH_OAI21 U81 ( .A(n58), .B(n71), .C(n90), .Z(n87) );
  GTECH_OA22 U82 ( .A(n63), .B(n77), .C(n61), .D(n73), .Z(n90) );
  GTECH_OAI21 U83 ( .A(n64), .B(n68), .C(n91), .Z(shift_in[4]) );
  GTECH_OAI21 U84 ( .A(n92), .B(n93), .C(n67), .Z(n91) );
  GTECH_OAI22 U85 ( .A(n84), .B(n94), .C(n62), .D(n85), .Z(n93) );
  GTECH_OAI21 U86 ( .A(n61), .B(n71), .C(n95), .Z(n92) );
  GTECH_OA22 U87 ( .A(n57), .B(n77), .C(n76), .D(n73), .Z(n95) );
  GTECH_NOT U88 ( .A(data_in[7]), .Z(n76) );
  GTECH_OAI21 U89 ( .A(n63), .B(n68), .C(n96), .Z(shift_in[3]) );
  GTECH_OAI21 U90 ( .A(n97), .B(n98), .C(n67), .Z(n96) );
  GTECH_OAI22 U91 ( .A(n84), .B(n99), .C(n64), .D(n85), .Z(n98) );
  GTECH_OAI22 U92 ( .A(n73), .B(n82), .C(n60), .D(n77), .Z(n97) );
  GTECH_NOT U93 ( .A(data_in[6]), .Z(n82) );
  GTECH_OAI21 U94 ( .A(n57), .B(n68), .C(n100), .Z(shift_in[2]) );
  GTECH_OAI21 U95 ( .A(n101), .B(n102), .C(n67), .Z(n100) );
  GTECH_OAI2N2 U96 ( .A(n59), .B(n72), .C(data_in[2]), .D(n103), .Z(n102) );
  GTECH_OAI21 U97 ( .A(n63), .B(n85), .C(n104), .Z(n101) );
  GTECH_OA22 U98 ( .A(n58), .B(n77), .C(n73), .D(n89), .Z(n104) );
  GTECH_NOT U99 ( .A(data_in[5]), .Z(n89) );
  GTECH_OAI21 U100 ( .A(n60), .B(n68), .C(n105), .Z(shift_in[1]) );
  GTECH_OAI21 U101 ( .A(n106), .B(n107), .C(n67), .Z(n105) );
  GTECH_OAI21 U102 ( .A(n62), .B(n72), .C(n108), .Z(n107) );
  GTECH_AOI2N2 U103 ( .A(data_in[1]), .B(n103), .C(n57), .D(n85), .Z(n108) );
  GTECH_NOT U104 ( .A(n84), .Z(n103) );
  GTECH_OAI21 U105 ( .A(n59), .B(n71), .C(n109), .Z(n106) );
  GTECH_OA22 U106 ( .A(n61), .B(n77), .C(n73), .D(n94), .Z(n109) );
  GTECH_NOT U107 ( .A(data_in[4]), .Z(n94) );
  GTECH_NAND2 U108 ( .A(n110), .B(n111), .Z(n77) );
  GTECH_OAI21 U109 ( .A(n58), .B(n68), .C(n112), .Z(shift_in[0]) );
  GTECH_OAI21 U110 ( .A(n113), .B(n114), .C(n67), .Z(n112) );
  GTECH_NAND2 U111 ( .A(n115), .B(n111), .Z(n67) );
  GTECH_NOT U112 ( .A(n68), .Z(n115) );
  GTECH_OAI22 U113 ( .A(n64), .B(n72), .C(n69), .D(n84), .Z(n114) );
  GTECH_OR3 U114 ( .A(shift_direction[2]), .B(n111), .C(n116), .Z(n84) );
  GTECH_NOT U115 ( .A(data_in[0]), .Z(n69) );
  GTECH_OR3 U116 ( .A(shift_direction[0]), .B(n110), .C(n116), .Z(n72) );
  GTECH_OAI21 U117 ( .A(n60), .B(n85), .C(n117), .Z(n113) );
  GTECH_OA22 U118 ( .A(n73), .B(n99), .C(n62), .D(n71), .Z(n117) );
  GTECH_NAND2 U119 ( .A(n116), .B(n111), .Z(n71) );
  GTECH_NOT U120 ( .A(data_in[3]), .Z(n99) );
  GTECH_OR3 U121 ( .A(n111), .B(n110), .C(n116), .Z(n73) );
  GTECH_OR3 U122 ( .A(shift_direction[1]), .B(n111), .C(n110), .Z(n85) );
  GTECH_NOT U123 ( .A(shift_direction[0]), .Z(n111) );
  GTECH_NAND2 U124 ( .A(n110), .B(n116), .Z(n68) );
  GTECH_NOT U125 ( .A(shift_direction[1]), .Z(n116) );
  GTECH_NOT U126 ( .A(shift_direction[2]), .Z(n110) );
  GTECH_NOT U127 ( .A(reset), .Z(n55) );
endmodule

