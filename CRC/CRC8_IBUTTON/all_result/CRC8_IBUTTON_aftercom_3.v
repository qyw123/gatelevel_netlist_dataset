
module CRC8_IBUTTON ( data, crcIn, crc );
  input [7:0] data;
  input [7:0] crcIn;
  output [7:0] crc;
  wire   n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25;

  GTECH_XOR3 U22 ( .A(n14), .B(n15), .C(n16), .Z(crc[7]) );
  GTECH_XOR2 U23 ( .A(n17), .B(n18), .Z(crc[6]) );
  GTECH_XNOR3 U24 ( .A(data[1]), .B(crcIn[1]), .C(n19), .Z(crc[5]) );
  GTECH_XOR2 U25 ( .A(n20), .B(n21), .Z(crc[4]) );
  GTECH_XOR2 U26 ( .A(n16), .B(n21), .Z(crc[3]) );
  GTECH_XOR2 U27 ( .A(n22), .B(data[0]), .Z(n21) );
  GTECH_XOR3 U28 ( .A(n16), .B(n23), .C(n22), .Z(crc[2]) );
  GTECH_XOR2 U29 ( .A(n14), .B(crcIn[0]), .Z(n22) );
  GTECH_XOR2 U30 ( .A(crcIn[1]), .B(crcIn[4]), .Z(n14) );
  GTECH_XOR3 U31 ( .A(data[7]), .B(crcIn[7]), .C(n20), .Z(n16) );
  GTECH_XOR2 U32 ( .A(data[1]), .B(data[4]), .Z(n20) );
  GTECH_XOR2 U33 ( .A(n17), .B(n24), .Z(crc[1]) );
  GTECH_XOR3 U34 ( .A(crcIn[0]), .B(n15), .C(n23), .Z(n17) );
  GTECH_XOR3 U35 ( .A(data[6]), .B(crcIn[6]), .C(data[0]), .Z(n23) );
  GTECH_XOR2 U36 ( .A(crcIn[3]), .B(data[3]), .Z(n15) );
  GTECH_XNOR3 U37 ( .A(data[4]), .B(crcIn[4]), .C(n19), .Z(crc[0]) );
  GTECH_XOR2 U38 ( .A(n25), .B(n18), .Z(n19) );
  GTECH_XOR2 U39 ( .A(crcIn[2]), .B(data[2]), .Z(n18) );
  GTECH_NOT U40 ( .A(n24), .Z(n25) );
  GTECH_XOR2 U41 ( .A(crcIn[5]), .B(data[5]), .Z(n24) );
endmodule

