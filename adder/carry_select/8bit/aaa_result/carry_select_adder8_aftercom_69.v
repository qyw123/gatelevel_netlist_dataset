
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
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190;

  GTECH_MUX2 U67 ( .A(n136), .B(n137), .S(n138), .Z(sum[7]) );
  GTECH_XOR2 U68 ( .A(n139), .B(n140), .Z(n137) );
  GTECH_AOI21 U69 ( .A(n141), .B(n142), .C(n143), .Z(n139) );
  GTECH_OA21 U70 ( .A(n141), .B(n142), .C(n144), .Z(n143) );
  GTECH_XNOR2 U71 ( .A(n140), .B(n145), .Z(n136) );
  GTECH_XOR2 U72 ( .A(a[7]), .B(b[7]), .Z(n140) );
  GTECH_MUX2 U73 ( .A(n146), .B(n147), .S(n138), .Z(sum[6]) );
  GTECH_XOR2 U74 ( .A(n148), .B(n142), .Z(n147) );
  GTECH_AOI21 U75 ( .A(n149), .B(n150), .C(n151), .Z(n142) );
  GTECH_XOR2 U76 ( .A(n148), .B(n152), .Z(n146) );
  GTECH_XNOR2 U77 ( .A(n141), .B(n144), .Z(n148) );
  GTECH_MUX2 U78 ( .A(n153), .B(n154), .S(n138), .Z(sum[5]) );
  GTECH_XOR2 U79 ( .A(n149), .B(n155), .Z(n154) );
  GTECH_XOR2 U80 ( .A(n156), .B(n155), .Z(n153) );
  GTECH_AND_NOT U81 ( .A(n150), .B(n151), .Z(n155) );
  GTECH_OR2 U82 ( .A(n157), .B(n158), .Z(sum[4]) );
  GTECH_OA21 U83 ( .A(n149), .B(n159), .C(n160), .Z(n158) );
  GTECH_MUX2 U84 ( .A(n161), .B(n162), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U85 ( .A(n163), .B(n164), .Z(n162) );
  GTECH_XOR2 U86 ( .A(n165), .B(n163), .Z(n161) );
  GTECH_XOR2 U87 ( .A(a[3]), .B(b[3]), .Z(n163) );
  GTECH_AOI21 U88 ( .A(n166), .B(n167), .C(n168), .Z(n165) );
  GTECH_OA21 U89 ( .A(n166), .B(n167), .C(n169), .Z(n168) );
  GTECH_MUX2 U90 ( .A(n170), .B(n171), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U91 ( .A(n172), .B(n173), .Z(n171) );
  GTECH_XOR2 U92 ( .A(n172), .B(n167), .Z(n170) );
  GTECH_AOI21 U93 ( .A(n174), .B(n175), .C(n176), .Z(n167) );
  GTECH_XNOR2 U94 ( .A(n166), .B(n169), .Z(n172) );
  GTECH_MUX2 U95 ( .A(n177), .B(n178), .S(n179), .Z(sum[1]) );
  GTECH_AND_NOT U96 ( .A(n175), .B(n176), .Z(n179) );
  GTECH_NOT U97 ( .A(n180), .Z(n178) );
  GTECH_OA21 U98 ( .A(n174), .B(cin), .C(n181), .Z(n180) );
  GTECH_AO21 U99 ( .A(cin), .B(n181), .C(n174), .Z(n177) );
  GTECH_AND2 U100 ( .A(b[0]), .B(a[0]), .Z(n174) );
  GTECH_XNOR2 U101 ( .A(cin), .B(n182), .Z(sum[0]) );
  GTECH_AO21 U102 ( .A(n160), .B(n183), .C(n157), .Z(cout) );
  GTECH_NOR3 U103 ( .A(n159), .B(n149), .C(n160), .Z(n157) );
  GTECH_AND2 U104 ( .A(b[4]), .B(a[4]), .Z(n149) );
  GTECH_AO22 U105 ( .A(n184), .B(a[7]), .C(n185), .D(b[7]), .Z(n183) );
  GTECH_OR_NOT U106 ( .A(a[7]), .B(n145), .Z(n185) );
  GTECH_NOT U107 ( .A(n145), .Z(n184) );
  GTECH_OA22 U108 ( .A(n152), .B(n141), .C(n186), .D(n144), .Z(n145) );
  GTECH_NOT U109 ( .A(b[6]), .Z(n144) );
  GTECH_AND_NOT U110 ( .A(n152), .B(a[6]), .Z(n186) );
  GTECH_NOT U111 ( .A(a[6]), .Z(n141) );
  GTECH_AOI21 U112 ( .A(n150), .B(n156), .C(n151), .Z(n152) );
  GTECH_AND2 U113 ( .A(a[5]), .B(b[5]), .Z(n151) );
  GTECH_NOT U114 ( .A(n159), .Z(n156) );
  GTECH_NOR2 U115 ( .A(a[4]), .B(b[4]), .Z(n159) );
  GTECH_OR2 U116 ( .A(a[5]), .B(b[5]), .Z(n150) );
  GTECH_NOT U117 ( .A(n138), .Z(n160) );
  GTECH_MUX2 U118 ( .A(n182), .B(n187), .S(cin), .Z(n138) );
  GTECH_AOI21 U119 ( .A(n164), .B(a[3]), .C(n188), .Z(n187) );
  GTECH_OA21 U120 ( .A(n164), .B(a[3]), .C(b[3]), .Z(n188) );
  GTECH_OAI22 U121 ( .A(n173), .B(n166), .C(n189), .D(n169), .Z(n164) );
  GTECH_NOT U122 ( .A(b[2]), .Z(n169) );
  GTECH_AND_NOT U123 ( .A(n173), .B(a[2]), .Z(n189) );
  GTECH_NOT U124 ( .A(a[2]), .Z(n166) );
  GTECH_AOI21 U125 ( .A(n181), .B(n175), .C(n176), .Z(n173) );
  GTECH_AND2 U126 ( .A(a[1]), .B(b[1]), .Z(n176) );
  GTECH_OR2 U127 ( .A(a[1]), .B(b[1]), .Z(n175) );
  GTECH_OR2 U128 ( .A(b[0]), .B(a[0]), .Z(n181) );
  GTECH_XOR2 U129 ( .A(n190), .B(b[0]), .Z(n182) );
  GTECH_NOT U130 ( .A(a[0]), .Z(n190) );
endmodule

