
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191;

  GTECH_MUX2 U67 ( .A(n136), .B(n137), .S(n138), .Z(sum[7]) );
  GTECH_XNOR2 U68 ( .A(n139), .B(n140), .Z(n137) );
  GTECH_NOR2 U69 ( .A(n141), .B(n142), .Z(n139) );
  GTECH_AOI21 U70 ( .A(n143), .B(n144), .C(n145), .Z(n142) );
  GTECH_ADD_AB U71 ( .A(n146), .B(n140), .S(n136) );
  GTECH_ADD_AB U72 ( .A(b[7]), .B(a[7]), .S(n140) );
  GTECH_OAI21 U73 ( .A(n147), .B(n148), .C(n149), .Z(sum[6]) );
  GTECH_MUX2 U74 ( .A(n150), .B(n151), .S(b[6]), .Z(n149) );
  GTECH_OR_NOT U75 ( .A(a[6]), .B(n147), .Z(n151) );
  GTECH_ADD_AB U76 ( .A(a[6]), .B(n147), .S(n150) );
  GTECH_OA21 U77 ( .A(n152), .B(n138), .C(n145), .Z(n147) );
  GTECH_AOI21 U78 ( .A(n153), .B(n154), .C(n155), .Z(n145) );
  GTECH_NOT U79 ( .A(n156), .Z(n154) );
  GTECH_MUX2 U80 ( .A(n157), .B(n158), .S(n138), .Z(sum[5]) );
  GTECH_XNOR2 U81 ( .A(n156), .B(n159), .Z(n158) );
  GTECH_ADD_AB U82 ( .A(n160), .B(n159), .S(n157) );
  GTECH_AND_NOT U83 ( .A(n153), .B(n155), .Z(n159) );
  GTECH_OR_NOT U84 ( .A(n161), .B(n162), .Z(sum[4]) );
  GTECH_AOI21 U85 ( .A(n156), .B(n160), .C(n138), .Z(n161) );
  GTECH_MUX2 U86 ( .A(n163), .B(n164), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U87 ( .A(n165), .B(n166), .Z(n164) );
  GTECH_XNOR2 U88 ( .A(n167), .B(n166), .Z(n163) );
  GTECH_XNOR2 U89 ( .A(b[3]), .B(a[3]), .Z(n166) );
  GTECH_OA21 U90 ( .A(a[2]), .B(n168), .C(n169), .Z(n167) );
  GTECH_NOT U91 ( .A(n170), .Z(n169) );
  GTECH_AOI21 U92 ( .A(n168), .B(a[2]), .C(b[2]), .Z(n170) );
  GTECH_MUX2 U93 ( .A(n171), .B(n172), .S(cin), .Z(sum[2]) );
  GTECH_ADD_AB U94 ( .A(n173), .B(n174), .S(n172) );
  GTECH_ADD_AB U95 ( .A(n168), .B(n174), .S(n171) );
  GTECH_ADD_AB U96 ( .A(b[2]), .B(a[2]), .S(n174) );
  GTECH_OAI21 U97 ( .A(n175), .B(n176), .C(n177), .Z(n168) );
  GTECH_MUX2 U98 ( .A(n178), .B(n179), .S(n180), .Z(sum[1]) );
  GTECH_AND_NOT U99 ( .A(n177), .B(n175), .Z(n180) );
  GTECH_NOT U100 ( .A(n181), .Z(n179) );
  GTECH_AOI21 U101 ( .A(n182), .B(n176), .C(n183), .Z(n181) );
  GTECH_OAI21 U102 ( .A(n183), .B(n182), .C(n176), .Z(n178) );
  GTECH_NAND2 U103 ( .A(b[0]), .B(a[0]), .Z(n176) );
  GTECH_NOT U104 ( .A(cin), .Z(n182) );
  GTECH_XNOR2 U105 ( .A(cin), .B(n184), .Z(sum[0]) );
  GTECH_OAI21 U106 ( .A(n185), .B(n138), .C(n162), .Z(cout) );
  GTECH_NAND3 U107 ( .A(n160), .B(n156), .C(n138), .Z(n162) );
  GTECH_NAND2 U108 ( .A(a[4]), .B(b[4]), .Z(n156) );
  GTECH_MUX2 U109 ( .A(n184), .B(n186), .S(cin), .Z(n138) );
  GTECH_AOI21 U110 ( .A(n165), .B(a[3]), .C(n187), .Z(n186) );
  GTECH_OA21 U111 ( .A(a[3]), .B(n165), .C(b[3]), .Z(n187) );
  GTECH_NOT U112 ( .A(n188), .Z(n165) );
  GTECH_AOI21 U113 ( .A(n173), .B(a[2]), .C(n189), .Z(n188) );
  GTECH_OA21 U114 ( .A(a[2]), .B(n173), .C(b[2]), .Z(n189) );
  GTECH_OAI21 U115 ( .A(n183), .B(n175), .C(n177), .Z(n173) );
  GTECH_NAND2 U116 ( .A(b[1]), .B(a[1]), .Z(n177) );
  GTECH_NOR2 U117 ( .A(b[1]), .B(a[1]), .Z(n175) );
  GTECH_NOR2 U118 ( .A(a[0]), .B(b[0]), .Z(n183) );
  GTECH_XNOR2 U119 ( .A(b[0]), .B(a[0]), .Z(n184) );
  GTECH_AOI21 U120 ( .A(n146), .B(a[7]), .C(n190), .Z(n185) );
  GTECH_OA21 U121 ( .A(a[7]), .B(n146), .C(b[7]), .Z(n190) );
  GTECH_OR_NOT U122 ( .A(n191), .B(n148), .Z(n146) );
  GTECH_NOT U123 ( .A(n141), .Z(n148) );
  GTECH_AND_NOT U124 ( .A(b[6]), .B(n144), .Z(n141) );
  GTECH_AOI21 U125 ( .A(n144), .B(n143), .C(n152), .Z(n191) );
  GTECH_AOI21 U126 ( .A(n153), .B(n160), .C(n155), .Z(n152) );
  GTECH_AND2 U127 ( .A(b[5]), .B(a[5]), .Z(n155) );
  GTECH_OR2 U128 ( .A(b[4]), .B(a[4]), .Z(n160) );
  GTECH_OR2 U129 ( .A(b[5]), .B(a[5]), .Z(n153) );
  GTECH_NOT U130 ( .A(b[6]), .Z(n143) );
  GTECH_NOT U131 ( .A(a[6]), .Z(n144) );
endmodule

