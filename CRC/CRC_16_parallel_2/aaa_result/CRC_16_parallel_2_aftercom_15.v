
module CRC_16_parallel_2 ( rst_n, clk, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input rst_n, clk, data_valid;
  wire   N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, n2, n3, n5, n6, n7, n9, n10, n11, n13, n14, n16, n17, n40, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88;

  GTECH_FD2S crc_reg_0_ ( .D(N3), .TI(n40), .TE(n40), .CP(clk), .CD(rst_n), 
        .Q(crc[0]), .QN(n2) );
  GTECH_FD2S crc_reg_8_ ( .D(N11), .TI(n40), .TE(n40), .CP(clk), .CD(rst_n), 
        .Q(crc[8]), .QN(n3) );
  GTECH_FD2S crc_reg_12_ ( .D(N15), .TI(n40), .TE(n40), .CP(clk), .CD(rst_n), 
        .Q(crc[12]) );
  GTECH_FD2S crc_reg_4_ ( .D(N7), .TI(n40), .TE(n40), .CP(clk), .CD(rst_n), 
        .Q(crc[4]), .QN(n5) );
  GTECH_FD2S crc_reg_9_ ( .D(N12), .TI(n40), .TE(n40), .CP(clk), .CD(rst_n), 
        .Q(crc[9]), .QN(n6) );
  GTECH_FD2S crc_reg_1_ ( .D(N4), .TI(n40), .TE(n40), .CP(clk), .CD(rst_n), 
        .Q(crc[1]), .QN(n7) );
  GTECH_FD2S crc_reg_13_ ( .D(N16), .TI(n40), .TE(n40), .CP(clk), .CD(rst_n), 
        .Q(crc[13]) );
  GTECH_FD2S crc_reg_5_ ( .D(N8), .TI(n40), .TE(n40), .CP(clk), .CD(rst_n), 
        .Q(crc[5]), .QN(n9) );
  GTECH_FD2S crc_reg_10_ ( .D(N13), .TI(n40), .TE(n40), .CP(clk), .CD(rst_n), 
        .Q(crc[10]), .QN(n10) );
  GTECH_FD2S crc_reg_2_ ( .D(N5), .TI(n40), .TE(n40), .CP(clk), .CD(rst_n), 
        .Q(crc[2]), .QN(n11) );
  GTECH_FD2S crc_reg_14_ ( .D(N17), .TI(n40), .TE(n40), .CP(clk), .CD(rst_n), 
        .Q(crc[14]) );
  GTECH_FD2S crc_reg_6_ ( .D(N9), .TI(n40), .TE(n40), .CP(clk), .CD(rst_n), 
        .Q(crc[6]), .QN(n13) );
  GTECH_FD2S crc_reg_7_ ( .D(N10), .TI(n40), .TE(n40), .CP(clk), .CD(rst_n), 
        .Q(crc[7]), .QN(n14) );
  GTECH_FD2S crc_reg_15_ ( .D(N18), .TI(n40), .TE(n40), .CP(clk), .CD(rst_n), 
        .Q(crc[15]) );
  GTECH_FD2S crc_reg_3_ ( .D(N6), .TI(n40), .TE(n40), .CP(clk), .CD(rst_n), 
        .Q(crc[3]), .QN(n16) );
  GTECH_FD2S crc_reg_11_ ( .D(N14), .TI(n40), .TE(n40), .CP(clk), .CD(rst_n), 
        .Q(crc[11]), .QN(n17) );
  GTECH_ZERO U57 ( .Z(n40) );
  GTECH_MUX2 U58 ( .A(n56), .B(N4), .S(n57), .Z(N9) );
  GTECH_AND2 U59 ( .A(data_valid), .B(n58), .Z(n56) );
  GTECH_MUX2 U60 ( .A(n59), .B(N3), .S(n60), .Z(N8) );
  GTECH_AND2 U61 ( .A(data_valid), .B(n61), .Z(n59) );
  GTECH_MUX2 U62 ( .A(n62), .B(N6), .S(n14), .Z(N18) );
  GTECH_AND2 U63 ( .A(data_valid), .B(n63), .Z(n62) );
  GTECH_MUX2 U64 ( .A(n64), .B(N5), .S(n13), .Z(N17) );
  GTECH_AND2 U65 ( .A(data_valid), .B(n65), .Z(n64) );
  GTECH_MUX2 U66 ( .A(n66), .B(N4), .S(n9), .Z(N16) );
  GTECH_NOT U67 ( .A(n67), .Z(N4) );
  GTECH_NAND2 U68 ( .A(data_valid), .B(n68), .Z(n67) );
  GTECH_NOT U69 ( .A(n58), .Z(n68) );
  GTECH_AND2 U70 ( .A(data_valid), .B(n58), .Z(n66) );
  GTECH_XNOR3 U71 ( .A(n6), .B(data[1]), .C(n60), .Z(n58) );
  GTECH_MUX2 U72 ( .A(N3), .B(n69), .S(n70), .Z(N15) );
  GTECH_XOR2 U73 ( .A(n5), .B(n71), .Z(n70) );
  GTECH_AND2 U74 ( .A(data_valid), .B(n61), .Z(n69) );
  GTECH_NOT U75 ( .A(n72), .Z(N3) );
  GTECH_NAND2 U76 ( .A(data_valid), .B(n73), .Z(n72) );
  GTECH_NOT U77 ( .A(n61), .Z(n73) );
  GTECH_XNOR3 U78 ( .A(n3), .B(data[0]), .C(n74), .Z(n61) );
  GTECH_AND2 U79 ( .A(data_valid), .B(n75), .Z(N14) );
  GTECH_XOR2 U80 ( .A(n16), .B(n57), .Z(n75) );
  GTECH_AND2 U81 ( .A(data_valid), .B(n76), .Z(N13) );
  GTECH_XOR2 U82 ( .A(n11), .B(n60), .Z(n76) );
  GTECH_NOT U83 ( .A(n77), .Z(n60) );
  GTECH_XOR2 U84 ( .A(crc[13]), .B(data[5]), .Z(n77) );
  GTECH_MUX2 U85 ( .A(n78), .B(N7), .S(n7), .Z(N12) );
  GTECH_NOT U86 ( .A(n79), .Z(N7) );
  GTECH_NAND2 U87 ( .A(n80), .B(data_valid), .Z(n79) );
  GTECH_AND2 U88 ( .A(data_valid), .B(n74), .Z(n78) );
  GTECH_NOT U89 ( .A(n80), .Z(n74) );
  GTECH_XOR2 U90 ( .A(crc[12]), .B(data[4]), .Z(n80) );
  GTECH_MUX2 U91 ( .A(n81), .B(N6), .S(n2), .Z(N11) );
  GTECH_NOT U92 ( .A(n82), .Z(N6) );
  GTECH_NAND2 U93 ( .A(data_valid), .B(n83), .Z(n82) );
  GTECH_NOT U94 ( .A(n63), .Z(n83) );
  GTECH_AND2 U95 ( .A(data_valid), .B(n63), .Z(n81) );
  GTECH_XNOR3 U96 ( .A(n17), .B(data[3]), .C(n71), .Z(n63) );
  GTECH_MUX2 U97 ( .A(n84), .B(N5), .S(n71), .Z(N10) );
  GTECH_NOT U98 ( .A(n85), .Z(n71) );
  GTECH_XOR2 U99 ( .A(crc[15]), .B(data[7]), .Z(n85) );
  GTECH_NOT U100 ( .A(n86), .Z(N5) );
  GTECH_NAND2 U101 ( .A(data_valid), .B(n87), .Z(n86) );
  GTECH_NOT U102 ( .A(n65), .Z(n87) );
  GTECH_AND2 U103 ( .A(data_valid), .B(n65), .Z(n84) );
  GTECH_XNOR3 U104 ( .A(n10), .B(data[2]), .C(n57), .Z(n65) );
  GTECH_NOT U105 ( .A(n88), .Z(n57) );
  GTECH_XOR2 U106 ( .A(crc[14]), .B(data[6]), .Z(n88) );
endmodule

