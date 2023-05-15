
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n56, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(1'b0), .K(1'b0), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n56), .Q(data_out[0]), .QN(n62) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(1'b0), .K(1'b0), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n56), .Q(data_out[5]), .QN(n65) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(1'b0), .K(1'b0), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n56), .Q(data_out[6]), .QN(n63) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(1'b0), .K(1'b0), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n56), .Q(data_out[7]), .QN(n60) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(1'b0), .K(1'b0), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n56), .Q(data_out[1]), .QN(n59) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(1'b0), .K(1'b0), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n56), .Q(data_out[2]), .QN(n61) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(1'b0), .K(1'b0), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n56), .Q(data_out[3]), .QN(n58) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(1'b0), .K(1'b0), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n56), .Q(data_out[4]), .QN(n64) );
  GTECH_OA21 U66 ( .A(n66), .B(n67), .C(n68), .Z(shift_in[7]) );
  GTECH_OAI21 U67 ( .A(n69), .B(n70), .C(n71), .Z(n67) );
  GTECH_OA22 U68 ( .A(n58), .B(n72), .C(n59), .D(n73), .Z(n71) );
  GTECH_OAI21 U69 ( .A(n61), .B(n74), .C(n75), .Z(n66) );
  GTECH_OA22 U70 ( .A(n76), .B(n77), .C(n63), .D(n78), .Z(n75) );
  GTECH_OAI21 U71 ( .A(n60), .B(n69), .C(n79), .Z(shift_in[6]) );
  GTECH_OAI21 U72 ( .A(n80), .B(n81), .C(n68), .Z(n79) );
  GTECH_OAI22 U73 ( .A(n62), .B(n73), .C(n61), .D(n72), .Z(n81) );
  GTECH_OAI21 U74 ( .A(n59), .B(n74), .C(n82), .Z(n80) );
  GTECH_OA22 U75 ( .A(n76), .B(n83), .C(n65), .D(n78), .Z(n82) );
  GTECH_NOT U76 ( .A(n84), .Z(n76) );
  GTECH_NAND2 U77 ( .A(n85), .B(n86), .Z(n84) );
  GTECH_OAI21 U78 ( .A(n63), .B(n69), .C(n87), .Z(shift_in[5]) );
  GTECH_OAI21 U79 ( .A(n88), .B(n89), .C(n68), .Z(n87) );
  GTECH_OAI22 U80 ( .A(n85), .B(n90), .C(n60), .D(n86), .Z(n89) );
  GTECH_OAI21 U81 ( .A(n59), .B(n72), .C(n91), .Z(n88) );
  GTECH_OA22 U82 ( .A(n64), .B(n78), .C(n62), .D(n74), .Z(n91) );
  GTECH_OAI21 U83 ( .A(n65), .B(n69), .C(n92), .Z(shift_in[4]) );
  GTECH_OAI21 U84 ( .A(n93), .B(n94), .C(n68), .Z(n92) );
  GTECH_OAI22 U85 ( .A(n85), .B(n95), .C(n63), .D(n86), .Z(n94) );
  GTECH_OAI21 U86 ( .A(n62), .B(n72), .C(n96), .Z(n93) );
  GTECH_OA22 U87 ( .A(n58), .B(n78), .C(n77), .D(n74), .Z(n96) );
  GTECH_NOT U88 ( .A(data_in[7]), .Z(n77) );
  GTECH_OAI21 U89 ( .A(n64), .B(n69), .C(n97), .Z(shift_in[3]) );
  GTECH_OAI21 U90 ( .A(n98), .B(n99), .C(n68), .Z(n97) );
  GTECH_OAI22 U91 ( .A(n85), .B(n100), .C(n65), .D(n86), .Z(n99) );
  GTECH_OAI22 U92 ( .A(n74), .B(n83), .C(n61), .D(n78), .Z(n98) );
  GTECH_NOT U93 ( .A(data_in[6]), .Z(n83) );
  GTECH_OAI21 U94 ( .A(n58), .B(n69), .C(n101), .Z(shift_in[2]) );
  GTECH_OAI21 U95 ( .A(n102), .B(n103), .C(n68), .Z(n101) );
  GTECH_OAI2N2 U96 ( .A(n60), .B(n73), .C(data_in[2]), .D(n104), .Z(n103) );
  GTECH_OAI21 U97 ( .A(n64), .B(n86), .C(n105), .Z(n102) );
  GTECH_OA22 U98 ( .A(n59), .B(n78), .C(n74), .D(n90), .Z(n105) );
  GTECH_NOT U99 ( .A(data_in[5]), .Z(n90) );
  GTECH_OAI21 U100 ( .A(n61), .B(n69), .C(n106), .Z(shift_in[1]) );
  GTECH_OAI21 U101 ( .A(n107), .B(n108), .C(n68), .Z(n106) );
  GTECH_OAI21 U102 ( .A(n63), .B(n73), .C(n109), .Z(n108) );
  GTECH_AOI2N2 U103 ( .A(data_in[1]), .B(n104), .C(n58), .D(n86), .Z(n109) );
  GTECH_NOT U104 ( .A(n85), .Z(n104) );
  GTECH_OAI21 U105 ( .A(n60), .B(n72), .C(n110), .Z(n107) );
  GTECH_OA22 U106 ( .A(n62), .B(n78), .C(n74), .D(n95), .Z(n110) );
  GTECH_NOT U107 ( .A(data_in[4]), .Z(n95) );
  GTECH_NAND2 U108 ( .A(n111), .B(n112), .Z(n78) );
  GTECH_OAI21 U109 ( .A(n59), .B(n69), .C(n113), .Z(shift_in[0]) );
  GTECH_OAI21 U110 ( .A(n114), .B(n115), .C(n68), .Z(n113) );
  GTECH_NAND2 U111 ( .A(n116), .B(n112), .Z(n68) );
  GTECH_NOT U112 ( .A(n69), .Z(n116) );
  GTECH_OAI22 U113 ( .A(n65), .B(n73), .C(n70), .D(n85), .Z(n115) );
  GTECH_OR3 U114 ( .A(shift_direction[2]), .B(n112), .C(n117), .Z(n85) );
  GTECH_NOT U115 ( .A(data_in[0]), .Z(n70) );
  GTECH_OR3 U116 ( .A(shift_direction[0]), .B(n111), .C(n117), .Z(n73) );
  GTECH_OAI21 U117 ( .A(n61), .B(n86), .C(n118), .Z(n114) );
  GTECH_OA22 U118 ( .A(n74), .B(n100), .C(n63), .D(n72), .Z(n118) );
  GTECH_NAND2 U119 ( .A(n117), .B(n112), .Z(n72) );
  GTECH_NOT U120 ( .A(data_in[3]), .Z(n100) );
  GTECH_OR3 U121 ( .A(n112), .B(n111), .C(n117), .Z(n74) );
  GTECH_OR3 U122 ( .A(shift_direction[1]), .B(n112), .C(n111), .Z(n86) );
  GTECH_NOT U123 ( .A(shift_direction[0]), .Z(n112) );
  GTECH_NAND2 U124 ( .A(n117), .B(n111), .Z(n69) );
  GTECH_NOT U125 ( .A(shift_direction[2]), .Z(n111) );
  GTECH_NOT U126 ( .A(shift_direction[1]), .Z(n117) );
  GTECH_NOT U127 ( .A(reset), .Z(n56) );
endmodule

