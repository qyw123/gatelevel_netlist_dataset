
module CRC6_ITU ( data, crcIn, crc );
  input [7:0] data;
  input [5:0] crcIn;
  output [5:0] crc;
  wire   n8, n9, n10, n11, n12, n13, n14;

  GTECH_XOR2 U14 ( .A(n8), .B(n9), .Z(crc[5]) );
  GTECH_XOR2 U15 ( .A(n8), .B(n10), .Z(crc[4]) );
  GTECH_XOR2 U16 ( .A(crcIn[2]), .B(data[4]), .Z(n8) );
  GTECH_XOR3 U17 ( .A(n10), .B(n11), .C(n12), .Z(crc[3]) );
  GTECH_XOR2 U18 ( .A(crcIn[1]), .B(data[3]), .Z(n10) );
  GTECH_XOR3 U19 ( .A(data[1]), .B(n11), .C(n13), .Z(crc[2]) );
  GTECH_XOR2 U20 ( .A(crcIn[0]), .B(data[2]), .Z(n11) );
  GTECH_XOR3 U21 ( .A(data[1]), .B(n12), .C(n14), .Z(crc[1]) );
  GTECH_XOR2 U22 ( .A(crcIn[5]), .B(data[7]), .Z(n12) );
  GTECH_XOR2 U23 ( .A(n13), .B(n14), .Z(crc[0]) );
  GTECH_XOR2 U24 ( .A(n9), .B(data[0]), .Z(n14) );
  GTECH_XOR2 U25 ( .A(crcIn[3]), .B(data[5]), .Z(n9) );
  GTECH_XOR2 U26 ( .A(crcIn[4]), .B(data[6]), .Z(n13) );
endmodule

