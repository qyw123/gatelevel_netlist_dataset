
module CRC6_ITU ( data, crcIn, crc );
  input [7:0] data;
  input [5:0] crcIn;
  output [5:0] crc;
  wire   n9, n10, n11, n12, n13, n14, n15, n16;

  GTECH_ADD_AB U15 ( .A(n9), .B(n10), .S(crc[5]) );
  GTECH_XNOR2 U16 ( .A(n9), .B(n11), .Z(crc[4]) );
  GTECH_XNOR2 U17 ( .A(data[4]), .B(crcIn[2]), .Z(n9) );
  GTECH_XOR3 U18 ( .A(n11), .B(n12), .C(n13), .Z(crc[3]) );
  GTECH_ADD_AB U19 ( .A(data[3]), .B(crcIn[1]), .S(n11) );
  GTECH_XOR3 U20 ( .A(data[1]), .B(n12), .C(n14), .Z(crc[2]) );
  GTECH_XNOR2 U21 ( .A(data[2]), .B(crcIn[0]), .Z(n12) );
  GTECH_NOT U22 ( .A(n15), .Z(crc[1]) );
  GTECH_XOR3 U23 ( .A(data[1]), .B(n13), .C(n16), .Z(n15) );
  GTECH_XNOR2 U24 ( .A(data[7]), .B(crcIn[5]), .Z(n13) );
  GTECH_XNOR2 U25 ( .A(n14), .B(n16), .Z(crc[0]) );
  GTECH_XNOR2 U26 ( .A(data[0]), .B(n10), .Z(n16) );
  GTECH_XNOR2 U27 ( .A(data[5]), .B(crcIn[3]), .Z(n10) );
  GTECH_XNOR2 U28 ( .A(data[6]), .B(crcIn[4]), .Z(n14) );
endmodule

