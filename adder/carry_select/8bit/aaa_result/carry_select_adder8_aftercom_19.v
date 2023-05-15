
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198;

  GTECH_MUX2 U73 ( .A(n142), .B(n143), .S(n144), .Z(sum[7]) );
  GTECH_XOR2 U74 ( .A(n145), .B(n146), .Z(n143) );
  GTECH_OA21 U75 ( .A(n147), .B(n148), .C(n149), .Z(n146) );
  GTECH_XOR2 U76 ( .A(n145), .B(n150), .Z(n142) );
  GTECH_XOR2 U77 ( .A(n151), .B(b[7]), .Z(n145) );
  GTECH_MUX2 U78 ( .A(n152), .B(n153), .S(n154), .Z(sum[6]) );
  GTECH_OA21 U79 ( .A(n155), .B(n144), .C(n148), .Z(n154) );
  GTECH_OA21 U80 ( .A(n156), .B(n157), .C(n158), .Z(n148) );
  GTECH_XOR2 U81 ( .A(b[6]), .B(a[6]), .Z(n153) );
  GTECH_NAND2 U82 ( .A(n149), .B(n159), .Z(n152) );
  GTECH_NOT U83 ( .A(n147), .Z(n159) );
  GTECH_MUX2 U84 ( .A(n160), .B(n161), .S(n162), .Z(sum[5]) );
  GTECH_OA21 U85 ( .A(n163), .B(n144), .C(n157), .Z(n162) );
  GTECH_XOR2 U86 ( .A(b[5]), .B(a[5]), .Z(n161) );
  GTECH_NAND2 U87 ( .A(n158), .B(n164), .Z(n160) );
  GTECH_OAI21 U88 ( .A(n165), .B(n144), .C(n166), .Z(sum[4]) );
  GTECH_MUX2 U89 ( .A(n167), .B(n168), .S(n169), .Z(sum[3]) );
  GTECH_XOR2 U90 ( .A(n170), .B(n171), .Z(n168) );
  GTECH_OA21 U91 ( .A(n172), .B(n173), .C(n174), .Z(n171) );
  GTECH_NOT U92 ( .A(n175), .Z(n172) );
  GTECH_NOT U93 ( .A(n176), .Z(n170) );
  GTECH_XOR2 U94 ( .A(n176), .B(n177), .Z(n167) );
  GTECH_XOR2 U95 ( .A(a[3]), .B(b[3]), .Z(n176) );
  GTECH_MUX2 U96 ( .A(n178), .B(n179), .S(cin), .Z(sum[2]) );
  GTECH_MUX2 U97 ( .A(n180), .B(n181), .S(n182), .Z(n179) );
  GTECH_MUX2 U98 ( .A(n181), .B(n180), .S(n173), .Z(n178) );
  GTECH_AO22 U99 ( .A(n183), .B(n184), .C(n185), .D(n186), .Z(n173) );
  GTECH_XOR2 U100 ( .A(a[2]), .B(b[2]), .Z(n180) );
  GTECH_NAND2 U101 ( .A(n174), .B(n175), .Z(n181) );
  GTECH_MUX2 U102 ( .A(n187), .B(n188), .S(n189), .Z(sum[1]) );
  GTECH_XOR2 U103 ( .A(b[1]), .B(a[1]), .Z(n189) );
  GTECH_AO21 U104 ( .A(n169), .B(n186), .C(n190), .Z(n188) );
  GTECH_OAI21 U105 ( .A(n190), .B(n169), .C(n186), .Z(n187) );
  GTECH_NAND2 U106 ( .A(b[0]), .B(a[0]), .Z(n186) );
  GTECH_XOR2 U107 ( .A(n169), .B(n191), .Z(sum[0]) );
  GTECH_OAI21 U108 ( .A(n192), .B(n144), .C(n166), .Z(cout) );
  GTECH_NAND2 U109 ( .A(n165), .B(n144), .Z(n166) );
  GTECH_AND_NOT U110 ( .A(n157), .B(n163), .Z(n165) );
  GTECH_NAND2 U111 ( .A(b[4]), .B(a[4]), .Z(n157) );
  GTECH_MUX2 U112 ( .A(n193), .B(n191), .S(n169), .Z(n144) );
  GTECH_NOT U113 ( .A(cin), .Z(n169) );
  GTECH_NOT U114 ( .A(n194), .Z(n191) );
  GTECH_XOR2 U115 ( .A(a[0]), .B(b[0]), .Z(n194) );
  GTECH_AOI21 U116 ( .A(n177), .B(a[3]), .C(n195), .Z(n193) );
  GTECH_OA21 U117 ( .A(a[3]), .B(n177), .C(b[3]), .Z(n195) );
  GTECH_AO21 U118 ( .A(n175), .B(n182), .C(n196), .Z(n177) );
  GTECH_NOT U119 ( .A(n174), .Z(n196) );
  GTECH_NAND2 U120 ( .A(a[2]), .B(b[2]), .Z(n174) );
  GTECH_AOI22 U121 ( .A(n185), .B(n190), .C(n183), .D(n184), .Z(n182) );
  GTECH_NOT U122 ( .A(a[1]), .Z(n184) );
  GTECH_NOT U123 ( .A(b[1]), .Z(n183) );
  GTECH_NOR2 U124 ( .A(a[0]), .B(b[0]), .Z(n190) );
  GTECH_NAND2 U125 ( .A(a[1]), .B(b[1]), .Z(n185) );
  GTECH_OR2 U126 ( .A(a[2]), .B(b[2]), .Z(n175) );
  GTECH_OA21 U127 ( .A(n150), .B(n151), .C(n197), .Z(n192) );
  GTECH_AO21 U128 ( .A(n151), .B(n150), .C(n198), .Z(n197) );
  GTECH_NOT U129 ( .A(b[7]), .Z(n198) );
  GTECH_NOT U130 ( .A(a[7]), .Z(n151) );
  GTECH_OA21 U131 ( .A(n147), .B(n155), .C(n149), .Z(n150) );
  GTECH_NAND2 U132 ( .A(b[6]), .B(a[6]), .Z(n149) );
  GTECH_OA21 U133 ( .A(n163), .B(n156), .C(n158), .Z(n155) );
  GTECH_NAND2 U134 ( .A(a[5]), .B(b[5]), .Z(n158) );
  GTECH_NOT U135 ( .A(n164), .Z(n156) );
  GTECH_OR2 U136 ( .A(b[5]), .B(a[5]), .Z(n164) );
  GTECH_NOR2 U137 ( .A(a[4]), .B(b[4]), .Z(n163) );
  GTECH_NOR2 U138 ( .A(a[6]), .B(b[6]), .Z(n147) );
endmodule

