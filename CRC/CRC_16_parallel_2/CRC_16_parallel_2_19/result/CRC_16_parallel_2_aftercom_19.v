
module CRC_16_parallel_2 ( rst_n, clk, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input rst_n, clk, data_valid;
  wire   N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71;

  GTECH_FD2 crc_reg_0_ ( .D(N3), .CP(clk), .CD(rst_n), .Q(crc[0]), .QN(n2) );
  GTECH_FD2 crc_reg_8_ ( .D(N11), .CP(clk), .CD(rst_n), .Q(crc[8]), .QN(n3) );
  GTECH_FD2 crc_reg_12_ ( .D(N15), .CP(clk), .CD(rst_n), .Q(crc[12]), .QN(n4)
         );
  GTECH_FD2 crc_reg_4_ ( .D(N7), .CP(clk), .CD(rst_n), .Q(crc[4]), .QN(n5) );
  GTECH_FD2 crc_reg_9_ ( .D(N12), .CP(clk), .CD(rst_n), .Q(crc[9]), .QN(n6) );
  GTECH_FD2 crc_reg_1_ ( .D(N4), .CP(clk), .CD(rst_n), .Q(crc[1]), .QN(n7) );
  GTECH_FD2 crc_reg_13_ ( .D(N16), .CP(clk), .CD(rst_n), .Q(crc[13]), .QN(n8)
         );
  GTECH_FD2 crc_reg_5_ ( .D(N8), .CP(clk), .CD(rst_n), .Q(crc[5]), .QN(n9) );
  GTECH_FD2 crc_reg_10_ ( .D(N13), .CP(clk), .CD(rst_n), .Q(crc[10]), .QN(n10)
         );
  GTECH_FD2 crc_reg_2_ ( .D(N5), .CP(clk), .CD(rst_n), .Q(crc[2]), .QN(n11) );
  GTECH_FD2 crc_reg_14_ ( .D(N17), .CP(clk), .CD(rst_n), .Q(crc[14]), .QN(n12)
         );
  GTECH_FD2 crc_reg_6_ ( .D(N9), .CP(clk), .CD(rst_n), .Q(crc[6]), .QN(n13) );
  GTECH_FD2 crc_reg_7_ ( .D(N10), .CP(clk), .CD(rst_n), .Q(crc[7]), .QN(n14)
         );
  GTECH_FD2 crc_reg_15_ ( .D(N18), .CP(clk), .CD(rst_n), .Q(crc[15]), .QN(n15)
         );
  GTECH_FD2 crc_reg_3_ ( .D(N6), .CP(clk), .CD(rst_n), .Q(crc[3]), .QN(n16) );
  GTECH_FD2 crc_reg_11_ ( .D(N14), .CP(clk), .CD(rst_n), .Q(crc[11]), .QN(n17)
         );
  GTECH_MUX2 U40 ( .A(n39), .B(N4), .S(n40), .Z(N9) );
  GTECH_AND2 U41 ( .A(data_valid), .B(n41), .Z(n39) );
  GTECH_MUX2 U42 ( .A(n42), .B(N3), .S(n43), .Z(N8) );
  GTECH_AND2 U43 ( .A(data_valid), .B(n44), .Z(n42) );
  GTECH_MUX2 U44 ( .A(n45), .B(N6), .S(n14), .Z(N18) );
  GTECH_AND2 U45 ( .A(data_valid), .B(n46), .Z(n45) );
  GTECH_MUX2 U46 ( .A(n47), .B(N5), .S(n13), .Z(N17) );
  GTECH_AND2 U47 ( .A(data_valid), .B(n48), .Z(n47) );
  GTECH_MUX2 U48 ( .A(n49), .B(N4), .S(n9), .Z(N16) );
  GTECH_NOT U49 ( .A(n50), .Z(N4) );
  GTECH_NAND2 U50 ( .A(data_valid), .B(n51), .Z(n50) );
  GTECH_NOT U51 ( .A(n41), .Z(n51) );
  GTECH_AND2 U52 ( .A(data_valid), .B(n41), .Z(n49) );
  GTECH_XNOR3 U53 ( .A(n6), .B(data[1]), .C(n43), .Z(n41) );
  GTECH_NOT U54 ( .A(n52), .Z(n43) );
  GTECH_MUX2 U55 ( .A(N3), .B(n53), .S(n54), .Z(N15) );
  GTECH_XNOR2 U56 ( .A(n5), .B(n55), .Z(n54) );
  GTECH_AND2 U57 ( .A(data_valid), .B(n44), .Z(n53) );
  GTECH_NOT U58 ( .A(n56), .Z(N3) );
  GTECH_NAND2 U59 ( .A(data_valid), .B(n57), .Z(n56) );
  GTECH_NOT U60 ( .A(n44), .Z(n57) );
  GTECH_XNOR3 U61 ( .A(n3), .B(data[0]), .C(n58), .Z(n44) );
  GTECH_AND2 U62 ( .A(data_valid), .B(n59), .Z(N14) );
  GTECH_XNOR2 U63 ( .A(n16), .B(n60), .Z(n59) );
  GTECH_AND2 U64 ( .A(data_valid), .B(n61), .Z(N13) );
  GTECH_XNOR2 U65 ( .A(n11), .B(n52), .Z(n61) );
  GTECH_XNOR2 U66 ( .A(n8), .B(data[5]), .Z(n52) );
  GTECH_MUX2 U67 ( .A(n62), .B(N7), .S(n7), .Z(N12) );
  GTECH_NOT U68 ( .A(n63), .Z(N7) );
  GTECH_NAND2 U69 ( .A(n64), .B(data_valid), .Z(n63) );
  GTECH_AND2 U70 ( .A(data_valid), .B(n58), .Z(n62) );
  GTECH_NOT U71 ( .A(n64), .Z(n58) );
  GTECH_XNOR2 U72 ( .A(n4), .B(data[4]), .Z(n64) );
  GTECH_MUX2 U73 ( .A(n65), .B(N6), .S(n2), .Z(N11) );
  GTECH_NOT U74 ( .A(n66), .Z(N6) );
  GTECH_NAND2 U75 ( .A(data_valid), .B(n67), .Z(n66) );
  GTECH_NOT U76 ( .A(n46), .Z(n67) );
  GTECH_AND2 U77 ( .A(data_valid), .B(n46), .Z(n65) );
  GTECH_XNOR3 U78 ( .A(n17), .B(data[3]), .C(n68), .Z(n46) );
  GTECH_MUX2 U79 ( .A(n69), .B(N5), .S(n68), .Z(N10) );
  GTECH_NOT U80 ( .A(n55), .Z(n68) );
  GTECH_XNOR2 U81 ( .A(n15), .B(data[7]), .Z(n55) );
  GTECH_NOT U82 ( .A(n70), .Z(N5) );
  GTECH_NAND2 U83 ( .A(data_valid), .B(n71), .Z(n70) );
  GTECH_NOT U84 ( .A(n48), .Z(n71) );
  GTECH_AND2 U85 ( .A(data_valid), .B(n48), .Z(n69) );
  GTECH_XNOR3 U86 ( .A(n10), .B(data[2]), .C(n40), .Z(n48) );
  GTECH_NOT U87 ( .A(n60), .Z(n40) );
  GTECH_XNOR2 U88 ( .A(n12), .B(data[6]), .Z(n60) );
endmodule

