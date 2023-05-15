
module CRC8_CCITT ( crcIn, data, crc );
  input [7:0] crcIn;
  input [7:0] data;
  output [7:0] crc;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;

  GTECH_XNOR2 U21 ( .A(n13), .B(n14), .Z(crc[7]) );
  GTECH_XOR2 U22 ( .A(n13), .B(n15), .Z(crc[6]) );
  GTECH_XOR2 U23 ( .A(n16), .B(n17), .Z(n13) );
  GTECH_XOR2 U24 ( .A(n17), .B(n18), .Z(crc[5]) );
  GTECH_XNOR2 U25 ( .A(data[5]), .B(crcIn[5]), .Z(n17) );
  GTECH_XNOR2 U26 ( .A(n18), .B(n19), .Z(crc[4]) );
  GTECH_XOR2 U27 ( .A(n20), .B(n15), .Z(n18) );
  GTECH_XNOR2 U28 ( .A(data[4]), .B(crcIn[4]), .Z(n15) );
  GTECH_XNOR4 U29 ( .A(n14), .B(n20), .C(n21), .D(n19), .Z(crc[3]) );
  GTECH_NOT U30 ( .A(n22), .Z(n19) );
  GTECH_XOR2 U31 ( .A(data[3]), .B(crcIn[3]), .Z(n20) );
  GTECH_NOT U32 ( .A(n23), .Z(n14) );
  GTECH_XNOR2 U33 ( .A(n22), .B(crc[1]), .Z(crc[2]) );
  GTECH_XNOR2 U34 ( .A(data[2]), .B(crcIn[2]), .Z(n22) );
  GTECH_XNOR2 U35 ( .A(n24), .B(n21), .Z(crc[1]) );
  GTECH_XNOR2 U36 ( .A(data[1]), .B(crcIn[1]), .Z(n21) );
  GTECH_XNOR2 U37 ( .A(n23), .B(n24), .Z(crc[0]) );
  GTECH_XOR3 U38 ( .A(data[0]), .B(crcIn[0]), .C(n16), .Z(n24) );
  GTECH_XOR2 U39 ( .A(data[6]), .B(crcIn[6]), .Z(n16) );
  GTECH_XNOR2 U40 ( .A(data[7]), .B(crcIn[7]), .Z(n23) );
endmodule

