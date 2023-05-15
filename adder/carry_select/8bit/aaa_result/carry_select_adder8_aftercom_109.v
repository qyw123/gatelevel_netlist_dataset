
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
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187;

  GTECH_MUX2 U64 ( .A(n133), .B(n134), .S(n135), .Z(sum[7]) );
  GTECH_XNOR2 U65 ( .A(n136), .B(n137), .Z(n134) );
  GTECH_AND_NOT U66 ( .A(n138), .B(n139), .Z(n137) );
  GTECH_AO21 U67 ( .A(n140), .B(n141), .C(n142), .Z(n138) );
  GTECH_OAI21 U68 ( .A(n143), .B(n144), .C(n145), .Z(n142) );
  GTECH_XOR2 U69 ( .A(n136), .B(n146), .Z(n133) );
  GTECH_XOR2 U70 ( .A(a[7]), .B(b[7]), .Z(n136) );
  GTECH_AO21 U71 ( .A(n147), .B(n139), .C(n148), .Z(sum[6]) );
  GTECH_NOT U72 ( .A(n149), .Z(n148) );
  GTECH_MUX2 U73 ( .A(n150), .B(n151), .S(n140), .Z(n149) );
  GTECH_NOT U74 ( .A(b[6]), .Z(n140) );
  GTECH_XNOR2 U75 ( .A(a[6]), .B(n147), .Z(n151) );
  GTECH_OR_NOT U76 ( .A(n147), .B(n141), .Z(n150) );
  GTECH_AO21 U77 ( .A(n152), .B(n153), .C(n154), .Z(n147) );
  GTECH_AO21 U78 ( .A(n144), .B(n145), .C(n143), .Z(n154) );
  GTECH_NOT U79 ( .A(n135), .Z(n153) );
  GTECH_MUX2 U80 ( .A(n155), .B(n156), .S(n135), .Z(sum[5]) );
  GTECH_XNOR2 U81 ( .A(n144), .B(n157), .Z(n156) );
  GTECH_NOT U82 ( .A(n158), .Z(n144) );
  GTECH_XNOR2 U83 ( .A(n157), .B(n159), .Z(n155) );
  GTECH_OR_NOT U84 ( .A(n143), .B(n145), .Z(n157) );
  GTECH_NAND2 U85 ( .A(n160), .B(n161), .Z(sum[4]) );
  GTECH_AO21 U86 ( .A(n158), .B(n159), .C(n135), .Z(n160) );
  GTECH_MUX2 U87 ( .A(n162), .B(n163), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U88 ( .A(n164), .B(n165), .Z(n163) );
  GTECH_XNOR2 U89 ( .A(n166), .B(n164), .Z(n162) );
  GTECH_XNOR2 U90 ( .A(a[3]), .B(b[3]), .Z(n164) );
  GTECH_OA22 U91 ( .A(a[2]), .B(n167), .C(b[2]), .D(n168), .Z(n166) );
  GTECH_AND2 U92 ( .A(a[2]), .B(n167), .Z(n168) );
  GTECH_MUX2 U93 ( .A(n169), .B(n170), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U94 ( .A(n171), .B(n172), .Z(n170) );
  GTECH_XOR2 U95 ( .A(n171), .B(n167), .Z(n169) );
  GTECH_AO21 U96 ( .A(n173), .B(n174), .C(n175), .Z(n167) );
  GTECH_XOR2 U97 ( .A(a[2]), .B(b[2]), .Z(n171) );
  GTECH_MUX2 U98 ( .A(n176), .B(n177), .S(n178), .Z(sum[1]) );
  GTECH_AND_NOT U99 ( .A(n173), .B(n175), .Z(n178) );
  GTECH_OAI21 U100 ( .A(cin), .B(n174), .C(n179), .Z(n177) );
  GTECH_AO21 U101 ( .A(n179), .B(cin), .C(n174), .Z(n176) );
  GTECH_XNOR2 U102 ( .A(cin), .B(n180), .Z(sum[0]) );
  GTECH_OAI21 U103 ( .A(n181), .B(n135), .C(n161), .Z(cout) );
  GTECH_NAND3 U104 ( .A(n159), .B(n158), .C(n135), .Z(n161) );
  GTECH_NAND2 U105 ( .A(b[4]), .B(a[4]), .Z(n158) );
  GTECH_MUX2 U106 ( .A(n180), .B(n182), .S(cin), .Z(n135) );
  GTECH_AOI22 U107 ( .A(n165), .B(a[3]), .C(n183), .D(b[3]), .Z(n182) );
  GTECH_OR2 U108 ( .A(a[3]), .B(n165), .Z(n183) );
  GTECH_AO21 U109 ( .A(n172), .B(a[2]), .C(n184), .Z(n165) );
  GTECH_NOT U110 ( .A(n185), .Z(n184) );
  GTECH_OAI21 U111 ( .A(a[2]), .B(n172), .C(b[2]), .Z(n185) );
  GTECH_AO21 U112 ( .A(n179), .B(n173), .C(n175), .Z(n172) );
  GTECH_AND2 U113 ( .A(b[1]), .B(a[1]), .Z(n175) );
  GTECH_OR2 U114 ( .A(a[1]), .B(b[1]), .Z(n173) );
  GTECH_OR_NOT U115 ( .A(n174), .B(n179), .Z(n180) );
  GTECH_OR2 U116 ( .A(a[0]), .B(b[0]), .Z(n179) );
  GTECH_AND2 U117 ( .A(b[0]), .B(a[0]), .Z(n174) );
  GTECH_AOI22 U118 ( .A(n146), .B(a[7]), .C(n186), .D(b[7]), .Z(n181) );
  GTECH_OR2 U119 ( .A(n146), .B(a[7]), .Z(n186) );
  GTECH_OR_NOT U120 ( .A(n139), .B(n187), .Z(n146) );
  GTECH_OAI21 U121 ( .A(a[6]), .B(b[6]), .C(n152), .Z(n187) );
  GTECH_AO21 U122 ( .A(n159), .B(n145), .C(n143), .Z(n152) );
  GTECH_AND2 U123 ( .A(b[5]), .B(a[5]), .Z(n143) );
  GTECH_OR2 U124 ( .A(a[5]), .B(b[5]), .Z(n145) );
  GTECH_OR2 U125 ( .A(a[4]), .B(b[4]), .Z(n159) );
  GTECH_AND_NOT U126 ( .A(b[6]), .B(n141), .Z(n139) );
  GTECH_NOT U127 ( .A(a[6]), .Z(n141) );
endmodule

