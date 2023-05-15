
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
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193;

  GTECH_MUX2 U66 ( .A(n135), .B(n136), .S(n137), .Z(sum[7]) );
  GTECH_XOR2 U67 ( .A(n138), .B(n139), .Z(n136) );
  GTECH_XOR2 U68 ( .A(n138), .B(n140), .Z(n135) );
  GTECH_AND2 U69 ( .A(n141), .B(n142), .Z(n140) );
  GTECH_OAI21 U70 ( .A(b[6]), .B(a[6]), .C(n143), .Z(n142) );
  GTECH_XNOR2 U71 ( .A(a[7]), .B(b[7]), .Z(n138) );
  GTECH_MUX2 U72 ( .A(n144), .B(n145), .S(n137), .Z(sum[6]) );
  GTECH_XNOR2 U73 ( .A(n146), .B(n147), .Z(n145) );
  GTECH_XNOR2 U74 ( .A(n143), .B(n147), .Z(n144) );
  GTECH_OAI21 U75 ( .A(b[6]), .B(a[6]), .C(n141), .Z(n147) );
  GTECH_OA21 U76 ( .A(n148), .B(n149), .C(n150), .Z(n143) );
  GTECH_MUX2 U77 ( .A(n151), .B(n152), .S(n137), .Z(sum[5]) );
  GTECH_XOR2 U78 ( .A(n153), .B(n154), .Z(n152) );
  GTECH_XNOR2 U79 ( .A(n148), .B(n153), .Z(n151) );
  GTECH_OAI21 U80 ( .A(a[5]), .B(b[5]), .C(n155), .Z(n153) );
  GTECH_NAND2 U81 ( .A(n156), .B(n157), .Z(sum[4]) );
  GTECH_OAI21 U82 ( .A(n148), .B(n154), .C(n137), .Z(n156) );
  GTECH_MUX2 U83 ( .A(n158), .B(n159), .S(n160), .Z(sum[3]) );
  GTECH_XNOR2 U84 ( .A(n161), .B(n162), .Z(n159) );
  GTECH_AND2 U85 ( .A(n163), .B(n164), .Z(n162) );
  GTECH_OAI21 U86 ( .A(b[2]), .B(a[2]), .C(n165), .Z(n164) );
  GTECH_XNOR2 U87 ( .A(n161), .B(n166), .Z(n158) );
  GTECH_XNOR2 U88 ( .A(a[3]), .B(n167), .Z(n161) );
  GTECH_MUX2 U89 ( .A(n168), .B(n169), .S(n160), .Z(sum[2]) );
  GTECH_XOR2 U90 ( .A(n170), .B(n165), .Z(n169) );
  GTECH_OAI21 U91 ( .A(n171), .B(n172), .C(n173), .Z(n165) );
  GTECH_XOR2 U92 ( .A(n170), .B(n174), .Z(n168) );
  GTECH_OA21 U93 ( .A(b[2]), .B(a[2]), .C(n163), .Z(n170) );
  GTECH_MUX2 U94 ( .A(n175), .B(n176), .S(n177), .Z(sum[1]) );
  GTECH_AND_NOT U95 ( .A(n173), .B(n171), .Z(n177) );
  GTECH_OAI21 U96 ( .A(cin), .B(n178), .C(n179), .Z(n176) );
  GTECH_OAI21 U97 ( .A(n180), .B(n160), .C(n172), .Z(n175) );
  GTECH_XOR2 U98 ( .A(cin), .B(n181), .Z(sum[0]) );
  GTECH_OAI21 U99 ( .A(n182), .B(n183), .C(n157), .Z(cout) );
  GTECH_OR3 U100 ( .A(n148), .B(n154), .C(n137), .Z(n157) );
  GTECH_NOT U101 ( .A(n184), .Z(n154) );
  GTECH_AND2 U102 ( .A(a[4]), .B(b[4]), .Z(n148) );
  GTECH_NOT U103 ( .A(n137), .Z(n183) );
  GTECH_MUX2 U104 ( .A(n185), .B(n181), .S(n160), .Z(n137) );
  GTECH_NOT U105 ( .A(cin), .Z(n160) );
  GTECH_AND_NOT U106 ( .A(n179), .B(n178), .Z(n181) );
  GTECH_NOT U107 ( .A(n172), .Z(n178) );
  GTECH_NAND2 U108 ( .A(a[0]), .B(b[0]), .Z(n172) );
  GTECH_NOT U109 ( .A(n180), .Z(n179) );
  GTECH_OA21 U110 ( .A(a[3]), .B(n186), .C(n187), .Z(n185) );
  GTECH_OAI21 U111 ( .A(n166), .B(n188), .C(n167), .Z(n187) );
  GTECH_NOT U112 ( .A(b[3]), .Z(n167) );
  GTECH_NOT U113 ( .A(a[3]), .Z(n188) );
  GTECH_NOT U114 ( .A(n186), .Z(n166) );
  GTECH_NAND2 U115 ( .A(n189), .B(n163), .Z(n186) );
  GTECH_NAND2 U116 ( .A(b[2]), .B(a[2]), .Z(n163) );
  GTECH_OAI21 U117 ( .A(a[2]), .B(b[2]), .C(n174), .Z(n189) );
  GTECH_OAI21 U118 ( .A(n171), .B(n180), .C(n173), .Z(n174) );
  GTECH_NAND2 U119 ( .A(a[1]), .B(b[1]), .Z(n173) );
  GTECH_NOR2 U120 ( .A(b[0]), .B(a[0]), .Z(n180) );
  GTECH_NOR2 U121 ( .A(b[1]), .B(a[1]), .Z(n171) );
  GTECH_OA21 U122 ( .A(n139), .B(n190), .C(n191), .Z(n182) );
  GTECH_OAI21 U123 ( .A(a[7]), .B(n192), .C(b[7]), .Z(n191) );
  GTECH_NOT U124 ( .A(a[7]), .Z(n190) );
  GTECH_NOT U125 ( .A(n192), .Z(n139) );
  GTECH_NAND2 U126 ( .A(n193), .B(n141), .Z(n192) );
  GTECH_NAND2 U127 ( .A(b[6]), .B(a[6]), .Z(n141) );
  GTECH_OAI21 U128 ( .A(a[6]), .B(b[6]), .C(n146), .Z(n193) );
  GTECH_OA21 U129 ( .A(n149), .B(n184), .C(n150), .Z(n146) );
  GTECH_OR2 U130 ( .A(a[5]), .B(b[5]), .Z(n150) );
  GTECH_OR2 U131 ( .A(b[4]), .B(a[4]), .Z(n184) );
  GTECH_NOT U132 ( .A(n155), .Z(n149) );
  GTECH_NAND2 U133 ( .A(a[5]), .B(b[5]), .Z(n155) );
endmodule

