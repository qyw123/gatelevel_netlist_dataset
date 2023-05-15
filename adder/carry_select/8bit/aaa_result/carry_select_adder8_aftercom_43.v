
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
  GTECH_XNOR2 U73 ( .A(n145), .B(n144), .Z(n140) );
  GTECH_ADD_AB U74 ( .A(b[7]), .B(a[7]), .S(n144) );
  GTECH_AND_NOT U75 ( .A(n146), .B(n147), .Z(n145) );
  GTECH_AO21 U76 ( .A(n148), .B(n149), .C(n150), .Z(n146) );
  GTECH_AO21 U77 ( .A(n151), .B(n147), .C(n152), .Z(sum[6]) );
  GTECH_NOT U78 ( .A(n153), .Z(n152) );
  GTECH_MUX2 U79 ( .A(n154), .B(n155), .S(n148), .Z(n153) );
  GTECH_XNOR2 U80 ( .A(a[6]), .B(n151), .Z(n155) );
  GTECH_OR_NOT U81 ( .A(n151), .B(n149), .Z(n154) );
  GTECH_OAI21 U82 ( .A(n156), .B(n157), .C(n150), .Z(n151) );
  GTECH_OA21 U83 ( .A(n158), .B(n159), .C(n160), .Z(n150) );
  GTECH_MUX2 U84 ( .A(n161), .B(n162), .S(n163), .Z(sum[5]) );
  GTECH_OA21 U85 ( .A(n164), .B(n157), .C(n159), .Z(n163) );
  GTECH_ADD_AB U86 ( .A(b[5]), .B(a[5]), .S(n162) );
  GTECH_OR_NOT U87 ( .A(n158), .B(n160), .Z(n161) );
  GTECH_OAI21 U88 ( .A(n165), .B(n157), .C(n166), .Z(sum[4]) );
  GTECH_MUX2 U89 ( .A(n167), .B(n168), .S(cin), .Z(sum[3]) );
  GTECH_ADD_AB U90 ( .A(n169), .B(n170), .S(n168) );
  GTECH_ADD_AB U91 ( .A(n171), .B(n170), .S(n167) );
  GTECH_ADD_AB U92 ( .A(b[3]), .B(a[3]), .S(n170) );
  GTECH_ADD_ABC U93 ( .A(a[2]), .B(n172), .C(b[2]), .COUT(n171) );
  GTECH_MUX2 U94 ( .A(n173), .B(n174), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U95 ( .A(n175), .B(n176), .Z(n174) );
  GTECH_XNOR2 U96 ( .A(n172), .B(n176), .Z(n173) );
  GTECH_XNOR2 U97 ( .A(b[2]), .B(a[2]), .Z(n176) );
  GTECH_OA21 U98 ( .A(n177), .B(n178), .C(n179), .Z(n172) );
  GTECH_MUX2 U99 ( .A(n180), .B(n181), .S(n182), .Z(sum[1]) );
  GTECH_NOR2 U100 ( .A(n183), .B(n177), .Z(n182) );
  GTECH_OAI21 U101 ( .A(cin), .B(n178), .C(n184), .Z(n181) );
  GTECH_AO21 U102 ( .A(n184), .B(cin), .C(n178), .Z(n180) );
  GTECH_AND2 U103 ( .A(b[0]), .B(a[0]), .Z(n178) );
  GTECH_ADD_AB U104 ( .A(cin), .B(n185), .S(sum[0]) );
  GTECH_OAI21 U105 ( .A(n186), .B(n157), .C(n166), .Z(cout) );
  GTECH_OR_NOT U106 ( .A(n142), .B(n165), .Z(n166) );
  GTECH_AND_NOT U107 ( .A(n159), .B(n164), .Z(n165) );
  GTECH_NAND2 U108 ( .A(a[4]), .B(b[4]), .Z(n159) );
  GTECH_NOT U109 ( .A(n142), .Z(n157) );
  GTECH_MUX2 U110 ( .A(n185), .B(n187), .S(cin), .Z(n142) );
  GTECH_OA21 U111 ( .A(a[3]), .B(n169), .C(n188), .Z(n187) );
  GTECH_AO21 U112 ( .A(n169), .B(a[3]), .C(b[3]), .Z(n188) );
  GTECH_ADD_ABC U113 ( .A(n175), .B(a[2]), .C(b[2]), .COUT(n169) );
  GTECH_OA21 U114 ( .A(n177), .B(n184), .C(n179), .Z(n175) );
  GTECH_NOT U115 ( .A(n183), .Z(n179) );
  GTECH_NOR2 U116 ( .A(a[1]), .B(b[1]), .Z(n183) );
  GTECH_OR_NOT U117 ( .A(b[0]), .B(n189), .Z(n184) );
  GTECH_AND2 U118 ( .A(a[1]), .B(b[1]), .Z(n177) );
  GTECH_XNOR2 U119 ( .A(b[0]), .B(n189), .Z(n185) );
  GTECH_NOT U120 ( .A(a[0]), .Z(n189) );
  GTECH_AOI21 U121 ( .A(n190), .B(a[7]), .C(n191), .Z(n186) );
  GTECH_NOT U122 ( .A(n192), .Z(n191) );
  GTECH_OAI21 U123 ( .A(a[7]), .B(n190), .C(b[7]), .Z(n192) );
  GTECH_NOT U124 ( .A(n143), .Z(n190) );
  GTECH_AND_NOT U125 ( .A(n193), .B(n147), .Z(n143) );
  GTECH_AND2 U126 ( .A(b[6]), .B(a[6]), .Z(n147) );
  GTECH_AO21 U127 ( .A(n149), .B(n148), .C(n156), .Z(n193) );
  GTECH_OA21 U128 ( .A(n164), .B(n158), .C(n160), .Z(n156) );
  GTECH_NAND2 U129 ( .A(b[5]), .B(a[5]), .Z(n160) );
  GTECH_NOR2 U130 ( .A(a[5]), .B(b[5]), .Z(n158) );
  GTECH_NOR2 U131 ( .A(b[4]), .B(a[4]), .Z(n164) );
  GTECH_NOT U132 ( .A(b[6]), .Z(n148) );
  GTECH_NOT U133 ( .A(a[6]), .Z(n149) );
endmodule

