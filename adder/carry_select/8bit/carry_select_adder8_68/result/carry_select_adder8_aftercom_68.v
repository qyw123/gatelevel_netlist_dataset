
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
         n180, n181, n182, n183, n184, n185, n186, n187;

  GTECH_OAI22 U67 ( .A(n136), .B(n137), .C(n138), .D(n139), .Z(sum[7]) );
  GTECH_XNOR2 U68 ( .A(n140), .B(n141), .Z(n138) );
  GTECH_XOR2 U69 ( .A(n142), .B(n141), .Z(n136) );
  GTECH_XOR2 U70 ( .A(a[7]), .B(b[7]), .Z(n141) );
  GTECH_AND2 U71 ( .A(n143), .B(n144), .Z(n142) );
  GTECH_AO21 U72 ( .A(n145), .B(n146), .C(n147), .Z(n143) );
  GTECH_NOT U73 ( .A(n148), .Z(sum[6]) );
  GTECH_AOI222 U74 ( .A(n149), .B(n150), .C(n151), .D(b[6]), .E(n152), .F(n145), .Z(n148) );
  GTECH_XOR2 U75 ( .A(n150), .B(a[6]), .Z(n152) );
  GTECH_NOR2 U76 ( .A(a[6]), .B(n150), .Z(n151) );
  GTECH_OAI21 U77 ( .A(n153), .B(n139), .C(n147), .Z(n150) );
  GTECH_AOI22 U78 ( .A(n154), .B(n155), .C(a[5]), .D(b[5]), .Z(n147) );
  GTECH_OAI22 U79 ( .A(n137), .B(n156), .C(n157), .D(n139), .Z(sum[5]) );
  GTECH_XNOR2 U80 ( .A(n158), .B(n159), .Z(n157) );
  GTECH_XNOR2 U81 ( .A(n155), .B(n159), .Z(n156) );
  GTECH_AOI21 U82 ( .A(a[5]), .B(b[5]), .C(n160), .Z(n159) );
  GTECH_NOT U83 ( .A(n154), .Z(n160) );
  GTECH_XNOR2 U84 ( .A(n139), .B(n161), .Z(sum[4]) );
  GTECH_OAI22 U85 ( .A(n162), .B(n163), .C(cin), .D(n164), .Z(sum[3]) );
  GTECH_XNOR2 U86 ( .A(n165), .B(n166), .Z(n164) );
  GTECH_OA21 U87 ( .A(a[2]), .B(n167), .C(n168), .Z(n166) );
  GTECH_AO21 U88 ( .A(n167), .B(a[2]), .C(b[2]), .Z(n168) );
  GTECH_XNOR2 U89 ( .A(n169), .B(n165), .Z(n163) );
  GTECH_XOR2 U90 ( .A(a[3]), .B(b[3]), .Z(n165) );
  GTECH_OAI22 U91 ( .A(n162), .B(n170), .C(cin), .D(n171), .Z(sum[2]) );
  GTECH_XNOR2 U92 ( .A(n167), .B(n172), .Z(n171) );
  GTECH_AO21 U93 ( .A(n173), .B(n174), .C(n175), .Z(n167) );
  GTECH_XNOR2 U94 ( .A(n176), .B(n172), .Z(n170) );
  GTECH_XOR2 U95 ( .A(a[2]), .B(b[2]), .Z(n172) );
  GTECH_OAI2N2 U96 ( .A(n177), .B(n178), .C(n179), .D(n177), .Z(sum[1]) );
  GTECH_OAI21 U97 ( .A(cin), .B(n174), .C(n180), .Z(n179) );
  GTECH_AOI21 U98 ( .A(n180), .B(cin), .C(n174), .Z(n178) );
  GTECH_AND_NOT U99 ( .A(n173), .B(n175), .Z(n177) );
  GTECH_XNOR2 U100 ( .A(n162), .B(n181), .Z(sum[0]) );
  GTECH_OAI2N2 U101 ( .A(n182), .B(n139), .C(n139), .D(n161), .Z(cout) );
  GTECH_AND_NOT U102 ( .A(n158), .B(n155), .Z(n161) );
  GTECH_AND2 U103 ( .A(a[4]), .B(b[4]), .Z(n155) );
  GTECH_NOT U104 ( .A(n137), .Z(n139) );
  GTECH_OAI2N2 U105 ( .A(n183), .B(n162), .C(n162), .D(n181), .Z(n137) );
  GTECH_AND_NOT U106 ( .A(n180), .B(n174), .Z(n181) );
  GTECH_AND2 U107 ( .A(a[0]), .B(b[0]), .Z(n174) );
  GTECH_NOT U108 ( .A(cin), .Z(n162) );
  GTECH_AOI21 U109 ( .A(n169), .B(a[3]), .C(n184), .Z(n183) );
  GTECH_OA21 U110 ( .A(a[3]), .B(n169), .C(b[3]), .Z(n184) );
  GTECH_AO21 U111 ( .A(n176), .B(a[2]), .C(n185), .Z(n169) );
  GTECH_OA21 U112 ( .A(a[2]), .B(n176), .C(b[2]), .Z(n185) );
  GTECH_AO21 U113 ( .A(n180), .B(n173), .C(n175), .Z(n176) );
  GTECH_AND2 U114 ( .A(b[1]), .B(a[1]), .Z(n175) );
  GTECH_OR2 U115 ( .A(a[1]), .B(b[1]), .Z(n173) );
  GTECH_OR2 U116 ( .A(a[0]), .B(b[0]), .Z(n180) );
  GTECH_AOI21 U117 ( .A(n140), .B(a[7]), .C(n186), .Z(n182) );
  GTECH_OA21 U118 ( .A(a[7]), .B(n140), .C(b[7]), .Z(n186) );
  GTECH_OAI21 U119 ( .A(n153), .B(n187), .C(n144), .Z(n140) );
  GTECH_NOT U120 ( .A(n149), .Z(n144) );
  GTECH_AND_NOT U121 ( .A(a[6]), .B(n145), .Z(n149) );
  GTECH_AND2 U122 ( .A(n146), .B(n145), .Z(n187) );
  GTECH_NOT U123 ( .A(b[6]), .Z(n145) );
  GTECH_NOT U124 ( .A(a[6]), .Z(n146) );
  GTECH_AOI22 U125 ( .A(a[5]), .B(b[5]), .C(n158), .D(n154), .Z(n153) );
  GTECH_OR2 U126 ( .A(b[5]), .B(a[5]), .Z(n154) );
  GTECH_OR2 U127 ( .A(a[4]), .B(b[4]), .Z(n158) );
endmodule

