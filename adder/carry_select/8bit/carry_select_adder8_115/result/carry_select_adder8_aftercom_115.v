
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
         n194, n195;

  GTECH_MUX2 U70 ( .A(n139), .B(n140), .S(n141), .Z(sum[7]) );
  GTECH_XOR2 U71 ( .A(n142), .B(n143), .Z(n140) );
  GTECH_XNOR2 U72 ( .A(n144), .B(n143), .Z(n139) );
  GTECH_XOR2 U73 ( .A(n145), .B(b[7]), .Z(n143) );
  GTECH_OA21 U74 ( .A(n146), .B(n147), .C(n148), .Z(n144) );
  GTECH_MUX2 U75 ( .A(n149), .B(n150), .S(n141), .Z(sum[6]) );
  GTECH_XNOR2 U76 ( .A(n151), .B(n152), .Z(n150) );
  GTECH_XNOR2 U77 ( .A(n151), .B(n147), .Z(n149) );
  GTECH_OA21 U78 ( .A(n153), .B(n154), .C(n155), .Z(n147) );
  GTECH_AO21 U79 ( .A(n156), .B(n157), .C(n146), .Z(n151) );
  GTECH_MUX2 U80 ( .A(n158), .B(n159), .S(n141), .Z(sum[5]) );
  GTECH_XOR2 U81 ( .A(n160), .B(n161), .Z(n159) );
  GTECH_XNOR2 U82 ( .A(n154), .B(n160), .Z(n158) );
  GTECH_AO21 U83 ( .A(n162), .B(n163), .C(n153), .Z(n160) );
  GTECH_NAND2 U84 ( .A(n164), .B(n165), .Z(sum[4]) );
  GTECH_OAI21 U85 ( .A(n154), .B(n161), .C(n141), .Z(n164) );
  GTECH_MUX2 U86 ( .A(n166), .B(n167), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U87 ( .A(n168), .B(n169), .Z(n167) );
  GTECH_XNOR2 U88 ( .A(n168), .B(n170), .Z(n166) );
  GTECH_AOI21 U89 ( .A(n171), .B(n172), .C(n173), .Z(n170) );
  GTECH_XOR2 U90 ( .A(a[3]), .B(b[3]), .Z(n168) );
  GTECH_MUX2 U91 ( .A(n174), .B(n175), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U92 ( .A(n176), .B(n177), .Z(n175) );
  GTECH_XNOR2 U93 ( .A(n172), .B(n177), .Z(n174) );
  GTECH_OR_NOT U94 ( .A(n173), .B(n171), .Z(n177) );
  GTECH_AO21 U95 ( .A(n178), .B(n179), .C(n180), .Z(n172) );
  GTECH_MUX2 U96 ( .A(n181), .B(n182), .S(n183), .Z(sum[1]) );
  GTECH_NOR2 U97 ( .A(n184), .B(n180), .Z(n183) );
  GTECH_OAI21 U98 ( .A(cin), .B(n179), .C(n185), .Z(n182) );
  GTECH_AO21 U99 ( .A(n185), .B(cin), .C(n179), .Z(n181) );
  GTECH_AND_NOT U100 ( .A(a[0]), .B(n186), .Z(n179) );
  GTECH_XOR2 U101 ( .A(cin), .B(n187), .Z(sum[0]) );
  GTECH_OAI21 U102 ( .A(n188), .B(n189), .C(n165), .Z(cout) );
  GTECH_OR3 U103 ( .A(n154), .B(n161), .C(n141), .Z(n165) );
  GTECH_AND2 U104 ( .A(a[4]), .B(b[4]), .Z(n154) );
  GTECH_NOT U105 ( .A(n141), .Z(n189) );
  GTECH_MUX2 U106 ( .A(n187), .B(n190), .S(cin), .Z(n141) );
  GTECH_OA21 U107 ( .A(a[3]), .B(n169), .C(n191), .Z(n190) );
  GTECH_AO21 U108 ( .A(n169), .B(a[3]), .C(b[3]), .Z(n191) );
  GTECH_AO21 U109 ( .A(n176), .B(n171), .C(n173), .Z(n169) );
  GTECH_AND2 U110 ( .A(b[2]), .B(a[2]), .Z(n173) );
  GTECH_NOT U111 ( .A(n192), .Z(n171) );
  GTECH_NOR2 U112 ( .A(b[2]), .B(a[2]), .Z(n192) );
  GTECH_AO21 U113 ( .A(n178), .B(n185), .C(n180), .Z(n176) );
  GTECH_AND2 U114 ( .A(b[1]), .B(a[1]), .Z(n180) );
  GTECH_OR_NOT U115 ( .A(a[0]), .B(n186), .Z(n185) );
  GTECH_NOT U116 ( .A(b[0]), .Z(n186) );
  GTECH_NOT U117 ( .A(n184), .Z(n178) );
  GTECH_NOR2 U118 ( .A(b[1]), .B(a[1]), .Z(n184) );
  GTECH_XOR2 U119 ( .A(a[0]), .B(b[0]), .Z(n187) );
  GTECH_OA21 U120 ( .A(n145), .B(n142), .C(n193), .Z(n188) );
  GTECH_OAI21 U121 ( .A(n194), .B(a[7]), .C(b[7]), .Z(n193) );
  GTECH_NOT U122 ( .A(n142), .Z(n194) );
  GTECH_OAI21 U123 ( .A(n146), .B(n152), .C(n148), .Z(n142) );
  GTECH_OR_NOT U124 ( .A(b[6]), .B(n156), .Z(n148) );
  GTECH_NOT U125 ( .A(a[6]), .Z(n156) );
  GTECH_OA21 U126 ( .A(n153), .B(n195), .C(n155), .Z(n152) );
  GTECH_OR_NOT U127 ( .A(b[5]), .B(n162), .Z(n155) );
  GTECH_NOT U128 ( .A(a[5]), .Z(n162) );
  GTECH_NOT U129 ( .A(n161), .Z(n195) );
  GTECH_NOR2 U130 ( .A(b[4]), .B(a[4]), .Z(n161) );
  GTECH_AND_NOT U131 ( .A(a[5]), .B(n163), .Z(n153) );
  GTECH_NOT U132 ( .A(b[5]), .Z(n163) );
  GTECH_AND_NOT U133 ( .A(a[6]), .B(n157), .Z(n146) );
  GTECH_NOT U134 ( .A(b[6]), .Z(n157) );
  GTECH_NOT U135 ( .A(a[7]), .Z(n145) );
endmodule

