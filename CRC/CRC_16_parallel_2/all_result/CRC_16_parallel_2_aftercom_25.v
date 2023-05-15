
module CRC_16_parallel_2 ( rst_n, clk, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input rst_n, clk, data_valid;
  wire   N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, n2, n3, n5, n6, n7, n9, n10, n11, n13, n14, n16, n17, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69;

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
  GTECH_OAI21 U39 ( .A(n38), .B(n39), .C(n40), .Z(N9) );
  GTECH_NAND3 U40 ( .A(data_valid), .B(n41), .C(n38), .Z(n40) );
  GTECH_OAI21 U41 ( .A(n42), .B(n43), .C(n44), .Z(N8) );
  GTECH_NAND3 U42 ( .A(data_valid), .B(n45), .C(n42), .Z(n44) );
  GTECH_NOT U43 ( .A(n46), .Z(N7) );
  GTECH_NOT U44 ( .A(n47), .Z(N6) );
  GTECH_NOT U45 ( .A(n48), .Z(N5) );
  GTECH_NOT U46 ( .A(n39), .Z(N4) );
  GTECH_NOT U47 ( .A(n43), .Z(N3) );
  GTECH_OAI21 U48 ( .A(n49), .B(n47), .C(n50), .Z(N18) );
  GTECH_NAND3 U49 ( .A(data_valid), .B(n51), .C(n49), .Z(n50) );
  GTECH_NOT U50 ( .A(n14), .Z(n49) );
  GTECH_OAI21 U51 ( .A(n52), .B(n48), .C(n53), .Z(N17) );
  GTECH_NAND3 U52 ( .A(data_valid), .B(n54), .C(n52), .Z(n53) );
  GTECH_NOT U53 ( .A(n13), .Z(n52) );
  GTECH_OAI21 U54 ( .A(n39), .B(n55), .C(n56), .Z(N16) );
  GTECH_NAND3 U55 ( .A(data_valid), .B(n41), .C(n55), .Z(n56) );
  GTECH_NOT U56 ( .A(n9), .Z(n55) );
  GTECH_OR_NOT U57 ( .A(n41), .B(data_valid), .Z(n39) );
  GTECH_XOR3 U58 ( .A(n6), .B(data[1]), .C(n42), .Z(n41) );
  GTECH_OAI21 U59 ( .A(n57), .B(n43), .C(n58), .Z(N15) );
  GTECH_NAND3 U60 ( .A(data_valid), .B(n45), .C(n57), .Z(n58) );
  GTECH_OR_NOT U61 ( .A(n45), .B(data_valid), .Z(n43) );
  GTECH_XOR3 U62 ( .A(n3), .B(data[0]), .C(n59), .Z(n45) );
  GTECH_NOT U63 ( .A(n60), .Z(n57) );
  GTECH_XOR2 U64 ( .A(n61), .B(n5), .Z(n60) );
  GTECH_AND2 U65 ( .A(data_valid), .B(n62), .Z(N14) );
  GTECH_XNOR2 U66 ( .A(n16), .B(n38), .Z(n62) );
  GTECH_AND2 U67 ( .A(data_valid), .B(n63), .Z(N13) );
  GTECH_XNOR2 U68 ( .A(n11), .B(n42), .Z(n63) );
  GTECH_XOR2 U69 ( .A(crc[13]), .B(data[5]), .Z(n42) );
  GTECH_OAI2N2 U70 ( .A(n64), .B(n46), .C(n65), .D(data_valid), .Z(N12) );
  GTECH_AND_NOT U71 ( .A(n64), .B(n59), .Z(n65) );
  GTECH_OR_NOT U72 ( .A(n66), .B(n59), .Z(n46) );
  GTECH_XOR2 U73 ( .A(crc[12]), .B(data[4]), .Z(n59) );
  GTECH_NOT U74 ( .A(data_valid), .Z(n66) );
  GTECH_NOT U75 ( .A(n7), .Z(n64) );
  GTECH_OAI21 U76 ( .A(n47), .B(n67), .C(n68), .Z(N11) );
  GTECH_NAND3 U77 ( .A(data_valid), .B(n51), .C(n67), .Z(n68) );
  GTECH_NOT U78 ( .A(n2), .Z(n67) );
  GTECH_OR_NOT U79 ( .A(n51), .B(data_valid), .Z(n47) );
  GTECH_XOR3 U80 ( .A(n17), .B(data[3]), .C(n61), .Z(n51) );
  GTECH_OAI21 U81 ( .A(n48), .B(n61), .C(n69), .Z(N10) );
  GTECH_NAND3 U82 ( .A(data_valid), .B(n54), .C(n61), .Z(n69) );
  GTECH_XOR2 U83 ( .A(crc[15]), .B(data[7]), .Z(n61) );
  GTECH_OR_NOT U84 ( .A(n54), .B(data_valid), .Z(n48) );
  GTECH_XOR3 U85 ( .A(n10), .B(data[2]), .C(n38), .Z(n54) );
  GTECH_XOR2 U86 ( .A(crc[14]), .B(data[6]), .Z(n38) );
endmodule

