
module CRC16_CCITT ( crcIn, data, crcOut );
  input [15:0] crcIn;
  input [7:0] data;
  output [15:0] crcOut;
  wire   n4, n5, n6;

  GTECH_XOR2 U20 ( .A(crcIn[1]), .B(crcOut[4]), .Z(crcOut[9]) );
  GTECH_XOR2 U21 ( .A(crcIn[0]), .B(crcOut[3]), .Z(crcOut[8]) );
  GTECH_XOR2 U22 ( .A(n4), .B(crcOut[2]), .Z(crcOut[7]) );
  GTECH_XOR2 U23 ( .A(n5), .B(crcOut[1]), .Z(crcOut[6]) );
  GTECH_XOR2 U24 ( .A(n6), .B(crcOut[0]), .Z(crcOut[5]) );
  GTECH_XOR2 U25 ( .A(crcIn[7]), .B(crcOut[3]), .Z(crcOut[15]) );
  GTECH_XOR3 U26 ( .A(data[3]), .B(crcIn[11]), .C(n4), .Z(crcOut[3]) );
  GTECH_XOR2 U27 ( .A(crcIn[6]), .B(crcOut[2]), .Z(crcOut[14]) );
  GTECH_XOR3 U28 ( .A(data[2]), .B(crcIn[10]), .C(n5), .Z(crcOut[2]) );
  GTECH_XOR2 U29 ( .A(crcIn[5]), .B(crcOut[1]), .Z(crcOut[13]) );
  GTECH_XOR3 U30 ( .A(data[1]), .B(crcIn[9]), .C(n6), .Z(crcOut[1]) );
  GTECH_XOR3 U31 ( .A(crcIn[4]), .B(n4), .C(crcOut[0]), .Z(crcOut[12]) );
  GTECH_XOR2 U32 ( .A(data[7]), .B(crcIn[15]), .Z(n4) );
  GTECH_XOR2 U33 ( .A(crcIn[3]), .B(n5), .Z(crcOut[11]) );
  GTECH_XOR2 U34 ( .A(data[6]), .B(crcIn[14]), .Z(n5) );
  GTECH_XOR2 U35 ( .A(crcIn[2]), .B(n6), .Z(crcOut[10]) );
  GTECH_XOR2 U36 ( .A(data[5]), .B(crcIn[13]), .Z(n6) );
  GTECH_XOR3 U37 ( .A(data[0]), .B(crcIn[8]), .C(crcOut[4]), .Z(crcOut[0]) );
  GTECH_XOR2 U38 ( .A(data[4]), .B(crcIn[12]), .Z(crcOut[4]) );
endmodule

