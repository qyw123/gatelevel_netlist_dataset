
module CRC8_CCITT ( crcIn, data, crc );
  input [7:0] crcIn;
  input [7:0] data;
  output [7:0] crc;
  wire   n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22;

  GTECH_ADD_AB U20 ( .A(n12), .B(n13), .S(crc[7]) );
  GTECH_ADD_AB U21 ( .A(n13), .B(n14), .S(crc[6]) );
  GTECH_XNOR2 U22 ( .A(n15), .B(n16), .Z(n13) );
  GTECH_NOT U23 ( .A(n17), .Z(n15) );
  GTECH_XNOR2 U24 ( .A(n16), .B(n18), .Z(crc[5]) );
  GTECH_XNOR2 U25 ( .A(data[5]), .B(crcIn[5]), .Z(n16) );
  GTECH_XNOR2 U26 ( .A(n18), .B(n19), .Z(crc[4]) );
  GTECH_ADD_AB U27 ( .A(n14), .B(n20), .S(n18) );
  GTECH_XNOR2 U28 ( .A(data[4]), .B(crcIn[4]), .Z(n14) );
  GTECH_XOR4 U29 ( .A(n19), .B(n21), .C(n12), .D(n20), .Z(crc[3]) );
  GTECH_XNOR2 U30 ( .A(data[3]), .B(crcIn[3]), .Z(n20) );
  GTECH_XNOR2 U31 ( .A(n19), .B(crc[1]), .Z(crc[2]) );
  GTECH_XNOR2 U32 ( .A(data[2]), .B(crcIn[2]), .Z(n19) );
  GTECH_ADD_AB U33 ( .A(n21), .B(n22), .S(crc[1]) );
  GTECH_XNOR2 U34 ( .A(data[1]), .B(crcIn[1]), .Z(n21) );
  GTECH_ADD_AB U35 ( .A(n12), .B(n22), .S(crc[0]) );
  GTECH_XNOR3 U36 ( .A(data[0]), .B(crcIn[0]), .C(n17), .Z(n22) );
  GTECH_ADD_AB U37 ( .A(data[6]), .B(crcIn[6]), .S(n17) );
  GTECH_XNOR2 U38 ( .A(data[7]), .B(crcIn[7]), .Z(n12) );
endmodule

