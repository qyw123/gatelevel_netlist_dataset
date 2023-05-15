
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
  GTECH_ADD_AB U70 ( .A(n141), .B(n142), .S(n139) );
  GTECH_XNOR2 U71 ( .A(n143), .B(n142), .Z(n138) );
  GTECH_ADD_AB U72 ( .A(b[7]), .B(a[7]), .S(n142) );
  GTECH_AND2 U73 ( .A(n144), .B(n145), .Z(n143) );
  GTECH_OAI21 U74 ( .A(b[6]), .B(a[6]), .C(n146), .Z(n144) );
  GTECH_OAI21 U75 ( .A(n147), .B(n145), .C(n148), .Z(sum[6]) );
  GTECH_MUX2 U76 ( .A(n149), .B(n150), .S(b[6]), .Z(n148) );
  GTECH_OR2 U77 ( .A(a[6]), .B(n151), .Z(n150) );
  GTECH_ADD_AB U78 ( .A(a[6]), .B(n147), .S(n149) );
  GTECH_NOT U79 ( .A(n151), .Z(n147) );
  GTECH_AO21 U80 ( .A(n140), .B(n152), .C(n146), .Z(n151) );
  GTECH_AOI2N2 U81 ( .A(n153), .B(n154), .C(b[5]), .D(a[5]), .Z(n146) );
  GTECH_NOT U82 ( .A(n155), .Z(n140) );
  GTECH_MUX2 U83 ( .A(n156), .B(n157), .S(n155), .Z(sum[5]) );
  GTECH_MUX2 U84 ( .A(n158), .B(n159), .S(n154), .Z(n157) );
  GTECH_MUX2 U85 ( .A(n158), .B(n159), .S(n160), .Z(n156) );
  GTECH_ADD_AB U86 ( .A(b[5]), .B(a[5]), .S(n159) );
  GTECH_OAI21 U87 ( .A(a[5]), .B(b[5]), .C(n153), .Z(n158) );
  GTECH_XNOR2 U88 ( .A(n161), .B(n155), .Z(sum[4]) );
  GTECH_MUX2 U89 ( .A(n162), .B(n163), .S(cin), .Z(sum[3]) );
  GTECH_ADD_AB U90 ( .A(n164), .B(n165), .S(n163) );
  GTECH_XNOR2 U91 ( .A(n166), .B(n165), .Z(n162) );
  GTECH_ADD_AB U92 ( .A(b[3]), .B(a[3]), .S(n165) );
  GTECH_OA21 U93 ( .A(n167), .B(n168), .C(n169), .Z(n166) );
  GTECH_MUX2 U94 ( .A(n170), .B(n171), .S(n172), .Z(sum[2]) );
  GTECH_MUX2 U95 ( .A(n173), .B(n174), .S(n168), .Z(n171) );
  GTECH_OR_NOT U96 ( .A(n175), .B(n176), .Z(n168) );
  GTECH_OAI21 U97 ( .A(n177), .B(n178), .C(n179), .Z(n176) );
  GTECH_MUX2 U98 ( .A(n173), .B(n174), .S(n180), .Z(n170) );
  GTECH_ADD_AB U99 ( .A(b[2]), .B(a[2]), .S(n174) );
  GTECH_OR_NOT U100 ( .A(n167), .B(n169), .Z(n173) );
  GTECH_XNOR2 U101 ( .A(n181), .B(n182), .Z(sum[1]) );
  GTECH_OA22 U102 ( .A(n177), .B(n178), .C(n183), .D(n172), .Z(n182) );
  GTECH_AND_NOT U103 ( .A(n179), .B(n175), .Z(n181) );
  GTECH_ADD_AB U104 ( .A(n172), .B(n184), .S(sum[0]) );
  GTECH_NOT U105 ( .A(cin), .Z(n172) );
  GTECH_MUX2 U106 ( .A(n185), .B(n161), .S(n155), .Z(cout) );
  GTECH_MUX2 U107 ( .A(n184), .B(n186), .S(cin), .Z(n155) );
  GTECH_NOT U108 ( .A(n187), .Z(n186) );
  GTECH_AO21 U109 ( .A(n164), .B(a[3]), .C(n188), .Z(n187) );
  GTECH_OA21 U110 ( .A(a[3]), .B(n164), .C(b[3]), .Z(n188) );
  GTECH_OAI21 U111 ( .A(n167), .B(n180), .C(n169), .Z(n164) );
  GTECH_NAND2 U112 ( .A(b[2]), .B(a[2]), .Z(n169) );
  GTECH_AO21 U113 ( .A(n179), .B(n183), .C(n175), .Z(n180) );
  GTECH_NOR2 U114 ( .A(b[1]), .B(a[1]), .Z(n175) );
  GTECH_AND2 U115 ( .A(n177), .B(n178), .Z(n183) );
  GTECH_NOT U116 ( .A(b[0]), .Z(n177) );
  GTECH_NAND2 U117 ( .A(a[1]), .B(b[1]), .Z(n179) );
  GTECH_NOR2 U118 ( .A(a[2]), .B(b[2]), .Z(n167) );
  GTECH_ADD_AB U119 ( .A(b[0]), .B(n178), .S(n184) );
  GTECH_NOT U120 ( .A(a[0]), .Z(n178) );
  GTECH_AND_NOT U121 ( .A(n154), .B(n160), .Z(n161) );
  GTECH_NAND2 U122 ( .A(a[4]), .B(b[4]), .Z(n154) );
  GTECH_AO21 U123 ( .A(n141), .B(a[7]), .C(n189), .Z(n185) );
  GTECH_OA21 U124 ( .A(a[7]), .B(n141), .C(b[7]), .Z(n189) );
  GTECH_NAND2 U125 ( .A(n190), .B(n145), .Z(n141) );
  GTECH_NAND2 U126 ( .A(b[6]), .B(a[6]), .Z(n145) );
  GTECH_OAI21 U127 ( .A(a[6]), .B(b[6]), .C(n152), .Z(n190) );
  GTECH_AOI2N2 U128 ( .A(n153), .B(n160), .C(b[5]), .D(a[5]), .Z(n152) );
  GTECH_NOR2 U129 ( .A(b[4]), .B(a[4]), .Z(n160) );
  GTECH_NAND2 U130 ( .A(a[5]), .B(b[5]), .Z(n153) );
endmodule

