
module CRC32 ( crcIn, data, crcOut );
  input [31:0] crcIn;
  input [7:0] data;
  output [31:0] crcOut;
  wire   n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50;

  GTECH_XOR2 U58 ( .A(crcIn[17]), .B(n26), .Z(crcOut[9]) );
  GTECH_XOR3 U59 ( .A(crcIn[16]), .B(n27), .C(n28), .Z(crcOut[8]) );
  GTECH_XOR3 U60 ( .A(crcIn[15]), .B(n29), .C(n30), .Z(crcOut[7]) );
  GTECH_XOR2 U61 ( .A(crcIn[14]), .B(n31), .Z(crcOut[6]) );
  GTECH_XNOR3 U62 ( .A(crcIn[13]), .B(crcOut[31]), .C(n32), .Z(crcOut[5]) );
  GTECH_XNOR3 U63 ( .A(crcIn[12]), .B(n29), .C(n33), .Z(crcOut[4]) );
  GTECH_XNOR3 U64 ( .A(crcIn[11]), .B(n34), .C(n35), .Z(crcOut[3]) );
  GTECH_XOR3 U65 ( .A(crcIn[10]), .B(n36), .C(n37), .Z(crcOut[2]) );
  GTECH_XNOR2 U66 ( .A(n30), .B(crcOut[30]), .Z(crcOut[29]) );
  GTECH_XNOR2 U67 ( .A(n29), .B(n31), .Z(crcOut[28]) );
  GTECH_XOR2 U68 ( .A(n38), .B(n39), .Z(n29) );
  GTECH_XOR3 U69 ( .A(n31), .B(crcOut[31]), .C(n40), .Z(crcOut[27]) );
  GTECH_XNOR2 U70 ( .A(n27), .B(n41), .Z(crcOut[31]) );
  GTECH_XOR3 U71 ( .A(n36), .B(n33), .C(crcOut[30]), .Z(crcOut[26]) );
  GTECH_XOR2 U72 ( .A(n37), .B(n28), .Z(crcOut[30]) );
  GTECH_XOR2 U73 ( .A(n37), .B(n42), .Z(crcOut[25]) );
  GTECH_XOR2 U74 ( .A(n38), .B(n43), .Z(crcOut[24]) );
  GTECH_XNOR2 U75 ( .A(crcIn[31]), .B(n44), .Z(crcOut[23]) );
  GTECH_XOR2 U76 ( .A(crcIn[30]), .B(n42), .Z(crcOut[22]) );
  GTECH_XOR3 U77 ( .A(n39), .B(n30), .C(n33), .Z(n42) );
  GTECH_XOR2 U78 ( .A(crcIn[29]), .B(n43), .Z(crcOut[21]) );
  GTECH_XOR3 U79 ( .A(n26), .B(n31), .C(n34), .Z(n43) );
  GTECH_XNOR2 U80 ( .A(crcIn[28]), .B(n44), .Z(crcOut[20]) );
  GTECH_XOR2 U81 ( .A(n32), .B(n28), .Z(n44) );
  GTECH_XOR2 U82 ( .A(n40), .B(n45), .Z(n32) );
  GTECH_XOR3 U83 ( .A(crcIn[9]), .B(n38), .C(n40), .Z(crcOut[1]) );
  GTECH_XNOR4 U84 ( .A(crcIn[27]), .B(n28), .C(n35), .D(n33), .Z(crcOut[19])
         );
  GTECH_XNOR2 U85 ( .A(n30), .B(n46), .Z(n35) );
  GTECH_XOR2 U86 ( .A(n47), .B(n26), .Z(n28) );
  GTECH_NOT U87 ( .A(n41), .Z(n26) );
  GTECH_NOT U88 ( .A(n39), .Z(n47) );
  GTECH_XOR3 U89 ( .A(crcIn[26]), .B(n48), .C(n49), .Z(crcOut[18]) );
  GTECH_XNOR3 U90 ( .A(crcIn[25]), .B(n40), .C(n48), .Z(crcOut[17]) );
  GTECH_XNOR2 U91 ( .A(n37), .B(n31), .Z(n48) );
  GTECH_XNOR2 U92 ( .A(n36), .B(n30), .Z(n31) );
  GTECH_NOT U93 ( .A(n45), .Z(n36) );
  GTECH_XNOR3 U94 ( .A(crcIn[24]), .B(n33), .C(n50), .Z(crcOut[16]) );
  GTECH_XNOR3 U95 ( .A(crcIn[23]), .B(n41), .C(n33), .Z(crcOut[15]) );
  GTECH_XOR2 U96 ( .A(n34), .B(n40), .Z(n33) );
  GTECH_XNOR2 U97 ( .A(data[7]), .B(crcIn[7]), .Z(n41) );
  GTECH_XNOR3 U98 ( .A(crcIn[22]), .B(n27), .C(n49), .Z(crcOut[14]) );
  GTECH_XOR2 U99 ( .A(n34), .B(n39), .Z(n49) );
  GTECH_XNOR2 U100 ( .A(data[6]), .B(crcIn[6]), .Z(n39) );
  GTECH_NOT U101 ( .A(n46), .Z(n27) );
  GTECH_XNOR3 U102 ( .A(crcIn[21]), .B(n30), .C(n37), .Z(crcOut[13]) );
  GTECH_XNOR2 U103 ( .A(n38), .B(n46), .Z(n37) );
  GTECH_XNOR2 U104 ( .A(data[1]), .B(crcIn[1]), .Z(n46) );
  GTECH_XNOR2 U105 ( .A(data[5]), .B(crcIn[5]), .Z(n30) );
  GTECH_XNOR2 U106 ( .A(crcIn[20]), .B(n50), .Z(crcOut[12]) );
  GTECH_XOR2 U107 ( .A(n45), .B(n38), .Z(n50) );
  GTECH_XOR2 U108 ( .A(data[0]), .B(crcIn[0]), .Z(n38) );
  GTECH_XNOR2 U109 ( .A(data[4]), .B(crcIn[4]), .Z(n45) );
  GTECH_XOR2 U110 ( .A(crcIn[19]), .B(n40), .Z(crcOut[11]) );
  GTECH_XOR2 U111 ( .A(data[3]), .B(crcIn[3]), .Z(n40) );
  GTECH_XOR2 U112 ( .A(crcIn[18]), .B(n34), .Z(crcOut[10]) );
  GTECH_XOR2 U113 ( .A(crcIn[8]), .B(n34), .Z(crcOut[0]) );
  GTECH_XOR2 U114 ( .A(data[2]), .B(crcIn[2]), .Z(n34) );
endmodule

