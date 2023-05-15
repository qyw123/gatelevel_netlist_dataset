
module CRC16_CCITT ( crcIn, data, crcOut );
  input [15:0] crcIn;
  input [7:0] data;
  output [15:0] crcOut;
  wire   n6, n7, n8, n9, n10;

  GTECH_ADD_AB U22 ( .A(crcIn[1]), .B(crcOut[4]), .S(crcOut[9]) );
  GTECH_ADD_AB U23 ( .A(crcIn[0]), .B(crcOut[3]), .S(crcOut[8]) );
  GTECH_ADD_AB U24 ( .A(n6), .B(crcOut[2]), .S(crcOut[7]) );
  GTECH_ADD_AB U25 ( .A(n7), .B(crcOut[1]), .S(crcOut[6]) );
  GTECH_ADD_AB U26 ( .A(n8), .B(crcOut[0]), .S(crcOut[5]) );
  GTECH_ADD_AB U27 ( .A(crcIn[7]), .B(crcOut[3]), .S(crcOut[15]) );
  GTECH_XOR3 U28 ( .A(data[3]), .B(crcIn[11]), .C(n6), .Z(crcOut[3]) );
  GTECH_ADD_AB U29 ( .A(crcIn[6]), .B(crcOut[2]), .S(crcOut[14]) );
  GTECH_XOR3 U30 ( .A(data[2]), .B(crcIn[10]), .C(n7), .Z(crcOut[2]) );
  GTECH_NOT U31 ( .A(n9), .Z(n7) );
  GTECH_ADD_AB U32 ( .A(crcIn[5]), .B(crcOut[1]), .S(crcOut[13]) );
  GTECH_XOR3 U33 ( .A(data[1]), .B(crcIn[9]), .C(n8), .Z(crcOut[1]) );
  GTECH_NOT U34 ( .A(n10), .Z(n8) );
  GTECH_XOR3 U35 ( .A(crcIn[4]), .B(n6), .C(crcOut[0]), .Z(crcOut[12]) );
  GTECH_ADD_AB U36 ( .A(data[7]), .B(crcIn[15]), .S(n6) );
  GTECH_XNOR2 U37 ( .A(crcIn[3]), .B(n9), .Z(crcOut[11]) );
  GTECH_XNOR2 U38 ( .A(data[6]), .B(crcIn[14]), .Z(n9) );
  GTECH_XNOR2 U39 ( .A(crcIn[2]), .B(n10), .Z(crcOut[10]) );
  GTECH_XNOR2 U40 ( .A(data[5]), .B(crcIn[13]), .Z(n10) );
  GTECH_XOR3 U41 ( .A(data[0]), .B(crcIn[8]), .C(crcOut[4]), .Z(crcOut[0]) );
  GTECH_ADD_AB U42 ( .A(data[4]), .B(crcIn[12]), .S(crcOut[4]) );
endmodule

