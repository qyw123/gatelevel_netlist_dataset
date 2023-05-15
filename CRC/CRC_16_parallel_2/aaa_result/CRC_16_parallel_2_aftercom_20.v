
module CRC_16_parallel_2 ( rst_n, clk, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input rst_n, clk, data_valid;
  wire   N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, n2, n3, n5, n6, n7, n9, n10, n11, n13, n14, n16, n17, n38, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88;

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
  GTECH_OAI21 U56 ( .A(n54), .B(n55), .C(n56), .Z(N9) );
  GTECH_NAND3 U57 ( .A(data_valid), .B(n57), .C(n54), .Z(n56) );
  GTECH_OAI21 U58 ( .A(n58), .B(n59), .C(n60), .Z(N8) );
  GTECH_NAND3 U59 ( .A(data_valid), .B(n61), .C(n58), .Z(n60) );
  GTECH_NOT U60 ( .A(n62), .Z(N7) );
  GTECH_NOT U61 ( .A(n63), .Z(N6) );
  GTECH_NOT U62 ( .A(n64), .Z(N5) );
  GTECH_NOT U63 ( .A(n55), .Z(N4) );
  GTECH_NOT U64 ( .A(n59), .Z(N3) );
  GTECH_OAI21 U65 ( .A(n65), .B(n63), .C(n66), .Z(N18) );
  GTECH_NAND3 U66 ( .A(data_valid), .B(n67), .C(n65), .Z(n66) );
  GTECH_NOT U67 ( .A(n14), .Z(n65) );
  GTECH_OAI21 U68 ( .A(n68), .B(n64), .C(n69), .Z(N17) );
  GTECH_NAND3 U69 ( .A(data_valid), .B(n70), .C(n68), .Z(n69) );
  GTECH_NOT U70 ( .A(n13), .Z(n68) );
  GTECH_OAI21 U71 ( .A(n55), .B(n71), .C(n72), .Z(N16) );
  GTECH_NAND3 U72 ( .A(data_valid), .B(n57), .C(n71), .Z(n72) );
  GTECH_NOT U73 ( .A(n9), .Z(n71) );
  GTECH_NAND2 U74 ( .A(data_valid), .B(n73), .Z(n55) );
  GTECH_NOT U75 ( .A(n57), .Z(n73) );
  GTECH_XOR3 U76 ( .A(n6), .B(data[1]), .C(n58), .Z(n57) );
  GTECH_OAI21 U77 ( .A(n74), .B(n59), .C(n75), .Z(N15) );
  GTECH_NAND3 U78 ( .A(data_valid), .B(n61), .C(n74), .Z(n75) );
  GTECH_NAND2 U79 ( .A(data_valid), .B(n76), .Z(n59) );
  GTECH_NOT U80 ( .A(n61), .Z(n76) );
  GTECH_XOR3 U81 ( .A(n3), .B(data[0]), .C(n77), .Z(n61) );
  GTECH_NOT U82 ( .A(n78), .Z(n74) );
  GTECH_XOR2 U83 ( .A(n79), .B(n5), .Z(n78) );
  GTECH_AND2 U84 ( .A(data_valid), .B(n80), .Z(N14) );
  GTECH_XNOR2 U85 ( .A(n16), .B(n54), .Z(n80) );
  GTECH_AND2 U86 ( .A(data_valid), .B(n81), .Z(N13) );
  GTECH_XNOR2 U87 ( .A(n11), .B(n58), .Z(n81) );
  GTECH_XOR2 U88 ( .A(crc[13]), .B(data[5]), .Z(n58) );
  GTECH_OAI2N2 U89 ( .A(n82), .B(n62), .C(n83), .D(data_valid), .Z(N12) );
  GTECH_AND_NOT U90 ( .A(n82), .B(n77), .Z(n83) );
  GTECH_NAND2 U91 ( .A(n77), .B(data_valid), .Z(n62) );
  GTECH_XOR2 U92 ( .A(crc[12]), .B(data[4]), .Z(n77) );
  GTECH_NOT U93 ( .A(n7), .Z(n82) );
  GTECH_OAI21 U94 ( .A(n63), .B(n84), .C(n85), .Z(N11) );
  GTECH_NAND3 U95 ( .A(data_valid), .B(n67), .C(n84), .Z(n85) );
  GTECH_NOT U96 ( .A(n2), .Z(n84) );
  GTECH_NAND2 U97 ( .A(data_valid), .B(n86), .Z(n63) );
  GTECH_NOT U98 ( .A(n67), .Z(n86) );
  GTECH_XOR3 U99 ( .A(n17), .B(data[3]), .C(n79), .Z(n67) );
  GTECH_OAI21 U100 ( .A(n64), .B(n79), .C(n87), .Z(N10) );
  GTECH_NAND3 U101 ( .A(data_valid), .B(n70), .C(n79), .Z(n87) );
  GTECH_XOR2 U102 ( .A(crc[15]), .B(data[7]), .Z(n79) );
  GTECH_NAND2 U103 ( .A(data_valid), .B(n88), .Z(n64) );
  GTECH_NOT U104 ( .A(n70), .Z(n88) );
  GTECH_XOR3 U105 ( .A(n10), .B(data[2]), .C(n54), .Z(n70) );
  GTECH_XOR2 U106 ( .A(crc[14]), .B(data[6]), .Z(n54) );
endmodule

