
module CRC32 ( crcIn, data, crcOut );
  input [31:0] crcIn;
  input [7:0] data;
  output [31:0] crcOut;
  wire   n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62;

  GTECH_XNOR2 U64 ( .A(crcIn[17]), .B(n32), .Z(crcOut[9]) );
  GTECH_XOR3 U65 ( .A(crcIn[16]), .B(n33), .C(n34), .Z(crcOut[8]) );
  GTECH_XOR3 U66 ( .A(crcIn[15]), .B(n35), .C(n36), .Z(crcOut[7]) );
  GTECH_XNOR2 U67 ( .A(crcIn[14]), .B(n37), .Z(crcOut[6]) );
  GTECH_NOT U68 ( .A(n38), .Z(crcOut[5]) );
  GTECH_XOR3 U69 ( .A(crcIn[13]), .B(crcOut[31]), .C(n39), .Z(n38) );
  GTECH_XOR3 U70 ( .A(crcIn[12]), .B(n35), .C(n40), .Z(crcOut[4]) );
  GTECH_NOT U71 ( .A(n41), .Z(n35) );
  GTECH_XOR3 U72 ( .A(crcIn[11]), .B(n42), .C(n43), .Z(crcOut[3]) );
  GTECH_XOR3 U73 ( .A(crcIn[10]), .B(n44), .C(n45), .Z(crcOut[2]) );
  GTECH_XNOR2 U74 ( .A(n36), .B(n46), .Z(crcOut[29]) );
  GTECH_NOT U75 ( .A(crcOut[30]), .Z(n46) );
  GTECH_XNOR2 U76 ( .A(n41), .B(n47), .Z(crcOut[28]) );
  GTECH_XNOR2 U77 ( .A(n48), .B(n49), .Z(n41) );
  GTECH_XOR3 U78 ( .A(n47), .B(crcOut[31]), .C(n50), .Z(crcOut[27]) );
  GTECH_NOT U79 ( .A(n51), .Z(n50) );
  GTECH_ADD_AB U80 ( .A(n52), .B(n53), .S(crcOut[31]) );
  GTECH_XOR3 U81 ( .A(n44), .B(n54), .C(crcOut[30]), .Z(crcOut[26]) );
  GTECH_ADD_AB U82 ( .A(n33), .B(n45), .S(crcOut[30]) );
  GTECH_ADD_AB U83 ( .A(n55), .B(n56), .S(crcOut[25]) );
  GTECH_NOT U84 ( .A(n45), .Z(n55) );
  GTECH_XNOR2 U85 ( .A(n49), .B(n57), .Z(crcOut[24]) );
  GTECH_ADD_AB U86 ( .A(crcIn[31]), .B(n58), .S(crcOut[23]) );
  GTECH_ADD_AB U87 ( .A(crcIn[30]), .B(n56), .S(crcOut[22]) );
  GTECH_XOR3 U88 ( .A(n48), .B(n36), .C(n54), .Z(n56) );
  GTECH_NOT U89 ( .A(n40), .Z(n54) );
  GTECH_NOT U90 ( .A(n59), .Z(n36) );
  GTECH_ADD_AB U91 ( .A(crcIn[29]), .B(n57), .S(crcOut[21]) );
  GTECH_XOR3 U92 ( .A(n32), .B(n47), .C(n42), .Z(n57) );
  GTECH_ADD_AB U93 ( .A(crcIn[28]), .B(n58), .S(crcOut[20]) );
  GTECH_ADD_AB U94 ( .A(n33), .B(n39), .S(n58) );
  GTECH_XNOR2 U95 ( .A(n44), .B(n51), .Z(n39) );
  GTECH_XOR3 U96 ( .A(crcIn[9]), .B(n49), .C(n51), .Z(crcOut[1]) );
  GTECH_XOR4 U97 ( .A(n40), .B(n43), .C(crcIn[27]), .D(n33), .Z(crcOut[19]) );
  GTECH_XNOR2 U98 ( .A(n32), .B(n48), .Z(n33) );
  GTECH_XNOR2 U99 ( .A(n34), .B(n59), .Z(n43) );
  GTECH_XOR3 U100 ( .A(crcIn[26]), .B(n60), .C(n61), .Z(crcOut[18]) );
  GTECH_XOR3 U101 ( .A(crcIn[25]), .B(n51), .C(n60), .Z(crcOut[17]) );
  GTECH_XNOR2 U102 ( .A(n37), .B(n45), .Z(n60) );
  GTECH_NOT U103 ( .A(n47), .Z(n37) );
  GTECH_ADD_AB U104 ( .A(n59), .B(n44), .S(n47) );
  GTECH_XOR3 U105 ( .A(crcIn[24]), .B(n40), .C(n62), .Z(crcOut[16]) );
  GTECH_XOR3 U106 ( .A(crcIn[23]), .B(n52), .C(n40), .Z(crcOut[15]) );
  GTECH_ADD_AB U107 ( .A(n51), .B(n42), .S(n40) );
  GTECH_NOT U108 ( .A(n32), .Z(n52) );
  GTECH_XNOR2 U109 ( .A(data[7]), .B(crcIn[7]), .Z(n32) );
  GTECH_XOR3 U110 ( .A(crcIn[22]), .B(n34), .C(n61), .Z(crcOut[14]) );
  GTECH_XNOR2 U111 ( .A(n48), .B(n42), .Z(n61) );
  GTECH_XNOR2 U112 ( .A(data[6]), .B(crcIn[6]), .Z(n48) );
  GTECH_XOR3 U113 ( .A(crcIn[21]), .B(n59), .C(n45), .Z(crcOut[13]) );
  GTECH_ADD_AB U114 ( .A(n53), .B(n49), .S(n45) );
  GTECH_NOT U115 ( .A(n34), .Z(n53) );
  GTECH_XNOR2 U116 ( .A(data[1]), .B(crcIn[1]), .Z(n34) );
  GTECH_XNOR2 U117 ( .A(data[5]), .B(crcIn[5]), .Z(n59) );
  GTECH_ADD_AB U118 ( .A(crcIn[20]), .B(n62), .S(crcOut[12]) );
  GTECH_ADD_AB U119 ( .A(n49), .B(n44), .S(n62) );
  GTECH_XNOR2 U120 ( .A(data[4]), .B(crcIn[4]), .Z(n44) );
  GTECH_XNOR2 U121 ( .A(data[0]), .B(crcIn[0]), .Z(n49) );
  GTECH_XNOR2 U122 ( .A(crcIn[19]), .B(n51), .Z(crcOut[11]) );
  GTECH_XNOR2 U123 ( .A(data[3]), .B(crcIn[3]), .Z(n51) );
  GTECH_XNOR2 U124 ( .A(crcIn[18]), .B(n42), .Z(crcOut[10]) );
  GTECH_XNOR2 U125 ( .A(crcIn[8]), .B(n42), .Z(crcOut[0]) );
  GTECH_XNOR2 U126 ( .A(data[2]), .B(crcIn[2]), .Z(n42) );
endmodule

