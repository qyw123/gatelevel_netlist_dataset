
module CRC8_CCITT ( crcIn, data, crc );
  input [7:0] crcIn;
  input [7:0] data;
  output [7:0] crc;
  wire   n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  GTECH_XNOR2 U20 ( .A(n12), .B(n13), .Z(crc[7]) );
  GTECH_ADD_AB U21 ( .A(n12), .B(n14), .S(crc[6]) );
  GTECH_XNOR2 U22 ( .A(n15), .B(n16), .Z(n12) );
  GTECH_XNOR2 U23 ( .A(n16), .B(n17), .Z(crc[5]) );
  GTECH_XNOR2 U24 ( .A(data[5]), .B(crcIn[5]), .Z(n16) );
  GTECH_ADD_AB U25 ( .A(n17), .B(n18), .S(crc[4]) );
  GTECH_ADD_AB U26 ( .A(n14), .B(n19), .S(n17) );
  GTECH_XNOR2 U27 ( .A(data[4]), .B(crcIn[4]), .Z(n14) );
  GTECH_XOR4 U28 ( .A(n18), .B(n20), .C(n13), .D(n19), .Z(crc[3]) );
  GTECH_XNOR2 U29 ( .A(data[3]), .B(crcIn[3]), .Z(n19) );
  GTECH_ADD_AB U30 ( .A(n18), .B(crc[1]), .S(crc[2]) );
  GTECH_ADD_AB U31 ( .A(data[2]), .B(crcIn[2]), .S(n18) );
  GTECH_ADD_AB U32 ( .A(n20), .B(n21), .S(crc[1]) );
  GTECH_XNOR2 U33 ( .A(data[1]), .B(crcIn[1]), .Z(n20) );
  GTECH_XNOR2 U34 ( .A(n13), .B(n21), .Z(crc[0]) );
  GTECH_XOR3 U35 ( .A(data[0]), .B(crcIn[0]), .C(n15), .Z(n21) );
  GTECH_XNOR2 U36 ( .A(data[6]), .B(crcIn[6]), .Z(n15) );
  GTECH_ADD_AB U37 ( .A(data[7]), .B(crcIn[7]), .S(n13) );
endmodule

