
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201;

  GTECH_MUX2 U76 ( .A(n145), .B(n146), .S(n147), .Z(sum[7]) );
  GTECH_XOR2 U77 ( .A(n148), .B(n149), .Z(n146) );
  GTECH_OA21 U78 ( .A(n150), .B(n151), .C(n152), .Z(n149) );
  GTECH_ADD_AB U79 ( .A(n153), .B(n154), .COUT(n150) );
  GTECH_XOR2 U80 ( .A(n148), .B(n155), .Z(n145) );
  GTECH_XOR2 U81 ( .A(n156), .B(b[7]), .Z(n148) );
  GTECH_OAI21 U82 ( .A(n157), .B(n152), .C(n158), .Z(sum[6]) );
  GTECH_MUX2 U83 ( .A(n159), .B(n160), .S(b[6]), .Z(n158) );
  GTECH_OR_NOT U84 ( .A(a[6]), .B(n157), .Z(n160) );
  GTECH_XOR2 U85 ( .A(a[6]), .B(n157), .Z(n159) );
  GTECH_ADD_AB U86 ( .A(n161), .B(n153), .COUT(n157) );
  GTECH_AO21 U87 ( .A(n162), .B(n163), .C(n164), .Z(n161) );
  GTECH_OAI21 U88 ( .A(n164), .B(n153), .C(n165), .Z(sum[5]) );
  GTECH_MUX2 U89 ( .A(n166), .B(n167), .S(n163), .Z(n165) );
  GTECH_XOR2 U90 ( .A(a[5]), .B(n164), .Z(n167) );
  GTECH_NAND2 U91 ( .A(n162), .B(n164), .Z(n166) );
  GTECH_OA21 U92 ( .A(n168), .B(n147), .C(n154), .Z(n164) );
  GTECH_NAND2 U93 ( .A(n169), .B(n170), .Z(sum[4]) );
  GTECH_OAI21 U94 ( .A(n171), .B(n168), .C(n172), .Z(n169) );
  GTECH_MUX2 U95 ( .A(n173), .B(n174), .S(n175), .Z(sum[3]) );
  GTECH_XOR2 U96 ( .A(n176), .B(n177), .Z(n174) );
  GTECH_AOI21 U97 ( .A(n178), .B(n179), .C(n180), .Z(n177) );
  GTECH_NOT U98 ( .A(n181), .Z(n176) );
  GTECH_XOR2 U99 ( .A(n181), .B(n182), .Z(n173) );
  GTECH_XOR2 U100 ( .A(a[3]), .B(b[3]), .Z(n181) );
  GTECH_MUX2 U101 ( .A(n183), .B(n184), .S(cin), .Z(sum[2]) );
  GTECH_MUX2 U102 ( .A(n185), .B(n186), .S(n187), .Z(n184) );
  GTECH_MUX2 U103 ( .A(n185), .B(n186), .S(n179), .Z(n183) );
  GTECH_AOI2N2 U104 ( .A(n188), .B(n189), .C(b[1]), .D(a[1]), .Z(n179) );
  GTECH_OR_NOT U105 ( .A(n180), .B(n178), .Z(n186) );
  GTECH_XOR2 U106 ( .A(a[2]), .B(b[2]), .Z(n185) );
  GTECH_MUX2 U107 ( .A(n190), .B(n191), .S(n192), .Z(sum[1]) );
  GTECH_XOR2 U108 ( .A(b[1]), .B(a[1]), .Z(n192) );
  GTECH_AO21 U109 ( .A(n175), .B(n189), .C(n193), .Z(n191) );
  GTECH_OAI21 U110 ( .A(n193), .B(n175), .C(n189), .Z(n190) );
  GTECH_OR_NOT U111 ( .A(n194), .B(b[0]), .Z(n189) );
  GTECH_XOR2 U112 ( .A(n175), .B(n195), .Z(sum[0]) );
  GTECH_OAI21 U113 ( .A(n196), .B(n147), .C(n170), .Z(cout) );
  GTECH_OR3 U114 ( .A(n171), .B(n168), .C(n172), .Z(n170) );
  GTECH_NOT U115 ( .A(n147), .Z(n172) );
  GTECH_NOT U116 ( .A(n154), .Z(n171) );
  GTECH_NAND2 U117 ( .A(a[4]), .B(b[4]), .Z(n154) );
  GTECH_MUX2 U118 ( .A(n197), .B(n195), .S(n175), .Z(n147) );
  GTECH_NOT U119 ( .A(cin), .Z(n175) );
  GTECH_XOR2 U120 ( .A(n194), .B(b[0]), .Z(n195) );
  GTECH_NOT U121 ( .A(a[0]), .Z(n194) );
  GTECH_AOI21 U122 ( .A(n182), .B(a[3]), .C(n198), .Z(n197) );
  GTECH_OA21 U123 ( .A(a[3]), .B(n182), .C(b[3]), .Z(n198) );
  GTECH_AO21 U124 ( .A(n178), .B(n187), .C(n180), .Z(n182) );
  GTECH_ADD_AB U125 ( .A(a[2]), .B(b[2]), .COUT(n180) );
  GTECH_AOI2N2 U126 ( .A(n188), .B(n193), .C(b[1]), .D(a[1]), .Z(n187) );
  GTECH_NOR2 U127 ( .A(a[0]), .B(b[0]), .Z(n193) );
  GTECH_NAND2 U128 ( .A(a[1]), .B(b[1]), .Z(n188) );
  GTECH_OR2 U129 ( .A(a[2]), .B(b[2]), .Z(n178) );
  GTECH_OA21 U130 ( .A(n155), .B(n156), .C(n199), .Z(n196) );
  GTECH_OAI21 U131 ( .A(a[7]), .B(n200), .C(b[7]), .Z(n199) );
  GTECH_NOT U132 ( .A(a[7]), .Z(n156) );
  GTECH_NOT U133 ( .A(n200), .Z(n155) );
  GTECH_NAND2 U134 ( .A(n201), .B(n152), .Z(n200) );
  GTECH_NAND2 U135 ( .A(a[6]), .B(b[6]), .Z(n152) );
  GTECH_AO21 U136 ( .A(n153), .B(n168), .C(n151), .Z(n201) );
  GTECH_OAI2N2 U137 ( .A(b[6]), .B(a[6]), .C(n163), .D(n162), .Z(n151) );
  GTECH_NOT U138 ( .A(a[5]), .Z(n162) );
  GTECH_NOR2 U139 ( .A(b[4]), .B(a[4]), .Z(n168) );
  GTECH_OR_NOT U140 ( .A(n163), .B(a[5]), .Z(n153) );
  GTECH_NOT U141 ( .A(b[5]), .Z(n163) );
endmodule

