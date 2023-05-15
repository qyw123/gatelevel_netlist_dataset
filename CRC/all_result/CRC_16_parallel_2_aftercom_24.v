
module CRC_16_parallel_2 ( rst_n, clk, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input rst_n, clk, data_valid;
  wire   N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, n2, n3, n5, n6, n7, n9, n10, n12, n13, n14, n16, n17, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73;

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
  GTECH_FD2 crc_reg_14_ ( .D(N17), .CP(clk), .CD(rst_n), .Q(crc[14]) );
  GTECH_FD2 crc_reg_6_ ( .D(N9), .CP(clk), .CD(rst_n), .Q(crc[6]), .QN(n12) );
  GTECH_FD2 crc_reg_2_ ( .D(N5), .CP(clk), .CD(rst_n), .Q(crc[2]), .QN(n13) );
  GTECH_FD2 crc_reg_7_ ( .D(N10), .CP(clk), .CD(rst_n), .Q(crc[7]), .QN(n14)
         );
  GTECH_FD2 crc_reg_15_ ( .D(N18), .CP(clk), .CD(rst_n), .Q(crc[15]) );
  GTECH_FD2 crc_reg_3_ ( .D(N6), .CP(clk), .CD(rst_n), .Q(crc[3]), .QN(n16) );
  GTECH_FD2 crc_reg_11_ ( .D(N14), .CP(clk), .CD(rst_n), .Q(crc[11]), .QN(n17)
         );
  GTECH_OAI21 U40 ( .A(n39), .B(n40), .C(n41), .Z(N9) );
  GTECH_NAND3 U41 ( .A(data_valid), .B(n42), .C(n39), .Z(n41) );
  GTECH_OAI21 U42 ( .A(n43), .B(n44), .C(n45), .Z(N8) );
  GTECH_NAND3 U43 ( .A(data_valid), .B(n46), .C(n43), .Z(n45) );
  GTECH_NOT U44 ( .A(n47), .Z(N7) );
  GTECH_NOT U45 ( .A(n48), .Z(N6) );
  GTECH_NOT U46 ( .A(n49), .Z(N5) );
  GTECH_NOT U47 ( .A(n40), .Z(N4) );
  GTECH_NOT U48 ( .A(n44), .Z(N3) );
  GTECH_OAI21 U49 ( .A(n50), .B(n48), .C(n51), .Z(N18) );
  GTECH_NAND3 U50 ( .A(data_valid), .B(n52), .C(n50), .Z(n51) );
  GTECH_NOT U51 ( .A(n14), .Z(n50) );
  GTECH_OAI21 U52 ( .A(n53), .B(n49), .C(n54), .Z(N17) );
  GTECH_NAND3 U53 ( .A(data_valid), .B(n55), .C(n53), .Z(n54) );
  GTECH_NOT U54 ( .A(n12), .Z(n53) );
  GTECH_OAI21 U55 ( .A(n40), .B(n56), .C(n57), .Z(N16) );
  GTECH_NAND3 U56 ( .A(data_valid), .B(n42), .C(n56), .Z(n57) );
  GTECH_NOT U57 ( .A(n9), .Z(n56) );
  GTECH_NAND2 U58 ( .A(data_valid), .B(n58), .Z(n40) );
  GTECH_NOT U59 ( .A(n42), .Z(n58) );
  GTECH_XOR3 U60 ( .A(n6), .B(data[1]), .C(n43), .Z(n42) );
  GTECH_OAI21 U61 ( .A(n59), .B(n44), .C(n60), .Z(N15) );
  GTECH_NAND3 U62 ( .A(data_valid), .B(n46), .C(n59), .Z(n60) );
  GTECH_NAND2 U63 ( .A(data_valid), .B(n61), .Z(n44) );
  GTECH_NOT U64 ( .A(n46), .Z(n61) );
  GTECH_XOR3 U65 ( .A(n3), .B(data[0]), .C(n62), .Z(n46) );
  GTECH_NOT U66 ( .A(n63), .Z(n59) );
  GTECH_XOR2 U67 ( .A(n64), .B(n5), .Z(n63) );
  GTECH_AND_NOT U68 ( .A(data_valid), .B(n65), .Z(N14) );
  GTECH_XOR2 U69 ( .A(n39), .B(n16), .Z(n65) );
  GTECH_AND_NOT U70 ( .A(data_valid), .B(n66), .Z(N13) );
  GTECH_XOR2 U71 ( .A(n43), .B(n13), .Z(n66) );
  GTECH_XOR2 U72 ( .A(crc[13]), .B(data[5]), .Z(n43) );
  GTECH_OAI2N2 U73 ( .A(n67), .B(n47), .C(n68), .D(data_valid), .Z(N12) );
  GTECH_AND_NOT U74 ( .A(n67), .B(n62), .Z(n68) );
  GTECH_NAND2 U75 ( .A(n62), .B(data_valid), .Z(n47) );
  GTECH_XOR2 U76 ( .A(crc[12]), .B(data[4]), .Z(n62) );
  GTECH_NOT U77 ( .A(n7), .Z(n67) );
  GTECH_OAI21 U78 ( .A(n48), .B(n69), .C(n70), .Z(N11) );
  GTECH_NAND3 U79 ( .A(data_valid), .B(n52), .C(n69), .Z(n70) );
  GTECH_NOT U80 ( .A(n2), .Z(n69) );
  GTECH_NAND2 U81 ( .A(data_valid), .B(n71), .Z(n48) );
  GTECH_NOT U82 ( .A(n52), .Z(n71) );
  GTECH_XOR3 U83 ( .A(n17), .B(data[3]), .C(n64), .Z(n52) );
  GTECH_OAI21 U84 ( .A(n49), .B(n64), .C(n72), .Z(N10) );
  GTECH_NAND3 U85 ( .A(data_valid), .B(n55), .C(n64), .Z(n72) );
  GTECH_XOR2 U86 ( .A(crc[15]), .B(data[7]), .Z(n64) );
  GTECH_NAND2 U87 ( .A(data_valid), .B(n73), .Z(n49) );
  GTECH_NOT U88 ( .A(n55), .Z(n73) );
  GTECH_XOR3 U89 ( .A(n10), .B(data[2]), .C(n39), .Z(n55) );
  GTECH_XOR2 U90 ( .A(crc[14]), .B(data[6]), .Z(n39) );
endmodule

