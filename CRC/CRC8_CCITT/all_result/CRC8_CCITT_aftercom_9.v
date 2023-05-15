
module CRC8_CCITT ( crcIn, data, crc );
  input [7:0] crcIn;
  input [7:0] data;
  output [7:0] crc;
  wire   n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23;

  GTECH_XNOR2 U20 ( .A(n12), .B(n13), .Z(crc[7]) );
  GTECH_ADD_AB U21 ( .A(n13), .B(n14), .S(crc[6]) );
  GTECH_ADD_AB U22 ( .A(n15), .B(n16), .S(n13) );
  GTECH_NOT U23 ( .A(n17), .Z(n15) );
  GTECH_XNOR2 U24 ( .A(n16), .B(n18), .Z(crc[5]) );
  GTECH_XNOR2 U25 ( .A(data[5]), .B(crcIn[5]), .Z(n16) );
  GTECH_ADD_AB U26 ( .A(n18), .B(n19), .S(crc[4]) );
  GTECH_XNOR2 U27 ( .A(n14), .B(n20), .Z(n18) );
  GTECH_XNOR2 U28 ( .A(data[4]), .B(crcIn[4]), .Z(n14) );
  GTECH_XNOR4 U29 ( .A(n12), .B(n20), .C(n21), .D(n19), .Z(crc[3]) );
  GTECH_ADD_AB U30 ( .A(data[3]), .B(crcIn[3]), .S(n20) );
  GTECH_NOT U31 ( .A(n22), .Z(n12) );
  GTECH_ADD_AB U32 ( .A(n19), .B(crc[1]), .S(crc[2]) );
  GTECH_ADD_AB U33 ( .A(data[2]), .B(crcIn[2]), .S(n19) );
  GTECH_ADD_AB U34 ( .A(n21), .B(n23), .S(crc[1]) );
  GTECH_XNOR2 U35 ( .A(data[1]), .B(crcIn[1]), .Z(n21) );
  GTECH_ADD_AB U36 ( .A(n22), .B(n23), .S(crc[0]) );
  GTECH_XOR3 U37 ( .A(data[0]), .B(crcIn[0]), .C(n17), .Z(n23) );
  GTECH_XNOR2 U38 ( .A(data[6]), .B(crcIn[6]), .Z(n17) );
  GTECH_XNOR2 U39 ( .A(data[7]), .B(crcIn[7]), .Z(n22) );
endmodule

