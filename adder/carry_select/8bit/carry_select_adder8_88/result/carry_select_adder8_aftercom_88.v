
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
         n181, n182, n183, n184, n185, n186, n187;

  GTECH_OAI22 U68 ( .A(n137), .B(n138), .C(n139), .D(n140), .Z(sum[7]) );
  GTECH_XNOR2 U69 ( .A(n141), .B(n142), .Z(n139) );
  GTECH_XOR2 U70 ( .A(n143), .B(n142), .Z(n137) );
  GTECH_XOR2 U71 ( .A(a[7]), .B(b[7]), .Z(n142) );
  GTECH_AOI21 U72 ( .A(n144), .B(n145), .C(n146), .Z(n143) );
  GTECH_OAI22 U73 ( .A(n140), .B(n147), .C(n138), .D(n148), .Z(sum[6]) );
  GTECH_XNOR2 U74 ( .A(n149), .B(n144), .Z(n148) );
  GTECH_AOI21 U75 ( .A(n150), .B(n151), .C(n152), .Z(n144) );
  GTECH_NOT U76 ( .A(n153), .Z(n151) );
  GTECH_XNOR2 U77 ( .A(n149), .B(n154), .Z(n147) );
  GTECH_AND_NOT U78 ( .A(n145), .B(n146), .Z(n149) );
  GTECH_OAI22 U79 ( .A(n138), .B(n155), .C(n156), .D(n140), .Z(sum[5]) );
  GTECH_NOT U80 ( .A(n138), .Z(n140) );
  GTECH_XNOR2 U81 ( .A(n157), .B(n158), .Z(n156) );
  GTECH_XOR2 U82 ( .A(n157), .B(n153), .Z(n155) );
  GTECH_OAI21 U83 ( .A(a[5]), .B(b[5]), .C(n150), .Z(n157) );
  GTECH_OR_NOT U84 ( .A(n159), .B(n160), .Z(sum[4]) );
  GTECH_OAI21 U85 ( .A(n153), .B(n158), .C(n138), .Z(n160) );
  GTECH_OAI22 U86 ( .A(n161), .B(n162), .C(cin), .D(n163), .Z(sum[3]) );
  GTECH_XOR2 U87 ( .A(n164), .B(n165), .Z(n163) );
  GTECH_AOI2N2 U88 ( .A(n166), .B(n167), .C(b[2]), .D(n168), .Z(n165) );
  GTECH_NOR2 U89 ( .A(n166), .B(n167), .Z(n168) );
  GTECH_XOR2 U90 ( .A(n169), .B(n164), .Z(n162) );
  GTECH_XNOR2 U91 ( .A(a[3]), .B(b[3]), .Z(n164) );
  GTECH_OAI22 U92 ( .A(n161), .B(n170), .C(cin), .D(n171), .Z(sum[2]) );
  GTECH_XOR2 U93 ( .A(n167), .B(n172), .Z(n171) );
  GTECH_AOI21 U94 ( .A(n173), .B(n174), .C(n175), .Z(n167) );
  GTECH_XOR2 U95 ( .A(n176), .B(n172), .Z(n170) );
  GTECH_XNOR2 U96 ( .A(n166), .B(b[2]), .Z(n172) );
  GTECH_OAI2N2 U97 ( .A(n177), .B(n178), .C(n179), .D(n177), .Z(sum[1]) );
  GTECH_OAI21 U98 ( .A(n174), .B(cin), .C(n180), .Z(n179) );
  GTECH_AOI21 U99 ( .A(cin), .B(n180), .C(n174), .Z(n178) );
  GTECH_AND_NOT U100 ( .A(n173), .B(n175), .Z(n177) );
  GTECH_XOR2 U101 ( .A(n161), .B(n181), .Z(sum[0]) );
  GTECH_AO21 U102 ( .A(n182), .B(n138), .C(n159), .Z(cout) );
  GTECH_NOR3 U103 ( .A(n158), .B(n153), .C(n138), .Z(n159) );
  GTECH_AND2 U104 ( .A(a[4]), .B(b[4]), .Z(n153) );
  GTECH_OAI22 U105 ( .A(n183), .B(n161), .C(cin), .D(n181), .Z(n138) );
  GTECH_OR_NOT U106 ( .A(n174), .B(n180), .Z(n181) );
  GTECH_AND2 U107 ( .A(a[0]), .B(b[0]), .Z(n174) );
  GTECH_NOT U108 ( .A(cin), .Z(n161) );
  GTECH_AOI22 U109 ( .A(n169), .B(a[3]), .C(n184), .D(b[3]), .Z(n183) );
  GTECH_OR2 U110 ( .A(a[3]), .B(n169), .Z(n184) );
  GTECH_OAI21 U111 ( .A(n176), .B(n166), .C(n185), .Z(n169) );
  GTECH_AO21 U112 ( .A(n166), .B(n176), .C(n186), .Z(n185) );
  GTECH_NOT U113 ( .A(b[2]), .Z(n186) );
  GTECH_NOT U114 ( .A(a[2]), .Z(n166) );
  GTECH_AOI21 U115 ( .A(n173), .B(n180), .C(n175), .Z(n176) );
  GTECH_AND2 U116 ( .A(a[1]), .B(b[1]), .Z(n175) );
  GTECH_OR2 U117 ( .A(b[0]), .B(a[0]), .Z(n180) );
  GTECH_OR2 U118 ( .A(b[1]), .B(a[1]), .Z(n173) );
  GTECH_AO22 U119 ( .A(n187), .B(b[7]), .C(n141), .D(a[7]), .Z(n182) );
  GTECH_OR2 U120 ( .A(n141), .B(a[7]), .Z(n187) );
  GTECH_AO21 U121 ( .A(n145), .B(n154), .C(n146), .Z(n141) );
  GTECH_AND2 U122 ( .A(b[6]), .B(a[6]), .Z(n146) );
  GTECH_AOI21 U123 ( .A(n150), .B(n158), .C(n152), .Z(n154) );
  GTECH_NOR2 U124 ( .A(b[5]), .B(a[5]), .Z(n152) );
  GTECH_NOR2 U125 ( .A(b[4]), .B(a[4]), .Z(n158) );
  GTECH_NAND2 U126 ( .A(a[5]), .B(b[5]), .Z(n150) );
  GTECH_OR2 U127 ( .A(b[6]), .B(a[6]), .Z(n145) );
endmodule

