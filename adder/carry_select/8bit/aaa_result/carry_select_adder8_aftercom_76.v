
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
  GTECH_XOR2 U69 ( .A(n140), .B(n141), .Z(n138) );
  GTECH_XOR2 U70 ( .A(n142), .B(n140), .Z(n137) );
  GTECH_XOR2 U71 ( .A(a[7]), .B(b[7]), .Z(n140) );
  GTECH_OA21 U72 ( .A(a[6]), .B(n143), .C(n144), .Z(n142) );
  GTECH_AO21 U73 ( .A(n143), .B(a[6]), .C(b[6]), .Z(n144) );
  GTECH_MUX2 U74 ( .A(n145), .B(n146), .S(n147), .Z(sum[6]) );
  GTECH_XNOR2 U75 ( .A(n148), .B(n143), .Z(n146) );
  GTECH_OAI21 U76 ( .A(n149), .B(n150), .C(n151), .Z(n143) );
  GTECH_XNOR2 U77 ( .A(n148), .B(n152), .Z(n145) );
  GTECH_XNOR2 U78 ( .A(a[6]), .B(b[6]), .Z(n148) );
  GTECH_MUX2 U79 ( .A(n153), .B(n154), .S(n147), .Z(sum[5]) );
  GTECH_XNOR2 U80 ( .A(n150), .B(n155), .Z(n154) );
  GTECH_XNOR2 U81 ( .A(n155), .B(n156), .Z(n153) );
  GTECH_AND_NOT U82 ( .A(n151), .B(n149), .Z(n155) );
  GTECH_OAI21 U83 ( .A(n157), .B(n147), .C(n158), .Z(sum[4]) );
  GTECH_AND_NOT U84 ( .A(n150), .B(n156), .Z(n157) );
  GTECH_NOT U85 ( .A(n159), .Z(n150) );
  GTECH_MUX2 U86 ( .A(n160), .B(n161), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U87 ( .A(n162), .B(n163), .Z(n161) );
  GTECH_XOR2 U88 ( .A(n164), .B(n162), .Z(n160) );
  GTECH_XOR2 U89 ( .A(a[3]), .B(b[3]), .Z(n162) );
  GTECH_OA21 U90 ( .A(a[2]), .B(n165), .C(n166), .Z(n164) );
  GTECH_OAI21 U91 ( .A(n167), .B(n168), .C(n169), .Z(n166) );
  GTECH_NOT U92 ( .A(n165), .Z(n167) );
  GTECH_MUX2 U93 ( .A(n170), .B(n171), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U94 ( .A(n172), .B(n173), .Z(n171) );
  GTECH_XNOR2 U95 ( .A(n172), .B(n165), .Z(n170) );
  GTECH_AO21 U96 ( .A(n174), .B(n175), .C(n176), .Z(n165) );
  GTECH_XOR2 U97 ( .A(a[2]), .B(n169), .Z(n172) );
  GTECH_MUX2 U98 ( .A(n177), .B(n178), .S(n179), .Z(sum[1]) );
  GTECH_AND_NOT U99 ( .A(n174), .B(n176), .Z(n179) );
  GTECH_OAI21 U100 ( .A(cin), .B(n175), .C(n180), .Z(n178) );
  GTECH_AO21 U101 ( .A(n180), .B(cin), .C(n175), .Z(n177) );
  GTECH_XNOR2 U102 ( .A(cin), .B(n181), .Z(sum[0]) );
  GTECH_OAI21 U103 ( .A(n182), .B(n147), .C(n158), .Z(cout) );
  GTECH_OR3 U104 ( .A(n159), .B(n156), .C(n139), .Z(n158) );
  GTECH_NOT U105 ( .A(n147), .Z(n139) );
  GTECH_AND2 U106 ( .A(a[4]), .B(b[4]), .Z(n159) );
  GTECH_MUX2 U107 ( .A(n181), .B(n183), .S(cin), .Z(n147) );
  GTECH_AOI21 U108 ( .A(n163), .B(a[3]), .C(n184), .Z(n183) );
  GTECH_OA21 U109 ( .A(a[3]), .B(n163), .C(b[3]), .Z(n184) );
  GTECH_OAI21 U110 ( .A(n173), .B(n168), .C(n185), .Z(n163) );
  GTECH_AO21 U111 ( .A(n168), .B(n173), .C(n169), .Z(n185) );
  GTECH_NOT U112 ( .A(b[2]), .Z(n169) );
  GTECH_NOT U113 ( .A(a[2]), .Z(n168) );
  GTECH_AOI21 U114 ( .A(n180), .B(n174), .C(n176), .Z(n173) );
  GTECH_AND_NOT U115 ( .A(a[1]), .B(n186), .Z(n176) );
  GTECH_OR_NOT U116 ( .A(a[1]), .B(n186), .Z(n174) );
  GTECH_NOT U117 ( .A(b[1]), .Z(n186) );
  GTECH_OR_NOT U118 ( .A(n175), .B(n180), .Z(n181) );
  GTECH_OR_NOT U119 ( .A(b[0]), .B(n187), .Z(n180) );
  GTECH_NOT U120 ( .A(a[0]), .Z(n187) );
  GTECH_AND2 U121 ( .A(b[0]), .B(a[0]), .Z(n175) );
  GTECH_AOI21 U122 ( .A(n141), .B(a[7]), .C(n188), .Z(n182) );
  GTECH_OA21 U123 ( .A(a[7]), .B(n141), .C(b[7]), .Z(n188) );
  GTECH_AO21 U124 ( .A(n152), .B(a[6]), .C(n189), .Z(n141) );
  GTECH_OA21 U125 ( .A(a[6]), .B(n152), .C(b[6]), .Z(n189) );
  GTECH_OAI21 U126 ( .A(n149), .B(n156), .C(n151), .Z(n152) );
  GTECH_NOT U127 ( .A(n190), .Z(n151) );
  GTECH_AND2 U128 ( .A(a[5]), .B(b[5]), .Z(n190) );
  GTECH_NOR2 U129 ( .A(a[4]), .B(b[4]), .Z(n156) );
  GTECH_NOR2 U130 ( .A(a[5]), .B(b[5]), .Z(n149) );
endmodule

