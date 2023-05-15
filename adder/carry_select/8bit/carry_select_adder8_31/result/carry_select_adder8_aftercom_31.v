
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194;

  GTECH_MUX2 U71 ( .A(n140), .B(n141), .S(n142), .Z(sum[7]) );
  GTECH_XNOR2 U72 ( .A(n143), .B(n144), .Z(n141) );
  GTECH_OA21 U73 ( .A(n145), .B(n146), .C(n147), .Z(n143) );
  GTECH_XNOR2 U74 ( .A(n148), .B(n144), .Z(n140) );
  GTECH_ADD_AB U75 ( .A(b[7]), .B(a[7]), .S(n144) );
  GTECH_MUX2 U76 ( .A(n149), .B(n150), .S(n151), .Z(sum[6]) );
  GTECH_OA21 U77 ( .A(n152), .B(n142), .C(n146), .Z(n151) );
  GTECH_AOI21 U78 ( .A(n153), .B(n154), .C(n155), .Z(n146) );
  GTECH_ADD_AB U79 ( .A(b[6]), .B(a[6]), .S(n150) );
  GTECH_OR_NOT U80 ( .A(n145), .B(n147), .Z(n149) );
  GTECH_MUX2 U81 ( .A(n156), .B(n157), .S(n158), .Z(sum[5]) );
  GTECH_AOI21 U82 ( .A(n159), .B(n160), .C(n154), .Z(n158) );
  GTECH_NOT U83 ( .A(n161), .Z(n154) );
  GTECH_NOT U84 ( .A(n142), .Z(n160) );
  GTECH_ADD_AB U85 ( .A(b[5]), .B(a[5]), .S(n157) );
  GTECH_OR_NOT U86 ( .A(n155), .B(n153), .Z(n156) );
  GTECH_NAND2 U87 ( .A(n162), .B(n163), .Z(sum[4]) );
  GTECH_AO21 U88 ( .A(n161), .B(n159), .C(n142), .Z(n163) );
  GTECH_MUX2 U89 ( .A(n164), .B(n165), .S(n166), .Z(sum[3]) );
  GTECH_ADD_AB U90 ( .A(n167), .B(n168), .S(n165) );
  GTECH_OR_NOT U91 ( .A(n169), .B(n170), .Z(n167) );
  GTECH_AO21 U92 ( .A(n171), .B(n172), .C(n173), .Z(n170) );
  GTECH_ADD_AB U93 ( .A(n174), .B(n168), .S(n164) );
  GTECH_ADD_AB U94 ( .A(b[3]), .B(a[3]), .S(n168) );
  GTECH_MUX2 U95 ( .A(n175), .B(n176), .S(cin), .Z(sum[2]) );
  GTECH_MUX2 U96 ( .A(n177), .B(n178), .S(n179), .Z(n176) );
  GTECH_MUX2 U97 ( .A(n177), .B(n178), .S(n173), .Z(n175) );
  GTECH_OA21 U98 ( .A(n180), .B(n181), .C(n182), .Z(n173) );
  GTECH_XNOR2 U99 ( .A(b[2]), .B(n172), .Z(n178) );
  GTECH_AO21 U100 ( .A(n171), .B(n172), .C(n169), .Z(n177) );
  GTECH_MUX2 U101 ( .A(n183), .B(n184), .S(n185), .Z(sum[1]) );
  GTECH_OR_NOT U102 ( .A(n180), .B(n182), .Z(n185) );
  GTECH_OAI21 U103 ( .A(n186), .B(n166), .C(n181), .Z(n184) );
  GTECH_AO21 U104 ( .A(n166), .B(n181), .C(n186), .Z(n183) );
  GTECH_NAND2 U105 ( .A(a[0]), .B(b[0]), .Z(n181) );
  GTECH_ADD_AB U106 ( .A(n166), .B(n187), .S(sum[0]) );
  GTECH_OAI21 U107 ( .A(n188), .B(n142), .C(n162), .Z(cout) );
  GTECH_NAND3 U108 ( .A(n161), .B(n159), .C(n142), .Z(n162) );
  GTECH_NAND2 U109 ( .A(b[4]), .B(a[4]), .Z(n161) );
  GTECH_MUX2 U110 ( .A(n189), .B(n187), .S(n166), .Z(n142) );
  GTECH_NOT U111 ( .A(cin), .Z(n166) );
  GTECH_XNOR2 U112 ( .A(b[0]), .B(a[0]), .Z(n187) );
  GTECH_AOI21 U113 ( .A(n174), .B(a[3]), .C(n190), .Z(n189) );
  GTECH_OA21 U114 ( .A(a[3]), .B(n174), .C(b[3]), .Z(n190) );
  GTECH_OR_NOT U115 ( .A(n169), .B(n191), .Z(n174) );
  GTECH_AO21 U116 ( .A(n172), .B(n171), .C(n179), .Z(n191) );
  GTECH_OA21 U117 ( .A(n180), .B(n186), .C(n182), .Z(n179) );
  GTECH_NAND2 U118 ( .A(b[1]), .B(a[1]), .Z(n182) );
  GTECH_NOR2 U119 ( .A(a[0]), .B(b[0]), .Z(n186) );
  GTECH_NOR2 U120 ( .A(a[1]), .B(b[1]), .Z(n180) );
  GTECH_NOR2 U121 ( .A(n171), .B(n172), .Z(n169) );
  GTECH_NOT U122 ( .A(a[2]), .Z(n172) );
  GTECH_NOT U123 ( .A(b[2]), .Z(n171) );
  GTECH_AOI21 U124 ( .A(n192), .B(a[7]), .C(n193), .Z(n188) );
  GTECH_NOT U125 ( .A(n194), .Z(n193) );
  GTECH_OAI21 U126 ( .A(a[7]), .B(n192), .C(b[7]), .Z(n194) );
  GTECH_NOT U127 ( .A(n148), .Z(n192) );
  GTECH_OA21 U128 ( .A(n152), .B(n145), .C(n147), .Z(n148) );
  GTECH_NAND2 U129 ( .A(a[6]), .B(b[6]), .Z(n147) );
  GTECH_NOR2 U130 ( .A(b[6]), .B(a[6]), .Z(n145) );
  GTECH_AOI21 U131 ( .A(n159), .B(n153), .C(n155), .Z(n152) );
  GTECH_AND2 U132 ( .A(a[5]), .B(b[5]), .Z(n155) );
  GTECH_OR2 U133 ( .A(b[5]), .B(a[5]), .Z(n153) );
  GTECH_OR2 U134 ( .A(a[4]), .B(b[4]), .Z(n159) );
endmodule

