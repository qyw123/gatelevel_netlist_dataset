
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
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189;

  GTECH_MUX2 U67 ( .A(n136), .B(n137), .S(n138), .Z(sum[7]) );
  GTECH_XOR2 U68 ( .A(n139), .B(n140), .Z(n137) );
  GTECH_OA21 U69 ( .A(n141), .B(n142), .C(n143), .Z(n140) );
  GTECH_NOT U70 ( .A(n144), .Z(n141) );
  GTECH_XOR2 U71 ( .A(n139), .B(n145), .Z(n136) );
  GTECH_XNOR2 U72 ( .A(n146), .B(n147), .Z(n139) );
  GTECH_MUX2 U73 ( .A(n148), .B(n149), .S(n138), .Z(sum[6]) );
  GTECH_XNOR2 U74 ( .A(n142), .B(n150), .Z(n149) );
  GTECH_AOI21 U75 ( .A(n151), .B(n152), .C(n153), .Z(n142) );
  GTECH_NOT U76 ( .A(n154), .Z(n151) );
  GTECH_XOR2 U77 ( .A(n150), .B(n155), .Z(n148) );
  GTECH_AND2 U78 ( .A(n144), .B(n143), .Z(n150) );
  GTECH_MUX2 U79 ( .A(n156), .B(n157), .S(n138), .Z(sum[5]) );
  GTECH_XOR2 U80 ( .A(n154), .B(n158), .Z(n157) );
  GTECH_XNOR2 U81 ( .A(n158), .B(n159), .Z(n156) );
  GTECH_OR_NOT U82 ( .A(n153), .B(n152), .Z(n158) );
  GTECH_OR_NOT U83 ( .A(n160), .B(n161), .Z(sum[4]) );
  GTECH_AO21 U84 ( .A(n159), .B(n154), .C(n138), .Z(n161) );
  GTECH_MUX2 U85 ( .A(n162), .B(n163), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U86 ( .A(n164), .B(n165), .Z(n163) );
  GTECH_XOR2 U87 ( .A(n164), .B(n166), .Z(n162) );
  GTECH_AOI21 U88 ( .A(n167), .B(n168), .C(n169), .Z(n166) );
  GTECH_XNOR2 U89 ( .A(a[3]), .B(b[3]), .Z(n164) );
  GTECH_MUX2 U90 ( .A(n170), .B(n171), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U91 ( .A(n172), .B(n173), .Z(n171) );
  GTECH_XNOR2 U92 ( .A(n172), .B(n168), .Z(n170) );
  GTECH_OA21 U93 ( .A(n174), .B(n175), .C(n176), .Z(n168) );
  GTECH_OR_NOT U94 ( .A(n169), .B(n167), .Z(n172) );
  GTECH_MUX2 U95 ( .A(n177), .B(n178), .S(n179), .Z(sum[1]) );
  GTECH_OA21 U96 ( .A(a[1]), .B(b[1]), .C(n180), .Z(n179) );
  GTECH_NOT U97 ( .A(n181), .Z(n178) );
  GTECH_OA21 U98 ( .A(n174), .B(cin), .C(n182), .Z(n181) );
  GTECH_AO21 U99 ( .A(cin), .B(n182), .C(n174), .Z(n177) );
  GTECH_AND2 U100 ( .A(b[0]), .B(a[0]), .Z(n174) );
  GTECH_XNOR2 U101 ( .A(cin), .B(n183), .Z(sum[0]) );
  GTECH_AO21 U102 ( .A(n184), .B(n185), .C(n160), .Z(cout) );
  GTECH_AND3 U103 ( .A(n154), .B(n159), .C(n138), .Z(n160) );
  GTECH_NAND2 U104 ( .A(b[4]), .B(a[4]), .Z(n154) );
  GTECH_OAI22 U105 ( .A(n145), .B(n146), .C(n186), .D(n147), .Z(n185) );
  GTECH_NOT U106 ( .A(b[7]), .Z(n147) );
  GTECH_AND2 U107 ( .A(n145), .B(n146), .Z(n186) );
  GTECH_NOT U108 ( .A(a[7]), .Z(n146) );
  GTECH_AOI21 U109 ( .A(n144), .B(n155), .C(n187), .Z(n145) );
  GTECH_NOT U110 ( .A(n143), .Z(n187) );
  GTECH_NAND2 U111 ( .A(a[6]), .B(b[6]), .Z(n143) );
  GTECH_AO21 U112 ( .A(n159), .B(n152), .C(n153), .Z(n155) );
  GTECH_AND2 U113 ( .A(b[5]), .B(a[5]), .Z(n153) );
  GTECH_OR2 U114 ( .A(a[5]), .B(b[5]), .Z(n152) );
  GTECH_OR2 U115 ( .A(a[4]), .B(b[4]), .Z(n159) );
  GTECH_OR2 U116 ( .A(b[6]), .B(a[6]), .Z(n144) );
  GTECH_NOT U117 ( .A(n138), .Z(n184) );
  GTECH_MUX2 U118 ( .A(n183), .B(n188), .S(cin), .Z(n138) );
  GTECH_AOI21 U119 ( .A(n165), .B(a[3]), .C(n189), .Z(n188) );
  GTECH_OA21 U120 ( .A(n165), .B(a[3]), .C(b[3]), .Z(n189) );
  GTECH_AO21 U121 ( .A(n173), .B(n167), .C(n169), .Z(n165) );
  GTECH_AND2 U122 ( .A(a[2]), .B(b[2]), .Z(n169) );
  GTECH_OR2 U123 ( .A(b[2]), .B(a[2]), .Z(n167) );
  GTECH_OA21 U124 ( .A(n182), .B(n175), .C(n176), .Z(n173) );
  GTECH_OR2 U125 ( .A(b[1]), .B(a[1]), .Z(n176) );
  GTECH_NOT U126 ( .A(n180), .Z(n175) );
  GTECH_NAND2 U127 ( .A(a[1]), .B(b[1]), .Z(n180) );
  GTECH_OR2 U128 ( .A(a[0]), .B(b[0]), .Z(n182) );
  GTECH_XNOR2 U129 ( .A(a[0]), .B(b[0]), .Z(n183) );
endmodule

