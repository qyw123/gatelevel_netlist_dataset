
module CRC8_IBUTTON ( data, crcIn, crc );
  input [7:0] data;
  input [7:0] crcIn;
  output [7:0] crc;
  wire   n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28;

  GTECH_NOT U23 ( .A(n15), .Z(crc[7]) );
  GTECH_XOR3 U24 ( .A(n16), .B(n17), .C(n18), .Z(n15) );
  GTECH_ADD_AB U25 ( .A(n19), .B(n20), .S(crc[6]) );
  GTECH_NOT U26 ( .A(n21), .Z(crc[5]) );
  GTECH_XOR3 U27 ( .A(data[1]), .B(crcIn[1]), .C(n22), .Z(n21) );
  GTECH_XNOR2 U28 ( .A(n23), .B(n24), .Z(crc[4]) );
  GTECH_XNOR2 U29 ( .A(n18), .B(n24), .Z(crc[3]) );
  GTECH_XNOR2 U30 ( .A(data[0]), .B(n25), .Z(n24) );
  GTECH_XOR3 U31 ( .A(n18), .B(n26), .C(n25), .Z(crc[2]) );
  GTECH_ADD_AB U32 ( .A(crcIn[0]), .B(n16), .S(n25) );
  GTECH_XNOR2 U33 ( .A(crcIn[4]), .B(crcIn[1]), .Z(n16) );
  GTECH_XOR3 U34 ( .A(data[7]), .B(crcIn[7]), .C(n23), .Z(n18) );
  GTECH_XNOR2 U35 ( .A(data[4]), .B(data[1]), .Z(n23) );
  GTECH_ADD_AB U36 ( .A(n19), .B(n27), .S(crc[1]) );
  GTECH_XOR3 U37 ( .A(crcIn[0]), .B(n17), .C(n26), .Z(n19) );
  GTECH_XOR3 U38 ( .A(data[6]), .B(crcIn[6]), .C(data[0]), .Z(n26) );
  GTECH_XNOR2 U39 ( .A(data[3]), .B(crcIn[3]), .Z(n17) );
  GTECH_NOT U40 ( .A(n28), .Z(crc[0]) );
  GTECH_XOR3 U41 ( .A(data[4]), .B(crcIn[4]), .C(n22), .Z(n28) );
  GTECH_XNOR2 U42 ( .A(n20), .B(n27), .Z(n22) );
  GTECH_XNOR2 U43 ( .A(data[5]), .B(crcIn[5]), .Z(n27) );
  GTECH_XNOR2 U44 ( .A(data[2]), .B(crcIn[2]), .Z(n20) );
endmodule

