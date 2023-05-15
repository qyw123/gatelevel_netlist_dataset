
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190;

  GTECH_MUX2 U69 ( .A(n138), .B(n139), .S(n140), .Z(sum[7]) );
  GTECH_XNOR2 U70 ( .A(n141), .B(n142), .Z(n139) );
  GTECH_XNOR2 U71 ( .A(n143), .B(n142), .Z(n138) );
  GTECH_XNOR2 U72 ( .A(b[7]), .B(a[7]), .Z(n142) );
  GTECH_OA21 U73 ( .A(a[6]), .B(n144), .C(n145), .Z(n143) );
  GTECH_AO21 U74 ( .A(n144), .B(a[6]), .C(b[6]), .Z(n145) );
  GTECH_MUX2 U75 ( .A(n146), .B(n147), .S(n140), .Z(sum[6]) );
  GTECH_ADD_AB U76 ( .A(n148), .B(n149), .S(n147) );
  GTECH_ADD_AB U77 ( .A(n144), .B(n149), .S(n146) );
  GTECH_ADD_AB U78 ( .A(b[6]), .B(a[6]), .S(n149) );
  GTECH_OAI21 U79 ( .A(n150), .B(n151), .C(n152), .Z(n144) );
  GTECH_OAI21 U80 ( .A(n153), .B(n152), .C(n154), .Z(sum[5]) );
  GTECH_MUX2 U81 ( .A(n155), .B(n156), .S(b[5]), .Z(n154) );
  GTECH_OR_NOT U82 ( .A(a[5]), .B(n153), .Z(n156) );
  GTECH_ADD_AB U83 ( .A(a[5]), .B(n153), .S(n155) );
  GTECH_OA21 U84 ( .A(n157), .B(n158), .C(n151), .Z(n153) );
  GTECH_NOT U85 ( .A(n159), .Z(n151) );
  GTECH_OAI21 U86 ( .A(n160), .B(n158), .C(n161), .Z(sum[4]) );
  GTECH_NOR2 U87 ( .A(n159), .B(n157), .Z(n160) );
  GTECH_MUX2 U88 ( .A(n162), .B(n163), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U89 ( .A(n164), .B(n165), .Z(n163) );
  GTECH_XNOR2 U90 ( .A(n166), .B(n165), .Z(n162) );
  GTECH_XNOR2 U91 ( .A(b[3]), .B(a[3]), .Z(n165) );
  GTECH_OA21 U92 ( .A(a[2]), .B(n167), .C(n168), .Z(n166) );
  GTECH_AO21 U93 ( .A(n167), .B(a[2]), .C(b[2]), .Z(n168) );
  GTECH_MUX2 U94 ( .A(n169), .B(n170), .S(cin), .Z(sum[2]) );
  GTECH_ADD_AB U95 ( .A(n171), .B(n172), .S(n170) );
  GTECH_ADD_AB U96 ( .A(n167), .B(n172), .S(n169) );
  GTECH_ADD_AB U97 ( .A(b[2]), .B(a[2]), .S(n172) );
  GTECH_OAI21 U98 ( .A(n173), .B(n174), .C(n175), .Z(n167) );
  GTECH_MUX2 U99 ( .A(n176), .B(n177), .S(n178), .Z(sum[1]) );
  GTECH_AND_NOT U100 ( .A(n175), .B(n173), .Z(n178) );
  GTECH_AO21 U101 ( .A(n179), .B(n174), .C(n180), .Z(n177) );
  GTECH_OAI21 U102 ( .A(n180), .B(n179), .C(n174), .Z(n176) );
  GTECH_OR_NOT U103 ( .A(n181), .B(a[0]), .Z(n174) );
  GTECH_NOT U104 ( .A(cin), .Z(n179) );
  GTECH_XNOR2 U105 ( .A(cin), .B(n182), .Z(sum[0]) );
  GTECH_OAI21 U106 ( .A(n183), .B(n158), .C(n161), .Z(cout) );
  GTECH_OR3 U107 ( .A(n157), .B(n159), .C(n140), .Z(n161) );
  GTECH_NOT U108 ( .A(n158), .Z(n140) );
  GTECH_AND2 U109 ( .A(b[4]), .B(a[4]), .Z(n159) );
  GTECH_MUX2 U110 ( .A(n182), .B(n184), .S(cin), .Z(n158) );
  GTECH_AOI21 U111 ( .A(n164), .B(a[3]), .C(n185), .Z(n184) );
  GTECH_OA21 U112 ( .A(a[3]), .B(n164), .C(b[3]), .Z(n185) );
  GTECH_AO21 U113 ( .A(n171), .B(a[2]), .C(n186), .Z(n164) );
  GTECH_OA21 U114 ( .A(a[2]), .B(n171), .C(b[2]), .Z(n186) );
  GTECH_OAI21 U115 ( .A(n173), .B(n180), .C(n175), .Z(n171) );
  GTECH_OR_NOT U116 ( .A(n187), .B(b[1]), .Z(n175) );
  GTECH_AND_NOT U117 ( .A(n181), .B(a[0]), .Z(n180) );
  GTECH_NOT U118 ( .A(b[0]), .Z(n181) );
  GTECH_AND_NOT U119 ( .A(n187), .B(b[1]), .Z(n173) );
  GTECH_NOT U120 ( .A(a[1]), .Z(n187) );
  GTECH_XNOR2 U121 ( .A(b[0]), .B(a[0]), .Z(n182) );
  GTECH_AOI21 U122 ( .A(n141), .B(a[7]), .C(n188), .Z(n183) );
  GTECH_OA21 U123 ( .A(a[7]), .B(n141), .C(b[7]), .Z(n188) );
  GTECH_AO21 U124 ( .A(n148), .B(a[6]), .C(n189), .Z(n141) );
  GTECH_OA21 U125 ( .A(a[6]), .B(n148), .C(b[6]), .Z(n189) );
  GTECH_OAI21 U126 ( .A(n157), .B(n150), .C(n152), .Z(n148) );
  GTECH_OR_NOT U127 ( .A(n190), .B(b[5]), .Z(n152) );
  GTECH_NOT U128 ( .A(a[5]), .Z(n190) );
  GTECH_NOR2 U129 ( .A(a[5]), .B(b[5]), .Z(n150) );
  GTECH_NOR2 U130 ( .A(a[4]), .B(b[4]), .Z(n157) );
endmodule

