
module CRC8_CCITT ( crcIn, data, crc );
  input [7:0] crcIn;
  input [7:0] data;
  output [7:0] crc;
  wire   n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;

  GTECH_XOR2 U24 ( .A(n16), .B(n17), .Z(crc[7]) );
  GTECH_XOR2 U25 ( .A(n16), .B(n18), .Z(crc[6]) );
  GTECH_XOR2 U26 ( .A(n19), .B(n20), .Z(n16) );
  GTECH_XOR2 U27 ( .A(n20), .B(n21), .Z(crc[5]) );
  GTECH_XOR2 U28 ( .A(crcIn[5]), .B(data[5]), .Z(n20) );
  GTECH_XOR2 U29 ( .A(n21), .B(n22), .Z(crc[4]) );
  GTECH_XOR2 U30 ( .A(n23), .B(n18), .Z(n21) );
  GTECH_XOR2 U31 ( .A(crcIn[4]), .B(data[4]), .Z(n18) );
  GTECH_XNOR4 U32 ( .A(n17), .B(n23), .C(n24), .D(n22), .Z(crc[3]) );
  GTECH_NOT U33 ( .A(n25), .Z(n24) );
  GTECH_XOR2 U34 ( .A(crcIn[3]), .B(data[3]), .Z(n23) );
  GTECH_XOR2 U35 ( .A(n22), .B(crc[1]), .Z(crc[2]) );
  GTECH_XOR2 U36 ( .A(crcIn[2]), .B(data[2]), .Z(n22) );
  GTECH_XOR2 U37 ( .A(n26), .B(n25), .Z(crc[1]) );
  GTECH_XOR2 U38 ( .A(crcIn[1]), .B(data[1]), .Z(n25) );
  GTECH_XOR2 U39 ( .A(n17), .B(n26), .Z(crc[0]) );
  GTECH_XOR3 U40 ( .A(data[0]), .B(crcIn[0]), .C(n19), .Z(n26) );
  GTECH_XOR2 U41 ( .A(crcIn[6]), .B(data[6]), .Z(n19) );
  GTECH_XOR2 U42 ( .A(crcIn[7]), .B(data[7]), .Z(n17) );
endmodule

