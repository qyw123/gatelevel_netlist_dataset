
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
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196;

  GTECH_MUX2 U72 ( .A(n141), .B(n142), .S(n143), .Z(sum[7]) );
  GTECH_XOR2 U73 ( .A(n144), .B(n145), .Z(n142) );
  GTECH_XOR2 U74 ( .A(n144), .B(n146), .Z(n141) );
  GTECH_OA21 U75 ( .A(n147), .B(n148), .C(n149), .Z(n146) );
  GTECH_XOR2 U76 ( .A(n150), .B(b[7]), .Z(n144) );
  GTECH_MUX2 U77 ( .A(n151), .B(n152), .S(n153), .Z(sum[6]) );
  GTECH_OA21 U78 ( .A(n154), .B(n155), .C(n147), .Z(n153) );
  GTECH_AND2 U79 ( .A(n156), .B(n157), .Z(n147) );
  GTECH_NAND3 U80 ( .A(a[4]), .B(n158), .C(b[4]), .Z(n157) );
  GTECH_XOR2 U81 ( .A(b[6]), .B(a[6]), .Z(n152) );
  GTECH_OR_NOT U82 ( .A(n148), .B(n149), .Z(n151) );
  GTECH_MUX2 U83 ( .A(n159), .B(n160), .S(n161), .Z(sum[5]) );
  GTECH_AOI21 U84 ( .A(n143), .B(a[4]), .C(n162), .Z(n161) );
  GTECH_OA21 U85 ( .A(a[4]), .B(n143), .C(b[4]), .Z(n162) );
  GTECH_XOR2 U86 ( .A(b[5]), .B(a[5]), .Z(n160) );
  GTECH_NAND2 U87 ( .A(n156), .B(n158), .Z(n159) );
  GTECH_OAI21 U88 ( .A(n155), .B(n163), .C(n164), .Z(sum[4]) );
  GTECH_MUX2 U89 ( .A(n165), .B(n166), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U90 ( .A(n167), .B(n168), .Z(n166) );
  GTECH_XOR2 U91 ( .A(n167), .B(n169), .Z(n165) );
  GTECH_OA21 U92 ( .A(n170), .B(n171), .C(n172), .Z(n169) );
  GTECH_XOR2 U93 ( .A(n173), .B(b[3]), .Z(n167) );
  GTECH_NOT U94 ( .A(n174), .Z(sum[2]) );
  GTECH_MUX2 U95 ( .A(n175), .B(n176), .S(cin), .Z(n174) );
  GTECH_MUX2 U96 ( .A(n177), .B(n178), .S(n179), .Z(n176) );
  GTECH_MUX2 U97 ( .A(n177), .B(n178), .S(n171), .Z(n175) );
  GTECH_OAI21 U98 ( .A(n180), .B(n181), .C(n182), .Z(n171) );
  GTECH_XOR2 U99 ( .A(n183), .B(b[2]), .Z(n178) );
  GTECH_NOT U100 ( .A(a[2]), .Z(n183) );
  GTECH_AND_NOT U101 ( .A(n172), .B(n170), .Z(n177) );
  GTECH_MUX2 U102 ( .A(n184), .B(n185), .S(n186), .Z(sum[1]) );
  GTECH_AND_NOT U103 ( .A(n182), .B(n180), .Z(n186) );
  GTECH_OAI21 U104 ( .A(cin), .B(n181), .C(n187), .Z(n185) );
  GTECH_NOT U105 ( .A(n188), .Z(n184) );
  GTECH_AOI21 U106 ( .A(n187), .B(cin), .C(n181), .Z(n188) );
  GTECH_AND2 U107 ( .A(a[0]), .B(b[0]), .Z(n181) );
  GTECH_XOR2 U108 ( .A(cin), .B(n189), .Z(sum[0]) );
  GTECH_OAI21 U109 ( .A(n190), .B(n155), .C(n164), .Z(cout) );
  GTECH_OR_NOT U110 ( .A(n143), .B(n163), .Z(n164) );
  GTECH_XOR2 U111 ( .A(a[4]), .B(b[4]), .Z(n163) );
  GTECH_NOT U112 ( .A(n143), .Z(n155) );
  GTECH_MUX2 U113 ( .A(n189), .B(n191), .S(cin), .Z(n143) );
  GTECH_AOI21 U114 ( .A(n173), .B(n168), .C(n192), .Z(n191) );
  GTECH_OA21 U115 ( .A(n168), .B(n173), .C(n193), .Z(n192) );
  GTECH_NOT U116 ( .A(b[3]), .Z(n193) );
  GTECH_OA21 U117 ( .A(n170), .B(n179), .C(n172), .Z(n168) );
  GTECH_NAND2 U118 ( .A(b[2]), .B(a[2]), .Z(n172) );
  GTECH_OAI21 U119 ( .A(n180), .B(n187), .C(n182), .Z(n179) );
  GTECH_OR2 U120 ( .A(b[1]), .B(a[1]), .Z(n182) );
  GTECH_OR2 U121 ( .A(a[0]), .B(b[0]), .Z(n187) );
  GTECH_AND2 U122 ( .A(b[1]), .B(a[1]), .Z(n180) );
  GTECH_NOR2 U123 ( .A(b[2]), .B(a[2]), .Z(n170) );
  GTECH_NOT U124 ( .A(a[3]), .Z(n173) );
  GTECH_XOR2 U125 ( .A(a[0]), .B(b[0]), .Z(n189) );
  GTECH_OA21 U126 ( .A(n145), .B(n150), .C(n194), .Z(n190) );
  GTECH_OAI21 U127 ( .A(a[7]), .B(n195), .C(b[7]), .Z(n194) );
  GTECH_NOT U128 ( .A(n145), .Z(n195) );
  GTECH_NOT U129 ( .A(a[7]), .Z(n150) );
  GTECH_OA21 U130 ( .A(n154), .B(n148), .C(n149), .Z(n145) );
  GTECH_NAND2 U131 ( .A(b[6]), .B(a[6]), .Z(n149) );
  GTECH_NOR2 U132 ( .A(a[6]), .B(b[6]), .Z(n148) );
  GTECH_AND2 U133 ( .A(n196), .B(n156), .Z(n154) );
  GTECH_NAND2 U134 ( .A(a[5]), .B(b[5]), .Z(n156) );
  GTECH_OAI21 U135 ( .A(b[4]), .B(a[4]), .C(n158), .Z(n196) );
  GTECH_OR2 U136 ( .A(b[5]), .B(a[5]), .Z(n158) );
endmodule

