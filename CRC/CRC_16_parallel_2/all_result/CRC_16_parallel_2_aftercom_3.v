
module CRC_16_parallel_2 ( rst_n, clk, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input rst_n, clk, data_valid;
  wire   N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, n2, n3, n5, n6, n7, n9, n10, n11, n13, n14, n16, n17, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72;

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
  GTECH_MUX2 U41 ( .A(n40), .B(N4), .S(n41), .Z(N9) );
  GTECH_AND2 U42 ( .A(data_valid), .B(n42), .Z(n40) );
  GTECH_MUX2 U43 ( .A(n43), .B(N3), .S(n44), .Z(N8) );
  GTECH_AND2 U44 ( .A(data_valid), .B(n45), .Z(n43) );
  GTECH_MUX2 U45 ( .A(n46), .B(N6), .S(n14), .Z(N18) );
  GTECH_AND2 U46 ( .A(data_valid), .B(n47), .Z(n46) );
  GTECH_MUX2 U47 ( .A(n48), .B(N5), .S(n13), .Z(N17) );
  GTECH_AND2 U48 ( .A(data_valid), .B(n49), .Z(n48) );
  GTECH_MUX2 U49 ( .A(n50), .B(N4), .S(n9), .Z(N16) );
  GTECH_NOT U50 ( .A(n51), .Z(N4) );
  GTECH_NAND2 U51 ( .A(data_valid), .B(n52), .Z(n51) );
  GTECH_NOT U52 ( .A(n42), .Z(n52) );
  GTECH_AND2 U53 ( .A(data_valid), .B(n42), .Z(n50) );
  GTECH_XNOR3 U54 ( .A(n6), .B(data[1]), .C(n44), .Z(n42) );
  GTECH_MUX2 U55 ( .A(N3), .B(n53), .S(n54), .Z(N15) );
  GTECH_XOR2 U56 ( .A(n5), .B(n55), .Z(n54) );
  GTECH_AND2 U57 ( .A(data_valid), .B(n45), .Z(n53) );
  GTECH_NOT U58 ( .A(n56), .Z(N3) );
  GTECH_NAND2 U59 ( .A(data_valid), .B(n57), .Z(n56) );
  GTECH_NOT U60 ( .A(n45), .Z(n57) );
  GTECH_XNOR3 U61 ( .A(n3), .B(data[0]), .C(n58), .Z(n45) );
  GTECH_AND2 U62 ( .A(data_valid), .B(n59), .Z(N14) );
  GTECH_XOR2 U63 ( .A(n16), .B(n41), .Z(n59) );
  GTECH_AND2 U64 ( .A(data_valid), .B(n60), .Z(N13) );
  GTECH_XOR2 U65 ( .A(n11), .B(n44), .Z(n60) );
  GTECH_NOT U66 ( .A(n61), .Z(n44) );
  GTECH_XOR2 U67 ( .A(crc[13]), .B(data[5]), .Z(n61) );
  GTECH_MUX2 U68 ( .A(n62), .B(N7), .S(n7), .Z(N12) );
  GTECH_NOT U69 ( .A(n63), .Z(N7) );
  GTECH_NAND2 U70 ( .A(n64), .B(data_valid), .Z(n63) );
  GTECH_AND2 U71 ( .A(data_valid), .B(n58), .Z(n62) );
  GTECH_NOT U72 ( .A(n64), .Z(n58) );
  GTECH_XOR2 U73 ( .A(crc[12]), .B(data[4]), .Z(n64) );
  GTECH_MUX2 U74 ( .A(n65), .B(N6), .S(n2), .Z(N11) );
  GTECH_NOT U75 ( .A(n66), .Z(N6) );
  GTECH_NAND2 U76 ( .A(data_valid), .B(n67), .Z(n66) );
  GTECH_NOT U77 ( .A(n47), .Z(n67) );
  GTECH_AND2 U78 ( .A(data_valid), .B(n47), .Z(n65) );
  GTECH_XNOR3 U79 ( .A(n17), .B(data[3]), .C(n55), .Z(n47) );
  GTECH_MUX2 U80 ( .A(n68), .B(N5), .S(n55), .Z(N10) );
  GTECH_NOT U81 ( .A(n69), .Z(n55) );
  GTECH_XOR2 U82 ( .A(crc[15]), .B(data[7]), .Z(n69) );
  GTECH_NOT U83 ( .A(n70), .Z(N5) );
  GTECH_NAND2 U84 ( .A(data_valid), .B(n71), .Z(n70) );
  GTECH_NOT U85 ( .A(n49), .Z(n71) );
  GTECH_AND2 U86 ( .A(data_valid), .B(n49), .Z(n68) );
  GTECH_XNOR3 U87 ( .A(n10), .B(data[2]), .C(n41), .Z(n49) );
  GTECH_NOT U88 ( .A(n72), .Z(n41) );
  GTECH_XOR2 U89 ( .A(crc[14]), .B(data[6]), .Z(n72) );
endmodule

