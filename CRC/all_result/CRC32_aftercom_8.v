
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
  GTECH_NOT U67 ( .A(n37), .Z(n35) );
  GTECH_XOR2 U68 ( .A(crcIn[14]), .B(n38), .Z(crcOut[6]) );
  GTECH_XOR3 U69 ( .A(n39), .B(crcOut[31]), .C(n40), .Z(crcOut[5]) );
  GTECH_NOT U70 ( .A(crcIn[13]), .Z(n39) );
  GTECH_XOR3 U71 ( .A(crcIn[12]), .B(n37), .C(n41), .Z(crcOut[4]) );
  GTECH_XOR3 U72 ( .A(crcIn[11]), .B(n42), .C(n43), .Z(crcOut[3]) );
  GTECH_XOR3 U73 ( .A(crcIn[10]), .B(n44), .C(n45), .Z(crcOut[2]) );
  GTECH_XNOR2 U74 ( .A(n36), .B(crcOut[30]), .Z(crcOut[29]) );
  GTECH_XOR2 U75 ( .A(n37), .B(n38), .Z(crcOut[28]) );
  GTECH_XOR2 U76 ( .A(n46), .B(n47), .Z(n37) );
  GTECH_XOR3 U77 ( .A(n38), .B(crcOut[31]), .C(n48), .Z(crcOut[27]) );
  GTECH_XOR2 U78 ( .A(n49), .B(n32), .Z(crcOut[31]) );
  GTECH_XOR3 U79 ( .A(n50), .B(n51), .C(crcOut[30]), .Z(crcOut[26]) );
  GTECH_XOR2 U80 ( .A(n45), .B(n33), .Z(crcOut[30]) );
  GTECH_XNOR2 U81 ( .A(n45), .B(n52), .Z(crcOut[25]) );
  GTECH_XNOR2 U82 ( .A(n46), .B(n53), .Z(crcOut[24]) );
  GTECH_XNOR2 U83 ( .A(crcIn[31]), .B(n54), .Z(crcOut[23]) );
  GTECH_XNOR2 U84 ( .A(crcIn[30]), .B(n52), .Z(crcOut[22]) );
  GTECH_XOR3 U85 ( .A(n55), .B(n36), .C(n51), .Z(n52) );
  GTECH_XNOR2 U86 ( .A(crcIn[29]), .B(n53), .Z(crcOut[21]) );
  GTECH_XOR3 U87 ( .A(n32), .B(n38), .C(n56), .Z(n53) );
  GTECH_XNOR2 U88 ( .A(crcIn[28]), .B(n54), .Z(crcOut[20]) );
  GTECH_XOR2 U89 ( .A(n40), .B(n33), .Z(n54) );
  GTECH_XNOR2 U90 ( .A(n48), .B(n44), .Z(n40) );
  GTECH_XOR3 U91 ( .A(crcIn[9]), .B(n46), .C(n48), .Z(crcOut[1]) );
  GTECH_XNOR4 U92 ( .A(crcIn[27]), .B(n33), .C(n43), .D(n41), .Z(crcOut[19])
         );
  GTECH_NOT U93 ( .A(n51), .Z(n41) );
  GTECH_XNOR2 U94 ( .A(n57), .B(n34), .Z(n43) );
  GTECH_XOR2 U95 ( .A(n55), .B(n32), .Z(n33) );
  GTECH_NOT U96 ( .A(n47), .Z(n55) );
  GTECH_XOR3 U97 ( .A(crcIn[26]), .B(n58), .C(n59), .Z(crcOut[18]) );
  GTECH_NOT U98 ( .A(n60), .Z(crcOut[17]) );
  GTECH_XOR3 U99 ( .A(crcIn[25]), .B(n48), .C(n58), .Z(n60) );
  GTECH_XNOR2 U100 ( .A(n45), .B(n38), .Z(n58) );
  GTECH_XOR2 U101 ( .A(n50), .B(n36), .Z(n38) );
  GTECH_NOT U102 ( .A(n57), .Z(n36) );
  GTECH_NOT U103 ( .A(n44), .Z(n50) );
  GTECH_XOR3 U104 ( .A(crcIn[24]), .B(n51), .C(n61), .Z(crcOut[16]) );
  GTECH_XOR3 U105 ( .A(crcIn[23]), .B(n32), .C(n51), .Z(crcOut[15]) );
  GTECH_XOR2 U106 ( .A(n42), .B(n48), .Z(n51) );
  GTECH_NOT U107 ( .A(n62), .Z(n32) );
  GTECH_XOR2 U108 ( .A(data[7]), .B(crcIn[7]), .Z(n62) );
  GTECH_XOR3 U109 ( .A(crcIn[22]), .B(n49), .C(n59), .Z(crcOut[14]) );
  GTECH_XNOR2 U110 ( .A(n56), .B(n47), .Z(n59) );
  GTECH_XOR2 U111 ( .A(data[6]), .B(crcIn[6]), .Z(n47) );
  GTECH_NOT U112 ( .A(n34), .Z(n49) );
  GTECH_XOR3 U113 ( .A(crcIn[21]), .B(n57), .C(n45), .Z(crcOut[13]) );
  GTECH_XOR2 U114 ( .A(n46), .B(n34), .Z(n45) );
  GTECH_XOR2 U115 ( .A(data[1]), .B(crcIn[1]), .Z(n34) );
  GTECH_XOR2 U116 ( .A(data[5]), .B(crcIn[5]), .Z(n57) );
  GTECH_XNOR2 U117 ( .A(crcIn[20]), .B(n61), .Z(crcOut[12]) );
  GTECH_XNOR2 U118 ( .A(n44), .B(n46), .Z(n61) );
  GTECH_XOR2 U119 ( .A(data[0]), .B(crcIn[0]), .Z(n46) );
  GTECH_XOR2 U120 ( .A(data[4]), .B(crcIn[4]), .Z(n44) );
  GTECH_XOR2 U121 ( .A(crcIn[19]), .B(n48), .Z(crcOut[11]) );
  GTECH_XOR2 U122 ( .A(data[3]), .B(crcIn[3]), .Z(n48) );
  GTECH_XNOR2 U123 ( .A(crcIn[18]), .B(n42), .Z(crcOut[10]) );
  GTECH_XNOR2 U124 ( .A(crcIn[8]), .B(n42), .Z(crcOut[0]) );
  GTECH_NOT U125 ( .A(n56), .Z(n42) );
  GTECH_XOR2 U126 ( .A(data[2]), .B(crcIn[2]), .Z(n56) );
endmodule

