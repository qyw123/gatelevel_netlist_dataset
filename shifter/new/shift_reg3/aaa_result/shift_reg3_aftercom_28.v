
module shift_reg3 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [15:0] data_in;
  input [1:0] shift_direction;
  output [15:0] data_out;
  input clk, reset, enable;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N68, n2, n39, n24, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n24), .K(n24), .TI(N8), .TE(N68), .CP(clk), 
        .CD(n39), .Q(data_out[0]), .QN(n41) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n24), .K(n24), .TI(N9), .TE(N68), .CP(clk), 
        .CD(n39), .Q(data_out[1]), .QN(n55) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n24), .K(n24), .TI(N10), .TE(N68), .CP(clk), .CD(n39), .Q(data_out[2]), .QN(n54) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n24), .K(n24), .TI(N11), .TE(N68), .CP(clk), .CD(n39), .Q(data_out[3]), .QN(n53) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n24), .K(n24), .TI(N12), .TE(N68), .CP(clk), .CD(n39), .Q(data_out[4]), .QN(n52) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n24), .K(n24), .TI(N13), .TE(N68), .CP(clk), .CD(n39), .Q(data_out[5]), .QN(n51) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n24), .K(n24), .TI(N14), .TE(N68), .CP(clk), .CD(n39), .Q(data_out[6]), .QN(n50) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n24), .K(n24), .TI(N15), .TE(N68), .CP(clk), .CD(n39), .Q(data_out[7]), .QN(n49) );
  GTECH_FJK2S shift_reg_reg_8_ ( .J(n24), .K(n24), .TI(N16), .TE(N68), .CP(clk), .CD(n39), .Q(data_out[8]), .QN(n48) );
  GTECH_FJK2S shift_reg_reg_9_ ( .J(n24), .K(n24), .TI(N17), .TE(N68), .CP(clk), .CD(n39), .Q(data_out[9]), .QN(n47) );
  GTECH_FJK2S shift_reg_reg_10_ ( .J(n24), .K(n24), .TI(N18), .TE(N68), .CP(
        clk), .CD(n39), .Q(data_out[10]), .QN(n46) );
  GTECH_FJK2S shift_reg_reg_11_ ( .J(n24), .K(n24), .TI(N19), .TE(N68), .CP(
        clk), .CD(n39), .Q(data_out[11]), .QN(n45) );
  GTECH_FJK2S shift_reg_reg_12_ ( .J(n24), .K(n24), .TI(N20), .TE(N68), .CP(
        clk), .CD(n39), .Q(data_out[12]), .QN(n44) );
  GTECH_FJK2S shift_reg_reg_13_ ( .J(n24), .K(n24), .TI(N21), .TE(N68), .CP(
        clk), .CD(n39), .Q(data_out[13]), .QN(n43) );
  GTECH_FJK2S shift_reg_reg_14_ ( .J(n24), .K(n24), .TI(N22), .TE(N68), .CP(
        clk), .CD(n39), .Q(data_out[14]), .QN(n42) );
  GTECH_FJK2S shift_reg_reg_15_ ( .J(n24), .K(n24), .TI(N23), .TE(enable), 
        .CP(clk), .CD(n39), .Q(data_out[15]), .QN(n2) );
  GTECH_ZERO U57 ( .Z(n24) );
  GTECH_NOT U58 ( .A(reset), .Z(n39) );
  GTECH_OAI21 U59 ( .A(n41), .B(n56), .C(n57), .Z(N9) );
  GTECH_AOI2N2 U60 ( .A(data_in[1]), .B(n58), .C(n54), .D(n59), .Z(n57) );
  GTECH_OAI22 U61 ( .A(n60), .B(n61), .C(n55), .D(n59), .Z(N8) );
  GTECH_OA21 U62 ( .A(shift_direction[1]), .B(n62), .C(enable), .Z(N68) );
  GTECH_OAI21 U63 ( .A(n42), .B(n56), .C(n63), .Z(N23) );
  GTECH_AOI2N2 U64 ( .A(data_in[15]), .B(n58), .C(n61), .D(n64), .Z(n63) );
  GTECH_NAND2 U65 ( .A(shift_direction[0]), .B(n65), .Z(n64) );
  GTECH_NOT U66 ( .A(data_in[0]), .Z(n61) );
  GTECH_OAI21 U67 ( .A(n43), .B(n56), .C(n66), .Z(N22) );
  GTECH_AOI2N2 U68 ( .A(data_in[14]), .B(n58), .C(n2), .D(n59), .Z(n66) );
  GTECH_OAI21 U69 ( .A(n44), .B(n56), .C(n67), .Z(N21) );
  GTECH_AOI2N2 U70 ( .A(data_in[13]), .B(n58), .C(n42), .D(n59), .Z(n67) );
  GTECH_OAI21 U71 ( .A(n45), .B(n56), .C(n68), .Z(N20) );
  GTECH_AOI2N2 U72 ( .A(data_in[12]), .B(n58), .C(n43), .D(n59), .Z(n68) );
  GTECH_OAI21 U73 ( .A(n46), .B(n56), .C(n69), .Z(N19) );
  GTECH_AOI2N2 U74 ( .A(data_in[11]), .B(n58), .C(n44), .D(n59), .Z(n69) );
  GTECH_OAI21 U75 ( .A(n47), .B(n56), .C(n70), .Z(N18) );
  GTECH_AOI2N2 U76 ( .A(data_in[10]), .B(n58), .C(n45), .D(n59), .Z(n70) );
  GTECH_OAI21 U77 ( .A(n48), .B(n56), .C(n71), .Z(N17) );
  GTECH_AOI2N2 U78 ( .A(data_in[9]), .B(n58), .C(n46), .D(n59), .Z(n71) );
  GTECH_OAI21 U79 ( .A(n49), .B(n56), .C(n72), .Z(N16) );
  GTECH_AOI2N2 U80 ( .A(data_in[8]), .B(n58), .C(n47), .D(n59), .Z(n72) );
  GTECH_OAI21 U81 ( .A(n50), .B(n56), .C(n73), .Z(N15) );
  GTECH_AOI2N2 U82 ( .A(data_in[7]), .B(n58), .C(n48), .D(n59), .Z(n73) );
  GTECH_OAI21 U83 ( .A(n51), .B(n56), .C(n74), .Z(N14) );
  GTECH_AOI2N2 U84 ( .A(data_in[6]), .B(n58), .C(n49), .D(n59), .Z(n74) );
  GTECH_OAI21 U85 ( .A(n52), .B(n56), .C(n75), .Z(N13) );
  GTECH_AOI2N2 U86 ( .A(data_in[5]), .B(n58), .C(n50), .D(n59), .Z(n75) );
  GTECH_OAI21 U87 ( .A(n53), .B(n56), .C(n76), .Z(N12) );
  GTECH_AOI2N2 U88 ( .A(data_in[4]), .B(n58), .C(n51), .D(n59), .Z(n76) );
  GTECH_OAI21 U89 ( .A(n54), .B(n56), .C(n77), .Z(N11) );
  GTECH_AOI2N2 U90 ( .A(data_in[3]), .B(n58), .C(n52), .D(n59), .Z(n77) );
  GTECH_OAI21 U91 ( .A(n55), .B(n56), .C(n78), .Z(N10) );
  GTECH_AOI2N2 U92 ( .A(data_in[2]), .B(n58), .C(n53), .D(n59), .Z(n78) );
  GTECH_NAND2 U93 ( .A(shift_direction[1]), .B(n62), .Z(n59) );
  GTECH_NOT U94 ( .A(n60), .Z(n58) );
  GTECH_NAND2 U95 ( .A(shift_direction[0]), .B(shift_direction[1]), .Z(n60) );
  GTECH_NAND2 U96 ( .A(n65), .B(n62), .Z(n56) );
  GTECH_NOT U97 ( .A(shift_direction[0]), .Z(n62) );
  GTECH_NOT U98 ( .A(shift_direction[1]), .Z(n65) );
endmodule

