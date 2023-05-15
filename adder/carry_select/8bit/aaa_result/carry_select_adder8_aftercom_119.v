
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193;

  GTECH_MUX2 U72 ( .A(n141), .B(n142), .S(n143), .Z(sum[7]) );
  GTECH_XNOR2 U73 ( .A(n144), .B(n145), .Z(n142) );
  GTECH_OA21 U74 ( .A(n146), .B(n147), .C(n148), .Z(n145) );
  GTECH_XOR2 U75 ( .A(n144), .B(n149), .Z(n141) );
  GTECH_XOR2 U76 ( .A(a[7]), .B(b[7]), .Z(n144) );
  GTECH_MUX2 U77 ( .A(n150), .B(n151), .S(n152), .Z(sum[6]) );
  GTECH_OA21 U78 ( .A(n153), .B(n143), .C(n147), .Z(n152) );
  GTECH_OA21 U79 ( .A(n154), .B(n155), .C(n156), .Z(n147) );
  GTECH_XOR2 U80 ( .A(b[6]), .B(a[6]), .Z(n151) );
  GTECH_NAND2 U81 ( .A(n157), .B(n148), .Z(n150) );
  GTECH_MUX2 U82 ( .A(n158), .B(n159), .S(n143), .Z(sum[5]) );
  GTECH_XOR2 U83 ( .A(n155), .B(n160), .Z(n159) );
  GTECH_XNOR2 U84 ( .A(n160), .B(n161), .Z(n158) );
  GTECH_OR_NOT U85 ( .A(n154), .B(n156), .Z(n160) );
  GTECH_NOT U86 ( .A(n162), .Z(n154) );
  GTECH_OR_NOT U87 ( .A(n163), .B(n164), .Z(sum[4]) );
  GTECH_AOI21 U88 ( .A(n155), .B(n161), .C(n143), .Z(n163) );
  GTECH_MUX2 U89 ( .A(n165), .B(n166), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U90 ( .A(n167), .B(n168), .Z(n166) );
  GTECH_XNOR2 U91 ( .A(n169), .B(n167), .Z(n165) );
  GTECH_XNOR2 U92 ( .A(a[3]), .B(b[3]), .Z(n167) );
  GTECH_AOI21 U93 ( .A(n170), .B(n171), .C(n172), .Z(n169) );
  GTECH_OA21 U94 ( .A(n171), .B(n170), .C(n173), .Z(n172) );
  GTECH_MUX2 U95 ( .A(n174), .B(n175), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U96 ( .A(n176), .B(n177), .Z(n175) );
  GTECH_XNOR2 U97 ( .A(n176), .B(n171), .Z(n174) );
  GTECH_AOI21 U98 ( .A(n178), .B(n179), .C(n180), .Z(n171) );
  GTECH_XOR2 U99 ( .A(n170), .B(n173), .Z(n176) );
  GTECH_NOT U100 ( .A(b[2]), .Z(n173) );
  GTECH_MUX2 U101 ( .A(n181), .B(n182), .S(n183), .Z(sum[1]) );
  GTECH_AND_NOT U102 ( .A(n178), .B(n180), .Z(n183) );
  GTECH_OAI21 U103 ( .A(cin), .B(n179), .C(n184), .Z(n182) );
  GTECH_NOT U104 ( .A(n185), .Z(n181) );
  GTECH_AOI21 U105 ( .A(n184), .B(cin), .C(n179), .Z(n185) );
  GTECH_XNOR2 U106 ( .A(cin), .B(n186), .Z(sum[0]) );
  GTECH_OAI21 U107 ( .A(n187), .B(n143), .C(n164), .Z(cout) );
  GTECH_NAND3 U108 ( .A(n161), .B(n155), .C(n143), .Z(n164) );
  GTECH_NAND2 U109 ( .A(a[4]), .B(b[4]), .Z(n155) );
  GTECH_MUX2 U110 ( .A(n186), .B(n188), .S(cin), .Z(n143) );
  GTECH_AOI21 U111 ( .A(n168), .B(a[3]), .C(n189), .Z(n188) );
  GTECH_OA21 U112 ( .A(a[3]), .B(n168), .C(b[3]), .Z(n189) );
  GTECH_OAI21 U113 ( .A(n190), .B(n170), .C(n191), .Z(n168) );
  GTECH_OAI21 U114 ( .A(a[2]), .B(n177), .C(b[2]), .Z(n191) );
  GTECH_NOT U115 ( .A(n190), .Z(n177) );
  GTECH_NOT U116 ( .A(a[2]), .Z(n170) );
  GTECH_AOI21 U117 ( .A(n178), .B(n184), .C(n180), .Z(n190) );
  GTECH_AND2 U118 ( .A(a[1]), .B(b[1]), .Z(n180) );
  GTECH_OR2 U119 ( .A(a[1]), .B(b[1]), .Z(n178) );
  GTECH_OR_NOT U120 ( .A(n179), .B(n184), .Z(n186) );
  GTECH_OR2 U121 ( .A(b[0]), .B(a[0]), .Z(n184) );
  GTECH_AND2 U122 ( .A(a[0]), .B(b[0]), .Z(n179) );
  GTECH_AOI21 U123 ( .A(n149), .B(a[7]), .C(n192), .Z(n187) );
  GTECH_OA21 U124 ( .A(a[7]), .B(n149), .C(b[7]), .Z(n192) );
  GTECH_OR_NOT U125 ( .A(n193), .B(n148), .Z(n149) );
  GTECH_NAND2 U126 ( .A(a[6]), .B(b[6]), .Z(n148) );
  GTECH_AOI21 U127 ( .A(n153), .B(n156), .C(n146), .Z(n193) );
  GTECH_NOT U128 ( .A(n157), .Z(n146) );
  GTECH_OR2 U129 ( .A(a[6]), .B(b[6]), .Z(n157) );
  GTECH_NAND2 U130 ( .A(a[5]), .B(b[5]), .Z(n156) );
  GTECH_NAND2 U131 ( .A(n162), .B(n161), .Z(n153) );
  GTECH_OR2 U132 ( .A(b[4]), .B(a[4]), .Z(n161) );
  GTECH_OR2 U133 ( .A(b[5]), .B(a[5]), .Z(n162) );
endmodule

