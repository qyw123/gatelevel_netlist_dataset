
module CRC8_IBUTTON ( data, crcIn, crc );
  input [7:0] data;
  input [7:0] crcIn;
  output [7:0] crc;
  wire   n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22;

  GTECH_ADD_ABC U20 ( .A(n12), .B(n13), .C(n14), .S(crc[7]) );
  GTECH_XNOR2 U21 ( .A(n15), .B(n16), .Z(crc[6]) );
  GTECH_ADD_ABC U22 ( .A(data[1]), .B(crcIn[1]), .C(n17), .S(crc[5]) );
  GTECH_ADD_AB U23 ( .A(n18), .B(n19), .S(crc[4]) );
  GTECH_ADD_AB U24 ( .A(n12), .B(n19), .S(crc[3]) );
  GTECH_XNOR2 U25 ( .A(data[0]), .B(n20), .Z(n19) );
  GTECH_ADD_ABC U26 ( .A(n12), .B(n21), .C(n20), .S(crc[2]) );
  GTECH_ADD_AB U27 ( .A(crcIn[0]), .B(n14), .S(n20) );
  GTECH_ADD_AB U28 ( .A(crcIn[4]), .B(crcIn[1]), .S(n14) );
  GTECH_ADD_ABC U29 ( .A(data[7]), .B(crcIn[7]), .C(n18), .S(n12) );
  GTECH_XNOR2 U30 ( .A(data[4]), .B(data[1]), .Z(n18) );
  GTECH_XNOR2 U31 ( .A(n16), .B(n22), .Z(crc[1]) );
  GTECH_ADD_ABC U32 ( .A(crcIn[0]), .B(n13), .C(n21), .S(n16) );
  GTECH_XNOR3 U33 ( .A(data[6]), .B(data[0]), .C(crcIn[6]), .Z(n21) );
  GTECH_XNOR2 U34 ( .A(data[3]), .B(crcIn[3]), .Z(n13) );
  GTECH_ADD_ABC U35 ( .A(data[4]), .B(crcIn[4]), .C(n17), .S(crc[0]) );
  GTECH_ADD_AB U36 ( .A(n15), .B(n22), .S(n17) );
  GTECH_XNOR2 U37 ( .A(data[5]), .B(crcIn[5]), .Z(n22) );
  GTECH_XNOR2 U38 ( .A(data[2]), .B(crcIn[2]), .Z(n15) );
endmodule

