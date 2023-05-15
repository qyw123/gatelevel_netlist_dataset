
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195;

  GTECH_MUX2 U69 ( .A(n138), .B(n139), .S(n140), .Z(sum[7]) );
  GTECH_XOR2 U70 ( .A(n141), .B(n142), .Z(n139) );
  GTECH_AND2 U71 ( .A(n143), .B(n144), .Z(n142) );
  GTECH_OAI21 U72 ( .A(b[6]), .B(a[6]), .C(n145), .Z(n143) );
  GTECH_XNOR2 U73 ( .A(n141), .B(n146), .Z(n138) );
  GTECH_XNOR2 U74 ( .A(a[7]), .B(b[7]), .Z(n141) );
  GTECH_OAI21 U75 ( .A(n147), .B(n144), .C(n148), .Z(sum[6]) );
  GTECH_MUX2 U76 ( .A(n149), .B(n150), .S(b[6]), .Z(n148) );
  GTECH_NAND2 U77 ( .A(n147), .B(n151), .Z(n150) );
  GTECH_NOT U78 ( .A(a[6]), .Z(n151) );
  GTECH_XOR2 U79 ( .A(a[6]), .B(n147), .Z(n149) );
  GTECH_AOI21 U80 ( .A(n152), .B(n153), .C(n145), .Z(n147) );
  GTECH_AOI21 U81 ( .A(n154), .B(n155), .C(n156), .Z(n145) );
  GTECH_MUX2 U82 ( .A(n157), .B(n158), .S(n140), .Z(sum[5]) );
  GTECH_XNOR2 U83 ( .A(n155), .B(n159), .Z(n158) );
  GTECH_XOR2 U84 ( .A(n160), .B(n159), .Z(n157) );
  GTECH_OA21 U85 ( .A(a[5]), .B(b[5]), .C(n154), .Z(n159) );
  GTECH_NOT U86 ( .A(n161), .Z(n160) );
  GTECH_NAND2 U87 ( .A(n162), .B(n163), .Z(sum[4]) );
  GTECH_OAI21 U88 ( .A(n164), .B(n161), .C(n153), .Z(n163) );
  GTECH_MUX2 U89 ( .A(n165), .B(n166), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U90 ( .A(n167), .B(n168), .Z(n166) );
  GTECH_XOR2 U91 ( .A(n169), .B(n167), .Z(n165) );
  GTECH_XOR2 U92 ( .A(a[3]), .B(b[3]), .Z(n167) );
  GTECH_OA21 U93 ( .A(a[2]), .B(n170), .C(n171), .Z(n169) );
  GTECH_NOT U94 ( .A(n172), .Z(n171) );
  GTECH_AOI21 U95 ( .A(n170), .B(a[2]), .C(b[2]), .Z(n172) );
  GTECH_MUX2 U96 ( .A(n173), .B(n174), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U97 ( .A(n175), .B(n176), .Z(n174) );
  GTECH_XNOR2 U98 ( .A(n175), .B(n170), .Z(n173) );
  GTECH_OAI21 U99 ( .A(n177), .B(n178), .C(n179), .Z(n170) );
  GTECH_XOR2 U100 ( .A(n180), .B(b[2]), .Z(n175) );
  GTECH_MUX2 U101 ( .A(n181), .B(n182), .S(n183), .Z(sum[1]) );
  GTECH_AND_NOT U102 ( .A(n179), .B(n177), .Z(n183) );
  GTECH_NOT U103 ( .A(n184), .Z(n182) );
  GTECH_AOI21 U104 ( .A(n185), .B(n178), .C(n186), .Z(n184) );
  GTECH_OAI21 U105 ( .A(n186), .B(n185), .C(n178), .Z(n181) );
  GTECH_NOT U106 ( .A(cin), .Z(n185) );
  GTECH_XOR2 U107 ( .A(cin), .B(n187), .Z(sum[0]) );
  GTECH_OAI21 U108 ( .A(n188), .B(n140), .C(n162), .Z(cout) );
  GTECH_OR3 U109 ( .A(n161), .B(n164), .C(n153), .Z(n162) );
  GTECH_NOT U110 ( .A(n155), .Z(n164) );
  GTECH_NAND2 U111 ( .A(b[4]), .B(a[4]), .Z(n155) );
  GTECH_NOT U112 ( .A(n153), .Z(n140) );
  GTECH_MUX2 U113 ( .A(n187), .B(n189), .S(cin), .Z(n153) );
  GTECH_OA21 U114 ( .A(a[3]), .B(n168), .C(n190), .Z(n189) );
  GTECH_NOT U115 ( .A(n191), .Z(n190) );
  GTECH_AOI21 U116 ( .A(n168), .B(a[3]), .C(b[3]), .Z(n191) );
  GTECH_OAI21 U117 ( .A(n192), .B(n180), .C(n193), .Z(n168) );
  GTECH_OAI21 U118 ( .A(a[2]), .B(n176), .C(b[2]), .Z(n193) );
  GTECH_NOT U119 ( .A(n192), .Z(n176) );
  GTECH_NOT U120 ( .A(a[2]), .Z(n180) );
  GTECH_OA21 U121 ( .A(n186), .B(n177), .C(n179), .Z(n192) );
  GTECH_NAND2 U122 ( .A(b[1]), .B(a[1]), .Z(n179) );
  GTECH_NOR2 U123 ( .A(b[1]), .B(a[1]), .Z(n177) );
  GTECH_AND_NOT U124 ( .A(n178), .B(n186), .Z(n187) );
  GTECH_NOR2 U125 ( .A(b[0]), .B(a[0]), .Z(n186) );
  GTECH_NAND2 U126 ( .A(b[0]), .B(a[0]), .Z(n178) );
  GTECH_AOI21 U127 ( .A(n146), .B(a[7]), .C(n194), .Z(n188) );
  GTECH_OA21 U128 ( .A(a[7]), .B(n146), .C(b[7]), .Z(n194) );
  GTECH_NAND2 U129 ( .A(n195), .B(n144), .Z(n146) );
  GTECH_NAND2 U130 ( .A(b[6]), .B(a[6]), .Z(n144) );
  GTECH_OAI21 U131 ( .A(a[6]), .B(b[6]), .C(n152), .Z(n195) );
  GTECH_AOI21 U132 ( .A(n154), .B(n161), .C(n156), .Z(n152) );
  GTECH_NOR2 U133 ( .A(a[5]), .B(b[5]), .Z(n156) );
  GTECH_NOR2 U134 ( .A(a[4]), .B(b[4]), .Z(n161) );
  GTECH_NAND2 U135 ( .A(b[5]), .B(a[5]), .Z(n154) );
endmodule

