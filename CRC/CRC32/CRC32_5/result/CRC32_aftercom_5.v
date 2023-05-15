
module CRC32 ( crcIn, data, crcOut );
  input [31:0] crcIn;
  input [7:0] data;
  output [31:0] crcOut;
  wire   n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54;

  GTECH_ADD_AB U60 ( .A(crcIn[17]), .B(n28), .S(crcOut[9]) );
  GTECH_XNOR3 U61 ( .A(crcIn[16]), .B(n29), .C(n30), .Z(crcOut[8]) );
  GTECH_XNOR3 U62 ( .A(crcIn[15]), .B(n31), .C(n32), .Z(crcOut[7]) );
  GTECH_ADD_AB U63 ( .A(crcIn[14]), .B(n33), .S(crcOut[6]) );
  GTECH_XNOR3 U64 ( .A(crcIn[13]), .B(crcOut[31]), .C(n34), .Z(crcOut[5]) );
  GTECH_XNOR3 U65 ( .A(crcIn[12]), .B(n31), .C(n35), .Z(crcOut[4]) );
  GTECH_NOT U66 ( .A(n36), .Z(n31) );
  GTECH_XOR3 U67 ( .A(crcIn[11]), .B(n37), .C(n38), .Z(crcOut[3]) );
  GTECH_XOR3 U68 ( .A(crcIn[10]), .B(n39), .C(n40), .Z(crcOut[2]) );
  GTECH_ADD_AB U69 ( .A(n32), .B(crcOut[30]), .S(crcOut[29]) );
  GTECH_ADD_AB U70 ( .A(n36), .B(n33), .S(crcOut[28]) );
  GTECH_ADD_AB U71 ( .A(n41), .B(n42), .S(n36) );
  GTECH_XOR3 U72 ( .A(n43), .B(crcOut[31]), .C(n44), .Z(crcOut[27]) );
  GTECH_XNOR2 U73 ( .A(n28), .B(n45), .Z(crcOut[31]) );
  GTECH_XOR3 U74 ( .A(n39), .B(n46), .C(crcOut[30]), .Z(crcOut[26]) );
  GTECH_ADD_AB U75 ( .A(n30), .B(n40), .S(crcOut[30]) );
  GTECH_XNOR2 U76 ( .A(n40), .B(n47), .Z(crcOut[25]) );
  GTECH_XNOR2 U77 ( .A(n42), .B(n48), .Z(crcOut[24]) );
  GTECH_ADD_AB U78 ( .A(crcIn[31]), .B(n49), .S(crcOut[23]) );
  GTECH_ADD_AB U79 ( .A(crcIn[30]), .B(n47), .S(crcOut[22]) );
  GTECH_XOR3 U80 ( .A(n41), .B(n32), .C(n46), .Z(n47) );
  GTECH_ADD_AB U81 ( .A(crcIn[29]), .B(n48), .S(crcOut[21]) );
  GTECH_XOR3 U82 ( .A(n28), .B(n43), .C(n37), .Z(n48) );
  GTECH_ADD_AB U83 ( .A(crcIn[28]), .B(n49), .S(crcOut[20]) );
  GTECH_ADD_AB U84 ( .A(n30), .B(n34), .S(n49) );
  GTECH_XNOR2 U85 ( .A(n39), .B(n44), .Z(n34) );
  GTECH_XOR3 U86 ( .A(crcIn[9]), .B(n42), .C(n44), .Z(crcOut[1]) );
  GTECH_XOR4 U87 ( .A(n35), .B(n38), .C(crcIn[27]), .D(n30), .Z(crcOut[19]) );
  GTECH_ADD_AB U88 ( .A(n28), .B(n41), .S(n30) );
  GTECH_ADD_AB U89 ( .A(n29), .B(n50), .S(n38) );
  GTECH_NOT U90 ( .A(n32), .Z(n50) );
  GTECH_NOT U91 ( .A(n46), .Z(n35) );
  GTECH_XOR3 U92 ( .A(crcIn[26]), .B(n51), .C(n52), .Z(crcOut[18]) );
  GTECH_XOR3 U93 ( .A(crcIn[25]), .B(n44), .C(n51), .Z(crcOut[17]) );
  GTECH_ADD_AB U94 ( .A(n33), .B(n40), .S(n51) );
  GTECH_NOT U95 ( .A(n43), .Z(n33) );
  GTECH_ADD_AB U96 ( .A(n32), .B(n39), .S(n43) );
  GTECH_XNOR3 U97 ( .A(crcIn[24]), .B(n46), .C(n53), .Z(crcOut[16]) );
  GTECH_XNOR3 U98 ( .A(crcIn[23]), .B(n28), .C(n46), .Z(crcOut[15]) );
  GTECH_ADD_AB U99 ( .A(n44), .B(n54), .S(n46) );
  GTECH_ADD_AB U100 ( .A(data[7]), .B(crcIn[7]), .S(n28) );
  GTECH_XNOR3 U101 ( .A(crcIn[22]), .B(n29), .C(n52), .Z(crcOut[14]) );
  GTECH_XNOR2 U102 ( .A(n41), .B(n37), .Z(n52) );
  GTECH_NOT U103 ( .A(n54), .Z(n37) );
  GTECH_XNOR2 U104 ( .A(data[6]), .B(crcIn[6]), .Z(n41) );
  GTECH_XNOR3 U105 ( .A(crcIn[21]), .B(n32), .C(n40), .Z(crcOut[13]) );
  GTECH_XNOR2 U106 ( .A(n45), .B(n42), .Z(n40) );
  GTECH_NOT U107 ( .A(n29), .Z(n45) );
  GTECH_ADD_AB U108 ( .A(data[1]), .B(crcIn[1]), .S(n29) );
  GTECH_ADD_AB U109 ( .A(data[5]), .B(crcIn[5]), .S(n32) );
  GTECH_ADD_AB U110 ( .A(crcIn[20]), .B(n53), .S(crcOut[12]) );
  GTECH_ADD_AB U111 ( .A(n42), .B(n39), .S(n53) );
  GTECH_XNOR2 U112 ( .A(data[4]), .B(crcIn[4]), .Z(n39) );
  GTECH_XNOR2 U113 ( .A(data[0]), .B(crcIn[0]), .Z(n42) );
  GTECH_XNOR2 U114 ( .A(crcIn[19]), .B(n44), .Z(crcOut[11]) );
  GTECH_XNOR2 U115 ( .A(data[3]), .B(crcIn[3]), .Z(n44) );
  GTECH_ADD_AB U116 ( .A(crcIn[18]), .B(n54), .S(crcOut[10]) );
  GTECH_ADD_AB U117 ( .A(crcIn[8]), .B(n54), .S(crcOut[0]) );
  GTECH_ADD_AB U118 ( .A(data[2]), .B(crcIn[2]), .S(n54) );
endmodule

