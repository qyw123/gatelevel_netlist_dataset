
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189;

  GTECH_MUX2 U66 ( .A(n135), .B(n136), .S(n137), .Z(sum[7]) );
  GTECH_XNOR2 U67 ( .A(n138), .B(n139), .Z(n136) );
  GTECH_XOR2 U68 ( .A(n138), .B(n140), .Z(n135) );
  GTECH_AOI21 U69 ( .A(n141), .B(n142), .C(n143), .Z(n140) );
  GTECH_XNOR2 U70 ( .A(a[7]), .B(b[7]), .Z(n138) );
  GTECH_MUX2 U71 ( .A(n144), .B(n145), .S(n146), .Z(sum[6]) );
  GTECH_AOI21 U72 ( .A(n147), .B(n137), .C(n142), .Z(n146) );
  GTECH_OAI21 U73 ( .A(n148), .B(n149), .C(n150), .Z(n142) );
  GTECH_XOR2 U74 ( .A(b[6]), .B(a[6]), .Z(n145) );
  GTECH_OR_NOT U75 ( .A(n143), .B(n141), .Z(n144) );
  GTECH_MUX2 U76 ( .A(n151), .B(n152), .S(n153), .Z(sum[5]) );
  GTECH_XOR2 U77 ( .A(n149), .B(n154), .Z(n152) );
  GTECH_NOT U78 ( .A(n155), .Z(n149) );
  GTECH_XOR2 U79 ( .A(n154), .B(n156), .Z(n151) );
  GTECH_OR_NOT U80 ( .A(n148), .B(n150), .Z(n154) );
  GTECH_OAI21 U81 ( .A(n157), .B(n153), .C(n158), .Z(sum[4]) );
  GTECH_NOR2 U82 ( .A(n155), .B(n156), .Z(n157) );
  GTECH_MUX2 U83 ( .A(n159), .B(n160), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U84 ( .A(n161), .B(n162), .Z(n160) );
  GTECH_XOR2 U85 ( .A(n161), .B(n163), .Z(n159) );
  GTECH_OA21 U86 ( .A(n164), .B(n165), .C(n166), .Z(n163) );
  GTECH_XNOR2 U87 ( .A(a[3]), .B(b[3]), .Z(n161) );
  GTECH_MUX2 U88 ( .A(n167), .B(n168), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U89 ( .A(n169), .B(n170), .Z(n168) );
  GTECH_XOR2 U90 ( .A(n165), .B(n169), .Z(n167) );
  GTECH_OR_NOT U91 ( .A(n164), .B(n166), .Z(n169) );
  GTECH_OA21 U92 ( .A(n171), .B(n172), .C(n173), .Z(n165) );
  GTECH_MUX2 U93 ( .A(n174), .B(n175), .S(n176), .Z(sum[1]) );
  GTECH_NOR2 U94 ( .A(n177), .B(n171), .Z(n176) );
  GTECH_AO21 U95 ( .A(n178), .B(n172), .C(n179), .Z(n175) );
  GTECH_OAI21 U96 ( .A(n179), .B(n178), .C(n172), .Z(n174) );
  GTECH_NOT U97 ( .A(n180), .Z(n172) );
  GTECH_AND2 U98 ( .A(b[0]), .B(a[0]), .Z(n180) );
  GTECH_NOT U99 ( .A(cin), .Z(n178) );
  GTECH_XNOR2 U100 ( .A(cin), .B(n181), .Z(sum[0]) );
  GTECH_OAI21 U101 ( .A(n182), .B(n153), .C(n158), .Z(cout) );
  GTECH_OR3 U102 ( .A(n155), .B(n156), .C(n137), .Z(n158) );
  GTECH_NOT U103 ( .A(n153), .Z(n137) );
  GTECH_AND2 U104 ( .A(a[4]), .B(b[4]), .Z(n155) );
  GTECH_MUX2 U105 ( .A(n181), .B(n183), .S(cin), .Z(n153) );
  GTECH_AOI21 U106 ( .A(n162), .B(a[3]), .C(n184), .Z(n183) );
  GTECH_OA21 U107 ( .A(a[3]), .B(n162), .C(b[3]), .Z(n184) );
  GTECH_OAI21 U108 ( .A(n170), .B(n164), .C(n166), .Z(n162) );
  GTECH_OR_NOT U109 ( .A(n185), .B(b[2]), .Z(n166) );
  GTECH_NOT U110 ( .A(a[2]), .Z(n185) );
  GTECH_NOR2 U111 ( .A(a[2]), .B(b[2]), .Z(n164) );
  GTECH_OA21 U112 ( .A(n171), .B(n179), .C(n173), .Z(n170) );
  GTECH_NOT U113 ( .A(n177), .Z(n173) );
  GTECH_AND2 U114 ( .A(a[1]), .B(b[1]), .Z(n177) );
  GTECH_NOR2 U115 ( .A(a[0]), .B(b[0]), .Z(n179) );
  GTECH_NOR2 U116 ( .A(a[1]), .B(b[1]), .Z(n171) );
  GTECH_XNOR2 U117 ( .A(a[0]), .B(b[0]), .Z(n181) );
  GTECH_AOI21 U118 ( .A(n139), .B(a[7]), .C(n186), .Z(n182) );
  GTECH_NOT U119 ( .A(n187), .Z(n186) );
  GTECH_OAI21 U120 ( .A(a[7]), .B(n139), .C(b[7]), .Z(n187) );
  GTECH_NOT U121 ( .A(n188), .Z(n139) );
  GTECH_AOI21 U122 ( .A(n147), .B(n141), .C(n143), .Z(n188) );
  GTECH_AND2 U123 ( .A(a[6]), .B(b[6]), .Z(n143) );
  GTECH_OR2 U124 ( .A(a[6]), .B(b[6]), .Z(n141) );
  GTECH_OAI21 U125 ( .A(n156), .B(n148), .C(n150), .Z(n147) );
  GTECH_OR_NOT U126 ( .A(n189), .B(b[5]), .Z(n150) );
  GTECH_NOT U127 ( .A(a[5]), .Z(n189) );
  GTECH_NOR2 U128 ( .A(a[5]), .B(b[5]), .Z(n148) );
  GTECH_NOR2 U129 ( .A(b[4]), .B(a[4]), .Z(n156) );
endmodule

