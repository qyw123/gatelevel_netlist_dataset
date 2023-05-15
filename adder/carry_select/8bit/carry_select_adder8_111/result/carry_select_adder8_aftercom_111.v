
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190;

  GTECH_MUX2 U68 ( .A(n137), .B(n138), .S(n139), .Z(sum[7]) );
  GTECH_XNOR2 U69 ( .A(n140), .B(n141), .Z(n138) );
  GTECH_AND2 U70 ( .A(n142), .B(n143), .Z(n141) );
  GTECH_OAI21 U71 ( .A(b[6]), .B(a[6]), .C(n144), .Z(n142) );
  GTECH_XNOR2 U72 ( .A(n140), .B(n145), .Z(n137) );
  GTECH_XNOR2 U73 ( .A(a[7]), .B(n146), .Z(n140) );
  GTECH_MUX2 U74 ( .A(n147), .B(n148), .S(n139), .Z(sum[6]) );
  GTECH_XNOR2 U75 ( .A(n149), .B(n144), .Z(n148) );
  GTECH_OAI21 U76 ( .A(n150), .B(n151), .C(n152), .Z(n144) );
  GTECH_NOT U77 ( .A(n153), .Z(n151) );
  GTECH_XNOR2 U78 ( .A(n149), .B(n154), .Z(n147) );
  GTECH_OAI21 U79 ( .A(b[6]), .B(a[6]), .C(n143), .Z(n149) );
  GTECH_MUX2 U80 ( .A(n155), .B(n156), .S(n139), .Z(sum[5]) );
  GTECH_XOR2 U81 ( .A(n153), .B(n157), .Z(n156) );
  GTECH_XNOR2 U82 ( .A(n157), .B(n158), .Z(n155) );
  GTECH_AND_NOT U83 ( .A(n152), .B(n150), .Z(n157) );
  GTECH_OR_NOT U84 ( .A(n159), .B(n160), .Z(sum[4]) );
  GTECH_OAI21 U85 ( .A(n153), .B(n158), .C(n161), .Z(n160) );
  GTECH_MUX2 U86 ( .A(n162), .B(n163), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U87 ( .A(n164), .B(n165), .Z(n163) );
  GTECH_XNOR2 U88 ( .A(n164), .B(n166), .Z(n162) );
  GTECH_OAI21 U89 ( .A(n167), .B(n168), .C(n169), .Z(n166) );
  GTECH_XNOR2 U90 ( .A(a[3]), .B(b[3]), .Z(n164) );
  GTECH_MUX2 U91 ( .A(n170), .B(n171), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U92 ( .A(n172), .B(n173), .Z(n171) );
  GTECH_XNOR2 U93 ( .A(n172), .B(n167), .Z(n170) );
  GTECH_AOI21 U94 ( .A(n174), .B(n175), .C(n176), .Z(n167) );
  GTECH_AND_NOT U95 ( .A(n169), .B(n168), .Z(n172) );
  GTECH_MUX2 U96 ( .A(n177), .B(n178), .S(n179), .Z(sum[1]) );
  GTECH_AND_NOT U97 ( .A(n174), .B(n176), .Z(n179) );
  GTECH_OAI21 U98 ( .A(cin), .B(n175), .C(n180), .Z(n178) );
  GTECH_AO21 U99 ( .A(n180), .B(cin), .C(n175), .Z(n177) );
  GTECH_XNOR2 U100 ( .A(cin), .B(n181), .Z(sum[0]) );
  GTECH_AO21 U101 ( .A(n182), .B(n161), .C(n159), .Z(cout) );
  GTECH_NOR3 U102 ( .A(n153), .B(n158), .C(n161), .Z(n159) );
  GTECH_AND2 U103 ( .A(b[4]), .B(a[4]), .Z(n153) );
  GTECH_NOT U104 ( .A(n139), .Z(n161) );
  GTECH_MUX2 U105 ( .A(n181), .B(n183), .S(cin), .Z(n139) );
  GTECH_AOI22 U106 ( .A(n165), .B(a[3]), .C(n184), .D(b[3]), .Z(n183) );
  GTECH_OR_NOT U107 ( .A(n165), .B(n185), .Z(n184) );
  GTECH_NOT U108 ( .A(a[3]), .Z(n185) );
  GTECH_OAI21 U109 ( .A(n168), .B(n173), .C(n169), .Z(n165) );
  GTECH_NAND2 U110 ( .A(b[2]), .B(a[2]), .Z(n169) );
  GTECH_AOI21 U111 ( .A(n180), .B(n174), .C(n176), .Z(n173) );
  GTECH_AND2 U112 ( .A(a[1]), .B(b[1]), .Z(n176) );
  GTECH_NOT U113 ( .A(n186), .Z(n174) );
  GTECH_NOR2 U114 ( .A(a[1]), .B(b[1]), .Z(n186) );
  GTECH_NOR2 U115 ( .A(b[2]), .B(a[2]), .Z(n168) );
  GTECH_OR_NOT U116 ( .A(n175), .B(n180), .Z(n181) );
  GTECH_OR_NOT U117 ( .A(b[0]), .B(n187), .Z(n180) );
  GTECH_NOT U118 ( .A(a[0]), .Z(n187) );
  GTECH_AND2 U119 ( .A(b[0]), .B(a[0]), .Z(n175) );
  GTECH_OAI22 U120 ( .A(n145), .B(n188), .C(n189), .D(n146), .Z(n182) );
  GTECH_NOT U121 ( .A(b[7]), .Z(n146) );
  GTECH_AND2 U122 ( .A(n145), .B(n188), .Z(n189) );
  GTECH_NOT U123 ( .A(a[7]), .Z(n188) );
  GTECH_AND2 U124 ( .A(n190), .B(n143), .Z(n145) );
  GTECH_NAND2 U125 ( .A(a[6]), .B(b[6]), .Z(n143) );
  GTECH_OAI21 U126 ( .A(a[6]), .B(b[6]), .C(n154), .Z(n190) );
  GTECH_OAI21 U127 ( .A(n158), .B(n150), .C(n152), .Z(n154) );
  GTECH_NAND2 U128 ( .A(a[5]), .B(b[5]), .Z(n152) );
  GTECH_NOR2 U129 ( .A(a[5]), .B(b[5]), .Z(n150) );
  GTECH_NOR2 U130 ( .A(b[4]), .B(a[4]), .Z(n158) );
endmodule

