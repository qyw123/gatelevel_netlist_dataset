
module CRC_16_parallel_2 ( rst_n, clk, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input rst_n, clk, data_valid;
  wire   N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, n2, n3, n5, n6, n7, n9, n10, n11, n13, n14, n16, n17, n38, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82;

  GTECH_FD2S crc_reg_0_ ( .D(N3), .TI(n38), .TE(n38), .CP(clk), .CD(rst_n), 
        .Q(crc[0]), .QN(n2) );
  GTECH_FD2S crc_reg_8_ ( .D(N11), .TI(n38), .TE(n38), .CP(clk), .CD(rst_n), 
        .Q(crc[8]), .QN(n3) );
  GTECH_FD2S crc_reg_12_ ( .D(N15), .TI(n38), .TE(n38), .CP(clk), .CD(rst_n), 
        .Q(crc[12]) );
  GTECH_FD2S crc_reg_4_ ( .D(N7), .TI(n38), .TE(n38), .CP(clk), .CD(rst_n), 
        .Q(crc[4]), .QN(n5) );
  GTECH_FD2S crc_reg_9_ ( .D(N12), .TI(n38), .TE(n38), .CP(clk), .CD(rst_n), 
        .Q(crc[9]), .QN(n6) );
  GTECH_FD2S crc_reg_1_ ( .D(N4), .TI(n38), .TE(n38), .CP(clk), .CD(rst_n), 
        .Q(crc[1]), .QN(n7) );
  GTECH_FD2S crc_reg_13_ ( .D(N16), .TI(n38), .TE(n38), .CP(clk), .CD(rst_n), 
        .Q(crc[13]) );
  GTECH_FD2S crc_reg_5_ ( .D(N8), .TI(n38), .TE(n38), .CP(clk), .CD(rst_n), 
        .Q(crc[5]), .QN(n9) );
  GTECH_FD2S crc_reg_10_ ( .D(N13), .TI(n38), .TE(n38), .CP(clk), .CD(rst_n), 
        .Q(crc[10]), .QN(n10) );
  GTECH_FD2S crc_reg_2_ ( .D(N5), .TI(n38), .TE(n38), .CP(clk), .CD(rst_n), 
        .Q(crc[2]), .QN(n11) );
  GTECH_FD2S crc_reg_14_ ( .D(N17), .TI(n38), .TE(n38), .CP(clk), .CD(rst_n), 
        .Q(crc[14]) );
  GTECH_FD2S crc_reg_6_ ( .D(N9), .TI(n38), .TE(n38), .CP(clk), .CD(rst_n), 
        .Q(crc[6]), .QN(n13) );
  GTECH_FD2S crc_reg_7_ ( .D(N10), .TI(n38), .TE(n38), .CP(clk), .CD(rst_n), 
        .Q(crc[7]), .QN(n14) );
  GTECH_FD2S crc_reg_15_ ( .D(N18), .TI(n38), .TE(n38), .CP(clk), .CD(rst_n), 
        .Q(crc[15]) );
  GTECH_FD2S crc_reg_3_ ( .D(N6), .TI(n38), .TE(n38), .CP(clk), .CD(rst_n), 
        .Q(crc[3]), .QN(n16) );
  GTECH_FD2S crc_reg_11_ ( .D(N14), .TI(n38), .TE(n38), .CP(clk), .CD(rst_n), 
        .Q(crc[11]), .QN(n17) );
  GTECH_ZERO U55 ( .Z(n38) );
  GTECH_MUX2 U56 ( .A(n54), .B(N4), .S(n55), .Z(N9) );
  GTECH_AND2 U57 ( .A(data_valid), .B(n56), .Z(n54) );
  GTECH_MUX2 U58 ( .A(n57), .B(N3), .S(n58), .Z(N8) );
  GTECH_AND2 U59 ( .A(data_valid), .B(n59), .Z(n57) );
  GTECH_MUX2 U60 ( .A(n60), .B(N6), .S(n14), .Z(N18) );
  GTECH_AND2 U61 ( .A(data_valid), .B(n61), .Z(n60) );
  GTECH_MUX2 U62 ( .A(n62), .B(N5), .S(n13), .Z(N17) );
  GTECH_AND2 U63 ( .A(data_valid), .B(n63), .Z(n62) );
  GTECH_MUX2 U64 ( .A(n64), .B(N4), .S(n9), .Z(N16) );
  GTECH_NOT U65 ( .A(n65), .Z(N4) );
  GTECH_OR_NOT U66 ( .A(n56), .B(data_valid), .Z(n65) );
  GTECH_AND2 U67 ( .A(data_valid), .B(n56), .Z(n64) );
  GTECH_XOR3 U68 ( .A(n6), .B(data[1]), .C(n66), .Z(n56) );
  GTECH_MUX2 U69 ( .A(N3), .B(n67), .S(n68), .Z(N15) );
  GTECH_XOR2 U70 ( .A(n5), .B(n69), .Z(n68) );
  GTECH_AND2 U71 ( .A(data_valid), .B(n59), .Z(n67) );
  GTECH_NOT U72 ( .A(n70), .Z(N3) );
  GTECH_OR_NOT U73 ( .A(n59), .B(data_valid), .Z(n70) );
  GTECH_XOR3 U74 ( .A(n3), .B(data[0]), .C(n71), .Z(n59) );
  GTECH_AND2 U75 ( .A(data_valid), .B(n72), .Z(N14) );
  GTECH_XOR2 U76 ( .A(n16), .B(n55), .Z(n72) );
  GTECH_NOT U77 ( .A(n73), .Z(n55) );
  GTECH_AND2 U78 ( .A(data_valid), .B(n74), .Z(N13) );
  GTECH_XOR2 U79 ( .A(n11), .B(n58), .Z(n74) );
  GTECH_NOT U80 ( .A(n66), .Z(n58) );
  GTECH_XOR2 U81 ( .A(crc[13]), .B(data[5]), .Z(n66) );
  GTECH_MUX2 U82 ( .A(n75), .B(N7), .S(n7), .Z(N12) );
  GTECH_NOT U83 ( .A(n76), .Z(N7) );
  GTECH_OR_NOT U84 ( .A(n77), .B(n71), .Z(n76) );
  GTECH_NOT U85 ( .A(data_valid), .Z(n77) );
  GTECH_AND_NOT U86 ( .A(data_valid), .B(n71), .Z(n75) );
  GTECH_XOR2 U87 ( .A(crc[12]), .B(data[4]), .Z(n71) );
  GTECH_MUX2 U88 ( .A(n78), .B(N6), .S(n2), .Z(N11) );
  GTECH_NOT U89 ( .A(n79), .Z(N6) );
  GTECH_OR_NOT U90 ( .A(n61), .B(data_valid), .Z(n79) );
  GTECH_AND2 U91 ( .A(data_valid), .B(n61), .Z(n78) );
  GTECH_XOR3 U92 ( .A(n17), .B(data[3]), .C(n80), .Z(n61) );
  GTECH_MUX2 U93 ( .A(n81), .B(N5), .S(n69), .Z(N10) );
  GTECH_NOT U94 ( .A(n80), .Z(n69) );
  GTECH_XOR2 U95 ( .A(crc[15]), .B(data[7]), .Z(n80) );
  GTECH_NOT U96 ( .A(n82), .Z(N5) );
  GTECH_OR_NOT U97 ( .A(n63), .B(data_valid), .Z(n82) );
  GTECH_AND2 U98 ( .A(data_valid), .B(n63), .Z(n81) );
  GTECH_XOR3 U99 ( .A(n10), .B(data[2]), .C(n73), .Z(n63) );
  GTECH_XOR2 U100 ( .A(crc[14]), .B(data[6]), .Z(n73) );
endmodule

