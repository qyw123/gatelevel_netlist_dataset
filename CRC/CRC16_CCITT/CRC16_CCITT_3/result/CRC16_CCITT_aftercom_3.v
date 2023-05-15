
module CRC16_CCITT ( crcIn, data, crcOut );
  input [15:0] crcIn;
  input [7:0] data;
  output [15:0] crcOut;
  wire   n7, n8, n9, n10, n11, n12;

  GTECH_XOR2 U23 ( .A(crcIn[1]), .B(crcOut[4]), .Z(crcOut[9]) );
  GTECH_XNOR2 U24 ( .A(crcIn[0]), .B(n7), .Z(crcOut[8]) );
  GTECH_NOT U25 ( .A(crcOut[3]), .Z(n7) );
  GTECH_XOR2 U26 ( .A(n8), .B(n9), .Z(crcOut[7]) );
  GTECH_NOT U27 ( .A(crcOut[2]), .Z(n9) );
  GTECH_XOR2 U28 ( .A(n10), .B(n11), .Z(crcOut[6]) );
  GTECH_NOT U29 ( .A(crcOut[1]), .Z(n11) );
  GTECH_XNOR2 U30 ( .A(n12), .B(crcOut[0]), .Z(crcOut[5]) );
  GTECH_XOR2 U31 ( .A(crcIn[7]), .B(crcOut[3]), .Z(crcOut[15]) );
  GTECH_XNOR3 U32 ( .A(data[3]), .B(crcIn[11]), .C(n8), .Z(crcOut[3]) );
  GTECH_XOR2 U33 ( .A(crcIn[6]), .B(crcOut[2]), .Z(crcOut[14]) );
  GTECH_XNOR3 U34 ( .A(data[2]), .B(crcIn[10]), .C(n10), .Z(crcOut[2]) );
  GTECH_XOR2 U35 ( .A(crcIn[5]), .B(crcOut[1]), .Z(crcOut[13]) );
  GTECH_XNOR3 U36 ( .A(data[1]), .B(crcIn[9]), .C(n12), .Z(crcOut[1]) );
  GTECH_XNOR3 U37 ( .A(crcIn[4]), .B(n8), .C(crcOut[0]), .Z(crcOut[12]) );
  GTECH_XNOR2 U38 ( .A(data[7]), .B(crcIn[15]), .Z(n8) );
  GTECH_XNOR2 U39 ( .A(crcIn[3]), .B(n10), .Z(crcOut[11]) );
  GTECH_XNOR2 U40 ( .A(data[6]), .B(crcIn[14]), .Z(n10) );
  GTECH_XNOR2 U41 ( .A(crcIn[2]), .B(n12), .Z(crcOut[10]) );
  GTECH_XNOR2 U42 ( .A(data[5]), .B(crcIn[13]), .Z(n12) );
  GTECH_ADD_ABC U43 ( .A(data[0]), .B(crcIn[8]), .C(crcOut[4]), .S(crcOut[0])
         );
  GTECH_XOR2 U44 ( .A(data[4]), .B(crcIn[12]), .Z(crcOut[4]) );
endmodule

