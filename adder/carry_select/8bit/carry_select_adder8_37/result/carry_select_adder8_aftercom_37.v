
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
         n185, n186, n187, n188, n189, n190, n191, n192;

  GTECH_MUX2 U72 ( .A(n141), .B(n142), .S(n143), .Z(sum[7]) );
  GTECH_XNOR2 U73 ( .A(n144), .B(n145), .Z(n142) );
  GTECH_OA21 U74 ( .A(n146), .B(n147), .C(n148), .Z(n144) );
  GTECH_AND_NOT U75 ( .A(n149), .B(a[6]), .Z(n146) );
  GTECH_ADD_AB U76 ( .A(n150), .B(n145), .S(n141) );
  GTECH_ADD_AB U77 ( .A(b[7]), .B(a[7]), .S(n145) );
  GTECH_OAI21 U78 ( .A(n151), .B(n148), .C(n152), .Z(sum[6]) );
  GTECH_MUX2 U79 ( .A(n153), .B(n154), .S(n149), .Z(n152) );
  GTECH_XNOR2 U80 ( .A(n155), .B(n151), .Z(n154) );
  GTECH_NAND2 U81 ( .A(n155), .B(n151), .Z(n153) );
  GTECH_OA21 U82 ( .A(n156), .B(n143), .C(n147), .Z(n151) );
  GTECH_OA21 U83 ( .A(n157), .B(n158), .C(n159), .Z(n147) );
  GTECH_MUX2 U84 ( .A(n160), .B(n161), .S(n162), .Z(sum[5]) );
  GTECH_OA21 U85 ( .A(n163), .B(n143), .C(n158), .Z(n162) );
  GTECH_ADD_AB U86 ( .A(b[5]), .B(a[5]), .S(n161) );
  GTECH_OR_NOT U87 ( .A(n157), .B(n159), .Z(n160) );
  GTECH_OAI21 U88 ( .A(n164), .B(n143), .C(n165), .Z(sum[4]) );
  GTECH_MUX2 U89 ( .A(n166), .B(n167), .S(cin), .Z(sum[3]) );
  GTECH_ADD_AB U90 ( .A(n168), .B(n169), .S(n167) );
  GTECH_XNOR2 U91 ( .A(n170), .B(n169), .Z(n166) );
  GTECH_ADD_AB U92 ( .A(b[3]), .B(a[3]), .S(n169) );
  GTECH_OA21 U93 ( .A(n171), .B(n172), .C(n173), .Z(n170) );
  GTECH_NOR2 U94 ( .A(b[2]), .B(a[2]), .Z(n171) );
  GTECH_MUX2 U95 ( .A(n174), .B(n175), .S(cin), .Z(sum[2]) );
  GTECH_MUX2 U96 ( .A(n176), .B(n177), .S(n178), .Z(n175) );
  GTECH_MUX2 U97 ( .A(n177), .B(n176), .S(n172), .Z(n174) );
  GTECH_OAI21 U98 ( .A(n179), .B(n180), .C(n181), .Z(n172) );
  GTECH_ADD_AB U99 ( .A(b[2]), .B(a[2]), .S(n176) );
  GTECH_OAI21 U100 ( .A(b[2]), .B(a[2]), .C(n173), .Z(n177) );
  GTECH_MUX2 U101 ( .A(n182), .B(n183), .S(n184), .Z(sum[1]) );
  GTECH_AND_NOT U102 ( .A(n181), .B(n179), .Z(n184) );
  GTECH_OAI21 U103 ( .A(cin), .B(n180), .C(n185), .Z(n183) );
  GTECH_AO21 U104 ( .A(n185), .B(cin), .C(n180), .Z(n182) );
  GTECH_ADD_AB U105 ( .A(a[0]), .B(b[0]), .COUT(n180) );
  GTECH_XNOR2 U106 ( .A(cin), .B(n186), .Z(sum[0]) );
  GTECH_OAI21 U107 ( .A(n187), .B(n143), .C(n165), .Z(cout) );
  GTECH_NAND2 U108 ( .A(n143), .B(n164), .Z(n165) );
  GTECH_AND_NOT U109 ( .A(n158), .B(n163), .Z(n164) );
  GTECH_NAND2 U110 ( .A(b[4]), .B(a[4]), .Z(n158) );
  GTECH_MUX2 U111 ( .A(n186), .B(n188), .S(cin), .Z(n143) );
  GTECH_AOI21 U112 ( .A(n168), .B(a[3]), .C(n189), .Z(n188) );
  GTECH_OA21 U113 ( .A(a[3]), .B(n168), .C(b[3]), .Z(n189) );
  GTECH_NAND2 U114 ( .A(n190), .B(n173), .Z(n168) );
  GTECH_NAND2 U115 ( .A(b[2]), .B(a[2]), .Z(n173) );
  GTECH_OAI21 U116 ( .A(a[2]), .B(b[2]), .C(n178), .Z(n190) );
  GTECH_OA21 U117 ( .A(n179), .B(n185), .C(n181), .Z(n178) );
  GTECH_OR2 U118 ( .A(a[1]), .B(b[1]), .Z(n181) );
  GTECH_OR2 U119 ( .A(a[0]), .B(b[0]), .Z(n185) );
  GTECH_ADD_AB U120 ( .A(a[1]), .B(b[1]), .COUT(n179) );
  GTECH_XNOR2 U121 ( .A(b[0]), .B(a[0]), .Z(n186) );
  GTECH_AOI21 U122 ( .A(n150), .B(a[7]), .C(n191), .Z(n187) );
  GTECH_OA21 U123 ( .A(a[7]), .B(n150), .C(b[7]), .Z(n191) );
  GTECH_NAND2 U124 ( .A(n192), .B(n148), .Z(n150) );
  GTECH_NAND2 U125 ( .A(b[6]), .B(a[6]), .Z(n148) );
  GTECH_AO21 U126 ( .A(n155), .B(n149), .C(n156), .Z(n192) );
  GTECH_OA21 U127 ( .A(n163), .B(n157), .C(n159), .Z(n156) );
  GTECH_NAND2 U128 ( .A(b[5]), .B(a[5]), .Z(n159) );
  GTECH_NOR2 U129 ( .A(a[5]), .B(b[5]), .Z(n157) );
  GTECH_NOR2 U130 ( .A(a[4]), .B(b[4]), .Z(n163) );
  GTECH_NOT U131 ( .A(b[6]), .Z(n149) );
  GTECH_NOT U132 ( .A(a[6]), .Z(n155) );
endmodule

