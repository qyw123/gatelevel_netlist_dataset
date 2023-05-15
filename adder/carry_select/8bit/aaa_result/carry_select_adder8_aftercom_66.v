
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
  GTECH_AND2 U72 ( .A(n144), .B(n145), .Z(n143) );
  GTECH_OAI21 U73 ( .A(b[6]), .B(a[6]), .C(n146), .Z(n145) );
  GTECH_XOR2 U74 ( .A(n142), .B(n147), .Z(n139) );
  GTECH_XOR2 U75 ( .A(a[7]), .B(n148), .Z(n142) );
  GTECH_OAI21 U76 ( .A(n149), .B(n144), .C(n150), .Z(sum[6]) );
  GTECH_MUX2 U77 ( .A(n151), .B(n152), .S(b[6]), .Z(n150) );
  GTECH_OR_NOT U78 ( .A(a[6]), .B(n149), .Z(n152) );
  GTECH_XOR2 U79 ( .A(a[6]), .B(n149), .Z(n151) );
  GTECH_AOI21 U80 ( .A(n153), .B(n154), .C(n146), .Z(n149) );
  GTECH_OAI21 U81 ( .A(n155), .B(n156), .C(n157), .Z(n146) );
  GTECH_MUX2 U82 ( .A(n158), .B(n159), .S(n160), .Z(sum[5]) );
  GTECH_OA21 U83 ( .A(n161), .B(n141), .C(n156), .Z(n160) );
  GTECH_XOR2 U84 ( .A(b[5]), .B(a[5]), .Z(n159) );
  GTECH_OR_NOT U85 ( .A(n155), .B(n157), .Z(n158) );
  GTECH_AO21 U86 ( .A(n162), .B(n154), .C(n163), .Z(sum[4]) );
  GTECH_MUX2 U87 ( .A(n164), .B(n165), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U88 ( .A(n166), .B(n167), .Z(n165) );
  GTECH_NOT U89 ( .A(n168), .Z(n164) );
  GTECH_XOR2 U90 ( .A(n166), .B(n169), .Z(n168) );
  GTECH_AND_NOT U91 ( .A(n170), .B(n171), .Z(n169) );
  GTECH_OAI21 U92 ( .A(b[2]), .B(a[2]), .C(n172), .Z(n170) );
  GTECH_XOR2 U93 ( .A(a[3]), .B(b[3]), .Z(n166) );
  GTECH_MUX2 U94 ( .A(n173), .B(n174), .S(n175), .Z(sum[2]) );
  GTECH_MUX2 U95 ( .A(n176), .B(n177), .S(n172), .Z(n174) );
  GTECH_AOI2N2 U96 ( .A(n178), .B(n179), .C(b[1]), .D(a[1]), .Z(n172) );
  GTECH_MUX2 U97 ( .A(n177), .B(n176), .S(n180), .Z(n173) );
  GTECH_XOR2 U98 ( .A(n181), .B(n182), .Z(n176) );
  GTECH_AO21 U99 ( .A(n182), .B(n181), .C(n171), .Z(n177) );
  GTECH_MUX2 U100 ( .A(n183), .B(n184), .S(n185), .Z(sum[1]) );
  GTECH_XOR2 U101 ( .A(b[1]), .B(a[1]), .Z(n185) );
  GTECH_AO21 U102 ( .A(n175), .B(n179), .C(n186), .Z(n184) );
  GTECH_OAI21 U103 ( .A(n186), .B(n175), .C(n179), .Z(n183) );
  GTECH_OR_NOT U104 ( .A(n187), .B(b[0]), .Z(n179) );
  GTECH_XOR2 U105 ( .A(n175), .B(n188), .Z(sum[0]) );
  GTECH_NOT U106 ( .A(cin), .Z(n175) );
  GTECH_AO21 U107 ( .A(n189), .B(n154), .C(n163), .Z(cout) );
  GTECH_AND_NOT U108 ( .A(n141), .B(n162), .Z(n163) );
  GTECH_OR_NOT U109 ( .A(n161), .B(n156), .Z(n162) );
  GTECH_NAND2 U110 ( .A(b[4]), .B(a[4]), .Z(n156) );
  GTECH_NOT U111 ( .A(n141), .Z(n154) );
  GTECH_MUX2 U112 ( .A(n188), .B(n190), .S(cin), .Z(n141) );
  GTECH_AOI21 U113 ( .A(n167), .B(a[3]), .C(n191), .Z(n190) );
  GTECH_OA21 U114 ( .A(a[3]), .B(n167), .C(b[3]), .Z(n191) );
  GTECH_OR_NOT U115 ( .A(n171), .B(n192), .Z(n167) );
  GTECH_AO21 U116 ( .A(n181), .B(n182), .C(n180), .Z(n192) );
  GTECH_OAI2N2 U117 ( .A(b[1]), .B(a[1]), .C(n178), .D(n186), .Z(n180) );
  GTECH_AND_NOT U118 ( .A(n187), .B(b[0]), .Z(n186) );
  GTECH_NAND2 U119 ( .A(b[1]), .B(a[1]), .Z(n178) );
  GTECH_NOT U120 ( .A(b[2]), .Z(n182) );
  GTECH_NOT U121 ( .A(a[2]), .Z(n181) );
  GTECH_AND2 U122 ( .A(b[2]), .B(a[2]), .Z(n171) );
  GTECH_XOR2 U123 ( .A(n187), .B(b[0]), .Z(n188) );
  GTECH_NOT U124 ( .A(a[0]), .Z(n187) );
  GTECH_OAI21 U125 ( .A(n147), .B(n193), .C(n194), .Z(n189) );
  GTECH_AO21 U126 ( .A(n193), .B(n147), .C(n148), .Z(n194) );
  GTECH_NOT U127 ( .A(b[7]), .Z(n148) );
  GTECH_NOT U128 ( .A(a[7]), .Z(n193) );
  GTECH_AND2 U129 ( .A(n195), .B(n144), .Z(n147) );
  GTECH_NAND2 U130 ( .A(a[6]), .B(b[6]), .Z(n144) );
  GTECH_OAI21 U131 ( .A(a[6]), .B(b[6]), .C(n153), .Z(n195) );
  GTECH_OAI21 U132 ( .A(n161), .B(n155), .C(n157), .Z(n153) );
  GTECH_NAND2 U133 ( .A(a[5]), .B(b[5]), .Z(n157) );
  GTECH_NOR2 U134 ( .A(b[5]), .B(a[5]), .Z(n155) );
  GTECH_NOR2 U135 ( .A(a[4]), .B(b[4]), .Z(n161) );
endmodule

