
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
         n181, n182, n183, n184, n185, n186, n187, n188;

  GTECH_MUX2 U68 ( .A(n137), .B(n138), .S(n139), .Z(sum[7]) );
  GTECH_XNOR2 U69 ( .A(n140), .B(n141), .Z(n138) );
  GTECH_AOI21 U70 ( .A(n142), .B(n143), .C(n144), .Z(n141) );
  GTECH_XOR2 U71 ( .A(n140), .B(n145), .Z(n137) );
  GTECH_XOR2 U72 ( .A(a[7]), .B(b[7]), .Z(n140) );
  GTECH_MUX2 U73 ( .A(n146), .B(n147), .S(n139), .Z(sum[6]) );
  GTECH_XOR2 U74 ( .A(n142), .B(n148), .Z(n147) );
  GTECH_AOI21 U75 ( .A(n149), .B(n150), .C(n151), .Z(n142) );
  GTECH_XOR2 U76 ( .A(n152), .B(n148), .Z(n146) );
  GTECH_AND_NOT U77 ( .A(n143), .B(n144), .Z(n148) );
  GTECH_MUX2 U78 ( .A(n153), .B(n154), .S(n139), .Z(sum[5]) );
  GTECH_XNOR2 U79 ( .A(n150), .B(n155), .Z(n154) );
  GTECH_XNOR2 U80 ( .A(n156), .B(n155), .Z(n153) );
  GTECH_AOI21 U81 ( .A(n157), .B(n158), .C(n159), .Z(n155) );
  GTECH_NAND2 U82 ( .A(n160), .B(n161), .Z(sum[4]) );
  GTECH_AO21 U83 ( .A(n150), .B(n162), .C(n139), .Z(n160) );
  GTECH_MUX2 U84 ( .A(n163), .B(n164), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U85 ( .A(n165), .B(n166), .Z(n164) );
  GTECH_XNOR2 U86 ( .A(n167), .B(n165), .Z(n163) );
  GTECH_XNOR2 U87 ( .A(a[3]), .B(b[3]), .Z(n165) );
  GTECH_AOI2N2 U88 ( .A(n168), .B(n169), .C(b[2]), .D(n170), .Z(n167) );
  GTECH_NOR2 U89 ( .A(n168), .B(n169), .Z(n170) );
  GTECH_MUX2 U90 ( .A(n171), .B(n172), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U91 ( .A(n173), .B(n174), .Z(n172) );
  GTECH_XNOR2 U92 ( .A(n173), .B(n169), .Z(n171) );
  GTECH_AOI21 U93 ( .A(n175), .B(n176), .C(n177), .Z(n169) );
  GTECH_XNOR2 U94 ( .A(n168), .B(b[2]), .Z(n173) );
  GTECH_MUX2 U95 ( .A(n178), .B(n179), .S(n180), .Z(sum[1]) );
  GTECH_AND_NOT U96 ( .A(n175), .B(n177), .Z(n180) );
  GTECH_OAI21 U97 ( .A(cin), .B(n176), .C(n181), .Z(n179) );
  GTECH_AO21 U98 ( .A(n181), .B(cin), .C(n176), .Z(n178) );
  GTECH_XNOR2 U99 ( .A(cin), .B(n182), .Z(sum[0]) );
  GTECH_OAI21 U100 ( .A(n183), .B(n139), .C(n161), .Z(cout) );
  GTECH_NAND3 U101 ( .A(n162), .B(n150), .C(n139), .Z(n161) );
  GTECH_NAND2 U102 ( .A(a[4]), .B(b[4]), .Z(n150) );
  GTECH_MUX2 U103 ( .A(n182), .B(n184), .S(cin), .Z(n139) );
  GTECH_AOI22 U104 ( .A(n166), .B(a[3]), .C(n185), .D(b[3]), .Z(n184) );
  GTECH_OR2 U105 ( .A(a[3]), .B(n166), .Z(n185) );
  GTECH_OAI21 U106 ( .A(n174), .B(n168), .C(n186), .Z(n166) );
  GTECH_AO21 U107 ( .A(n168), .B(n174), .C(n187), .Z(n186) );
  GTECH_NOT U108 ( .A(b[2]), .Z(n187) );
  GTECH_NOT U109 ( .A(a[2]), .Z(n168) );
  GTECH_AOI21 U110 ( .A(n175), .B(n181), .C(n177), .Z(n174) );
  GTECH_AND2 U111 ( .A(a[1]), .B(b[1]), .Z(n177) );
  GTECH_OR2 U112 ( .A(b[1]), .B(a[1]), .Z(n175) );
  GTECH_OR_NOT U113 ( .A(n176), .B(n181), .Z(n182) );
  GTECH_OR2 U114 ( .A(b[0]), .B(a[0]), .Z(n181) );
  GTECH_AND2 U115 ( .A(a[0]), .B(b[0]), .Z(n176) );
  GTECH_AOI22 U116 ( .A(n145), .B(a[7]), .C(n188), .D(b[7]), .Z(n183) );
  GTECH_OR2 U117 ( .A(n145), .B(a[7]), .Z(n188) );
  GTECH_AO21 U118 ( .A(n143), .B(n152), .C(n144), .Z(n145) );
  GTECH_AND2 U119 ( .A(b[6]), .B(a[6]), .Z(n144) );
  GTECH_AOI21 U120 ( .A(n149), .B(n156), .C(n151), .Z(n152) );
  GTECH_AND_NOT U121 ( .A(n157), .B(b[5]), .Z(n151) );
  GTECH_NOT U122 ( .A(n162), .Z(n156) );
  GTECH_OR2 U123 ( .A(a[4]), .B(b[4]), .Z(n162) );
  GTECH_NOT U124 ( .A(n159), .Z(n149) );
  GTECH_NOR2 U125 ( .A(n157), .B(n158), .Z(n159) );
  GTECH_NOT U126 ( .A(b[5]), .Z(n158) );
  GTECH_NOT U127 ( .A(a[5]), .Z(n157) );
  GTECH_OR2 U128 ( .A(b[6]), .B(a[6]), .Z(n143) );
endmodule

