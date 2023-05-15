
module CRC_16_parallel_2 ( rst_n, clk, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input rst_n, clk, data_valid;
  wire   N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, n2, n3, n5, n6, n7, n9, n10, n12, n13, n14, n16, n17, n39, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84;

  GTECH_FD2S crc_reg_0_ ( .D(N3), .TI(n39), .TE(n39), .CP(clk), .CD(rst_n), 
        .Q(crc[0]), .QN(n2) );
  GTECH_FD2S crc_reg_8_ ( .D(N11), .TI(n39), .TE(n39), .CP(clk), .CD(rst_n), 
        .Q(crc[8]), .QN(n3) );
  GTECH_FD2S crc_reg_12_ ( .D(N15), .TI(n39), .TE(n39), .CP(clk), .CD(rst_n), 
        .Q(crc[12]) );
  GTECH_FD2S crc_reg_4_ ( .D(N7), .TI(n39), .TE(n39), .CP(clk), .CD(rst_n), 
        .Q(crc[4]), .QN(n5) );
  GTECH_FD2S crc_reg_9_ ( .D(N12), .TI(n39), .TE(n39), .CP(clk), .CD(rst_n), 
        .Q(crc[9]), .QN(n6) );
  GTECH_FD2S crc_reg_1_ ( .D(N4), .TI(n39), .TE(n39), .CP(clk), .CD(rst_n), 
        .Q(crc[1]), .QN(n7) );
  GTECH_FD2S crc_reg_13_ ( .D(N16), .TI(n39), .TE(n39), .CP(clk), .CD(rst_n), 
        .Q(crc[13]) );
  GTECH_FD2S crc_reg_5_ ( .D(N8), .TI(n39), .TE(n39), .CP(clk), .CD(rst_n), 
        .Q(crc[5]), .QN(n9) );
  GTECH_FD2S crc_reg_10_ ( .D(N13), .TI(n39), .TE(n39), .CP(clk), .CD(rst_n), 
        .Q(crc[10]), .QN(n10) );
  GTECH_FD2S crc_reg_14_ ( .D(N17), .TI(n39), .TE(n39), .CP(clk), .CD(rst_n), 
        .Q(crc[14]) );
  GTECH_FD2S crc_reg_6_ ( .D(N9), .TI(n39), .TE(n39), .CP(clk), .CD(rst_n), 
        .Q(crc[6]), .QN(n12) );
  GTECH_FD2S crc_reg_2_ ( .D(N5), .TI(n39), .TE(n39), .CP(clk), .CD(rst_n), 
        .Q(crc[2]), .QN(n13) );
  GTECH_FD2S crc_reg_7_ ( .D(N10), .TI(n39), .TE(n39), .CP(clk), .CD(rst_n), 
        .Q(crc[7]), .QN(n14) );
  GTECH_FD2S crc_reg_15_ ( .D(N18), .TI(n39), .TE(n39), .CP(clk), .CD(rst_n), 
        .Q(crc[15]) );
  GTECH_FD2S crc_reg_3_ ( .D(N6), .TI(n39), .TE(n39), .CP(clk), .CD(rst_n), 
        .Q(crc[3]), .QN(n16) );
  GTECH_FD2S crc_reg_11_ ( .D(N14), .TI(n39), .TE(n39), .CP(clk), .CD(rst_n), 
        .Q(crc[11]), .QN(n17) );
  GTECH_ZERO U56 ( .Z(n39) );
  GTECH_MUX2 U57 ( .A(N4), .B(n55), .S(n56), .Z(N9) );
  GTECH_AND_NOT U58 ( .A(data_valid), .B(n57), .Z(n55) );
  GTECH_MUX2 U59 ( .A(N3), .B(n58), .S(n59), .Z(N8) );
  GTECH_AND_NOT U60 ( .A(data_valid), .B(n60), .Z(n58) );
  GTECH_MUX2 U61 ( .A(n61), .B(N6), .S(n14), .Z(N18) );
  GTECH_AND_NOT U62 ( .A(data_valid), .B(n62), .Z(n61) );
  GTECH_MUX2 U63 ( .A(n63), .B(N5), .S(n12), .Z(N17) );
  GTECH_AND_NOT U64 ( .A(data_valid), .B(n64), .Z(n63) );
  GTECH_MUX2 U65 ( .A(n65), .B(N4), .S(n9), .Z(N16) );
  GTECH_NOT U66 ( .A(n66), .Z(N4) );
  GTECH_NAND2 U67 ( .A(data_valid), .B(n57), .Z(n66) );
  GTECH_AND_NOT U68 ( .A(data_valid), .B(n57), .Z(n65) );
  GTECH_NOT U69 ( .A(n67), .Z(n57) );
  GTECH_XOR3 U70 ( .A(n6), .B(data[1]), .C(n59), .Z(n67) );
  GTECH_MUX2 U71 ( .A(N3), .B(n68), .S(n69), .Z(N15) );
  GTECH_XOR2 U72 ( .A(n5), .B(n70), .Z(n69) );
  GTECH_AND_NOT U73 ( .A(data_valid), .B(n60), .Z(n68) );
  GTECH_NOT U74 ( .A(n71), .Z(N3) );
  GTECH_NAND2 U75 ( .A(data_valid), .B(n60), .Z(n71) );
  GTECH_NOT U76 ( .A(n72), .Z(n60) );
  GTECH_XOR3 U77 ( .A(n3), .B(data[0]), .C(n73), .Z(n72) );
  GTECH_AND_NOT U78 ( .A(data_valid), .B(n74), .Z(N14) );
  GTECH_XOR2 U79 ( .A(n56), .B(n16), .Z(n74) );
  GTECH_AND_NOT U80 ( .A(data_valid), .B(n75), .Z(N13) );
  GTECH_XOR2 U81 ( .A(n59), .B(n13), .Z(n75) );
  GTECH_XOR2 U82 ( .A(crc[13]), .B(data[5]), .Z(n59) );
  GTECH_MUX2 U83 ( .A(n76), .B(N7), .S(n7), .Z(N12) );
  GTECH_NOT U84 ( .A(n77), .Z(N7) );
  GTECH_NAND2 U85 ( .A(n73), .B(data_valid), .Z(n77) );
  GTECH_AND_NOT U86 ( .A(data_valid), .B(n73), .Z(n76) );
  GTECH_XOR2 U87 ( .A(crc[12]), .B(data[4]), .Z(n73) );
  GTECH_MUX2 U88 ( .A(n78), .B(N6), .S(n2), .Z(N11) );
  GTECH_NOT U89 ( .A(n79), .Z(N6) );
  GTECH_NAND2 U90 ( .A(data_valid), .B(n62), .Z(n79) );
  GTECH_AND_NOT U91 ( .A(data_valid), .B(n62), .Z(n78) );
  GTECH_NOT U92 ( .A(n80), .Z(n62) );
  GTECH_XOR3 U93 ( .A(n17), .B(data[3]), .C(n81), .Z(n80) );
  GTECH_MUX2 U94 ( .A(n82), .B(N5), .S(n70), .Z(N10) );
  GTECH_NOT U95 ( .A(n81), .Z(n70) );
  GTECH_XOR2 U96 ( .A(crc[15]), .B(data[7]), .Z(n81) );
  GTECH_NOT U97 ( .A(n83), .Z(N5) );
  GTECH_NAND2 U98 ( .A(data_valid), .B(n64), .Z(n83) );
  GTECH_AND_NOT U99 ( .A(data_valid), .B(n64), .Z(n82) );
  GTECH_NOT U100 ( .A(n84), .Z(n64) );
  GTECH_XOR3 U101 ( .A(n10), .B(data[2]), .C(n56), .Z(n84) );
  GTECH_XOR2 U102 ( .A(crc[14]), .B(data[6]), .Z(n56) );
endmodule

