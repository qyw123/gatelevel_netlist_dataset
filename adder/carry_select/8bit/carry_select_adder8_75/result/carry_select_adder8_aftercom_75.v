
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
  GTECH_XNOR2 U71 ( .A(n142), .B(n143), .Z(n140) );
  GTECH_OA21 U72 ( .A(a[6]), .B(n144), .C(n145), .Z(n142) );
  GTECH_OAI21 U73 ( .A(n146), .B(n147), .C(n148), .Z(n145) );
  GTECH_NOT U74 ( .A(n144), .Z(n146) );
  GTECH_XNOR2 U75 ( .A(n143), .B(n149), .Z(n139) );
  GTECH_XNOR2 U76 ( .A(a[7]), .B(b[7]), .Z(n143) );
  GTECH_MUX2 U77 ( .A(n150), .B(n151), .S(n141), .Z(sum[6]) );
  GTECH_XOR2 U78 ( .A(n152), .B(n144), .Z(n151) );
  GTECH_OAI21 U79 ( .A(n153), .B(n154), .C(n155), .Z(n144) );
  GTECH_XOR2 U80 ( .A(n152), .B(n156), .Z(n150) );
  GTECH_XOR2 U81 ( .A(n147), .B(n148), .Z(n152) );
  GTECH_NOT U82 ( .A(b[6]), .Z(n148) );
  GTECH_MUX2 U83 ( .A(n157), .B(n158), .S(n141), .Z(sum[5]) );
  GTECH_XNOR2 U84 ( .A(n159), .B(n160), .Z(n158) );
  GTECH_XOR2 U85 ( .A(n160), .B(n161), .Z(n157) );
  GTECH_OAI21 U86 ( .A(b[5]), .B(a[5]), .C(n155), .Z(n160) );
  GTECH_OAI21 U87 ( .A(n162), .B(n141), .C(n163), .Z(sum[4]) );
  GTECH_AND_NOT U88 ( .A(n154), .B(n161), .Z(n162) );
  GTECH_MUX2 U89 ( .A(n164), .B(n165), .S(n166), .Z(sum[3]) );
  GTECH_XOR2 U90 ( .A(n167), .B(n168), .Z(n165) );
  GTECH_OA21 U91 ( .A(n169), .B(n170), .C(n171), .Z(n168) );
  GTECH_XNOR2 U92 ( .A(n167), .B(n172), .Z(n164) );
  GTECH_XNOR2 U93 ( .A(a[3]), .B(b[3]), .Z(n167) );
  GTECH_MUX2 U94 ( .A(n173), .B(n174), .S(n166), .Z(sum[2]) );
  GTECH_XNOR2 U95 ( .A(n175), .B(n170), .Z(n174) );
  GTECH_OA21 U96 ( .A(n176), .B(n177), .C(n178), .Z(n170) );
  GTECH_XNOR2 U97 ( .A(n175), .B(n179), .Z(n173) );
  GTECH_AND_NOT U98 ( .A(n171), .B(n169), .Z(n175) );
  GTECH_MUX2 U99 ( .A(n180), .B(n181), .S(n182), .Z(sum[1]) );
  GTECH_NOR2 U100 ( .A(n183), .B(n176), .Z(n182) );
  GTECH_OAI21 U101 ( .A(cin), .B(n184), .C(n185), .Z(n181) );
  GTECH_OAI21 U102 ( .A(n186), .B(n166), .C(n177), .Z(n180) );
  GTECH_NOT U103 ( .A(n184), .Z(n177) );
  GTECH_XNOR2 U104 ( .A(cin), .B(n187), .Z(sum[0]) );
  GTECH_OAI21 U105 ( .A(n188), .B(n141), .C(n163), .Z(cout) );
  GTECH_NAND3 U106 ( .A(n154), .B(n189), .C(n141), .Z(n163) );
  GTECH_NOT U107 ( .A(n159), .Z(n154) );
  GTECH_AND2 U108 ( .A(b[4]), .B(a[4]), .Z(n159) );
  GTECH_MUX2 U109 ( .A(n190), .B(n187), .S(n166), .Z(n141) );
  GTECH_NOT U110 ( .A(cin), .Z(n166) );
  GTECH_OR_NOT U111 ( .A(n184), .B(n185), .Z(n187) );
  GTECH_NOT U112 ( .A(n186), .Z(n185) );
  GTECH_AND2 U113 ( .A(a[0]), .B(b[0]), .Z(n184) );
  GTECH_AOI21 U114 ( .A(n172), .B(a[3]), .C(n191), .Z(n190) );
  GTECH_OA21 U115 ( .A(a[3]), .B(n172), .C(b[3]), .Z(n191) );
  GTECH_OAI21 U116 ( .A(n169), .B(n179), .C(n171), .Z(n172) );
  GTECH_OR_NOT U117 ( .A(n192), .B(b[2]), .Z(n171) );
  GTECH_OA21 U118 ( .A(n176), .B(n186), .C(n178), .Z(n179) );
  GTECH_NOT U119 ( .A(n183), .Z(n178) );
  GTECH_AND2 U120 ( .A(a[1]), .B(b[1]), .Z(n183) );
  GTECH_NOR2 U121 ( .A(b[0]), .B(a[0]), .Z(n186) );
  GTECH_NOR2 U122 ( .A(a[1]), .B(b[1]), .Z(n176) );
  GTECH_AND_NOT U123 ( .A(n192), .B(b[2]), .Z(n169) );
  GTECH_NOT U124 ( .A(a[2]), .Z(n192) );
  GTECH_AOI21 U125 ( .A(n149), .B(a[7]), .C(n193), .Z(n188) );
  GTECH_OA21 U126 ( .A(a[7]), .B(n149), .C(b[7]), .Z(n193) );
  GTECH_OAI21 U127 ( .A(n194), .B(n147), .C(n195), .Z(n149) );
  GTECH_OAI21 U128 ( .A(a[6]), .B(n156), .C(b[6]), .Z(n195) );
  GTECH_NOT U129 ( .A(a[6]), .Z(n147) );
  GTECH_NOT U130 ( .A(n156), .Z(n194) );
  GTECH_OAI21 U131 ( .A(n153), .B(n161), .C(n155), .Z(n156) );
  GTECH_OR_NOT U132 ( .A(n196), .B(b[5]), .Z(n155) );
  GTECH_NOT U133 ( .A(a[5]), .Z(n196) );
  GTECH_NOT U134 ( .A(n189), .Z(n161) );
  GTECH_OR2 U135 ( .A(a[4]), .B(b[4]), .Z(n189) );
  GTECH_NOR2 U136 ( .A(a[5]), .B(b[5]), .Z(n153) );
endmodule

