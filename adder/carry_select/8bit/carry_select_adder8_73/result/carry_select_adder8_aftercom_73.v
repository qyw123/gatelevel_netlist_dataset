
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
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191;

  GTECH_MUX2 U64 ( .A(n133), .B(n134), .S(n135), .Z(sum[7]) );
  GTECH_XOR2 U65 ( .A(n136), .B(n137), .Z(n134) );
  GTECH_AND2 U66 ( .A(n138), .B(n139), .Z(n137) );
  GTECH_OAI21 U67 ( .A(b[6]), .B(a[6]), .C(n140), .Z(n138) );
  GTECH_XOR2 U68 ( .A(n136), .B(n141), .Z(n133) );
  GTECH_XOR2 U69 ( .A(n142), .B(b[7]), .Z(n136) );
  GTECH_MUX2 U70 ( .A(n143), .B(n144), .S(n135), .Z(sum[6]) );
  GTECH_XNOR2 U71 ( .A(n140), .B(n145), .Z(n144) );
  GTECH_OA21 U72 ( .A(n146), .B(n147), .C(n148), .Z(n140) );
  GTECH_XOR2 U73 ( .A(n149), .B(n145), .Z(n143) );
  GTECH_OAI21 U74 ( .A(b[6]), .B(a[6]), .C(n139), .Z(n145) );
  GTECH_MUX2 U75 ( .A(n150), .B(n151), .S(n135), .Z(sum[5]) );
  GTECH_XNOR2 U76 ( .A(n152), .B(n153), .Z(n151) );
  GTECH_XOR2 U77 ( .A(n153), .B(n154), .Z(n150) );
  GTECH_OA21 U78 ( .A(a[5]), .B(b[5]), .C(n155), .Z(n153) );
  GTECH_NOT U79 ( .A(n147), .Z(n155) );
  GTECH_OAI21 U80 ( .A(n156), .B(n135), .C(n157), .Z(sum[4]) );
  GTECH_AND_NOT U81 ( .A(n154), .B(n146), .Z(n156) );
  GTECH_MUX2 U82 ( .A(n158), .B(n159), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U83 ( .A(n160), .B(n161), .Z(n159) );
  GTECH_XOR2 U84 ( .A(n160), .B(n162), .Z(n158) );
  GTECH_AND2 U85 ( .A(n163), .B(n164), .Z(n162) );
  GTECH_OAI21 U86 ( .A(b[2]), .B(a[2]), .C(n165), .Z(n163) );
  GTECH_XOR2 U87 ( .A(n166), .B(b[3]), .Z(n160) );
  GTECH_MUX2 U88 ( .A(n167), .B(n168), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U89 ( .A(n169), .B(n170), .Z(n168) );
  GTECH_XOR2 U90 ( .A(n169), .B(n165), .Z(n167) );
  GTECH_OAI21 U91 ( .A(n171), .B(n172), .C(n173), .Z(n165) );
  GTECH_NOT U92 ( .A(n174), .Z(n172) );
  GTECH_OA21 U93 ( .A(b[2]), .B(a[2]), .C(n164), .Z(n169) );
  GTECH_MUX2 U94 ( .A(n175), .B(n176), .S(n177), .Z(sum[1]) );
  GTECH_AND_NOT U95 ( .A(n173), .B(n171), .Z(n177) );
  GTECH_OAI21 U96 ( .A(cin), .B(n174), .C(n178), .Z(n176) );
  GTECH_AO21 U97 ( .A(n178), .B(cin), .C(n174), .Z(n175) );
  GTECH_XNOR2 U98 ( .A(cin), .B(n179), .Z(sum[0]) );
  GTECH_OAI21 U99 ( .A(n180), .B(n135), .C(n157), .Z(cout) );
  GTECH_NAND3 U100 ( .A(n152), .B(n154), .C(n135), .Z(n157) );
  GTECH_NOT U101 ( .A(n146), .Z(n152) );
  GTECH_AND2 U102 ( .A(b[4]), .B(a[4]), .Z(n146) );
  GTECH_MUX2 U103 ( .A(n179), .B(n181), .S(cin), .Z(n135) );
  GTECH_OA21 U104 ( .A(n161), .B(n166), .C(n182), .Z(n181) );
  GTECH_AO21 U105 ( .A(n166), .B(n161), .C(n183), .Z(n182) );
  GTECH_NOT U106 ( .A(b[3]), .Z(n183) );
  GTECH_NOT U107 ( .A(a[3]), .Z(n166) );
  GTECH_OA21 U108 ( .A(n170), .B(n184), .C(n164), .Z(n161) );
  GTECH_NOT U109 ( .A(n185), .Z(n164) );
  GTECH_AND2 U110 ( .A(a[2]), .B(b[2]), .Z(n185) );
  GTECH_NOR2 U111 ( .A(a[2]), .B(b[2]), .Z(n184) );
  GTECH_OA21 U112 ( .A(n171), .B(n186), .C(n173), .Z(n170) );
  GTECH_OR_NOT U113 ( .A(n187), .B(a[1]), .Z(n173) );
  GTECH_NOT U114 ( .A(b[1]), .Z(n187) );
  GTECH_NOR2 U115 ( .A(a[1]), .B(b[1]), .Z(n171) );
  GTECH_OR_NOT U116 ( .A(n174), .B(n178), .Z(n179) );
  GTECH_NOT U117 ( .A(n186), .Z(n178) );
  GTECH_NOR2 U118 ( .A(b[0]), .B(a[0]), .Z(n186) );
  GTECH_AND2 U119 ( .A(a[0]), .B(b[0]), .Z(n174) );
  GTECH_OA21 U120 ( .A(n141), .B(n142), .C(n188), .Z(n180) );
  GTECH_OAI21 U121 ( .A(a[7]), .B(n189), .C(b[7]), .Z(n188) );
  GTECH_NOT U122 ( .A(n141), .Z(n189) );
  GTECH_NOT U123 ( .A(a[7]), .Z(n142) );
  GTECH_OA21 U124 ( .A(n190), .B(n149), .C(n139), .Z(n141) );
  GTECH_NOT U125 ( .A(n191), .Z(n139) );
  GTECH_AND2 U126 ( .A(b[6]), .B(a[6]), .Z(n191) );
  GTECH_OAI21 U127 ( .A(n147), .B(n154), .C(n148), .Z(n149) );
  GTECH_OR2 U128 ( .A(a[5]), .B(b[5]), .Z(n148) );
  GTECH_OR2 U129 ( .A(a[4]), .B(b[4]), .Z(n154) );
  GTECH_AND2 U130 ( .A(a[5]), .B(b[5]), .Z(n147) );
  GTECH_NOR2 U131 ( .A(b[6]), .B(a[6]), .Z(n190) );
endmodule

