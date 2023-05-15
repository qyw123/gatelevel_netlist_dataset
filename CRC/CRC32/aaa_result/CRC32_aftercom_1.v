
module CRC32 ( crcIn, data, crcOut );
  input [31:0] crcIn;
  input [7:0] data;
  output [31:0] crcOut;
  wire   n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62;

  GTECH_ADD_AB U65 ( .A(crcIn[17]), .B(n33), .S(crcOut[9]) );
  GTECH_XNOR3 U66 ( .A(crcIn[16]), .B(n34), .C(n35), .Z(crcOut[8]) );
  GTECH_ADD_ABC U67 ( .A(crcIn[15]), .B(n36), .C(n37), .S(crcOut[7]) );
  GTECH_ADD_AB U68 ( .A(crcIn[14]), .B(n38), .S(crcOut[6]) );
  GTECH_XNOR3 U69 ( .A(crcIn[13]), .B(n39), .C(crcOut[31]), .Z(crcOut[5]) );
  GTECH_ADD_ABC U70 ( .A(crcIn[12]), .B(n36), .C(n40), .S(crcOut[4]) );
  GTECH_XNOR3 U71 ( .A(crcIn[11]), .B(n41), .C(n42), .Z(crcOut[3]) );
  GTECH_NOT U72 ( .A(n43), .Z(crcOut[31]) );
  GTECH_ADD_ABC U73 ( .A(crcIn[10]), .B(n44), .C(n45), .S(crcOut[2]) );
  GTECH_ADD_AB U74 ( .A(n37), .B(n46), .S(crcOut[29]) );
  GTECH_ADD_AB U75 ( .A(n36), .B(n47), .S(crcOut[28]) );
  GTECH_ADD_AB U76 ( .A(n48), .B(n49), .S(n36) );
  GTECH_ADD_ABC U77 ( .A(n47), .B(n50), .C(n43), .S(crcOut[27]) );
  GTECH_XNOR2 U78 ( .A(n33), .B(n51), .Z(n43) );
  GTECH_XNOR3 U79 ( .A(n44), .B(n40), .C(n46), .Z(crcOut[26]) );
  GTECH_NOT U80 ( .A(crcOut[30]), .Z(n46) );
  GTECH_XNOR2 U81 ( .A(n35), .B(n45), .Z(crcOut[30]) );
  GTECH_XNOR2 U82 ( .A(n45), .B(n52), .Z(crcOut[25]) );
  GTECH_XNOR2 U83 ( .A(n49), .B(n53), .Z(crcOut[24]) );
  GTECH_XNOR2 U84 ( .A(crcIn[31]), .B(n54), .Z(crcOut[23]) );
  GTECH_ADD_AB U85 ( .A(crcIn[30]), .B(n52), .S(crcOut[22]) );
  GTECH_XNOR3 U86 ( .A(n55), .B(n37), .C(n40), .Z(n52) );
  GTECH_NOT U87 ( .A(n48), .Z(n55) );
  GTECH_ADD_AB U88 ( .A(crcIn[29]), .B(n53), .S(crcOut[21]) );
  GTECH_ADD_ABC U89 ( .A(n33), .B(n47), .C(n41), .S(n53) );
  GTECH_XNOR2 U90 ( .A(crcIn[28]), .B(n54), .Z(crcOut[20]) );
  GTECH_ADD_AB U91 ( .A(n35), .B(n39), .S(n54) );
  GTECH_ADD_AB U92 ( .A(n44), .B(n50), .S(n39) );
  GTECH_XNOR3 U93 ( .A(crcIn[9]), .B(n49), .C(n50), .Z(crcOut[1]) );
  GTECH_XOR4 U94 ( .A(n56), .B(n42), .C(crcIn[27]), .D(n35), .Z(crcOut[19]) );
  GTECH_XNOR2 U95 ( .A(n57), .B(n48), .Z(n35) );
  GTECH_XNOR2 U96 ( .A(n34), .B(n58), .Z(n42) );
  GTECH_NOT U97 ( .A(n40), .Z(n56) );
  GTECH_XNOR3 U98 ( .A(crcIn[26]), .B(n59), .C(n60), .Z(crcOut[18]) );
  GTECH_ADD_ABC U99 ( .A(crcIn[25]), .B(n61), .C(n59), .S(crcOut[17]) );
  GTECH_ADD_AB U100 ( .A(n38), .B(n45), .S(n59) );
  GTECH_NOT U101 ( .A(n47), .Z(n38) );
  GTECH_ADD_AB U102 ( .A(n58), .B(n44), .S(n47) );
  GTECH_NOT U103 ( .A(n50), .Z(n61) );
  GTECH_XNOR3 U104 ( .A(crcIn[24]), .B(n40), .C(n62), .Z(crcOut[16]) );
  GTECH_ADD_ABC U105 ( .A(crcIn[23]), .B(n57), .C(n40), .S(crcOut[15]) );
  GTECH_ADD_AB U106 ( .A(n50), .B(n41), .S(n40) );
  GTECH_NOT U107 ( .A(n33), .Z(n57) );
  GTECH_ADD_AB U108 ( .A(data[7]), .B(crcIn[7]), .S(n33) );
  GTECH_ADD_ABC U109 ( .A(crcIn[22]), .B(n51), .C(n60), .S(crcOut[14]) );
  GTECH_XNOR2 U110 ( .A(n48), .B(n41), .Z(n60) );
  GTECH_ADD_AB U111 ( .A(data[6]), .B(crcIn[6]), .S(n48) );
  GTECH_ADD_ABC U112 ( .A(crcIn[21]), .B(n37), .C(n45), .S(crcOut[13]) );
  GTECH_XNOR2 U113 ( .A(n34), .B(n49), .Z(n45) );
  GTECH_NOT U114 ( .A(n51), .Z(n34) );
  GTECH_ADD_AB U115 ( .A(data[1]), .B(crcIn[1]), .S(n51) );
  GTECH_NOT U116 ( .A(n58), .Z(n37) );
  GTECH_ADD_AB U117 ( .A(data[5]), .B(crcIn[5]), .S(n58) );
  GTECH_ADD_AB U118 ( .A(crcIn[20]), .B(n62), .S(crcOut[12]) );
  GTECH_ADD_AB U119 ( .A(n49), .B(n44), .S(n62) );
  GTECH_XNOR2 U120 ( .A(data[4]), .B(crcIn[4]), .Z(n44) );
  GTECH_XNOR2 U121 ( .A(data[0]), .B(crcIn[0]), .Z(n49) );
  GTECH_ADD_AB U122 ( .A(crcIn[19]), .B(n50), .S(crcOut[11]) );
  GTECH_ADD_AB U123 ( .A(data[3]), .B(crcIn[3]), .S(n50) );
  GTECH_XNOR2 U124 ( .A(crcIn[18]), .B(n41), .Z(crcOut[10]) );
  GTECH_XNOR2 U125 ( .A(crcIn[8]), .B(n41), .Z(crcOut[0]) );
  GTECH_XNOR2 U126 ( .A(data[2]), .B(crcIn[2]), .Z(n41) );
endmodule
