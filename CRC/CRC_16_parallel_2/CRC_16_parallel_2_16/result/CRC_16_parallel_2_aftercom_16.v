
module CRC_16_parallel_2 ( rst_n, clk, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input rst_n, clk, data_valid;
  wire   N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, n2, n3, n5, n6, n7, n9, n10, n11, n13, n14, n16, n17, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78;

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
  GTECH_OAI21 U41 ( .A(n40), .B(n41), .C(n42), .Z(N9) );
  GTECH_NAND3 U42 ( .A(data_valid), .B(n43), .C(n40), .Z(n42) );
  GTECH_OAI21 U43 ( .A(n44), .B(n45), .C(n46), .Z(N8) );
  GTECH_NAND3 U44 ( .A(data_valid), .B(n47), .C(n44), .Z(n46) );
  GTECH_NOT U45 ( .A(n48), .Z(N7) );
  GTECH_NOT U46 ( .A(n49), .Z(N6) );
  GTECH_NOT U47 ( .A(n50), .Z(N5) );
  GTECH_NOT U48 ( .A(n41), .Z(N4) );
  GTECH_NOT U49 ( .A(n45), .Z(N3) );
  GTECH_OAI21 U50 ( .A(n51), .B(n49), .C(n52), .Z(N18) );
  GTECH_NAND3 U51 ( .A(data_valid), .B(n53), .C(n51), .Z(n52) );
  GTECH_NOT U52 ( .A(n14), .Z(n51) );
  GTECH_OAI21 U53 ( .A(n54), .B(n50), .C(n55), .Z(N17) );
  GTECH_NAND3 U54 ( .A(data_valid), .B(n56), .C(n54), .Z(n55) );
  GTECH_NOT U55 ( .A(n13), .Z(n54) );
  GTECH_OAI21 U56 ( .A(n41), .B(n57), .C(n58), .Z(N16) );
  GTECH_NAND3 U57 ( .A(data_valid), .B(n43), .C(n57), .Z(n58) );
  GTECH_NOT U58 ( .A(n9), .Z(n57) );
  GTECH_NAND2 U59 ( .A(data_valid), .B(n59), .Z(n41) );
  GTECH_NOT U60 ( .A(n43), .Z(n59) );
  GTECH_XNOR3 U61 ( .A(n6), .B(data[1]), .C(n60), .Z(n43) );
  GTECH_OAI21 U62 ( .A(n61), .B(n45), .C(n62), .Z(N15) );
  GTECH_NAND3 U63 ( .A(data_valid), .B(n47), .C(n61), .Z(n62) );
  GTECH_NAND2 U64 ( .A(data_valid), .B(n63), .Z(n45) );
  GTECH_NOT U65 ( .A(n47), .Z(n63) );
  GTECH_XNOR3 U66 ( .A(n3), .B(data[0]), .C(n64), .Z(n47) );
  GTECH_NOT U67 ( .A(n65), .Z(n61) );
  GTECH_XOR2 U68 ( .A(n66), .B(n5), .Z(n65) );
  GTECH_AND2 U69 ( .A(data_valid), .B(n67), .Z(N14) );
  GTECH_XOR2 U70 ( .A(n16), .B(n68), .Z(n67) );
  GTECH_AND2 U71 ( .A(data_valid), .B(n69), .Z(N13) );
  GTECH_XOR2 U72 ( .A(n11), .B(n60), .Z(n69) );
  GTECH_NOT U73 ( .A(n44), .Z(n60) );
  GTECH_XOR2 U74 ( .A(crc[13]), .B(data[5]), .Z(n44) );
  GTECH_OAI21 U75 ( .A(n70), .B(n48), .C(n71), .Z(N12) );
  GTECH_NAND3 U76 ( .A(data_valid), .B(n64), .C(n70), .Z(n71) );
  GTECH_NOT U77 ( .A(n72), .Z(n64) );
  GTECH_NAND2 U78 ( .A(n72), .B(data_valid), .Z(n48) );
  GTECH_XOR2 U79 ( .A(crc[12]), .B(data[4]), .Z(n72) );
  GTECH_NOT U80 ( .A(n7), .Z(n70) );
  GTECH_OAI21 U81 ( .A(n49), .B(n73), .C(n74), .Z(N11) );
  GTECH_NAND3 U82 ( .A(data_valid), .B(n53), .C(n73), .Z(n74) );
  GTECH_NOT U83 ( .A(n2), .Z(n73) );
  GTECH_NAND2 U84 ( .A(data_valid), .B(n75), .Z(n49) );
  GTECH_NOT U85 ( .A(n53), .Z(n75) );
  GTECH_XNOR3 U86 ( .A(n17), .B(data[3]), .C(n76), .Z(n53) );
  GTECH_NOT U87 ( .A(n66), .Z(n76) );
  GTECH_OAI21 U88 ( .A(n50), .B(n66), .C(n77), .Z(N10) );
  GTECH_NAND3 U89 ( .A(data_valid), .B(n56), .C(n66), .Z(n77) );
  GTECH_XOR2 U90 ( .A(crc[15]), .B(data[7]), .Z(n66) );
  GTECH_NAND2 U91 ( .A(data_valid), .B(n78), .Z(n50) );
  GTECH_NOT U92 ( .A(n56), .Z(n78) );
  GTECH_XNOR3 U93 ( .A(n10), .B(data[2]), .C(n68), .Z(n56) );
  GTECH_NOT U94 ( .A(n40), .Z(n68) );
  GTECH_XOR2 U95 ( .A(crc[14]), .B(data[6]), .Z(n40) );
endmodule

