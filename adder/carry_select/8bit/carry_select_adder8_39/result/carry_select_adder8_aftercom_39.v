
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
         n183, n184, n185, n186, n187;

  GTECH_MUX2 U70 ( .A(n139), .B(n140), .S(n141), .Z(sum[7]) );
  GTECH_ADD_AB U71 ( .A(n142), .B(n143), .S(n140) );
  GTECH_XNOR2 U72 ( .A(n144), .B(n143), .Z(n139) );
  GTECH_ADD_AB U73 ( .A(b[7]), .B(a[7]), .S(n143) );
  GTECH_AND2 U74 ( .A(n145), .B(n146), .Z(n144) );
  GTECH_OAI21 U75 ( .A(b[6]), .B(a[6]), .C(n147), .Z(n145) );
  GTECH_OAI21 U76 ( .A(n148), .B(n146), .C(n149), .Z(sum[6]) );
  GTECH_MUX2 U77 ( .A(n150), .B(n151), .S(b[6]), .Z(n149) );
  GTECH_OR_NOT U78 ( .A(a[6]), .B(n148), .Z(n151) );
  GTECH_ADD_AB U79 ( .A(a[6]), .B(n148), .S(n150) );
  GTECH_AOI21 U80 ( .A(n152), .B(n141), .C(n147), .Z(n148) );
  GTECH_AO21 U81 ( .A(n153), .B(n154), .C(n155), .Z(n147) );
  GTECH_MUX2 U82 ( .A(n156), .B(n157), .S(n158), .Z(sum[5]) );
  GTECH_AOI21 U83 ( .A(n159), .B(n141), .C(n154), .Z(n158) );
  GTECH_ADD_AB U84 ( .A(b[5]), .B(a[5]), .S(n157) );
  GTECH_OR_NOT U85 ( .A(n155), .B(n153), .Z(n156) );
  GTECH_OAI21 U86 ( .A(n160), .B(n161), .C(n162), .Z(sum[4]) );
  GTECH_MUX2 U87 ( .A(n163), .B(n164), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U88 ( .A(n165), .B(n166), .Z(n164) );
  GTECH_XNOR2 U89 ( .A(n167), .B(n166), .Z(n163) );
  GTECH_XNOR2 U90 ( .A(b[3]), .B(a[3]), .Z(n166) );
  GTECH_OA21 U91 ( .A(a[2]), .B(n168), .C(n169), .Z(n167) );
  GTECH_AO21 U92 ( .A(a[2]), .B(n168), .C(b[2]), .Z(n169) );
  GTECH_MUX2 U93 ( .A(n170), .B(n171), .S(cin), .Z(sum[2]) );
  GTECH_ADD_AB U94 ( .A(n172), .B(n173), .S(n171) );
  GTECH_ADD_AB U95 ( .A(n168), .B(n173), .S(n170) );
  GTECH_ADD_AB U96 ( .A(b[2]), .B(a[2]), .S(n173) );
  GTECH_OA21 U97 ( .A(n174), .B(n175), .C(n176), .Z(n168) );
  GTECH_MUX2 U98 ( .A(n177), .B(n178), .S(n179), .Z(sum[1]) );
  GTECH_AND_NOT U99 ( .A(n176), .B(n174), .Z(n179) );
  GTECH_OAI21 U100 ( .A(cin), .B(n175), .C(n180), .Z(n178) );
  GTECH_AO21 U101 ( .A(n180), .B(cin), .C(n175), .Z(n177) );
  GTECH_AND2 U102 ( .A(a[0]), .B(b[0]), .Z(n175) );
  GTECH_XNOR2 U103 ( .A(cin), .B(n181), .Z(sum[0]) );
  GTECH_OAI21 U104 ( .A(n182), .B(n161), .C(n162), .Z(cout) );
  GTECH_OR_NOT U105 ( .A(n141), .B(n160), .Z(n162) );
  GTECH_AND_NOT U106 ( .A(n159), .B(n154), .Z(n160) );
  GTECH_AND2 U107 ( .A(b[4]), .B(a[4]), .Z(n154) );
  GTECH_NOT U108 ( .A(n161), .Z(n141) );
  GTECH_MUX2 U109 ( .A(n181), .B(n183), .S(cin), .Z(n161) );
  GTECH_AOI21 U110 ( .A(n165), .B(a[3]), .C(n184), .Z(n183) );
  GTECH_OA21 U111 ( .A(a[3]), .B(n165), .C(b[3]), .Z(n184) );
  GTECH_AO21 U112 ( .A(n172), .B(a[2]), .C(n185), .Z(n165) );
  GTECH_OA21 U113 ( .A(n172), .B(a[2]), .C(b[2]), .Z(n185) );
  GTECH_OA21 U114 ( .A(n174), .B(n180), .C(n176), .Z(n172) );
  GTECH_OR2 U115 ( .A(a[1]), .B(b[1]), .Z(n176) );
  GTECH_OR2 U116 ( .A(a[0]), .B(b[0]), .Z(n180) );
  GTECH_AND2 U117 ( .A(b[1]), .B(a[1]), .Z(n174) );
  GTECH_XNOR2 U118 ( .A(b[0]), .B(a[0]), .Z(n181) );
  GTECH_AOI21 U119 ( .A(n142), .B(a[7]), .C(n186), .Z(n182) );
  GTECH_OA21 U120 ( .A(a[7]), .B(n142), .C(b[7]), .Z(n186) );
  GTECH_NAND2 U121 ( .A(n187), .B(n146), .Z(n142) );
  GTECH_NAND2 U122 ( .A(b[6]), .B(a[6]), .Z(n146) );
  GTECH_OAI21 U123 ( .A(a[6]), .B(b[6]), .C(n152), .Z(n187) );
  GTECH_AO21 U124 ( .A(n159), .B(n153), .C(n155), .Z(n152) );
  GTECH_AND2 U125 ( .A(b[5]), .B(a[5]), .Z(n155) );
  GTECH_OR2 U126 ( .A(a[5]), .B(b[5]), .Z(n153) );
  GTECH_OR2 U127 ( .A(a[4]), .B(b[4]), .Z(n159) );
endmodule

