
module CRC8_IBUTTON ( data, crcIn, crc );
  input [7:0] data;
  input [7:0] crcIn;
  output [7:0] crc;
  wire   n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27;

  GTECH_XOR3 U22 ( .A(n14), .B(n15), .C(n16), .Z(crc[7]) );
  GTECH_XOR2 U23 ( .A(n17), .B(n18), .Z(crc[6]) );
  GTECH_XOR3 U24 ( .A(n19), .B(crcIn[1]), .C(n20), .Z(crc[5]) );
  GTECH_NOT U25 ( .A(data[1]), .Z(n19) );
  GTECH_XOR2 U26 ( .A(n21), .B(n22), .Z(crc[4]) );
  GTECH_XNOR2 U27 ( .A(n14), .B(n22), .Z(crc[3]) );
  GTECH_XOR2 U28 ( .A(n23), .B(data[0]), .Z(n22) );
  GTECH_NOT U29 ( .A(n24), .Z(n14) );
  GTECH_XOR3 U30 ( .A(n24), .B(n25), .C(n23), .Z(crc[2]) );
  GTECH_XOR2 U31 ( .A(n16), .B(crcIn[0]), .Z(n23) );
  GTECH_XNOR2 U32 ( .A(crcIn[1]), .B(crcIn[4]), .Z(n16) );
  GTECH_XOR3 U33 ( .A(data[7]), .B(crcIn[7]), .C(n21), .Z(n24) );
  GTECH_XNOR2 U34 ( .A(data[1]), .B(data[4]), .Z(n21) );
  GTECH_XNOR2 U35 ( .A(n17), .B(n26), .Z(crc[1]) );
  GTECH_XOR3 U36 ( .A(crcIn[0]), .B(n15), .C(n25), .Z(n17) );
  GTECH_XOR3 U37 ( .A(data[6]), .B(crcIn[6]), .C(data[0]), .Z(n25) );
  GTECH_XNOR2 U38 ( .A(data[3]), .B(crcIn[3]), .Z(n15) );
  GTECH_NOT U39 ( .A(n27), .Z(crc[0]) );
  GTECH_XOR3 U40 ( .A(data[4]), .B(crcIn[4]), .C(n20), .Z(n27) );
  GTECH_XOR2 U41 ( .A(n26), .B(n18), .Z(n20) );
  GTECH_XNOR2 U42 ( .A(data[2]), .B(crcIn[2]), .Z(n18) );
  GTECH_XOR2 U43 ( .A(data[5]), .B(crcIn[5]), .Z(n26) );
endmodule

