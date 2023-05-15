
module shifter16 ( data_in, clk, reset_n, control, data_out );
  input [15:0] data_in;
  input [1:0] control;
  output [15:0] data_out;
  input clk, reset_n;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N24, n19, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76;

  GTECH_FJK2S data_out_reg_15_ ( .J(n19), .K(n19), .TI(N23), .TE(N24), .CP(clk), .CD(reset_n), .Q(data_out[15]) );
  GTECH_FJK2S data_out_reg_14_ ( .J(n19), .K(n19), .TI(N22), .TE(N24), .CP(clk), .CD(reset_n), .Q(data_out[14]) );
  GTECH_FJK2S data_out_reg_13_ ( .J(n19), .K(n19), .TI(N21), .TE(N24), .CP(clk), .CD(reset_n), .Q(data_out[13]) );
  GTECH_FJK2S data_out_reg_12_ ( .J(n19), .K(n19), .TI(N20), .TE(N24), .CP(clk), .CD(reset_n), .Q(data_out[12]) );
  GTECH_FJK2S data_out_reg_11_ ( .J(n19), .K(n19), .TI(N19), .TE(N24), .CP(clk), .CD(reset_n), .Q(data_out[11]) );
  GTECH_FJK2S data_out_reg_10_ ( .J(n19), .K(n19), .TI(N18), .TE(N24), .CP(clk), .CD(reset_n), .Q(data_out[10]) );
  GTECH_FJK2S data_out_reg_9_ ( .J(n19), .K(n19), .TI(N17), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[9]) );
  GTECH_FJK2S data_out_reg_8_ ( .J(n19), .K(n19), .TI(N16), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[8]) );
  GTECH_FJK2S data_out_reg_7_ ( .J(n19), .K(n19), .TI(N15), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[7]) );
  GTECH_FJK2S data_out_reg_6_ ( .J(n19), .K(n19), .TI(N14), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[6]) );
  GTECH_FJK2S data_out_reg_5_ ( .J(n19), .K(n19), .TI(N13), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[5]) );
  GTECH_FJK2S data_out_reg_4_ ( .J(n19), .K(n19), .TI(N12), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[4]) );
  GTECH_FJK2S data_out_reg_3_ ( .J(n19), .K(n19), .TI(N11), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[3]) );
  GTECH_FJK2S data_out_reg_2_ ( .J(n19), .K(n19), .TI(N10), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[2]) );
  GTECH_FJK2S data_out_reg_1_ ( .J(n19), .K(n19), .TI(N9), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[1]) );
  GTECH_FJK2S data_out_reg_0_ ( .J(n19), .K(n19), .TI(N8), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[0]) );
  GTECH_ZERO U52 ( .Z(n19) );
  GTECH_NOT U53 ( .A(n51), .Z(N9) );
  GTECH_AOI222 U54 ( .A(data_in[0]), .B(n52), .C(data_in[1]), .D(n53), .E(
        data_in[2]), .F(n54), .Z(n51) );
  GTECH_OAI22 U55 ( .A(n55), .B(n56), .C(n57), .D(n58), .Z(N8) );
  GTECH_NOT U56 ( .A(data_in[0]), .Z(n58) );
  GTECH_NOT U57 ( .A(data_in[1]), .Z(n55) );
  GTECH_OR3 U58 ( .A(n52), .B(n54), .C(n53), .Z(N24) );
  GTECH_OAI22 U59 ( .A(n59), .B(n60), .C(n57), .D(n61), .Z(N23) );
  GTECH_NOT U60 ( .A(data_in[15]), .Z(n61) );
  GTECH_NOT U61 ( .A(data_in[14]), .Z(n60) );
  GTECH_NOT U62 ( .A(n62), .Z(N22) );
  GTECH_AOI222 U63 ( .A(data_in[13]), .B(n52), .C(data_in[14]), .D(n53), .E(
        data_in[15]), .F(n54), .Z(n62) );
  GTECH_NOT U64 ( .A(n63), .Z(N21) );
  GTECH_AOI222 U65 ( .A(data_in[12]), .B(n52), .C(data_in[13]), .D(n53), .E(
        data_in[14]), .F(n54), .Z(n63) );
  GTECH_NOT U66 ( .A(n64), .Z(N20) );
  GTECH_AOI222 U67 ( .A(data_in[11]), .B(n52), .C(data_in[12]), .D(n53), .E(
        data_in[13]), .F(n54), .Z(n64) );
  GTECH_NOT U68 ( .A(n65), .Z(N19) );
  GTECH_AOI222 U69 ( .A(data_in[10]), .B(n52), .C(data_in[11]), .D(n53), .E(
        data_in[12]), .F(n54), .Z(n65) );
  GTECH_NOT U70 ( .A(n66), .Z(N18) );
  GTECH_AOI222 U71 ( .A(data_in[9]), .B(n52), .C(data_in[10]), .D(n53), .E(
        data_in[11]), .F(n54), .Z(n66) );
  GTECH_NOT U72 ( .A(n67), .Z(N17) );
  GTECH_AOI222 U73 ( .A(data_in[8]), .B(n52), .C(data_in[9]), .D(n53), .E(
        data_in[10]), .F(n54), .Z(n67) );
  GTECH_NOT U74 ( .A(n68), .Z(N16) );
  GTECH_AOI222 U75 ( .A(data_in[7]), .B(n52), .C(data_in[8]), .D(n53), .E(
        data_in[9]), .F(n54), .Z(n68) );
  GTECH_NOT U76 ( .A(n69), .Z(N15) );
  GTECH_AOI222 U77 ( .A(data_in[6]), .B(n52), .C(data_in[7]), .D(n53), .E(
        data_in[8]), .F(n54), .Z(n69) );
  GTECH_NOT U78 ( .A(n70), .Z(N14) );
  GTECH_AOI222 U79 ( .A(data_in[5]), .B(n52), .C(data_in[6]), .D(n53), .E(
        data_in[7]), .F(n54), .Z(n70) );
  GTECH_NOT U80 ( .A(n71), .Z(N13) );
  GTECH_AOI222 U81 ( .A(data_in[4]), .B(n52), .C(data_in[5]), .D(n53), .E(
        data_in[6]), .F(n54), .Z(n71) );
  GTECH_NOT U82 ( .A(n72), .Z(N12) );
  GTECH_AOI222 U83 ( .A(data_in[3]), .B(n52), .C(data_in[4]), .D(n53), .E(
        data_in[5]), .F(n54), .Z(n72) );
  GTECH_NOT U84 ( .A(n73), .Z(N11) );
  GTECH_AOI222 U85 ( .A(n52), .B(data_in[2]), .C(data_in[3]), .D(n53), .E(
        data_in[4]), .F(n54), .Z(n73) );
  GTECH_NOT U86 ( .A(n74), .Z(N10) );
  GTECH_AOI222 U87 ( .A(n52), .B(data_in[1]), .C(data_in[2]), .D(n53), .E(
        data_in[3]), .F(n54), .Z(n74) );
  GTECH_NOT U88 ( .A(n56), .Z(n54) );
  GTECH_NAND2 U89 ( .A(control[1]), .B(n75), .Z(n56) );
  GTECH_NOT U90 ( .A(control[0]), .Z(n75) );
  GTECH_NOT U91 ( .A(n57), .Z(n53) );
  GTECH_NAND2 U92 ( .A(control[1]), .B(control[0]), .Z(n57) );
  GTECH_NOT U93 ( .A(n59), .Z(n52) );
  GTECH_NAND2 U94 ( .A(control[0]), .B(n76), .Z(n59) );
  GTECH_NOT U95 ( .A(control[1]), .Z(n76) );
endmodule

