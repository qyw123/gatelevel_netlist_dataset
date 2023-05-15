
module CRC32 ( crcIn, data, crcOut );
  input [31:0] crcIn;
  input [7:0] data;
  output [31:0] crcOut;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52;

  GTECH_ADD_AB U59 ( .A(crcIn[17]), .B(n27), .S(crcOut[9]) );
  GTECH_XNOR3 U60 ( .A(crcIn[16]), .B(n28), .C(n29), .Z(crcOut[8]) );
  GTECH_XOR3 U61 ( .A(crcIn[15]), .B(n30), .C(n31), .Z(crcOut[7]) );
  GTECH_ADD_AB U62 ( .A(crcIn[14]), .B(n32), .S(crcOut[6]) );
  GTECH_XNOR3 U63 ( .A(crcIn[13]), .B(crcOut[31]), .C(n33), .Z(crcOut[5]) );
  GTECH_XNOR3 U64 ( .A(crcIn[12]), .B(n30), .C(n34), .Z(crcOut[4]) );
  GTECH_XOR3 U65 ( .A(crcIn[11]), .B(n35), .C(n36), .Z(crcOut[3]) );
  GTECH_XOR3 U66 ( .A(crcIn[10]), .B(n37), .C(n38), .Z(crcOut[2]) );
  GTECH_XNOR2 U67 ( .A(n31), .B(crcOut[30]), .Z(crcOut[29]) );
  GTECH_ADD_AB U68 ( .A(n30), .B(n39), .S(crcOut[28]) );
  GTECH_ADD_AB U69 ( .A(n40), .B(n41), .S(n30) );
  GTECH_XOR3 U70 ( .A(n39), .B(crcOut[31]), .C(n42), .Z(crcOut[27]) );
  GTECH_XNOR2 U71 ( .A(n27), .B(n29), .Z(crcOut[31]) );
  GTECH_XOR3 U72 ( .A(n37), .B(n43), .C(crcOut[30]), .Z(crcOut[26]) );
  GTECH_XNOR2 U73 ( .A(n28), .B(n38), .Z(crcOut[30]) );
  GTECH_XNOR2 U74 ( .A(n38), .B(n44), .Z(crcOut[25]) );
  GTECH_XNOR2 U75 ( .A(n41), .B(n45), .Z(crcOut[24]) );
  GTECH_XNOR2 U76 ( .A(crcIn[31]), .B(n46), .Z(crcOut[23]) );
  GTECH_ADD_AB U77 ( .A(crcIn[30]), .B(n44), .S(crcOut[22]) );
  GTECH_XOR3 U78 ( .A(n40), .B(n31), .C(n43), .Z(n44) );
  GTECH_ADD_AB U79 ( .A(crcIn[29]), .B(n45), .S(crcOut[21]) );
  GTECH_XOR3 U80 ( .A(n27), .B(n39), .C(n35), .Z(n45) );
  GTECH_NOT U81 ( .A(n47), .Z(n35) );
  GTECH_XNOR2 U82 ( .A(crcIn[28]), .B(n46), .Z(crcOut[20]) );
  GTECH_ADD_AB U83 ( .A(n28), .B(n33), .S(n46) );
  GTECH_XNOR2 U84 ( .A(n37), .B(n42), .Z(n33) );
  GTECH_XOR3 U85 ( .A(crcIn[9]), .B(n41), .C(n42), .Z(crcOut[1]) );
  GTECH_XNOR4 U86 ( .A(crcIn[27]), .B(n28), .C(n36), .D(n34), .Z(crcOut[19])
         );
  GTECH_NOT U87 ( .A(n43), .Z(n34) );
  GTECH_ADD_AB U88 ( .A(n48), .B(n31), .S(n36) );
  GTECH_XNOR2 U89 ( .A(n27), .B(n49), .Z(n28) );
  GTECH_NOT U90 ( .A(n40), .Z(n49) );
  GTECH_XOR3 U91 ( .A(crcIn[26]), .B(n50), .C(n51), .Z(crcOut[18]) );
  GTECH_XOR3 U92 ( .A(crcIn[25]), .B(n42), .C(n50), .Z(crcOut[17]) );
  GTECH_ADD_AB U93 ( .A(n32), .B(n38), .S(n50) );
  GTECH_NOT U94 ( .A(n39), .Z(n32) );
  GTECH_XNOR2 U95 ( .A(n31), .B(n37), .Z(n39) );
  GTECH_XNOR3 U96 ( .A(crcIn[24]), .B(n43), .C(n52), .Z(crcOut[16]) );
  GTECH_XNOR3 U97 ( .A(crcIn[23]), .B(n27), .C(n43), .Z(crcOut[15]) );
  GTECH_ADD_AB U98 ( .A(n42), .B(n47), .S(n43) );
  GTECH_ADD_AB U99 ( .A(data[7]), .B(crcIn[7]), .S(n27) );
  GTECH_XNOR3 U100 ( .A(crcIn[22]), .B(n48), .C(n51), .Z(crcOut[14]) );
  GTECH_XNOR2 U101 ( .A(n40), .B(n47), .Z(n51) );
  GTECH_ADD_AB U102 ( .A(data[6]), .B(crcIn[6]), .S(n40) );
  GTECH_XOR3 U103 ( .A(crcIn[21]), .B(n31), .C(n38), .Z(crcOut[13]) );
  GTECH_XNOR2 U104 ( .A(n29), .B(n41), .Z(n38) );
  GTECH_NOT U105 ( .A(n48), .Z(n29) );
  GTECH_ADD_AB U106 ( .A(data[1]), .B(crcIn[1]), .S(n48) );
  GTECH_XNOR2 U107 ( .A(data[5]), .B(crcIn[5]), .Z(n31) );
  GTECH_ADD_AB U108 ( .A(crcIn[20]), .B(n52), .S(crcOut[12]) );
  GTECH_ADD_AB U109 ( .A(n41), .B(n37), .S(n52) );
  GTECH_XNOR2 U110 ( .A(data[4]), .B(crcIn[4]), .Z(n37) );
  GTECH_XNOR2 U111 ( .A(data[0]), .B(crcIn[0]), .Z(n41) );
  GTECH_XNOR2 U112 ( .A(crcIn[19]), .B(n42), .Z(crcOut[11]) );
  GTECH_XNOR2 U113 ( .A(data[3]), .B(crcIn[3]), .Z(n42) );
  GTECH_ADD_AB U114 ( .A(crcIn[18]), .B(n47), .S(crcOut[10]) );
  GTECH_ADD_AB U115 ( .A(crcIn[8]), .B(n47), .S(crcOut[0]) );
  GTECH_ADD_AB U116 ( .A(data[2]), .B(crcIn[2]), .S(n47) );
endmodule

