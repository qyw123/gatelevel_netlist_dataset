
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
         n181, n182, n183, n184, n185, n186, n187, n188, n189;

  GTECH_OAI22 U68 ( .A(n137), .B(n138), .C(n139), .D(n140), .Z(sum[7]) );
  GTECH_XNOR2 U69 ( .A(n141), .B(n142), .Z(n139) );
  GTECH_XOR2 U70 ( .A(n143), .B(n142), .Z(n137) );
  GTECH_XOR2 U71 ( .A(a[7]), .B(b[7]), .Z(n142) );
  GTECH_OA21 U72 ( .A(n144), .B(n145), .C(n146), .Z(n143) );
  GTECH_OAI22 U73 ( .A(n147), .B(n138), .C(n148), .D(n140), .Z(sum[6]) );
  GTECH_XNOR2 U74 ( .A(n149), .B(n150), .Z(n148) );
  GTECH_XNOR2 U75 ( .A(n150), .B(n144), .Z(n147) );
  GTECH_AOI21 U76 ( .A(n151), .B(n152), .C(n153), .Z(n144) );
  GTECH_NOT U77 ( .A(n154), .Z(n151) );
  GTECH_OR_NOT U78 ( .A(n145), .B(n146), .Z(n150) );
  GTECH_OAI22 U79 ( .A(n138), .B(n155), .C(n156), .D(n140), .Z(sum[5]) );
  GTECH_XNOR2 U80 ( .A(n157), .B(n158), .Z(n156) );
  GTECH_XOR2 U81 ( .A(n158), .B(n159), .Z(n155) );
  GTECH_NOR2 U82 ( .A(n153), .B(n154), .Z(n158) );
  GTECH_NAND2 U83 ( .A(n160), .B(n161), .Z(sum[4]) );
  GTECH_OAI21 U84 ( .A(n152), .B(n162), .C(n138), .Z(n161) );
  GTECH_NOT U85 ( .A(n140), .Z(n138) );
  GTECH_OAI22 U86 ( .A(n163), .B(n164), .C(cin), .D(n165), .Z(sum[3]) );
  GTECH_XOR2 U87 ( .A(n166), .B(n167), .Z(n165) );
  GTECH_OA21 U88 ( .A(n168), .B(n169), .C(n170), .Z(n166) );
  GTECH_XNOR2 U89 ( .A(n171), .B(n167), .Z(n164) );
  GTECH_XOR2 U90 ( .A(a[3]), .B(b[3]), .Z(n167) );
  GTECH_OAI22 U91 ( .A(n163), .B(n172), .C(cin), .D(n173), .Z(sum[2]) );
  GTECH_XNOR2 U92 ( .A(n174), .B(n169), .Z(n173) );
  GTECH_AOI21 U93 ( .A(n175), .B(n176), .C(n177), .Z(n169) );
  GTECH_XNOR2 U94 ( .A(n178), .B(n174), .Z(n172) );
  GTECH_OR_NOT U95 ( .A(n168), .B(n170), .Z(n174) );
  GTECH_OAI2N2 U96 ( .A(n179), .B(n180), .C(n181), .D(n179), .Z(sum[1]) );
  GTECH_OAI21 U97 ( .A(cin), .B(n176), .C(n182), .Z(n181) );
  GTECH_AOI21 U98 ( .A(n182), .B(cin), .C(n176), .Z(n180) );
  GTECH_AND2 U99 ( .A(a[0]), .B(b[0]), .Z(n176) );
  GTECH_AND2 U100 ( .A(n183), .B(n175), .Z(n179) );
  GTECH_NOT U101 ( .A(n177), .Z(n183) );
  GTECH_XNOR2 U102 ( .A(n163), .B(n184), .Z(sum[0]) );
  GTECH_OAI21 U103 ( .A(n185), .B(n140), .C(n160), .Z(cout) );
  GTECH_NAND3 U104 ( .A(n159), .B(n157), .C(n140), .Z(n160) );
  GTECH_NOT U105 ( .A(n152), .Z(n159) );
  GTECH_AND2 U106 ( .A(b[4]), .B(a[4]), .Z(n152) );
  GTECH_AOI2N2 U107 ( .A(n163), .B(n184), .C(n186), .D(n163), .Z(n140) );
  GTECH_AOI21 U108 ( .A(n171), .B(a[3]), .C(n187), .Z(n186) );
  GTECH_OA21 U109 ( .A(a[3]), .B(n171), .C(b[3]), .Z(n187) );
  GTECH_OAI21 U110 ( .A(n178), .B(n168), .C(n170), .Z(n171) );
  GTECH_NAND2 U111 ( .A(a[2]), .B(b[2]), .Z(n170) );
  GTECH_NOR2 U112 ( .A(b[2]), .B(a[2]), .Z(n168) );
  GTECH_AOI21 U113 ( .A(n175), .B(n182), .C(n177), .Z(n178) );
  GTECH_AND2 U114 ( .A(a[1]), .B(b[1]), .Z(n177) );
  GTECH_OR2 U115 ( .A(b[0]), .B(a[0]), .Z(n182) );
  GTECH_OR2 U116 ( .A(a[1]), .B(b[1]), .Z(n175) );
  GTECH_XOR2 U117 ( .A(a[0]), .B(b[0]), .Z(n184) );
  GTECH_NOT U118 ( .A(cin), .Z(n163) );
  GTECH_AOI21 U119 ( .A(n141), .B(a[7]), .C(n188), .Z(n185) );
  GTECH_OA21 U120 ( .A(a[7]), .B(n141), .C(b[7]), .Z(n188) );
  GTECH_OAI21 U121 ( .A(n149), .B(n145), .C(n146), .Z(n141) );
  GTECH_NAND2 U122 ( .A(a[6]), .B(b[6]), .Z(n146) );
  GTECH_NOR2 U123 ( .A(b[6]), .B(a[6]), .Z(n145) );
  GTECH_OA21 U124 ( .A(n154), .B(n162), .C(n189), .Z(n149) );
  GTECH_NOT U125 ( .A(n153), .Z(n189) );
  GTECH_AND2 U126 ( .A(a[5]), .B(b[5]), .Z(n153) );
  GTECH_NOT U127 ( .A(n157), .Z(n162) );
  GTECH_OR2 U128 ( .A(b[4]), .B(a[4]), .Z(n157) );
  GTECH_NOR2 U129 ( .A(a[5]), .B(b[5]), .Z(n154) );
endmodule

