
module CRC_16_parallel_2 ( rst_n, clk, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input rst_n, clk, data_valid;
  wire   N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, n2, n3, n5, n6, n7, n9, n10, n11, n13, n14, n16, n17, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69;

  GTECH_FD2 crc_reg_0_ ( .D(N3), .CP(clk), .CD(rst_n), .Q(crc[0]), .QN(n2) );
  GTECH_FD2 crc_reg_8_ ( .D(N11), .CP(clk), .CD(rst_n), .Q(crc[8]), .QN(n3) );
  GTECH_FD2 crc_reg_12_ ( .D(N15), .CP(clk), .CD(rst_n), .Q(crc[12]) );
  GTECH_FD2 crc_reg_4_ ( .D(N7), .CP(clk), .CD(rst_n), .Q(crc[4]), .QN(n5) );
  GTECH_FD2 crc_reg_9_ ( .D(N12), .CP(clk), .CD(rst_n), .Q(crc[9]), .QN(n6) );
  GTECH_FD2 crc_reg_1_ ( .D(N4), .CP(clk), .CD(rst_n), .Q(crc[1]), .QN(n7) );
  GTECH_FD2 crc_reg_13_ ( .D(N16), .CP(clk), .CD(rst_n), .Q(crc[13]) );
  GTECH_FD2 crc_reg_5_ ( .D(N8), .CP(clk), .CD(rst_n), .Q(crc[5]), .QN(n9) );
  GTECH_FD2 crc_reg_10_ ( .D(N13), .CP(clk), .CD(rst_n), .Q(crc[10]), .QN(n10)
         );
  GTECH_FD2 crc_reg_2_ ( .D(N5), .CP(clk), .CD(rst_n), .Q(crc[2]), .QN(n11) );
  GTECH_FD2 crc_reg_14_ ( .D(N17), .CP(clk), .CD(rst_n), .Q(crc[14]) );
  GTECH_FD2 crc_reg_6_ ( .D(N9), .CP(clk), .CD(rst_n), .Q(crc[6]), .QN(n13) );
  GTECH_FD2 crc_reg_7_ ( .D(N10), .CP(clk), .CD(rst_n), .Q(crc[7]), .QN(n14)
         );
  GTECH_FD2 crc_reg_15_ ( .D(N18), .CP(clk), .CD(rst_n), .Q(crc[15]) );
  GTECH_FD2 crc_reg_3_ ( .D(N6), .CP(clk), .CD(rst_n), .Q(crc[3]), .QN(n16) );
  GTECH_FD2 crc_reg_11_ ( .D(N14), .CP(clk), .CD(rst_n), .Q(crc[11]), .QN(n17)
         );
  GTECH_MUX2 U40 ( .A(N4), .B(n39), .S(n40), .Z(N9) );
  GTECH_NOR2 U41 ( .A(n41), .B(n42), .Z(n39) );
  GTECH_MUX2 U42 ( .A(N3), .B(n43), .S(n44), .Z(N8) );
  GTECH_NOR2 U43 ( .A(n45), .B(n42), .Z(n43) );
  GTECH_MUX2 U44 ( .A(n46), .B(N6), .S(n14), .Z(N18) );
  GTECH_NOR2 U45 ( .A(n47), .B(n42), .Z(n46) );
  GTECH_MUX2 U46 ( .A(n48), .B(N5), .S(n13), .Z(N17) );
  GTECH_NOR2 U47 ( .A(n49), .B(n42), .Z(n48) );
  GTECH_MUX2 U48 ( .A(n50), .B(N4), .S(n9), .Z(N16) );
  GTECH_NOT U49 ( .A(n51), .Z(N4) );
  GTECH_NAND2 U50 ( .A(data_valid), .B(n41), .Z(n51) );
  GTECH_NOR2 U51 ( .A(n41), .B(n42), .Z(n50) );
  GTECH_NOT U52 ( .A(n52), .Z(n41) );
  GTECH_XOR3 U53 ( .A(n6), .B(data[1]), .C(n44), .Z(n52) );
  GTECH_MUX2 U54 ( .A(N3), .B(n53), .S(n54), .Z(N15) );
  GTECH_XOR2 U55 ( .A(n5), .B(n55), .Z(n54) );
  GTECH_NOR2 U56 ( .A(n45), .B(n42), .Z(n53) );
  GTECH_NOT U57 ( .A(n56), .Z(N3) );
  GTECH_NAND2 U58 ( .A(data_valid), .B(n45), .Z(n56) );
  GTECH_NOT U59 ( .A(n57), .Z(n45) );
  GTECH_XOR3 U60 ( .A(n3), .B(data[0]), .C(n58), .Z(n57) );
  GTECH_NOR2 U61 ( .A(n59), .B(n42), .Z(N14) );
  GTECH_XOR2 U62 ( .A(n40), .B(n16), .Z(n59) );
  GTECH_NOR2 U63 ( .A(n60), .B(n42), .Z(N13) );
  GTECH_XOR2 U64 ( .A(n44), .B(n11), .Z(n60) );
  GTECH_XOR2 U65 ( .A(crc[13]), .B(data[5]), .Z(n44) );
  GTECH_MUX2 U66 ( .A(n61), .B(N7), .S(n7), .Z(N12) );
  GTECH_NOT U67 ( .A(n62), .Z(N7) );
  GTECH_NAND2 U68 ( .A(n58), .B(data_valid), .Z(n62) );
  GTECH_NOR2 U69 ( .A(n58), .B(n42), .Z(n61) );
  GTECH_XOR2 U70 ( .A(crc[12]), .B(data[4]), .Z(n58) );
  GTECH_MUX2 U71 ( .A(n63), .B(N6), .S(n2), .Z(N11) );
  GTECH_NOT U72 ( .A(n64), .Z(N6) );
  GTECH_NAND2 U73 ( .A(data_valid), .B(n47), .Z(n64) );
  GTECH_NOR2 U74 ( .A(n47), .B(n42), .Z(n63) );
  GTECH_NOT U75 ( .A(n65), .Z(n47) );
  GTECH_XOR3 U76 ( .A(n17), .B(data[3]), .C(n66), .Z(n65) );
  GTECH_MUX2 U77 ( .A(n67), .B(N5), .S(n55), .Z(N10) );
  GTECH_NOT U78 ( .A(n66), .Z(n55) );
  GTECH_XOR2 U79 ( .A(crc[15]), .B(data[7]), .Z(n66) );
  GTECH_NOT U80 ( .A(n68), .Z(N5) );
  GTECH_NAND2 U81 ( .A(data_valid), .B(n49), .Z(n68) );
  GTECH_NOR2 U82 ( .A(n49), .B(n42), .Z(n67) );
  GTECH_NOT U83 ( .A(data_valid), .Z(n42) );
  GTECH_NOT U84 ( .A(n69), .Z(n49) );
  GTECH_XOR3 U85 ( .A(n10), .B(data[2]), .C(n40), .Z(n69) );
  GTECH_XOR2 U86 ( .A(crc[14]), .B(data[6]), .Z(n40) );
endmodule

