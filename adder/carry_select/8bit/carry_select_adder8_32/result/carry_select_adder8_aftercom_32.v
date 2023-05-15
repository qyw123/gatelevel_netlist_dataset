
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196;

  GTECH_MUX2 U70 ( .A(n139), .B(n140), .S(n141), .Z(sum[7]) );
  GTECH_ADD_AB U71 ( .A(n142), .B(n143), .S(n140) );
  GTECH_AND2 U72 ( .A(n144), .B(n145), .Z(n143) );
  GTECH_AO21 U73 ( .A(n146), .B(n147), .C(n148), .Z(n144) );
  GTECH_ADD_AB U74 ( .A(n142), .B(n149), .S(n139) );
  GTECH_ADD_AB U75 ( .A(n150), .B(b[7]), .S(n142) );
  GTECH_OAI21 U76 ( .A(n151), .B(n145), .C(n152), .Z(sum[6]) );
  GTECH_MUX2 U77 ( .A(n153), .B(n154), .S(b[6]), .Z(n152) );
  GTECH_OR_NOT U78 ( .A(a[6]), .B(n151), .Z(n154) );
  GTECH_ADD_AB U79 ( .A(a[6]), .B(n151), .S(n153) );
  GTECH_OA21 U80 ( .A(n155), .B(n141), .C(n148), .Z(n151) );
  GTECH_OA21 U81 ( .A(n156), .B(n157), .C(n158), .Z(n148) );
  GTECH_MUX2 U82 ( .A(n159), .B(n160), .S(n161), .Z(sum[5]) );
  GTECH_OA21 U83 ( .A(n162), .B(n141), .C(n157), .Z(n161) );
  GTECH_ADD_AB U84 ( .A(b[5]), .B(a[5]), .S(n160) );
  GTECH_OR_NOT U85 ( .A(n156), .B(n158), .Z(n159) );
  GTECH_AO21 U86 ( .A(n163), .B(n164), .C(n165), .Z(sum[4]) );
  GTECH_MUX2 U87 ( .A(n166), .B(n167), .S(cin), .Z(sum[3]) );
  GTECH_ADD_AB U88 ( .A(n168), .B(n169), .S(n167) );
  GTECH_NOT U89 ( .A(n170), .Z(n166) );
  GTECH_ADD_AB U90 ( .A(n168), .B(n171), .S(n170) );
  GTECH_AND_NOT U91 ( .A(n172), .B(n173), .Z(n171) );
  GTECH_OAI21 U92 ( .A(b[2]), .B(a[2]), .C(n174), .Z(n172) );
  GTECH_ADD_AB U93 ( .A(a[3]), .B(b[3]), .S(n168) );
  GTECH_MUX2 U94 ( .A(n175), .B(n176), .S(n177), .Z(sum[2]) );
  GTECH_MUX2 U95 ( .A(n178), .B(n179), .S(n174), .Z(n176) );
  GTECH_AOI2N2 U96 ( .A(n180), .B(n181), .C(b[1]), .D(a[1]), .Z(n174) );
  GTECH_MUX2 U97 ( .A(n179), .B(n178), .S(n182), .Z(n175) );
  GTECH_ADD_AB U98 ( .A(n183), .B(n184), .S(n178) );
  GTECH_AO21 U99 ( .A(n184), .B(n183), .C(n173), .Z(n179) );
  GTECH_MUX2 U100 ( .A(n185), .B(n186), .S(n187), .Z(sum[1]) );
  GTECH_ADD_AB U101 ( .A(b[1]), .B(a[1]), .S(n187) );
  GTECH_AO21 U102 ( .A(n177), .B(n181), .C(n188), .Z(n186) );
  GTECH_OAI21 U103 ( .A(n188), .B(n177), .C(n181), .Z(n185) );
  GTECH_NAND2 U104 ( .A(a[0]), .B(b[0]), .Z(n181) );
  GTECH_NOT U105 ( .A(cin), .Z(n177) );
  GTECH_ADD_AB U106 ( .A(cin), .B(n189), .S(sum[0]) );
  GTECH_AO21 U107 ( .A(n190), .B(n164), .C(n165), .Z(cout) );
  GTECH_AND_NOT U108 ( .A(n141), .B(n163), .Z(n165) );
  GTECH_OR_NOT U109 ( .A(n162), .B(n157), .Z(n163) );
  GTECH_NAND2 U110 ( .A(a[4]), .B(b[4]), .Z(n157) );
  GTECH_NOT U111 ( .A(n164), .Z(n141) );
  GTECH_MUX2 U112 ( .A(n189), .B(n191), .S(cin), .Z(n164) );
  GTECH_OA21 U113 ( .A(a[3]), .B(n169), .C(n192), .Z(n191) );
  GTECH_AO21 U114 ( .A(n169), .B(a[3]), .C(b[3]), .Z(n192) );
  GTECH_OR_NOT U115 ( .A(n173), .B(n193), .Z(n169) );
  GTECH_AO21 U116 ( .A(n183), .B(n184), .C(n182), .Z(n193) );
  GTECH_OAI2N2 U117 ( .A(b[1]), .B(a[1]), .C(n180), .D(n188), .Z(n182) );
  GTECH_NOR2 U118 ( .A(b[0]), .B(a[0]), .Z(n188) );
  GTECH_NAND2 U119 ( .A(a[1]), .B(b[1]), .Z(n180) );
  GTECH_NOT U120 ( .A(b[2]), .Z(n184) );
  GTECH_NOT U121 ( .A(a[2]), .Z(n183) );
  GTECH_AND2 U122 ( .A(b[2]), .B(a[2]), .Z(n173) );
  GTECH_ADD_AB U123 ( .A(a[0]), .B(b[0]), .S(n189) );
  GTECH_OAI21 U124 ( .A(n149), .B(n150), .C(n194), .Z(n190) );
  GTECH_OAI21 U125 ( .A(a[7]), .B(n195), .C(b[7]), .Z(n194) );
  GTECH_NOT U126 ( .A(n149), .Z(n195) );
  GTECH_NOT U127 ( .A(a[7]), .Z(n150) );
  GTECH_AND2 U128 ( .A(n196), .B(n145), .Z(n149) );
  GTECH_OR_NOT U129 ( .A(n146), .B(a[6]), .Z(n145) );
  GTECH_AO21 U130 ( .A(n147), .B(n146), .C(n155), .Z(n196) );
  GTECH_OA21 U131 ( .A(n162), .B(n156), .C(n158), .Z(n155) );
  GTECH_NAND2 U132 ( .A(b[5]), .B(a[5]), .Z(n158) );
  GTECH_NOR2 U133 ( .A(b[5]), .B(a[5]), .Z(n156) );
  GTECH_NOR2 U134 ( .A(b[4]), .B(a[4]), .Z(n162) );
  GTECH_NOT U135 ( .A(b[6]), .Z(n146) );
  GTECH_NOT U136 ( .A(a[6]), .Z(n147) );
endmodule

