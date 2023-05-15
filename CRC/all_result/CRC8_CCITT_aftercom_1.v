
module CRC8_CCITT ( crcIn, data, crc );
  input [7:0] crcIn;
  input [7:0] data;
  output [7:0] crc;
  wire   n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28;

  GTECH_ADD_AB U24 ( .A(n16), .B(n17), .S(crc[7]) );
  GTECH_ADD_AB U25 ( .A(n16), .B(n18), .S(crc[6]) );
  GTECH_ADD_AB U26 ( .A(n19), .B(n20), .S(n16) );
  GTECH_ADD_AB U27 ( .A(n21), .B(n22), .S(crc[5]) );
  GTECH_NOT U28 ( .A(n20), .Z(n21) );
  GTECH_ADD_AB U29 ( .A(crcIn[5]), .B(data[5]), .S(n20) );
  GTECH_ADD_AB U30 ( .A(n22), .B(n23), .S(crc[4]) );
  GTECH_NOT U31 ( .A(n24), .Z(n23) );
  GTECH_ADD_AB U32 ( .A(n25), .B(n18), .S(n22) );
  GTECH_ADD_AB U33 ( .A(crcIn[4]), .B(data[4]), .S(n18) );
  GTECH_NOT U34 ( .A(n26), .Z(n25) );
  GTECH_XOR4 U35 ( .A(n24), .B(n27), .C(n17), .D(n26), .Z(crc[3]) );
  GTECH_ADD_AB U36 ( .A(crcIn[3]), .B(data[3]), .S(n26) );
  GTECH_ADD_AB U37 ( .A(n24), .B(crc[1]), .S(crc[2]) );
  GTECH_ADD_AB U38 ( .A(crcIn[2]), .B(data[2]), .S(n24) );
  GTECH_ADD_AB U39 ( .A(n28), .B(n27), .S(crc[1]) );
  GTECH_ADD_AB U40 ( .A(crcIn[1]), .B(data[1]), .S(n27) );
  GTECH_ADD_AB U41 ( .A(n17), .B(n28), .S(crc[0]) );
  GTECH_XOR3 U42 ( .A(data[0]), .B(crcIn[0]), .C(n19), .Z(n28) );
  GTECH_ADD_AB U43 ( .A(crcIn[6]), .B(data[6]), .S(n19) );
  GTECH_ADD_AB U44 ( .A(crcIn[7]), .B(data[7]), .S(n17) );
endmodule

