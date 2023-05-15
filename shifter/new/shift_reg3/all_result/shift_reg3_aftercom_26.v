
module shift_reg3 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [15:0] data_in;
  input [1:0] shift_direction;
  output [15:0] data_out;
  input clk, reset, enable;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N68, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n54, n39, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n39), .K(n39), .TI(N8), .TE(N68), .CP(clk), 
        .CD(n54), .Q(data_out[0]), .QN(n2) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n39), .K(n39), .TI(N9), .TE(N68), .CP(clk), 
        .CD(n54), .Q(data_out[1]), .QN(n3) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n39), .K(n39), .TI(N10), .TE(N68), .CP(clk), .CD(n54), .Q(data_out[2]), .QN(n4) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n39), .K(n39), .TI(N11), .TE(N68), .CP(clk), .CD(n54), .Q(data_out[3]), .QN(n5) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n39), .K(n39), .TI(N12), .TE(N68), .CP(clk), .CD(n54), .Q(data_out[4]), .QN(n6) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n39), .K(n39), .TI(N13), .TE(N68), .CP(clk), .CD(n54), .Q(data_out[5]), .QN(n7) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n39), .K(n39), .TI(N14), .TE(N68), .CP(clk), .CD(n54), .Q(data_out[6]), .QN(n8) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n39), .K(n39), .TI(N15), .TE(N68), .CP(clk), .CD(n54), .Q(data_out[7]), .QN(n9) );
  GTECH_FJK2S shift_reg_reg_8_ ( .J(n39), .K(n39), .TI(N16), .TE(N68), .CP(clk), .CD(n54), .Q(data_out[8]), .QN(n10) );
  GTECH_FJK2S shift_reg_reg_9_ ( .J(n39), .K(n39), .TI(N17), .TE(N68), .CP(clk), .CD(n54), .Q(data_out[9]), .QN(n11) );
  GTECH_FJK2S shift_reg_reg_10_ ( .J(n39), .K(n39), .TI(N18), .TE(N68), .CP(
        clk), .CD(n54), .Q(data_out[10]), .QN(n12) );
  GTECH_FJK2S shift_reg_reg_11_ ( .J(n39), .K(n39), .TI(N19), .TE(N68), .CP(
        clk), .CD(n54), .Q(data_out[11]), .QN(n13) );
  GTECH_FJK2S shift_reg_reg_12_ ( .J(n39), .K(n39), .TI(N20), .TE(N68), .CP(
        clk), .CD(n54), .Q(data_out[12]), .QN(n14) );
  GTECH_FJK2S shift_reg_reg_13_ ( .J(n39), .K(n39), .TI(N21), .TE(N68), .CP(
        clk), .CD(n54), .Q(data_out[13]), .QN(n15) );
  GTECH_FJK2S shift_reg_reg_14_ ( .J(n39), .K(n39), .TI(N22), .TE(N68), .CP(
        clk), .CD(n54), .Q(data_out[14]), .QN(n16) );
  GTECH_FJK2S shift_reg_reg_15_ ( .J(n39), .K(n39), .TI(N23), .TE(enable), 
        .CP(clk), .CD(n54), .Q(data_out[15]), .QN(n17) );
  GTECH_ZERO U57 ( .Z(n39) );
  GTECH_NOT U58 ( .A(reset), .Z(n54) );
  GTECH_OAI21 U59 ( .A(n2), .B(n56), .C(n57), .Z(N9) );
  GTECH_AOI2N2 U60 ( .A(data_in[1]), .B(n58), .C(n4), .D(n59), .Z(n57) );
  GTECH_OAI22 U61 ( .A(n60), .B(n61), .C(n3), .D(n59), .Z(N8) );
  GTECH_NOT U62 ( .A(n62), .Z(N68) );
  GTECH_OAI21 U63 ( .A(shift_direction[1]), .B(n63), .C(enable), .Z(n62) );
  GTECH_OAI21 U64 ( .A(n16), .B(n56), .C(n64), .Z(N23) );
  GTECH_AOI2N2 U65 ( .A(data_in[15]), .B(n58), .C(n61), .D(n65), .Z(n64) );
  GTECH_NAND2 U66 ( .A(shift_direction[0]), .B(n66), .Z(n65) );
  GTECH_NOT U67 ( .A(data_in[0]), .Z(n61) );
  GTECH_OAI21 U68 ( .A(n15), .B(n56), .C(n67), .Z(N22) );
  GTECH_AOI2N2 U69 ( .A(data_in[14]), .B(n58), .C(n17), .D(n59), .Z(n67) );
  GTECH_OAI21 U70 ( .A(n14), .B(n56), .C(n68), .Z(N21) );
  GTECH_AOI2N2 U71 ( .A(data_in[13]), .B(n58), .C(n16), .D(n59), .Z(n68) );
  GTECH_OAI21 U72 ( .A(n13), .B(n56), .C(n69), .Z(N20) );
  GTECH_AOI2N2 U73 ( .A(data_in[12]), .B(n58), .C(n15), .D(n59), .Z(n69) );
  GTECH_OAI21 U74 ( .A(n12), .B(n56), .C(n70), .Z(N19) );
  GTECH_AOI2N2 U75 ( .A(data_in[11]), .B(n58), .C(n14), .D(n59), .Z(n70) );
  GTECH_OAI21 U76 ( .A(n11), .B(n56), .C(n71), .Z(N18) );
  GTECH_AOI2N2 U77 ( .A(data_in[10]), .B(n58), .C(n13), .D(n59), .Z(n71) );
  GTECH_OAI21 U78 ( .A(n10), .B(n56), .C(n72), .Z(N17) );
  GTECH_AOI2N2 U79 ( .A(data_in[9]), .B(n58), .C(n12), .D(n59), .Z(n72) );
  GTECH_OAI21 U80 ( .A(n9), .B(n56), .C(n73), .Z(N16) );
  GTECH_AOI2N2 U81 ( .A(data_in[8]), .B(n58), .C(n11), .D(n59), .Z(n73) );
  GTECH_OAI21 U82 ( .A(n8), .B(n56), .C(n74), .Z(N15) );
  GTECH_AOI2N2 U83 ( .A(data_in[7]), .B(n58), .C(n10), .D(n59), .Z(n74) );
  GTECH_OAI21 U84 ( .A(n7), .B(n56), .C(n75), .Z(N14) );
  GTECH_AOI2N2 U85 ( .A(data_in[6]), .B(n58), .C(n9), .D(n59), .Z(n75) );
  GTECH_OAI21 U86 ( .A(n6), .B(n56), .C(n76), .Z(N13) );
  GTECH_AOI2N2 U87 ( .A(data_in[5]), .B(n58), .C(n8), .D(n59), .Z(n76) );
  GTECH_OAI21 U88 ( .A(n5), .B(n56), .C(n77), .Z(N12) );
  GTECH_AOI2N2 U89 ( .A(data_in[4]), .B(n58), .C(n7), .D(n59), .Z(n77) );
  GTECH_OAI21 U90 ( .A(n4), .B(n56), .C(n78), .Z(N11) );
  GTECH_AOI2N2 U91 ( .A(data_in[3]), .B(n58), .C(n6), .D(n59), .Z(n78) );
  GTECH_OAI21 U92 ( .A(n3), .B(n56), .C(n79), .Z(N10) );
  GTECH_AOI2N2 U93 ( .A(data_in[2]), .B(n58), .C(n5), .D(n59), .Z(n79) );
  GTECH_NAND2 U94 ( .A(shift_direction[1]), .B(n63), .Z(n59) );
  GTECH_NOT U95 ( .A(n60), .Z(n58) );
  GTECH_NAND2 U96 ( .A(shift_direction[0]), .B(shift_direction[1]), .Z(n60) );
  GTECH_NAND2 U97 ( .A(n66), .B(n63), .Z(n56) );
  GTECH_NOT U98 ( .A(shift_direction[0]), .Z(n63) );
  GTECH_NOT U99 ( .A(shift_direction[1]), .Z(n66) );
endmodule

