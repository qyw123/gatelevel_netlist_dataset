
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
         n179, n180, n181, n182, n183, n184, n185, n186, n187;

  GTECH_MUX2 U66 ( .A(n135), .B(n136), .S(n137), .Z(sum[7]) );
  GTECH_XOR2 U67 ( .A(n138), .B(n139), .Z(n136) );
  GTECH_XOR2 U68 ( .A(n140), .B(n138), .Z(n135) );
  GTECH_XOR2 U69 ( .A(a[7]), .B(b[7]), .Z(n138) );
  GTECH_OA21 U70 ( .A(a[6]), .B(n141), .C(n142), .Z(n140) );
  GTECH_AO21 U71 ( .A(n141), .B(a[6]), .C(b[6]), .Z(n142) );
  GTECH_MUX2 U72 ( .A(n143), .B(n144), .S(n137), .Z(sum[6]) );
  GTECH_XNOR2 U73 ( .A(n145), .B(n146), .Z(n144) );
  GTECH_XNOR2 U74 ( .A(n141), .B(n146), .Z(n143) );
  GTECH_XNOR2 U75 ( .A(a[6]), .B(b[6]), .Z(n146) );
  GTECH_AOI21 U76 ( .A(n147), .B(n148), .C(n149), .Z(n141) );
  GTECH_MUX2 U77 ( .A(n150), .B(n151), .S(n137), .Z(sum[5]) );
  GTECH_XOR2 U78 ( .A(n152), .B(n153), .Z(n151) );
  GTECH_XOR2 U79 ( .A(n153), .B(n148), .Z(n150) );
  GTECH_NOT U80 ( .A(n154), .Z(n148) );
  GTECH_OAI21 U81 ( .A(a[5]), .B(b[5]), .C(n147), .Z(n153) );
  GTECH_NAND2 U82 ( .A(n155), .B(n156), .Z(sum[4]) );
  GTECH_OAI21 U83 ( .A(n154), .B(n152), .C(n137), .Z(n155) );
  GTECH_MUX2 U84 ( .A(n157), .B(n158), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U85 ( .A(n159), .B(n160), .Z(n158) );
  GTECH_XOR2 U86 ( .A(n161), .B(n159), .Z(n157) );
  GTECH_XOR2 U87 ( .A(a[3]), .B(b[3]), .Z(n159) );
  GTECH_OA21 U88 ( .A(a[2]), .B(n162), .C(n163), .Z(n161) );
  GTECH_AO21 U89 ( .A(n162), .B(a[2]), .C(b[2]), .Z(n163) );
  GTECH_MUX2 U90 ( .A(n164), .B(n165), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U91 ( .A(n166), .B(n167), .Z(n165) );
  GTECH_XNOR2 U92 ( .A(n166), .B(n162), .Z(n164) );
  GTECH_OAI21 U93 ( .A(n168), .B(n169), .C(n170), .Z(n162) );
  GTECH_XOR2 U94 ( .A(a[2]), .B(n171), .Z(n166) );
  GTECH_MUX2 U95 ( .A(n172), .B(n173), .S(n174), .Z(sum[1]) );
  GTECH_AND_NOT U96 ( .A(n170), .B(n168), .Z(n174) );
  GTECH_AO21 U97 ( .A(n175), .B(n169), .C(n176), .Z(n173) );
  GTECH_OAI21 U98 ( .A(n176), .B(n175), .C(n169), .Z(n172) );
  GTECH_NAND2 U99 ( .A(a[0]), .B(b[0]), .Z(n169) );
  GTECH_NOT U100 ( .A(cin), .Z(n175) );
  GTECH_XNOR2 U101 ( .A(cin), .B(n177), .Z(sum[0]) );
  GTECH_OAI21 U102 ( .A(n178), .B(n179), .C(n156), .Z(cout) );
  GTECH_OR3 U103 ( .A(n152), .B(n154), .C(n137), .Z(n156) );
  GTECH_NOT U104 ( .A(n179), .Z(n137) );
  GTECH_AND2 U105 ( .A(a[4]), .B(b[4]), .Z(n154) );
  GTECH_MUX2 U106 ( .A(n177), .B(n180), .S(cin), .Z(n179) );
  GTECH_AOI21 U107 ( .A(n160), .B(a[3]), .C(n181), .Z(n180) );
  GTECH_OA21 U108 ( .A(a[3]), .B(n160), .C(b[3]), .Z(n181) );
  GTECH_OAI21 U109 ( .A(n167), .B(n182), .C(n183), .Z(n160) );
  GTECH_AO21 U110 ( .A(n182), .B(n167), .C(n171), .Z(n183) );
  GTECH_NOT U111 ( .A(b[2]), .Z(n171) );
  GTECH_NOT U112 ( .A(a[2]), .Z(n182) );
  GTECH_OA21 U113 ( .A(n168), .B(n176), .C(n170), .Z(n167) );
  GTECH_NAND2 U114 ( .A(b[1]), .B(a[1]), .Z(n170) );
  GTECH_AND_NOT U115 ( .A(n184), .B(a[0]), .Z(n176) );
  GTECH_NOR2 U116 ( .A(a[1]), .B(b[1]), .Z(n168) );
  GTECH_XNOR2 U117 ( .A(n185), .B(n184), .Z(n177) );
  GTECH_NOT U118 ( .A(b[0]), .Z(n184) );
  GTECH_NOT U119 ( .A(a[0]), .Z(n185) );
  GTECH_AOI21 U120 ( .A(n139), .B(a[7]), .C(n186), .Z(n178) );
  GTECH_OA21 U121 ( .A(a[7]), .B(n139), .C(b[7]), .Z(n186) );
  GTECH_AO21 U122 ( .A(a[6]), .B(n145), .C(n187), .Z(n139) );
  GTECH_OA21 U123 ( .A(n145), .B(a[6]), .C(b[6]), .Z(n187) );
  GTECH_AOI21 U124 ( .A(n147), .B(n152), .C(n149), .Z(n145) );
  GTECH_NOR2 U125 ( .A(b[5]), .B(a[5]), .Z(n149) );
  GTECH_NOR2 U126 ( .A(a[4]), .B(b[4]), .Z(n152) );
  GTECH_NAND2 U127 ( .A(a[5]), .B(b[5]), .Z(n147) );
endmodule

