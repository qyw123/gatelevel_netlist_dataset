
module CRC6_ITU ( data, crcIn, crc );
  input [7:0] data;
  input [5:0] crcIn;
  output [5:0] crc;
  wire   n8, n9, n10, n11, n12, n13, n14;

  GTECH_ADD_AB U14 ( .A(n8), .B(n9), .S(crc[5]) );
  GTECH_ADD_AB U15 ( .A(n8), .B(n10), .S(crc[4]) );
  GTECH_ADD_AB U16 ( .A(crcIn[2]), .B(data[4]), .S(n8) );
  GTECH_XOR3 U17 ( .A(n10), .B(n11), .C(n12), .Z(crc[3]) );
  GTECH_ADD_AB U18 ( .A(crcIn[1]), .B(data[3]), .S(n10) );
  GTECH_XOR3 U19 ( .A(data[1]), .B(n11), .C(n13), .Z(crc[2]) );
  GTECH_ADD_AB U20 ( .A(crcIn[0]), .B(data[2]), .S(n11) );
  GTECH_XOR3 U21 ( .A(data[1]), .B(n12), .C(n14), .Z(crc[1]) );
  GTECH_ADD_AB U22 ( .A(crcIn[5]), .B(data[7]), .S(n12) );
  GTECH_ADD_AB U23 ( .A(n13), .B(n14), .S(crc[0]) );
  GTECH_ADD_AB U24 ( .A(n9), .B(data[0]), .S(n14) );
  GTECH_ADD_AB U25 ( .A(crcIn[3]), .B(data[5]), .S(n9) );
  GTECH_ADD_AB U26 ( .A(crcIn[4]), .B(data[6]), .S(n13) );
endmodule

