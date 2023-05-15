
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187;

  GTECH_MUX2 U63 ( .A(n132), .B(n133), .S(n134), .Z(sum[7]) );
  GTECH_ADD_AB U64 ( .A(n135), .B(n136), .S(n133) );
  GTECH_ADD_AB U65 ( .A(n137), .B(n136), .S(n132) );
  GTECH_ADD_AB U66 ( .A(b[7]), .B(n138), .S(n136) );
  GTECH_AND2 U67 ( .A(n139), .B(n140), .Z(n137) );
  GTECH_OAI21 U68 ( .A(b[6]), .B(a[6]), .C(n141), .Z(n140) );
  GTECH_OAI21 U69 ( .A(n142), .B(n139), .C(n143), .Z(sum[6]) );
  GTECH_MUX2 U70 ( .A(n144), .B(n145), .S(b[6]), .Z(n143) );
  GTECH_NAND2 U71 ( .A(n142), .B(n146), .Z(n145) );
  GTECH_ADD_AB U72 ( .A(n146), .B(n147), .S(n144) );
  GTECH_NOT U73 ( .A(n142), .Z(n147) );
  GTECH_NOT U74 ( .A(a[6]), .Z(n146) );
  GTECH_AOI21 U75 ( .A(n148), .B(n134), .C(n141), .Z(n142) );
  GTECH_AO21 U76 ( .A(n149), .B(n150), .C(n151), .Z(n141) );
  GTECH_MUX2 U77 ( .A(n152), .B(n153), .S(n134), .Z(sum[5]) );
  GTECH_XNOR2 U78 ( .A(n154), .B(n155), .Z(n153) );
  GTECH_XNOR2 U79 ( .A(n150), .B(n155), .Z(n152) );
  GTECH_OR_NOT U80 ( .A(n151), .B(n149), .Z(n155) );
  GTECH_OR_NOT U81 ( .A(n156), .B(n157), .Z(sum[4]) );
  GTECH_OAI21 U82 ( .A(n150), .B(n158), .C(n134), .Z(n157) );
  GTECH_MUX2 U83 ( .A(n159), .B(n160), .S(cin), .Z(sum[3]) );
  GTECH_ADD_AB U84 ( .A(n161), .B(n162), .S(n160) );
  GTECH_ADD_AB U85 ( .A(n163), .B(n162), .S(n159) );
  GTECH_XNOR2 U86 ( .A(b[3]), .B(a[3]), .Z(n162) );
  GTECH_AOI21 U87 ( .A(n164), .B(n165), .C(n166), .Z(n163) );
  GTECH_MUX2 U88 ( .A(n167), .B(n168), .S(n169), .Z(sum[2]) );
  GTECH_MUX2 U89 ( .A(n170), .B(n171), .S(n164), .Z(n168) );
  GTECH_OAI21 U90 ( .A(n172), .B(n173), .C(n174), .Z(n164) );
  GTECH_MUX2 U91 ( .A(n170), .B(n171), .S(n175), .Z(n167) );
  GTECH_OR_NOT U92 ( .A(n166), .B(n165), .Z(n171) );
  GTECH_ADD_AB U93 ( .A(b[2]), .B(a[2]), .S(n170) );
  GTECH_MUX2 U94 ( .A(n176), .B(n177), .S(n178), .Z(sum[1]) );
  GTECH_AND_NOT U95 ( .A(n174), .B(n172), .Z(n178) );
  GTECH_AO21 U96 ( .A(n169), .B(n173), .C(n179), .Z(n177) );
  GTECH_OAI21 U97 ( .A(n179), .B(n169), .C(n173), .Z(n176) );
  GTECH_NAND2 U98 ( .A(a[0]), .B(b[0]), .Z(n173) );
  GTECH_ADD_AB U99 ( .A(n169), .B(n180), .S(sum[0]) );
  GTECH_NOT U100 ( .A(cin), .Z(n169) );
  GTECH_AO21 U101 ( .A(n181), .B(n134), .C(n156), .Z(cout) );
  GTECH_NOR3 U102 ( .A(n158), .B(n150), .C(n134), .Z(n156) );
  GTECH_AND2 U103 ( .A(a[4]), .B(b[4]), .Z(n150) );
  GTECH_NOT U104 ( .A(n154), .Z(n158) );
  GTECH_NOT U105 ( .A(n182), .Z(n134) );
  GTECH_MUX2 U106 ( .A(n180), .B(n183), .S(cin), .Z(n182) );
  GTECH_AOI2N2 U107 ( .A(n184), .B(b[3]), .C(n161), .D(n185), .Z(n183) );
  GTECH_NOT U108 ( .A(a[3]), .Z(n185) );
  GTECH_OR_NOT U109 ( .A(a[3]), .B(n161), .Z(n184) );
  GTECH_AOI21 U110 ( .A(n165), .B(n175), .C(n166), .Z(n161) );
  GTECH_AND2 U111 ( .A(a[2]), .B(b[2]), .Z(n166) );
  GTECH_OAI21 U112 ( .A(n179), .B(n172), .C(n174), .Z(n175) );
  GTECH_NAND2 U113 ( .A(a[1]), .B(b[1]), .Z(n174) );
  GTECH_NOR2 U114 ( .A(b[1]), .B(a[1]), .Z(n172) );
  GTECH_NOR2 U115 ( .A(a[0]), .B(b[0]), .Z(n179) );
  GTECH_OR2 U116 ( .A(a[2]), .B(b[2]), .Z(n165) );
  GTECH_XNOR2 U117 ( .A(b[0]), .B(a[0]), .Z(n180) );
  GTECH_OAI2N2 U118 ( .A(n135), .B(n138), .C(n186), .D(b[7]), .Z(n181) );
  GTECH_OR_NOT U119 ( .A(a[7]), .B(n135), .Z(n186) );
  GTECH_NOT U120 ( .A(a[7]), .Z(n138) );
  GTECH_AND2 U121 ( .A(n187), .B(n139), .Z(n135) );
  GTECH_NAND2 U122 ( .A(a[6]), .B(b[6]), .Z(n139) );
  GTECH_OAI21 U123 ( .A(a[6]), .B(b[6]), .C(n148), .Z(n187) );
  GTECH_AO21 U124 ( .A(n154), .B(n149), .C(n151), .Z(n148) );
  GTECH_AND2 U125 ( .A(b[5]), .B(a[5]), .Z(n151) );
  GTECH_OR2 U126 ( .A(a[5]), .B(b[5]), .Z(n149) );
  GTECH_OR2 U127 ( .A(b[4]), .B(a[4]), .Z(n154) );
endmodule

