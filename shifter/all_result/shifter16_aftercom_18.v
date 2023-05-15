
module shifter16 ( data_in, clk, reset_n, control, data_out );
  input [15:0] data_in;
  input [1:0] control;
  output [15:0] data_out;
  input clk, reset_n;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N24, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77;

  GTECH_FJK2S data_out_reg_15_ ( .J(1'b0), .K(1'b0), .TI(N23), .TE(N24), .CP(
        clk), .CD(reset_n), .Q(data_out[15]) );
  GTECH_FJK2S data_out_reg_14_ ( .J(1'b0), .K(1'b0), .TI(N22), .TE(N24), .CP(
        clk), .CD(reset_n), .Q(data_out[14]) );
  GTECH_FJK2S data_out_reg_13_ ( .J(1'b0), .K(1'b0), .TI(N21), .TE(N24), .CP(
        clk), .CD(reset_n), .Q(data_out[13]) );
  GTECH_FJK2S data_out_reg_12_ ( .J(1'b0), .K(1'b0), .TI(N20), .TE(N24), .CP(
        clk), .CD(reset_n), .Q(data_out[12]) );
  GTECH_FJK2S data_out_reg_11_ ( .J(1'b0), .K(1'b0), .TI(N19), .TE(N24), .CP(
        clk), .CD(reset_n), .Q(data_out[11]) );
  GTECH_FJK2S data_out_reg_10_ ( .J(1'b0), .K(1'b0), .TI(N18), .TE(N24), .CP(
        clk), .CD(reset_n), .Q(data_out[10]) );
  GTECH_FJK2S data_out_reg_9_ ( .J(1'b0), .K(1'b0), .TI(N17), .TE(N24), .CP(
        clk), .CD(reset_n), .Q(data_out[9]) );
  GTECH_FJK2S data_out_reg_8_ ( .J(1'b0), .K(1'b0), .TI(N16), .TE(N24), .CP(
        clk), .CD(reset_n), .Q(data_out[8]) );
  GTECH_FJK2S data_out_reg_7_ ( .J(1'b0), .K(1'b0), .TI(N15), .TE(N24), .CP(
        clk), .CD(reset_n), .Q(data_out[7]) );
  GTECH_FJK2S data_out_reg_6_ ( .J(1'b0), .K(1'b0), .TI(N14), .TE(N24), .CP(
        clk), .CD(reset_n), .Q(data_out[6]) );
  GTECH_FJK2S data_out_reg_5_ ( .J(1'b0), .K(1'b0), .TI(N13), .TE(N24), .CP(
        clk), .CD(reset_n), .Q(data_out[5]) );
  GTECH_FJK2S data_out_reg_4_ ( .J(1'b0), .K(1'b0), .TI(N12), .TE(N24), .CP(
        clk), .CD(reset_n), .Q(data_out[4]) );
  GTECH_FJK2S data_out_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N11), .TE(N24), .CP(
        clk), .CD(reset_n), .Q(data_out[3]) );
  GTECH_FJK2S data_out_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N10), .TE(N24), .CP(
        clk), .CD(reset_n), .Q(data_out[2]) );
  GTECH_FJK2S data_out_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N9), .TE(N24), .CP(clk), .CD(reset_n), .Q(data_out[1]) );
  GTECH_FJK2S data_out_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N8), .TE(N24), .CP(clk), .CD(reset_n), .Q(data_out[0]) );
  GTECH_NOT U54 ( .A(n53), .Z(N9) );
  GTECH_AOI222 U55 ( .A(data_in[0]), .B(n54), .C(data_in[1]), .D(n55), .E(
        data_in[2]), .F(n56), .Z(n53) );
  GTECH_OAI22 U56 ( .A(n57), .B(n58), .C(n59), .D(n60), .Z(N8) );
  GTECH_NOT U57 ( .A(data_in[0]), .Z(n60) );
  GTECH_NOT U58 ( .A(data_in[1]), .Z(n57) );
  GTECH_NAND3 U59 ( .A(n58), .B(n61), .C(n59), .Z(N24) );
  GTECH_OAI22 U60 ( .A(n61), .B(n62), .C(n59), .D(n63), .Z(N23) );
  GTECH_NOT U61 ( .A(data_in[15]), .Z(n63) );
  GTECH_NOT U62 ( .A(data_in[14]), .Z(n62) );
  GTECH_NOT U63 ( .A(n64), .Z(N22) );
  GTECH_AOI222 U64 ( .A(data_in[13]), .B(n54), .C(data_in[14]), .D(n55), .E(
        data_in[15]), .F(n56), .Z(n64) );
  GTECH_NOT U65 ( .A(n65), .Z(N21) );
  GTECH_AOI222 U66 ( .A(data_in[12]), .B(n54), .C(data_in[13]), .D(n55), .E(
        data_in[14]), .F(n56), .Z(n65) );
  GTECH_NOT U67 ( .A(n66), .Z(N20) );
  GTECH_AOI222 U68 ( .A(data_in[11]), .B(n54), .C(data_in[12]), .D(n55), .E(
        data_in[13]), .F(n56), .Z(n66) );
  GTECH_NOT U69 ( .A(n67), .Z(N19) );
  GTECH_AOI222 U70 ( .A(data_in[10]), .B(n54), .C(data_in[11]), .D(n55), .E(
        data_in[12]), .F(n56), .Z(n67) );
  GTECH_NOT U71 ( .A(n68), .Z(N18) );
  GTECH_AOI222 U72 ( .A(data_in[9]), .B(n54), .C(data_in[10]), .D(n55), .E(
        data_in[11]), .F(n56), .Z(n68) );
  GTECH_NOT U73 ( .A(n69), .Z(N17) );
  GTECH_AOI222 U74 ( .A(data_in[8]), .B(n54), .C(data_in[9]), .D(n55), .E(
        data_in[10]), .F(n56), .Z(n69) );
  GTECH_NOT U75 ( .A(n70), .Z(N16) );
  GTECH_AOI222 U76 ( .A(data_in[7]), .B(n54), .C(data_in[8]), .D(n55), .E(
        data_in[9]), .F(n56), .Z(n70) );
  GTECH_NOT U77 ( .A(n71), .Z(N15) );
  GTECH_AOI222 U78 ( .A(data_in[6]), .B(n54), .C(data_in[7]), .D(n55), .E(
        data_in[8]), .F(n56), .Z(n71) );
  GTECH_NOT U79 ( .A(n72), .Z(N14) );
  GTECH_AOI222 U80 ( .A(data_in[5]), .B(n54), .C(data_in[6]), .D(n55), .E(
        data_in[7]), .F(n56), .Z(n72) );
  GTECH_NOT U81 ( .A(n73), .Z(N13) );
  GTECH_AOI222 U82 ( .A(data_in[4]), .B(n54), .C(data_in[5]), .D(n55), .E(
        data_in[6]), .F(n56), .Z(n73) );
  GTECH_NOT U83 ( .A(n74), .Z(N12) );
  GTECH_AOI222 U84 ( .A(data_in[3]), .B(n54), .C(data_in[4]), .D(n55), .E(
        data_in[5]), .F(n56), .Z(n74) );
  GTECH_NOT U85 ( .A(n75), .Z(N11) );
  GTECH_AOI222 U86 ( .A(n54), .B(data_in[2]), .C(data_in[3]), .D(n55), .E(
        data_in[4]), .F(n56), .Z(n75) );
  GTECH_NOT U87 ( .A(n76), .Z(N10) );
  GTECH_AOI222 U88 ( .A(n54), .B(data_in[1]), .C(data_in[2]), .D(n55), .E(
        data_in[3]), .F(n56), .Z(n76) );
  GTECH_NOT U89 ( .A(n58), .Z(n56) );
  GTECH_OR_NOT U90 ( .A(control[0]), .B(control[1]), .Z(n58) );
  GTECH_NOT U91 ( .A(n59), .Z(n55) );
  GTECH_OR_NOT U92 ( .A(n77), .B(control[1]), .Z(n59) );
  GTECH_NOT U93 ( .A(control[0]), .Z(n77) );
  GTECH_NOT U94 ( .A(n61), .Z(n54) );
  GTECH_OR_NOT U95 ( .A(control[1]), .B(control[0]), .Z(n61) );
endmodule

