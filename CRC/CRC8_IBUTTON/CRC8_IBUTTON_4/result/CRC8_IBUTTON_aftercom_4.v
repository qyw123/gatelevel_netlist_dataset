
module CRC8_IBUTTON ( data, crcIn, crc );
  input [7:0] data;
  input [7:0] crcIn;
  output [7:0] crc;
  wire   n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22;

  GTECH_ADD_ABC U20 ( .A(n12), .B(n13), .C(n14), .S(crc[7]) );
  GTECH_XOR2 U21 ( .A(n15), .B(n16), .Z(crc[6]) );
  GTECH_ADD_ABC U22 ( .A(data[1]), .B(crcIn[1]), .C(n17), .S(crc[5]) );
  GTECH_XOR2 U23 ( .A(n18), .B(n19), .Z(crc[4]) );
  GTECH_XOR2 U24 ( .A(n12), .B(n19), .Z(crc[3]) );
  GTECH_XNOR2 U25 ( .A(n20), .B(data[0]), .Z(n19) );
  GTECH_ADD_ABC U26 ( .A(n12), .B(n21), .C(n20), .S(crc[2]) );
  GTECH_XOR2 U27 ( .A(n14), .B(crcIn[0]), .Z(n20) );
  GTECH_XOR2 U28 ( .A(crcIn[1]), .B(crcIn[4]), .Z(n14) );
  GTECH_ADD_ABC U29 ( .A(data[7]), .B(crcIn[7]), .C(n18), .S(n12) );
  GTECH_XNOR2 U30 ( .A(data[1]), .B(data[4]), .Z(n18) );
  GTECH_XOR2 U31 ( .A(n15), .B(n22), .Z(crc[1]) );
  GTECH_XNOR3 U32 ( .A(crcIn[0]), .B(n13), .C(n21), .Z(n15) );
  GTECH_XNOR3 U33 ( .A(data[6]), .B(data[0]), .C(crcIn[6]), .Z(n21) );
  GTECH_XNOR2 U34 ( .A(data[3]), .B(crcIn[3]), .Z(n13) );
  GTECH_ADD_ABC U35 ( .A(data[4]), .B(crcIn[4]), .C(n17), .S(crc[0]) );
  GTECH_XOR2 U36 ( .A(n22), .B(n16), .Z(n17) );
  GTECH_XNOR2 U37 ( .A(data[2]), .B(crcIn[2]), .Z(n16) );
  GTECH_XNOR2 U38 ( .A(data[5]), .B(crcIn[5]), .Z(n22) );
endmodule

