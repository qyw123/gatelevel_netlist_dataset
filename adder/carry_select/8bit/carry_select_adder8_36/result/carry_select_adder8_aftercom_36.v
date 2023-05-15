
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187;

  GTECH_MUX2 U64 ( .A(n133), .B(n134), .S(n135), .Z(sum[7]) );
  GTECH_ADD_AB U65 ( .A(n136), .B(n137), .S(n134) );
  GTECH_AOI21 U66 ( .A(n138), .B(n139), .C(n140), .Z(n136) );
  GTECH_XNOR2 U67 ( .A(n141), .B(n137), .Z(n133) );
  GTECH_XNOR2 U68 ( .A(b[7]), .B(a[7]), .Z(n137) );
  GTECH_MUX2 U69 ( .A(n142), .B(n143), .S(n144), .Z(sum[6]) );
  GTECH_AOI21 U70 ( .A(n145), .B(n146), .C(n139), .Z(n144) );
  GTECH_AO21 U71 ( .A(n147), .B(n148), .C(n149), .Z(n139) );
  GTECH_ADD_AB U72 ( .A(b[6]), .B(a[6]), .S(n143) );
  GTECH_OR_NOT U73 ( .A(n140), .B(n138), .Z(n142) );
  GTECH_MUX2 U74 ( .A(n150), .B(n151), .S(n152), .Z(sum[5]) );
  GTECH_AOI21 U75 ( .A(n153), .B(n146), .C(n147), .Z(n152) );
  GTECH_ADD_AB U76 ( .A(b[5]), .B(a[5]), .S(n151) );
  GTECH_OR_NOT U77 ( .A(n149), .B(n148), .Z(n150) );
  GTECH_OR_NOT U78 ( .A(n154), .B(n155), .Z(sum[4]) );
  GTECH_AO21 U79 ( .A(n153), .B(n156), .C(n135), .Z(n155) );
  GTECH_MUX2 U80 ( .A(n157), .B(n158), .S(n159), .Z(sum[3]) );
  GTECH_XNOR2 U81 ( .A(n160), .B(n161), .Z(n158) );
  GTECH_AND_NOT U82 ( .A(n162), .B(n163), .Z(n160) );
  GTECH_AO21 U83 ( .A(n164), .B(n165), .C(n166), .Z(n162) );
  GTECH_ADD_AB U84 ( .A(n167), .B(n161), .S(n157) );
  GTECH_ADD_AB U85 ( .A(b[3]), .B(a[3]), .S(n161) );
  GTECH_MUX2 U86 ( .A(n168), .B(n169), .S(cin), .Z(sum[2]) );
  GTECH_MUX2 U87 ( .A(n170), .B(n171), .S(n172), .Z(n169) );
  GTECH_MUX2 U88 ( .A(n170), .B(n171), .S(n166), .Z(n168) );
  GTECH_AO21 U89 ( .A(n173), .B(n174), .C(n175), .Z(n166) );
  GTECH_ADD_AB U90 ( .A(b[2]), .B(a[2]), .S(n171) );
  GTECH_AO21 U91 ( .A(n164), .B(n165), .C(n163), .Z(n170) );
  GTECH_MUX2 U92 ( .A(n176), .B(n177), .S(n178), .Z(sum[1]) );
  GTECH_AND_NOT U93 ( .A(n174), .B(n175), .Z(n178) );
  GTECH_AO21 U94 ( .A(n173), .B(n159), .C(n179), .Z(n177) );
  GTECH_NOT U95 ( .A(n180), .Z(n176) );
  GTECH_OA21 U96 ( .A(n159), .B(n179), .C(n173), .Z(n180) );
  GTECH_XNOR2 U97 ( .A(cin), .B(n181), .Z(sum[0]) );
  GTECH_AO21 U98 ( .A(n146), .B(n182), .C(n154), .Z(cout) );
  GTECH_NOR3 U99 ( .A(n183), .B(n147), .C(n146), .Z(n154) );
  GTECH_NOT U100 ( .A(n156), .Z(n147) );
  GTECH_NAND2 U101 ( .A(a[4]), .B(b[4]), .Z(n156) );
  GTECH_AO22 U102 ( .A(n184), .B(b[7]), .C(n141), .D(a[7]), .Z(n182) );
  GTECH_OR2 U103 ( .A(a[7]), .B(n141), .Z(n184) );
  GTECH_AO21 U104 ( .A(n145), .B(n138), .C(n140), .Z(n141) );
  GTECH_AND2 U105 ( .A(b[6]), .B(a[6]), .Z(n140) );
  GTECH_OR2 U106 ( .A(b[6]), .B(a[6]), .Z(n138) );
  GTECH_AO21 U107 ( .A(n153), .B(n148), .C(n149), .Z(n145) );
  GTECH_AND2 U108 ( .A(b[5]), .B(a[5]), .Z(n149) );
  GTECH_OR2 U109 ( .A(b[5]), .B(a[5]), .Z(n148) );
  GTECH_NOT U110 ( .A(n183), .Z(n153) );
  GTECH_NOR2 U111 ( .A(b[4]), .B(a[4]), .Z(n183) );
  GTECH_NOT U112 ( .A(n135), .Z(n146) );
  GTECH_MUX2 U113 ( .A(n185), .B(n181), .S(n159), .Z(n135) );
  GTECH_NOT U114 ( .A(cin), .Z(n159) );
  GTECH_OR_NOT U115 ( .A(n179), .B(n173), .Z(n181) );
  GTECH_NAND2 U116 ( .A(b[0]), .B(a[0]), .Z(n173) );
  GTECH_AOI21 U117 ( .A(n167), .B(a[3]), .C(n186), .Z(n185) );
  GTECH_OA21 U118 ( .A(n167), .B(a[3]), .C(b[3]), .Z(n186) );
  GTECH_OR_NOT U119 ( .A(n163), .B(n187), .Z(n167) );
  GTECH_AO21 U120 ( .A(n165), .B(n164), .C(n172), .Z(n187) );
  GTECH_AO21 U121 ( .A(n179), .B(n174), .C(n175), .Z(n172) );
  GTECH_NOR2 U122 ( .A(b[1]), .B(a[1]), .Z(n175) );
  GTECH_NAND2 U123 ( .A(a[1]), .B(b[1]), .Z(n174) );
  GTECH_NOR2 U124 ( .A(a[0]), .B(b[0]), .Z(n179) );
  GTECH_NOT U125 ( .A(a[2]), .Z(n164) );
  GTECH_NOT U126 ( .A(b[2]), .Z(n165) );
  GTECH_AND2 U127 ( .A(b[2]), .B(a[2]), .Z(n163) );
endmodule

