
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
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193;

  GTECH_MUX2 U71 ( .A(n140), .B(n141), .S(n142), .Z(sum[7]) );
  GTECH_XNOR2 U72 ( .A(n143), .B(n144), .Z(n141) );
  GTECH_OA21 U73 ( .A(n145), .B(n146), .C(n147), .Z(n144) );
  GTECH_XNOR2 U74 ( .A(n143), .B(n148), .Z(n140) );
  GTECH_XOR2 U75 ( .A(a[7]), .B(b[7]), .Z(n143) );
  GTECH_MUX2 U76 ( .A(n149), .B(n150), .S(n151), .Z(sum[6]) );
  GTECH_OA21 U77 ( .A(n152), .B(n142), .C(n146), .Z(n151) );
  GTECH_OA21 U78 ( .A(n153), .B(n154), .C(n155), .Z(n146) );
  GTECH_XOR2 U79 ( .A(b[6]), .B(a[6]), .Z(n150) );
  GTECH_OR_NOT U80 ( .A(n145), .B(n147), .Z(n149) );
  GTECH_MUX2 U81 ( .A(n156), .B(n157), .S(n158), .Z(sum[5]) );
  GTECH_OA21 U82 ( .A(n159), .B(n142), .C(n154), .Z(n158) );
  GTECH_NOT U83 ( .A(n160), .Z(n159) );
  GTECH_XOR2 U84 ( .A(b[5]), .B(a[5]), .Z(n157) );
  GTECH_OR_NOT U85 ( .A(n153), .B(n155), .Z(n156) );
  GTECH_NOT U86 ( .A(n161), .Z(n153) );
  GTECH_NAND2 U87 ( .A(n162), .B(n163), .Z(sum[4]) );
  GTECH_AO21 U88 ( .A(n154), .B(n160), .C(n142), .Z(n162) );
  GTECH_MUX2 U89 ( .A(n164), .B(n165), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U90 ( .A(n166), .B(n167), .Z(n165) );
  GTECH_XOR2 U91 ( .A(n166), .B(n168), .Z(n164) );
  GTECH_AO21 U92 ( .A(n169), .B(n170), .C(n171), .Z(n168) );
  GTECH_XOR2 U93 ( .A(a[3]), .B(b[3]), .Z(n166) );
  GTECH_MUX2 U94 ( .A(n172), .B(n173), .S(cin), .Z(sum[2]) );
  GTECH_MUX2 U95 ( .A(n174), .B(n175), .S(n176), .Z(n173) );
  GTECH_MUX2 U96 ( .A(n174), .B(n175), .S(n170), .Z(n172) );
  GTECH_OA21 U97 ( .A(n177), .B(n178), .C(n179), .Z(n170) );
  GTECH_OR_NOT U98 ( .A(n171), .B(n169), .Z(n175) );
  GTECH_XOR2 U99 ( .A(a[2]), .B(b[2]), .Z(n174) );
  GTECH_MUX2 U100 ( .A(n180), .B(n181), .S(n182), .Z(sum[1]) );
  GTECH_AND_NOT U101 ( .A(n179), .B(n177), .Z(n182) );
  GTECH_OAI21 U102 ( .A(cin), .B(n178), .C(n183), .Z(n181) );
  GTECH_AO21 U103 ( .A(n183), .B(cin), .C(n178), .Z(n180) );
  GTECH_XNOR2 U104 ( .A(cin), .B(n184), .Z(sum[0]) );
  GTECH_OAI21 U105 ( .A(n185), .B(n142), .C(n163), .Z(cout) );
  GTECH_NAND3 U106 ( .A(n154), .B(n160), .C(n142), .Z(n163) );
  GTECH_NAND2 U107 ( .A(b[4]), .B(a[4]), .Z(n154) );
  GTECH_MUX2 U108 ( .A(n184), .B(n186), .S(cin), .Z(n142) );
  GTECH_NOT U109 ( .A(n187), .Z(n186) );
  GTECH_AO21 U110 ( .A(n167), .B(a[3]), .C(n188), .Z(n187) );
  GTECH_OA21 U111 ( .A(a[3]), .B(n167), .C(b[3]), .Z(n188) );
  GTECH_AO21 U112 ( .A(n169), .B(n176), .C(n171), .Z(n167) );
  GTECH_AND2 U113 ( .A(b[2]), .B(a[2]), .Z(n171) );
  GTECH_OA21 U114 ( .A(n177), .B(n183), .C(n179), .Z(n176) );
  GTECH_OR2 U115 ( .A(a[1]), .B(b[1]), .Z(n179) );
  GTECH_AND2 U116 ( .A(b[1]), .B(a[1]), .Z(n177) );
  GTECH_OR2 U117 ( .A(b[2]), .B(a[2]), .Z(n169) );
  GTECH_OR_NOT U118 ( .A(n178), .B(n183), .Z(n184) );
  GTECH_OR2 U119 ( .A(a[0]), .B(b[0]), .Z(n183) );
  GTECH_AND2 U120 ( .A(b[0]), .B(a[0]), .Z(n178) );
  GTECH_OA21 U121 ( .A(n148), .B(n189), .C(n190), .Z(n185) );
  GTECH_OAI21 U122 ( .A(a[7]), .B(n191), .C(b[7]), .Z(n190) );
  GTECH_NOT U123 ( .A(a[7]), .Z(n189) );
  GTECH_NOT U124 ( .A(n191), .Z(n148) );
  GTECH_NAND2 U125 ( .A(n192), .B(n147), .Z(n191) );
  GTECH_NAND2 U126 ( .A(b[6]), .B(a[6]), .Z(n147) );
  GTECH_AO21 U127 ( .A(n152), .B(n155), .C(n145), .Z(n192) );
  GTECH_NOT U128 ( .A(n193), .Z(n145) );
  GTECH_OR2 U129 ( .A(a[6]), .B(b[6]), .Z(n193) );
  GTECH_NAND2 U130 ( .A(b[5]), .B(a[5]), .Z(n155) );
  GTECH_NAND2 U131 ( .A(n161), .B(n160), .Z(n152) );
  GTECH_OR2 U132 ( .A(a[4]), .B(b[4]), .Z(n160) );
  GTECH_OR2 U133 ( .A(a[5]), .B(b[5]), .Z(n161) );
endmodule

