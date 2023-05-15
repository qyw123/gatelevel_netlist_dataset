
module shift_reg3 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [15:0] data_in;
  input [1:0] shift_direction;
  output [15:0] data_out;
  input clk, reset, enable;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N68, n2, n38, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N8), .TE(N68), .CP(
        clk), .CD(n38), .Q(data_out[0]), .QN(n40) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N9), .TE(N68), .CP(
        clk), .CD(n38), .Q(data_out[1]), .QN(n54) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N10), .TE(N68), .CP(
        clk), .CD(n38), .Q(data_out[2]), .QN(n53) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N11), .TE(N68), .CP(
        clk), .CD(n38), .Q(data_out[3]), .QN(n52) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(1'b0), .K(1'b0), .TI(N12), .TE(N68), .CP(
        clk), .CD(n38), .Q(data_out[4]), .QN(n51) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(1'b0), .K(1'b0), .TI(N13), .TE(N68), .CP(
        clk), .CD(n38), .Q(data_out[5]), .QN(n50) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(1'b0), .K(1'b0), .TI(N14), .TE(N68), .CP(
        clk), .CD(n38), .Q(data_out[6]), .QN(n49) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(1'b0), .K(1'b0), .TI(N15), .TE(N68), .CP(
        clk), .CD(n38), .Q(data_out[7]), .QN(n48) );
  GTECH_FJK2S shift_reg_reg_8_ ( .J(1'b0), .K(1'b0), .TI(N16), .TE(N68), .CP(
        clk), .CD(n38), .Q(data_out[8]), .QN(n47) );
  GTECH_FJK2S shift_reg_reg_9_ ( .J(1'b0), .K(1'b0), .TI(N17), .TE(N68), .CP(
        clk), .CD(n38), .Q(data_out[9]), .QN(n46) );
  GTECH_FJK2S shift_reg_reg_10_ ( .J(1'b0), .K(1'b0), .TI(N18), .TE(N68), .CP(
        clk), .CD(n38), .Q(data_out[10]), .QN(n45) );
  GTECH_FJK2S shift_reg_reg_11_ ( .J(1'b0), .K(1'b0), .TI(N19), .TE(N68), .CP(
        clk), .CD(n38), .Q(data_out[11]), .QN(n44) );
  GTECH_FJK2S shift_reg_reg_12_ ( .J(1'b0), .K(1'b0), .TI(N20), .TE(N68), .CP(
        clk), .CD(n38), .Q(data_out[12]), .QN(n43) );
  GTECH_FJK2S shift_reg_reg_13_ ( .J(1'b0), .K(1'b0), .TI(N21), .TE(N68), .CP(
        clk), .CD(n38), .Q(data_out[13]), .QN(n42) );
  GTECH_FJK2S shift_reg_reg_14_ ( .J(1'b0), .K(1'b0), .TI(N22), .TE(N68), .CP(
        clk), .CD(n38), .Q(data_out[14]), .QN(n41) );
  GTECH_FJK2S shift_reg_reg_15_ ( .J(1'b0), .K(1'b0), .TI(N23), .TE(enable), 
        .CP(clk), .CD(n38), .Q(data_out[15]), .QN(n2) );
  GTECH_NOT U56 ( .A(reset), .Z(n38) );
  GTECH_OAI21 U57 ( .A(n40), .B(n55), .C(n56), .Z(N9) );
  GTECH_AOI2N2 U58 ( .A(data_in[1]), .B(n57), .C(n53), .D(n58), .Z(n56) );
  GTECH_OAI2N2 U59 ( .A(n54), .B(n58), .C(data_in[0]), .D(n57), .Z(N8) );
  GTECH_OA21 U60 ( .A(shift_direction[1]), .B(n59), .C(enable), .Z(N68) );
  GTECH_OAI21 U61 ( .A(n41), .B(n55), .C(n60), .Z(N23) );
  GTECH_AOI22 U62 ( .A(data_in[0]), .B(n61), .C(data_in[15]), .D(n57), .Z(n60)
         );
  GTECH_AND2 U63 ( .A(shift_direction[0]), .B(n62), .Z(n61) );
  GTECH_OAI21 U64 ( .A(n42), .B(n55), .C(n63), .Z(N22) );
  GTECH_AOI2N2 U65 ( .A(data_in[14]), .B(n57), .C(n2), .D(n58), .Z(n63) );
  GTECH_OAI21 U66 ( .A(n43), .B(n55), .C(n64), .Z(N21) );
  GTECH_AOI2N2 U67 ( .A(data_in[13]), .B(n57), .C(n41), .D(n58), .Z(n64) );
  GTECH_OAI21 U68 ( .A(n44), .B(n55), .C(n65), .Z(N20) );
  GTECH_AOI2N2 U69 ( .A(data_in[12]), .B(n57), .C(n42), .D(n58), .Z(n65) );
  GTECH_OAI21 U70 ( .A(n45), .B(n55), .C(n66), .Z(N19) );
  GTECH_AOI2N2 U71 ( .A(data_in[11]), .B(n57), .C(n43), .D(n58), .Z(n66) );
  GTECH_OAI21 U72 ( .A(n46), .B(n55), .C(n67), .Z(N18) );
  GTECH_AOI2N2 U73 ( .A(data_in[10]), .B(n57), .C(n44), .D(n58), .Z(n67) );
  GTECH_OAI21 U74 ( .A(n47), .B(n55), .C(n68), .Z(N17) );
  GTECH_AOI2N2 U75 ( .A(data_in[9]), .B(n57), .C(n45), .D(n58), .Z(n68) );
  GTECH_OAI21 U76 ( .A(n48), .B(n55), .C(n69), .Z(N16) );
  GTECH_AOI2N2 U77 ( .A(data_in[8]), .B(n57), .C(n46), .D(n58), .Z(n69) );
  GTECH_OAI21 U78 ( .A(n49), .B(n55), .C(n70), .Z(N15) );
  GTECH_AOI2N2 U79 ( .A(data_in[7]), .B(n57), .C(n47), .D(n58), .Z(n70) );
  GTECH_OAI21 U80 ( .A(n50), .B(n55), .C(n71), .Z(N14) );
  GTECH_AOI2N2 U81 ( .A(data_in[6]), .B(n57), .C(n48), .D(n58), .Z(n71) );
  GTECH_OAI21 U82 ( .A(n51), .B(n55), .C(n72), .Z(N13) );
  GTECH_AOI2N2 U83 ( .A(data_in[5]), .B(n57), .C(n49), .D(n58), .Z(n72) );
  GTECH_OAI21 U84 ( .A(n52), .B(n55), .C(n73), .Z(N12) );
  GTECH_AOI2N2 U85 ( .A(data_in[4]), .B(n57), .C(n50), .D(n58), .Z(n73) );
  GTECH_OAI21 U86 ( .A(n53), .B(n55), .C(n74), .Z(N11) );
  GTECH_AOI2N2 U87 ( .A(data_in[3]), .B(n57), .C(n51), .D(n58), .Z(n74) );
  GTECH_OAI21 U88 ( .A(n54), .B(n55), .C(n75), .Z(N10) );
  GTECH_AOI2N2 U89 ( .A(data_in[2]), .B(n57), .C(n52), .D(n58), .Z(n75) );
  GTECH_NAND2 U90 ( .A(shift_direction[1]), .B(n59), .Z(n58) );
  GTECH_NOT U91 ( .A(n76), .Z(n57) );
  GTECH_NAND2 U92 ( .A(shift_direction[0]), .B(shift_direction[1]), .Z(n76) );
  GTECH_NAND2 U93 ( .A(n62), .B(n59), .Z(n55) );
  GTECH_NOT U94 ( .A(shift_direction[0]), .Z(n59) );
  GTECH_NOT U95 ( .A(shift_direction[1]), .Z(n62) );
endmodule

