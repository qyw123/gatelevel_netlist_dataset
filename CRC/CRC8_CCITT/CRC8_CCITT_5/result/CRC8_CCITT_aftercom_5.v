
module CRC8_CCITT ( crcIn, data, crc );
  input [7:0] crcIn;
  input [7:0] data;
  output [7:0] crc;
  wire   n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28;

  GTECH_XOR2 U24 ( .A(n16), .B(n17), .Z(crc[7]) );
  GTECH_XOR2 U25 ( .A(n16), .B(n18), .Z(crc[6]) );
  GTECH_XOR2 U26 ( .A(n19), .B(n20), .Z(n16) );
  GTECH_XOR2 U27 ( .A(n21), .B(n22), .Z(crc[5]) );
  GTECH_NOT U28 ( .A(n20), .Z(n21) );
  GTECH_XOR2 U29 ( .A(crcIn[5]), .B(data[5]), .Z(n20) );
  GTECH_XOR2 U30 ( .A(n22), .B(n23), .Z(crc[4]) );
  GTECH_NOT U31 ( .A(n24), .Z(n23) );
  GTECH_XOR2 U32 ( .A(n25), .B(n18), .Z(n22) );
  GTECH_XOR2 U33 ( .A(crcIn[4]), .B(data[4]), .Z(n18) );
  GTECH_NOT U34 ( .A(n26), .Z(n25) );
  GTECH_XOR4 U35 ( .A(n24), .B(n27), .C(n17), .D(n26), .Z(crc[3]) );
  GTECH_XOR2 U36 ( .A(crcIn[3]), .B(data[3]), .Z(n26) );
  GTECH_XOR2 U37 ( .A(n24), .B(crc[1]), .Z(crc[2]) );
  GTECH_XOR2 U38 ( .A(crcIn[2]), .B(data[2]), .Z(n24) );
  GTECH_XOR2 U39 ( .A(n28), .B(n27), .Z(crc[1]) );
  GTECH_XOR2 U40 ( .A(crcIn[1]), .B(data[1]), .Z(n27) );
  GTECH_XOR2 U41 ( .A(n17), .B(n28), .Z(crc[0]) );
  GTECH_XOR3 U42 ( .A(data[0]), .B(crcIn[0]), .C(n19), .Z(n28) );
  GTECH_XOR2 U43 ( .A(crcIn[6]), .B(data[6]), .Z(n19) );
  GTECH_XOR2 U44 ( .A(crcIn[7]), .B(data[7]), .Z(n17) );
endmodule

