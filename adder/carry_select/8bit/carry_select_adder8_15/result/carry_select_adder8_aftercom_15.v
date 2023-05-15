
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189;

  GTECH_MUX2 U64 ( .A(n133), .B(n134), .S(n135), .Z(sum[7]) );
  GTECH_XOR2 U65 ( .A(n136), .B(n137), .Z(n134) );
  GTECH_XOR2 U66 ( .A(n138), .B(n136), .Z(n133) );
  GTECH_XOR2 U67 ( .A(a[7]), .B(b[7]), .Z(n136) );
  GTECH_OA21 U68 ( .A(a[6]), .B(n139), .C(n140), .Z(n138) );
  GTECH_OAI21 U69 ( .A(n141), .B(n142), .C(n143), .Z(n140) );
  GTECH_NOT U70 ( .A(n141), .Z(n139) );
  GTECH_MUX2 U71 ( .A(n144), .B(n145), .S(n135), .Z(sum[6]) );
  GTECH_XOR2 U72 ( .A(n146), .B(n147), .Z(n145) );
  GTECH_XNOR2 U73 ( .A(n146), .B(n141), .Z(n144) );
  GTECH_AOI22 U74 ( .A(a[5]), .B(b[5]), .C(n148), .D(n149), .Z(n141) );
  GTECH_NOT U75 ( .A(n150), .Z(n148) );
  GTECH_XNOR2 U76 ( .A(a[6]), .B(n143), .Z(n146) );
  GTECH_NOT U77 ( .A(b[6]), .Z(n143) );
  GTECH_MUX2 U78 ( .A(n151), .B(n152), .S(n135), .Z(sum[5]) );
  GTECH_XNOR2 U79 ( .A(n153), .B(n154), .Z(n152) );
  GTECH_XOR2 U80 ( .A(n149), .B(n153), .Z(n151) );
  GTECH_AOI21 U81 ( .A(a[5]), .B(b[5]), .C(n150), .Z(n153) );
  GTECH_NAND2 U82 ( .A(n155), .B(n156), .Z(sum[4]) );
  GTECH_OAI21 U83 ( .A(n149), .B(n154), .C(n135), .Z(n155) );
  GTECH_MUX2 U84 ( .A(n157), .B(n158), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U85 ( .A(n159), .B(n160), .Z(n158) );
  GTECH_XNOR2 U86 ( .A(n161), .B(n159), .Z(n157) );
  GTECH_XNOR2 U87 ( .A(a[3]), .B(b[3]), .Z(n159) );
  GTECH_AOI21 U88 ( .A(n162), .B(n163), .C(n164), .Z(n161) );
  GTECH_OA21 U89 ( .A(n163), .B(n162), .C(n165), .Z(n164) );
  GTECH_MUX2 U90 ( .A(n166), .B(n167), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U91 ( .A(n168), .B(n169), .Z(n167) );
  GTECH_XNOR2 U92 ( .A(n168), .B(n163), .Z(n166) );
  GTECH_AOI21 U93 ( .A(n170), .B(n171), .C(n172), .Z(n163) );
  GTECH_XNOR2 U94 ( .A(a[2]), .B(n165), .Z(n168) );
  GTECH_MUX2 U95 ( .A(n173), .B(n174), .S(n175), .Z(sum[1]) );
  GTECH_AND_NOT U96 ( .A(n170), .B(n172), .Z(n175) );
  GTECH_OAI21 U97 ( .A(cin), .B(n171), .C(n176), .Z(n174) );
  GTECH_NOT U98 ( .A(n177), .Z(n173) );
  GTECH_AOI21 U99 ( .A(n176), .B(cin), .C(n171), .Z(n177) );
  GTECH_XOR2 U100 ( .A(cin), .B(n178), .Z(sum[0]) );
  GTECH_OAI21 U101 ( .A(n179), .B(n180), .C(n156), .Z(cout) );
  GTECH_OR3 U102 ( .A(n149), .B(n154), .C(n135), .Z(n156) );
  GTECH_AND2 U103 ( .A(a[4]), .B(b[4]), .Z(n149) );
  GTECH_NOT U104 ( .A(n135), .Z(n180) );
  GTECH_MUX2 U105 ( .A(n178), .B(n181), .S(cin), .Z(n135) );
  GTECH_AOI21 U106 ( .A(n182), .B(n160), .C(n183), .Z(n181) );
  GTECH_AOI21 U107 ( .A(n184), .B(a[3]), .C(b[3]), .Z(n183) );
  GTECH_NOT U108 ( .A(n160), .Z(n184) );
  GTECH_OA21 U109 ( .A(n169), .B(n162), .C(n185), .Z(n160) );
  GTECH_NOT U110 ( .A(n186), .Z(n185) );
  GTECH_AOI21 U111 ( .A(n162), .B(n169), .C(n165), .Z(n186) );
  GTECH_NOT U112 ( .A(b[2]), .Z(n165) );
  GTECH_NOT U113 ( .A(a[2]), .Z(n162) );
  GTECH_AOI21 U114 ( .A(n170), .B(n176), .C(n172), .Z(n169) );
  GTECH_AND2 U115 ( .A(a[1]), .B(b[1]), .Z(n172) );
  GTECH_OR2 U116 ( .A(b[1]), .B(a[1]), .Z(n170) );
  GTECH_NOT U117 ( .A(a[3]), .Z(n182) );
  GTECH_AND_NOT U118 ( .A(n176), .B(n171), .Z(n178) );
  GTECH_AND2 U119 ( .A(a[0]), .B(b[0]), .Z(n171) );
  GTECH_OR2 U120 ( .A(b[0]), .B(a[0]), .Z(n176) );
  GTECH_AOI21 U121 ( .A(n137), .B(a[7]), .C(n187), .Z(n179) );
  GTECH_OA21 U122 ( .A(a[7]), .B(n137), .C(b[7]), .Z(n187) );
  GTECH_OAI21 U123 ( .A(n188), .B(n142), .C(n189), .Z(n137) );
  GTECH_OAI21 U124 ( .A(a[6]), .B(n147), .C(b[6]), .Z(n189) );
  GTECH_NOT U125 ( .A(a[6]), .Z(n142) );
  GTECH_NOT U126 ( .A(n147), .Z(n188) );
  GTECH_OAI2N2 U127 ( .A(n150), .B(n154), .C(a[5]), .D(b[5]), .Z(n147) );
  GTECH_NOR2 U128 ( .A(b[4]), .B(a[4]), .Z(n154) );
  GTECH_NOR2 U129 ( .A(b[5]), .B(a[5]), .Z(n150) );
endmodule

