
module CRC32 ( crcIn, data, crcOut );
  input [31:0] crcIn;
  input [7:0] data;
  output [31:0] crcOut;
  wire   n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59;

  GTECH_XOR2 U61 ( .A(crcIn[17]), .B(n29), .Z(crcOut[9]) );
  GTECH_XOR3 U62 ( .A(crcIn[16]), .B(n30), .C(n31), .Z(crcOut[8]) );
  GTECH_XNOR3 U63 ( .A(crcIn[15]), .B(n32), .C(n33), .Z(crcOut[7]) );
  GTECH_XOR2 U64 ( .A(crcIn[14]), .B(n34), .Z(crcOut[6]) );
  GTECH_XOR3 U65 ( .A(crcIn[13]), .B(n35), .C(crcOut[31]), .Z(crcOut[5]) );
  GTECH_XNOR3 U66 ( .A(crcIn[12]), .B(n32), .C(n36), .Z(crcOut[4]) );
  GTECH_XNOR3 U67 ( .A(crcIn[11]), .B(n37), .C(n38), .Z(crcOut[3]) );
  GTECH_XOR3 U68 ( .A(crcIn[10]), .B(n39), .C(n40), .Z(crcOut[2]) );
  GTECH_XOR2 U69 ( .A(n33), .B(crcOut[30]), .Z(crcOut[29]) );
  GTECH_XOR2 U70 ( .A(n32), .B(n41), .Z(crcOut[28]) );
  GTECH_XOR2 U71 ( .A(n42), .B(n43), .Z(n32) );
  GTECH_XOR3 U72 ( .A(n41), .B(n44), .C(crcOut[31]), .Z(crcOut[27]) );
  GTECH_XOR2 U73 ( .A(n31), .B(n29), .Z(crcOut[31]) );
  GTECH_XNOR3 U74 ( .A(n45), .B(n46), .C(crcOut[30]), .Z(crcOut[26]) );
  GTECH_XOR2 U75 ( .A(n47), .B(n30), .Z(crcOut[30]) );
  GTECH_XOR2 U76 ( .A(n40), .B(n48), .Z(crcOut[25]) );
  GTECH_XOR2 U77 ( .A(n42), .B(n49), .Z(crcOut[24]) );
  GTECH_NOT U78 ( .A(n50), .Z(n42) );
  GTECH_XOR2 U79 ( .A(crcIn[31]), .B(n51), .Z(crcOut[23]) );
  GTECH_NOT U80 ( .A(n52), .Z(crcOut[22]) );
  GTECH_XOR2 U81 ( .A(crcIn[30]), .B(n48), .Z(n52) );
  GTECH_XOR3 U82 ( .A(n43), .B(n33), .C(n46), .Z(n48) );
  GTECH_NOT U83 ( .A(n53), .Z(crcOut[21]) );
  GTECH_XOR2 U84 ( .A(crcIn[29]), .B(n49), .Z(n53) );
  GTECH_XOR3 U85 ( .A(n29), .B(n34), .C(n54), .Z(n49) );
  GTECH_XOR2 U86 ( .A(crcIn[28]), .B(n51), .Z(crcOut[20]) );
  GTECH_XOR2 U87 ( .A(n35), .B(n30), .Z(n51) );
  GTECH_XOR2 U88 ( .A(n44), .B(n39), .Z(n35) );
  GTECH_NOT U89 ( .A(n45), .Z(n39) );
  GTECH_XOR3 U90 ( .A(crcIn[9]), .B(n50), .C(n55), .Z(crcOut[1]) );
  GTECH_XNOR4 U91 ( .A(crcIn[27]), .B(n30), .C(n38), .D(n36), .Z(crcOut[19])
         );
  GTECH_NOT U92 ( .A(n46), .Z(n36) );
  GTECH_XOR2 U93 ( .A(n56), .B(n31), .Z(n38) );
  GTECH_XOR2 U94 ( .A(n43), .B(n29), .Z(n30) );
  GTECH_XOR3 U95 ( .A(crcIn[26]), .B(n57), .C(n58), .Z(crcOut[18]) );
  GTECH_XOR3 U96 ( .A(crcIn[25]), .B(n44), .C(n57), .Z(crcOut[17]) );
  GTECH_XOR2 U97 ( .A(n47), .B(n41), .Z(n57) );
  GTECH_NOT U98 ( .A(n34), .Z(n41) );
  GTECH_XOR2 U99 ( .A(n45), .B(n33), .Z(n34) );
  GTECH_NOT U100 ( .A(n55), .Z(n44) );
  GTECH_XNOR3 U101 ( .A(crcIn[24]), .B(n46), .C(n59), .Z(crcOut[16]) );
  GTECH_XNOR3 U102 ( .A(crcIn[23]), .B(n29), .C(n46), .Z(crcOut[15]) );
  GTECH_XOR2 U103 ( .A(n54), .B(n55), .Z(n46) );
  GTECH_XOR2 U104 ( .A(crcIn[7]), .B(data[7]), .Z(n29) );
  GTECH_XNOR3 U105 ( .A(crcIn[22]), .B(n31), .C(n58), .Z(crcOut[14]) );
  GTECH_XOR2 U106 ( .A(n54), .B(n43), .Z(n58) );
  GTECH_XOR2 U107 ( .A(crcIn[6]), .B(data[6]), .Z(n43) );
  GTECH_NOT U108 ( .A(n37), .Z(n54) );
  GTECH_XOR3 U109 ( .A(crcIn[21]), .B(n56), .C(n40), .Z(crcOut[13]) );
  GTECH_NOT U110 ( .A(n47), .Z(n40) );
  GTECH_XOR2 U111 ( .A(n50), .B(n31), .Z(n47) );
  GTECH_XOR2 U112 ( .A(crcIn[1]), .B(data[1]), .Z(n31) );
  GTECH_NOT U113 ( .A(n33), .Z(n56) );
  GTECH_XOR2 U114 ( .A(crcIn[5]), .B(data[5]), .Z(n33) );
  GTECH_XOR2 U115 ( .A(crcIn[20]), .B(n59), .Z(crcOut[12]) );
  GTECH_XOR2 U116 ( .A(n45), .B(n50), .Z(n59) );
  GTECH_XOR2 U117 ( .A(crcIn[0]), .B(data[0]), .Z(n50) );
  GTECH_XOR2 U118 ( .A(crcIn[4]), .B(data[4]), .Z(n45) );
  GTECH_XOR2 U119 ( .A(crcIn[19]), .B(n55), .Z(crcOut[11]) );
  GTECH_XOR2 U120 ( .A(crcIn[3]), .B(data[3]), .Z(n55) );
  GTECH_XOR2 U121 ( .A(crcIn[18]), .B(n37), .Z(crcOut[10]) );
  GTECH_XOR2 U122 ( .A(crcIn[8]), .B(n37), .Z(crcOut[0]) );
  GTECH_XOR2 U123 ( .A(crcIn[2]), .B(data[2]), .Z(n37) );
endmodule

