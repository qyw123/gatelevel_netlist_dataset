
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
  GTECH_AOI21 U72 ( .A(n143), .B(n144), .C(n145), .Z(n142) );
  GTECH_OA21 U73 ( .A(n144), .B(n143), .C(n146), .Z(n145) );
  GTECH_NOT U74 ( .A(b[6]), .Z(n146) );
  GTECH_XOR3 U75 ( .A(b[6]), .B(a[6]), .C(n147), .Z(sum[6]) );
  GTECH_OAI21 U76 ( .A(n148), .B(n149), .C(n144), .Z(n147) );
  GTECH_AOI21 U77 ( .A(n150), .B(n151), .C(n152), .Z(n144) );
  GTECH_NOT U78 ( .A(n139), .Z(n149) );
  GTECH_MUX2 U79 ( .A(n153), .B(n154), .S(n139), .Z(sum[5]) );
  GTECH_XNOR2 U80 ( .A(n155), .B(n156), .Z(n154) );
  GTECH_XNOR2 U81 ( .A(n151), .B(n155), .Z(n153) );
  GTECH_OR_NOT U82 ( .A(n152), .B(n150), .Z(n155) );
  GTECH_XNOR2 U83 ( .A(n139), .B(n157), .Z(sum[4]) );
  GTECH_MUX2 U84 ( .A(n158), .B(n159), .S(n160), .Z(sum[3]) );
  GTECH_XNOR2 U85 ( .A(n161), .B(n162), .Z(n159) );
  GTECH_OA21 U86 ( .A(a[2]), .B(n163), .C(n164), .Z(n161) );
  GTECH_NOT U87 ( .A(n165), .Z(n164) );
  GTECH_AOI21 U88 ( .A(n163), .B(a[2]), .C(b[2]), .Z(n165) );
  GTECH_XOR2 U89 ( .A(n162), .B(n166), .Z(n158) );
  GTECH_XNOR2 U90 ( .A(a[3]), .B(b[3]), .Z(n162) );
  GTECH_MUX2 U91 ( .A(n167), .B(n168), .S(n160), .Z(sum[2]) );
  GTECH_XOR2 U92 ( .A(n169), .B(n163), .Z(n168) );
  GTECH_OAI21 U93 ( .A(n170), .B(n171), .C(n172), .Z(n163) );
  GTECH_XOR2 U94 ( .A(n169), .B(n173), .Z(n167) );
  GTECH_XOR2 U95 ( .A(a[2]), .B(b[2]), .Z(n169) );
  GTECH_MUX2 U96 ( .A(n174), .B(n175), .S(n176), .Z(sum[1]) );
  GTECH_OR_NOT U97 ( .A(n170), .B(n172), .Z(n176) );
  GTECH_OAI21 U98 ( .A(n177), .B(n160), .C(n171), .Z(n175) );
  GTECH_NOT U99 ( .A(n178), .Z(n171) );
  GTECH_OAI21 U100 ( .A(cin), .B(n178), .C(n179), .Z(n174) );
  GTECH_XNOR2 U101 ( .A(n160), .B(n180), .Z(sum[0]) );
  GTECH_NOT U102 ( .A(n181), .Z(cout) );
  GTECH_MUX2 U103 ( .A(n157), .B(n182), .S(n139), .Z(n181) );
  GTECH_MUX2 U104 ( .A(n183), .B(n180), .S(n160), .Z(n139) );
  GTECH_NOT U105 ( .A(cin), .Z(n160) );
  GTECH_NOR2 U106 ( .A(n177), .B(n178), .Z(n180) );
  GTECH_AND2 U107 ( .A(b[0]), .B(a[0]), .Z(n178) );
  GTECH_AOI21 U108 ( .A(n184), .B(n166), .C(n185), .Z(n183) );
  GTECH_OA21 U109 ( .A(n166), .B(n184), .C(n186), .Z(n185) );
  GTECH_NOT U110 ( .A(b[3]), .Z(n186) );
  GTECH_AOI21 U111 ( .A(n173), .B(a[2]), .C(n187), .Z(n166) );
  GTECH_OA21 U112 ( .A(a[2]), .B(n173), .C(b[2]), .Z(n187) );
  GTECH_OAI21 U113 ( .A(n170), .B(n177), .C(n172), .Z(n173) );
  GTECH_NAND2 U114 ( .A(b[1]), .B(a[1]), .Z(n172) );
  GTECH_NOT U115 ( .A(n179), .Z(n177) );
  GTECH_OR2 U116 ( .A(b[0]), .B(a[0]), .Z(n179) );
  GTECH_NOR2 U117 ( .A(a[1]), .B(b[1]), .Z(n170) );
  GTECH_NOT U118 ( .A(a[3]), .Z(n184) );
  GTECH_AOI21 U119 ( .A(n141), .B(a[7]), .C(n188), .Z(n182) );
  GTECH_OA21 U120 ( .A(a[7]), .B(n141), .C(b[7]), .Z(n188) );
  GTECH_OAI21 U121 ( .A(n148), .B(n143), .C(n189), .Z(n141) );
  GTECH_OAI21 U122 ( .A(a[6]), .B(n190), .C(b[6]), .Z(n189) );
  GTECH_NOT U123 ( .A(n148), .Z(n190) );
  GTECH_NOT U124 ( .A(a[6]), .Z(n143) );
  GTECH_AOI21 U125 ( .A(n156), .B(n150), .C(n152), .Z(n148) );
  GTECH_AND2 U126 ( .A(b[5]), .B(a[5]), .Z(n152) );
  GTECH_OR2 U127 ( .A(a[5]), .B(b[5]), .Z(n150) );
  GTECH_OR_NOT U128 ( .A(n151), .B(n156), .Z(n157) );
  GTECH_OR2 U129 ( .A(a[4]), .B(b[4]), .Z(n156) );
  GTECH_AND2 U130 ( .A(b[4]), .B(a[4]), .Z(n151) );
endmodule

