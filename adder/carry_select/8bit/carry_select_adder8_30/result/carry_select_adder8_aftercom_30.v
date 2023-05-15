
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
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192;

  GTECH_MUX2 U68 ( .A(n137), .B(n138), .S(n139), .Z(sum[7]) );
  GTECH_XOR2 U69 ( .A(n140), .B(n141), .Z(n138) );
  GTECH_AND_NOT U70 ( .A(n142), .B(n143), .Z(n141) );
  GTECH_OAI21 U71 ( .A(b[6]), .B(a[6]), .C(n144), .Z(n142) );
  GTECH_XNOR2 U72 ( .A(n140), .B(n145), .Z(n137) );
  GTECH_XNOR2 U73 ( .A(a[7]), .B(b[7]), .Z(n140) );
  GTECH_AO21 U74 ( .A(n146), .B(n143), .C(n147), .Z(sum[6]) );
  GTECH_MUX2 U75 ( .A(n148), .B(n149), .S(b[6]), .Z(n147) );
  GTECH_NOR2 U76 ( .A(a[6]), .B(n146), .Z(n149) );
  GTECH_XOR2 U77 ( .A(a[6]), .B(n146), .Z(n148) );
  GTECH_AO21 U78 ( .A(n150), .B(n151), .C(n144), .Z(n146) );
  GTECH_AO22 U79 ( .A(a[5]), .B(b[5]), .C(n152), .D(n153), .Z(n144) );
  GTECH_MUX2 U80 ( .A(n154), .B(n155), .S(n139), .Z(sum[5]) );
  GTECH_XOR2 U81 ( .A(n156), .B(n153), .Z(n155) );
  GTECH_XNOR2 U82 ( .A(n156), .B(n157), .Z(n154) );
  GTECH_AOI21 U83 ( .A(a[5]), .B(b[5]), .C(n158), .Z(n156) );
  GTECH_NAND2 U84 ( .A(n159), .B(n160), .Z(sum[4]) );
  GTECH_OAI21 U85 ( .A(n153), .B(n157), .C(n151), .Z(n159) );
  GTECH_MUX2 U86 ( .A(n161), .B(n162), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U87 ( .A(n163), .B(n164), .Z(n162) );
  GTECH_XOR2 U88 ( .A(n165), .B(n163), .Z(n161) );
  GTECH_XOR2 U89 ( .A(a[3]), .B(b[3]), .Z(n163) );
  GTECH_OA21 U90 ( .A(a[2]), .B(n166), .C(n167), .Z(n165) );
  GTECH_OAI21 U91 ( .A(n168), .B(n169), .C(n170), .Z(n167) );
  GTECH_NOT U92 ( .A(n166), .Z(n168) );
  GTECH_MUX2 U93 ( .A(n171), .B(n172), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U94 ( .A(n173), .B(n174), .Z(n172) );
  GTECH_XNOR2 U95 ( .A(n173), .B(n166), .Z(n171) );
  GTECH_OAI21 U96 ( .A(n175), .B(n176), .C(n177), .Z(n166) );
  GTECH_XOR2 U97 ( .A(a[2]), .B(n170), .Z(n173) );
  GTECH_MUX2 U98 ( .A(n178), .B(n179), .S(n180), .Z(sum[1]) );
  GTECH_AND_NOT U99 ( .A(n177), .B(n175), .Z(n180) );
  GTECH_AO21 U100 ( .A(n181), .B(n176), .C(n182), .Z(n179) );
  GTECH_OAI21 U101 ( .A(n182), .B(n181), .C(n176), .Z(n178) );
  GTECH_NOT U102 ( .A(cin), .Z(n181) );
  GTECH_XOR2 U103 ( .A(cin), .B(n183), .Z(sum[0]) );
  GTECH_OAI21 U104 ( .A(n184), .B(n139), .C(n160), .Z(cout) );
  GTECH_OR3 U105 ( .A(n153), .B(n157), .C(n151), .Z(n160) );
  GTECH_AND2 U106 ( .A(a[4]), .B(b[4]), .Z(n153) );
  GTECH_NOT U107 ( .A(n151), .Z(n139) );
  GTECH_MUX2 U108 ( .A(n183), .B(n185), .S(cin), .Z(n151) );
  GTECH_OA21 U109 ( .A(a[3]), .B(n164), .C(n186), .Z(n185) );
  GTECH_AO21 U110 ( .A(n164), .B(a[3]), .C(b[3]), .Z(n186) );
  GTECH_OAI21 U111 ( .A(n174), .B(n169), .C(n187), .Z(n164) );
  GTECH_AO21 U112 ( .A(n169), .B(n174), .C(n170), .Z(n187) );
  GTECH_NOT U113 ( .A(b[2]), .Z(n170) );
  GTECH_NOT U114 ( .A(a[2]), .Z(n169) );
  GTECH_OA21 U115 ( .A(n175), .B(n182), .C(n177), .Z(n174) );
  GTECH_NAND2 U116 ( .A(b[1]), .B(a[1]), .Z(n177) );
  GTECH_NOR2 U117 ( .A(b[1]), .B(a[1]), .Z(n175) );
  GTECH_AND_NOT U118 ( .A(n176), .B(n182), .Z(n183) );
  GTECH_NOR2 U119 ( .A(b[0]), .B(a[0]), .Z(n182) );
  GTECH_NAND2 U120 ( .A(b[0]), .B(a[0]), .Z(n176) );
  GTECH_AOI21 U121 ( .A(n145), .B(a[7]), .C(n188), .Z(n184) );
  GTECH_OA21 U122 ( .A(a[7]), .B(n145), .C(b[7]), .Z(n188) );
  GTECH_NAND2 U123 ( .A(n189), .B(n190), .Z(n145) );
  GTECH_NOT U124 ( .A(n143), .Z(n190) );
  GTECH_AND2 U125 ( .A(b[6]), .B(a[6]), .Z(n143) );
  GTECH_OAI21 U126 ( .A(a[6]), .B(b[6]), .C(n150), .Z(n189) );
  GTECH_OAI2N2 U127 ( .A(n158), .B(n157), .C(a[5]), .D(b[5]), .Z(n150) );
  GTECH_NOR2 U128 ( .A(b[4]), .B(a[4]), .Z(n157) );
  GTECH_NOT U129 ( .A(n152), .Z(n158) );
  GTECH_NAND2 U130 ( .A(n191), .B(n192), .Z(n152) );
  GTECH_NOT U131 ( .A(a[5]), .Z(n192) );
  GTECH_NOT U132 ( .A(b[5]), .Z(n191) );
endmodule

