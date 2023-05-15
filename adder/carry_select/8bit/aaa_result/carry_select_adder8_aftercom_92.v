
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
         n188, n189;

  GTECH_OAI22 U64 ( .A(n133), .B(n134), .C(n135), .D(n136), .Z(sum[7]) );
  GTECH_XOR2 U65 ( .A(n137), .B(n138), .Z(n136) );
  GTECH_AOI21 U66 ( .A(n139), .B(n140), .C(n141), .Z(n138) );
  GTECH_AOI21 U67 ( .A(n142), .B(a[6]), .C(b[6]), .Z(n141) );
  GTECH_NOT U68 ( .A(n142), .Z(n140) );
  GTECH_XOR2 U69 ( .A(n143), .B(n137), .Z(n133) );
  GTECH_XNOR2 U70 ( .A(a[7]), .B(b[7]), .Z(n137) );
  GTECH_OAI22 U71 ( .A(n144), .B(n134), .C(n145), .D(n135), .Z(sum[6]) );
  GTECH_XOR2 U72 ( .A(n142), .B(n146), .Z(n145) );
  GTECH_AO22 U73 ( .A(a[5]), .B(b[5]), .C(n147), .D(n148), .Z(n142) );
  GTECH_XNOR2 U74 ( .A(n149), .B(n146), .Z(n144) );
  GTECH_XNOR2 U75 ( .A(a[6]), .B(b[6]), .Z(n146) );
  GTECH_OAI22 U76 ( .A(n150), .B(n134), .C(n135), .D(n151), .Z(sum[5]) );
  GTECH_XNOR2 U77 ( .A(n152), .B(n148), .Z(n151) );
  GTECH_XOR2 U78 ( .A(n153), .B(n152), .Z(n150) );
  GTECH_AOI21 U79 ( .A(a[5]), .B(b[5]), .C(n154), .Z(n152) );
  GTECH_NAND2 U80 ( .A(n155), .B(n156), .Z(sum[4]) );
  GTECH_OAI21 U81 ( .A(n148), .B(n153), .C(n135), .Z(n155) );
  GTECH_OAI22 U82 ( .A(n157), .B(n158), .C(cin), .D(n159), .Z(sum[3]) );
  GTECH_XOR2 U83 ( .A(n160), .B(n161), .Z(n159) );
  GTECH_AOI21 U84 ( .A(n162), .B(n163), .C(n164), .Z(n161) );
  GTECH_OA21 U85 ( .A(n163), .B(n162), .C(n165), .Z(n164) );
  GTECH_NOT U86 ( .A(b[2]), .Z(n165) );
  GTECH_XOR2 U87 ( .A(n166), .B(n160), .Z(n158) );
  GTECH_XOR2 U88 ( .A(n167), .B(b[3]), .Z(n160) );
  GTECH_OAI22 U89 ( .A(n157), .B(n168), .C(cin), .D(n169), .Z(sum[2]) );
  GTECH_XNOR2 U90 ( .A(n163), .B(n170), .Z(n169) );
  GTECH_AOI21 U91 ( .A(n171), .B(n172), .C(n173), .Z(n163) );
  GTECH_XNOR2 U92 ( .A(n174), .B(n170), .Z(n168) );
  GTECH_XNOR2 U93 ( .A(a[2]), .B(b[2]), .Z(n170) );
  GTECH_OAI2N2 U94 ( .A(n175), .B(n176), .C(n177), .D(n176), .Z(sum[1]) );
  GTECH_NOT U95 ( .A(n178), .Z(n177) );
  GTECH_OA21 U96 ( .A(cin), .B(n172), .C(n179), .Z(n178) );
  GTECH_AND_NOT U97 ( .A(n171), .B(n173), .Z(n176) );
  GTECH_AOI21 U98 ( .A(n179), .B(cin), .C(n172), .Z(n175) );
  GTECH_XNOR2 U99 ( .A(n157), .B(n180), .Z(sum[0]) );
  GTECH_OAI21 U100 ( .A(n181), .B(n134), .C(n156), .Z(cout) );
  GTECH_OR3 U101 ( .A(n148), .B(n153), .C(n135), .Z(n156) );
  GTECH_NOT U102 ( .A(n134), .Z(n135) );
  GTECH_AND2 U103 ( .A(a[4]), .B(b[4]), .Z(n148) );
  GTECH_OAI22 U104 ( .A(n182), .B(n157), .C(cin), .D(n180), .Z(n134) );
  GTECH_AND_NOT U105 ( .A(n179), .B(n172), .Z(n180) );
  GTECH_AND2 U106 ( .A(a[0]), .B(b[0]), .Z(n172) );
  GTECH_NOT U107 ( .A(cin), .Z(n157) );
  GTECH_AOI21 U108 ( .A(n167), .B(n183), .C(n184), .Z(n182) );
  GTECH_AOI21 U109 ( .A(n166), .B(a[3]), .C(b[3]), .Z(n184) );
  GTECH_NOT U110 ( .A(n166), .Z(n183) );
  GTECH_OAI21 U111 ( .A(n174), .B(n162), .C(n185), .Z(n166) );
  GTECH_OAI21 U112 ( .A(a[2]), .B(n186), .C(b[2]), .Z(n185) );
  GTECH_NOT U113 ( .A(n174), .Z(n186) );
  GTECH_NOT U114 ( .A(a[2]), .Z(n162) );
  GTECH_AOI21 U115 ( .A(n171), .B(n179), .C(n173), .Z(n174) );
  GTECH_AND2 U116 ( .A(a[1]), .B(b[1]), .Z(n173) );
  GTECH_OR2 U117 ( .A(a[0]), .B(b[0]), .Z(n179) );
  GTECH_OR2 U118 ( .A(a[1]), .B(b[1]), .Z(n171) );
  GTECH_NOT U119 ( .A(a[3]), .Z(n167) );
  GTECH_AOI21 U120 ( .A(n143), .B(a[7]), .C(n187), .Z(n181) );
  GTECH_OA21 U121 ( .A(a[7]), .B(n143), .C(b[7]), .Z(n187) );
  GTECH_OAI21 U122 ( .A(n149), .B(n139), .C(n188), .Z(n143) );
  GTECH_OAI21 U123 ( .A(a[6]), .B(n189), .C(b[6]), .Z(n188) );
  GTECH_NOT U124 ( .A(n149), .Z(n189) );
  GTECH_NOT U125 ( .A(a[6]), .Z(n139) );
  GTECH_AOI2N2 U126 ( .A(a[5]), .B(b[5]), .C(n154), .D(n153), .Z(n149) );
  GTECH_NOR2 U127 ( .A(b[4]), .B(a[4]), .Z(n153) );
  GTECH_NOT U128 ( .A(n147), .Z(n154) );
  GTECH_OR2 U129 ( .A(b[5]), .B(a[5]), .Z(n147) );
endmodule

