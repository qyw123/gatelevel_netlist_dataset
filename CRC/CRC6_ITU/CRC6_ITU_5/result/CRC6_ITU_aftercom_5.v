
module CRC6_ITU ( data, crcIn, crc );
  input [7:0] data;
  input [5:0] crcIn;
  output [5:0] crc;
  wire   n8, n9, n10, n11, n12, n13, n14;

  GTECH_ADD_AB U14 ( .A(n8), .B(n9), .S(crc[5]) );
  GTECH_ADD_AB U15 ( .A(n8), .B(n10), .S(crc[4]) );
  GTECH_XNOR2 U16 ( .A(data[4]), .B(crcIn[2]), .Z(n8) );
  GTECH_XNOR3 U17 ( .A(n10), .B(n11), .C(n12), .Z(crc[3]) );
  GTECH_XNOR2 U18 ( .A(data[3]), .B(crcIn[1]), .Z(n10) );
  GTECH_XOR3 U19 ( .A(data[1]), .B(n11), .C(n13), .Z(crc[2]) );
  GTECH_XNOR2 U20 ( .A(data[2]), .B(crcIn[0]), .Z(n11) );
  GTECH_XNOR3 U21 ( .A(data[1]), .B(n12), .C(n14), .Z(crc[1]) );
  GTECH_XNOR2 U22 ( .A(data[7]), .B(crcIn[5]), .Z(n12) );
  GTECH_XNOR2 U23 ( .A(n13), .B(n14), .Z(crc[0]) );
  GTECH_XNOR2 U24 ( .A(data[0]), .B(n9), .Z(n14) );
  GTECH_XNOR2 U25 ( .A(data[5]), .B(crcIn[3]), .Z(n9) );
  GTECH_XNOR2 U26 ( .A(data[6]), .B(crcIn[4]), .Z(n13) );
endmodule

