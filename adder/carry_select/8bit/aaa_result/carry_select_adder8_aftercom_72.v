
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
  GTECH_AND2 U69 ( .A(n141), .B(n142), .Z(n140) );
  GTECH_AO21 U70 ( .A(n143), .B(n144), .C(n145), .Z(n142) );
  GTECH_XNOR2 U71 ( .A(n139), .B(n146), .Z(n136) );
  GTECH_XNOR2 U72 ( .A(a[7]), .B(b[7]), .Z(n139) );
  GTECH_OAI21 U73 ( .A(n147), .B(n141), .C(n148), .Z(sum[6]) );
  GTECH_MUX2 U74 ( .A(n149), .B(n150), .S(b[6]), .Z(n148) );
  GTECH_OR_NOT U75 ( .A(a[6]), .B(n147), .Z(n150) );
  GTECH_XNOR2 U76 ( .A(n144), .B(n147), .Z(n149) );
  GTECH_OA21 U77 ( .A(n151), .B(n138), .C(n145), .Z(n147) );
  GTECH_AOI22 U78 ( .A(a[5]), .B(b[5]), .C(n152), .D(n153), .Z(n145) );
  GTECH_MUX2 U79 ( .A(n154), .B(n155), .S(n138), .Z(sum[5]) );
  GTECH_XNOR2 U80 ( .A(n156), .B(n153), .Z(n155) );
  GTECH_XOR2 U81 ( .A(n156), .B(n157), .Z(n154) );
  GTECH_AO21 U82 ( .A(a[5]), .B(b[5]), .C(n158), .Z(n156) );
  GTECH_XOR2 U83 ( .A(n159), .B(n138), .Z(sum[4]) );
  GTECH_MUX2 U84 ( .A(n160), .B(n161), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U85 ( .A(n162), .B(n163), .Z(n161) );
  GTECH_XOR2 U86 ( .A(n164), .B(n162), .Z(n160) );
  GTECH_XOR2 U87 ( .A(a[3]), .B(b[3]), .Z(n162) );
  GTECH_OA21 U88 ( .A(a[2]), .B(n165), .C(n166), .Z(n164) );
  GTECH_AO21 U89 ( .A(n165), .B(a[2]), .C(b[2]), .Z(n166) );
  GTECH_MUX2 U90 ( .A(n167), .B(n168), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U91 ( .A(n169), .B(n170), .Z(n168) );
  GTECH_XNOR2 U92 ( .A(n169), .B(n165), .Z(n167) );
  GTECH_OAI21 U93 ( .A(n171), .B(n172), .C(n173), .Z(n165) );
  GTECH_XNOR2 U94 ( .A(a[2]), .B(b[2]), .Z(n169) );
  GTECH_MUX2 U95 ( .A(n174), .B(n175), .S(n176), .Z(sum[1]) );
  GTECH_NOR2 U96 ( .A(n177), .B(n171), .Z(n176) );
  GTECH_AO21 U97 ( .A(n178), .B(n172), .C(n179), .Z(n175) );
  GTECH_NOT U98 ( .A(n180), .Z(n172) );
  GTECH_NOT U99 ( .A(cin), .Z(n178) );
  GTECH_AO21 U100 ( .A(n181), .B(cin), .C(n180), .Z(n174) );
  GTECH_XOR2 U101 ( .A(cin), .B(n182), .Z(sum[0]) );
  GTECH_NOT U102 ( .A(n183), .Z(cout) );
  GTECH_MUX2 U103 ( .A(n184), .B(n159), .S(n138), .Z(n183) );
  GTECH_MUX2 U104 ( .A(n185), .B(n186), .S(cin), .Z(n138) );
  GTECH_AOI21 U105 ( .A(n163), .B(a[3]), .C(n187), .Z(n186) );
  GTECH_OA21 U106 ( .A(a[3]), .B(n163), .C(b[3]), .Z(n187) );
  GTECH_AO21 U107 ( .A(n170), .B(a[2]), .C(n188), .Z(n163) );
  GTECH_OA21 U108 ( .A(a[2]), .B(n170), .C(b[2]), .Z(n188) );
  GTECH_OAI21 U109 ( .A(n179), .B(n171), .C(n173), .Z(n170) );
  GTECH_NOT U110 ( .A(n177), .Z(n173) );
  GTECH_AND2 U111 ( .A(a[1]), .B(b[1]), .Z(n177) );
  GTECH_NOR2 U112 ( .A(a[1]), .B(b[1]), .Z(n171) );
  GTECH_NOT U113 ( .A(n182), .Z(n185) );
  GTECH_AND_NOT U114 ( .A(n181), .B(n180), .Z(n182) );
  GTECH_AND2 U115 ( .A(a[0]), .B(b[0]), .Z(n180) );
  GTECH_NOT U116 ( .A(n179), .Z(n181) );
  GTECH_NOR2 U117 ( .A(b[0]), .B(a[0]), .Z(n179) );
  GTECH_OR2 U118 ( .A(n157), .B(n153), .Z(n159) );
  GTECH_AND2 U119 ( .A(b[4]), .B(a[4]), .Z(n153) );
  GTECH_AOI21 U120 ( .A(n146), .B(a[7]), .C(n189), .Z(n184) );
  GTECH_OA21 U121 ( .A(a[7]), .B(n146), .C(b[7]), .Z(n189) );
  GTECH_OAI21 U122 ( .A(n151), .B(n190), .C(n141), .Z(n146) );
  GTECH_OR_NOT U123 ( .A(n143), .B(a[6]), .Z(n141) );
  GTECH_NOT U124 ( .A(b[6]), .Z(n143) );
  GTECH_AND_NOT U125 ( .A(n144), .B(b[6]), .Z(n190) );
  GTECH_NOT U126 ( .A(a[6]), .Z(n144) );
  GTECH_AOI2N2 U127 ( .A(a[5]), .B(b[5]), .C(n157), .D(n158), .Z(n151) );
  GTECH_NOT U128 ( .A(n152), .Z(n158) );
  GTECH_OR2 U129 ( .A(b[5]), .B(a[5]), .Z(n152) );
  GTECH_NOR2 U130 ( .A(b[4]), .B(a[4]), .Z(n157) );
endmodule

