
module CRC32 ( crcIn, data, crcOut );
  input [31:0] crcIn;
  input [7:0] data;
  output [31:0] crcOut;
  wire   n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57;

  GTECH_ADD_AB U60 ( .A(crcIn[17]), .B(n28), .S(crcOut[9]) );
  GTECH_XOR3 U61 ( .A(crcIn[16]), .B(n29), .C(n30), .Z(crcOut[8]) );
  GTECH_XNOR3 U62 ( .A(crcIn[15]), .B(n31), .C(n32), .Z(crcOut[7]) );
  GTECH_ADD_AB U63 ( .A(crcIn[14]), .B(n33), .S(crcOut[6]) );
  GTECH_XOR3 U64 ( .A(crcIn[13]), .B(n34), .C(crcOut[31]), .Z(crcOut[5]) );
  GTECH_XOR3 U65 ( .A(crcIn[12]), .B(n31), .C(n35), .Z(crcOut[4]) );
  GTECH_XOR3 U66 ( .A(crcIn[11]), .B(n36), .C(n37), .Z(crcOut[3]) );
  GTECH_XOR3 U67 ( .A(crcIn[10]), .B(n38), .C(n39), .Z(crcOut[2]) );
  GTECH_ADD_AB U68 ( .A(n32), .B(crcOut[30]), .S(crcOut[29]) );
  GTECH_ADD_AB U69 ( .A(n31), .B(n40), .S(crcOut[28]) );
  GTECH_ADD_AB U70 ( .A(n41), .B(n42), .S(n31) );
  GTECH_XOR3 U71 ( .A(n40), .B(n43), .C(crcOut[31]), .Z(crcOut[27]) );
  GTECH_ADD_AB U72 ( .A(n30), .B(n28), .S(crcOut[31]) );
  GTECH_XNOR3 U73 ( .A(n44), .B(n35), .C(crcOut[30]), .Z(crcOut[26]) );
  GTECH_ADD_AB U74 ( .A(n45), .B(n29), .S(crcOut[30]) );
  GTECH_ADD_AB U75 ( .A(n39), .B(n46), .S(crcOut[25]) );
  GTECH_ADD_AB U76 ( .A(n41), .B(n47), .S(crcOut[24]) );
  GTECH_NOT U77 ( .A(n48), .Z(n41) );
  GTECH_ADD_AB U78 ( .A(crcIn[31]), .B(n49), .S(crcOut[23]) );
  GTECH_NOT U79 ( .A(n50), .Z(crcOut[22]) );
  GTECH_ADD_AB U80 ( .A(crcIn[30]), .B(n46), .S(n50) );
  GTECH_XOR3 U81 ( .A(n42), .B(n32), .C(n35), .Z(n46) );
  GTECH_NOT U82 ( .A(n51), .Z(crcOut[21]) );
  GTECH_ADD_AB U83 ( .A(crcIn[29]), .B(n47), .S(n51) );
  GTECH_XOR3 U84 ( .A(n28), .B(n33), .C(n36), .Z(n47) );
  GTECH_ADD_AB U85 ( .A(crcIn[28]), .B(n49), .S(crcOut[20]) );
  GTECH_ADD_AB U86 ( .A(n34), .B(n29), .S(n49) );
  GTECH_ADD_AB U87 ( .A(n43), .B(n38), .S(n34) );
  GTECH_NOT U88 ( .A(n44), .Z(n38) );
  GTECH_XOR3 U89 ( .A(crcIn[9]), .B(n48), .C(n52), .Z(crcOut[1]) );
  GTECH_XOR4 U90 ( .A(n35), .B(n37), .C(crcIn[27]), .D(n29), .Z(crcOut[19]) );
  GTECH_ADD_AB U91 ( .A(n42), .B(n28), .S(n29) );
  GTECH_ADD_AB U92 ( .A(n53), .B(n30), .S(n37) );
  GTECH_XOR3 U93 ( .A(crcIn[26]), .B(n54), .C(n55), .Z(crcOut[18]) );
  GTECH_XOR3 U94 ( .A(crcIn[25]), .B(n43), .C(n54), .Z(crcOut[17]) );
  GTECH_ADD_AB U95 ( .A(n45), .B(n40), .S(n54) );
  GTECH_NOT U96 ( .A(n33), .Z(n40) );
  GTECH_ADD_AB U97 ( .A(n44), .B(n32), .S(n33) );
  GTECH_NOT U98 ( .A(n52), .Z(n43) );
  GTECH_XNOR3 U99 ( .A(crcIn[24]), .B(n35), .C(n56), .Z(crcOut[16]) );
  GTECH_XNOR3 U100 ( .A(crcIn[23]), .B(n28), .C(n35), .Z(crcOut[15]) );
  GTECH_ADD_AB U101 ( .A(n36), .B(n52), .S(n35) );
  GTECH_ADD_AB U102 ( .A(crcIn[7]), .B(data[7]), .S(n28) );
  GTECH_XNOR3 U103 ( .A(crcIn[22]), .B(n30), .C(n55), .Z(crcOut[14]) );
  GTECH_ADD_AB U104 ( .A(n36), .B(n42), .S(n55) );
  GTECH_ADD_AB U105 ( .A(crcIn[6]), .B(data[6]), .S(n42) );
  GTECH_NOT U106 ( .A(n57), .Z(n36) );
  GTECH_XOR3 U107 ( .A(crcIn[21]), .B(n53), .C(n39), .Z(crcOut[13]) );
  GTECH_NOT U108 ( .A(n45), .Z(n39) );
  GTECH_ADD_AB U109 ( .A(n48), .B(n30), .S(n45) );
  GTECH_ADD_AB U110 ( .A(crcIn[1]), .B(data[1]), .S(n30) );
  GTECH_NOT U111 ( .A(n32), .Z(n53) );
  GTECH_ADD_AB U112 ( .A(crcIn[5]), .B(data[5]), .S(n32) );
  GTECH_ADD_AB U113 ( .A(crcIn[20]), .B(n56), .S(crcOut[12]) );
  GTECH_ADD_AB U114 ( .A(n44), .B(n48), .S(n56) );
  GTECH_ADD_AB U115 ( .A(crcIn[0]), .B(data[0]), .S(n48) );
  GTECH_ADD_AB U116 ( .A(crcIn[4]), .B(data[4]), .S(n44) );
  GTECH_ADD_AB U117 ( .A(crcIn[19]), .B(n52), .S(crcOut[11]) );
  GTECH_ADD_AB U118 ( .A(crcIn[3]), .B(data[3]), .S(n52) );
  GTECH_ADD_AB U119 ( .A(crcIn[18]), .B(n57), .S(crcOut[10]) );
  GTECH_ADD_AB U120 ( .A(crcIn[8]), .B(n57), .S(crcOut[0]) );
  GTECH_ADD_AB U121 ( .A(crcIn[2]), .B(data[2]), .S(n57) );
endmodule

