
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188;

  GTECH_MUX2 U65 ( .A(n134), .B(n135), .S(n136), .Z(sum[7]) );
  GTECH_XNOR2 U66 ( .A(n137), .B(n138), .Z(n135) );
  GTECH_OA21 U67 ( .A(n139), .B(n140), .C(n141), .Z(n138) );
  GTECH_XNOR2 U68 ( .A(n137), .B(n142), .Z(n134) );
  GTECH_XNOR2 U69 ( .A(n143), .B(b[7]), .Z(n137) );
  GTECH_MUX2 U70 ( .A(n144), .B(n145), .S(n136), .Z(sum[6]) );
  GTECH_XNOR2 U71 ( .A(n146), .B(n140), .Z(n145) );
  GTECH_AOI21 U72 ( .A(n147), .B(n148), .C(n149), .Z(n140) );
  GTECH_XNOR2 U73 ( .A(n146), .B(n150), .Z(n144) );
  GTECH_AND_NOT U74 ( .A(n141), .B(n139), .Z(n146) );
  GTECH_MUX2 U75 ( .A(n151), .B(n152), .S(n136), .Z(sum[5]) );
  GTECH_XOR2 U76 ( .A(n148), .B(n153), .Z(n152) );
  GTECH_XOR2 U77 ( .A(n153), .B(n154), .Z(n151) );
  GTECH_AND_NOT U78 ( .A(n147), .B(n149), .Z(n153) );
  GTECH_OR_NOT U79 ( .A(n155), .B(n156), .Z(sum[4]) );
  GTECH_OA21 U80 ( .A(n148), .B(n157), .C(n158), .Z(n155) );
  GTECH_MUX2 U81 ( .A(n159), .B(n160), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U82 ( .A(n161), .B(n162), .Z(n160) );
  GTECH_XNOR2 U83 ( .A(n161), .B(n163), .Z(n159) );
  GTECH_OA21 U84 ( .A(n164), .B(n165), .C(n166), .Z(n163) );
  GTECH_XOR2 U85 ( .A(a[3]), .B(b[3]), .Z(n161) );
  GTECH_MUX2 U86 ( .A(n167), .B(n168), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U87 ( .A(n169), .B(n170), .Z(n168) );
  GTECH_XNOR2 U88 ( .A(n169), .B(n165), .Z(n167) );
  GTECH_AOI21 U89 ( .A(n171), .B(n172), .C(n173), .Z(n165) );
  GTECH_AND_NOT U90 ( .A(n166), .B(n164), .Z(n169) );
  GTECH_NOT U91 ( .A(n174), .Z(sum[1]) );
  GTECH_MUX2 U92 ( .A(n175), .B(n176), .S(n177), .Z(n174) );
  GTECH_AND_NOT U93 ( .A(n171), .B(n173), .Z(n177) );
  GTECH_OA21 U94 ( .A(cin), .B(n172), .C(n178), .Z(n176) );
  GTECH_AOI21 U95 ( .A(n178), .B(cin), .C(n172), .Z(n175) );
  GTECH_OR_NOT U96 ( .A(n179), .B(n180), .Z(sum[0]) );
  GTECH_OA21 U97 ( .A(n181), .B(n172), .C(cin), .Z(n179) );
  GTECH_NOT U98 ( .A(n182), .Z(cout) );
  GTECH_OA21 U99 ( .A(n136), .B(n183), .C(n156), .Z(n182) );
  GTECH_OR3 U100 ( .A(n148), .B(n157), .C(n158), .Z(n156) );
  GTECH_NOT U101 ( .A(n136), .Z(n158) );
  GTECH_AND2 U102 ( .A(a[4]), .B(b[4]), .Z(n148) );
  GTECH_AOI2N2 U103 ( .A(n184), .B(b[7]), .C(n142), .D(n143), .Z(n183) );
  GTECH_NAND2 U104 ( .A(n143), .B(n142), .Z(n184) );
  GTECH_OA21 U105 ( .A(n139), .B(n150), .C(n141), .Z(n142) );
  GTECH_NAND2 U106 ( .A(a[6]), .B(b[6]), .Z(n141) );
  GTECH_AOI21 U107 ( .A(n147), .B(n154), .C(n149), .Z(n150) );
  GTECH_AND2 U108 ( .A(a[5]), .B(b[5]), .Z(n149) );
  GTECH_NOT U109 ( .A(n157), .Z(n154) );
  GTECH_NOR2 U110 ( .A(b[4]), .B(a[4]), .Z(n157) );
  GTECH_OR2 U111 ( .A(a[5]), .B(b[5]), .Z(n147) );
  GTECH_NOR2 U112 ( .A(b[6]), .B(a[6]), .Z(n139) );
  GTECH_NOT U113 ( .A(a[7]), .Z(n143) );
  GTECH_OA21 U114 ( .A(n185), .B(n186), .C(n180), .Z(n136) );
  GTECH_OR3 U115 ( .A(n172), .B(cin), .C(n181), .Z(n180) );
  GTECH_AND2 U116 ( .A(b[0]), .B(a[0]), .Z(n172) );
  GTECH_NOT U117 ( .A(cin), .Z(n186) );
  GTECH_AOI2N2 U118 ( .A(n187), .B(b[3]), .C(n162), .D(n188), .Z(n185) );
  GTECH_NAND2 U119 ( .A(n188), .B(n162), .Z(n187) );
  GTECH_OA21 U120 ( .A(n164), .B(n170), .C(n166), .Z(n162) );
  GTECH_NAND2 U121 ( .A(a[2]), .B(b[2]), .Z(n166) );
  GTECH_AOI21 U122 ( .A(n171), .B(n178), .C(n173), .Z(n170) );
  GTECH_AND2 U123 ( .A(a[1]), .B(b[1]), .Z(n173) );
  GTECH_NOT U124 ( .A(n181), .Z(n178) );
  GTECH_NOR2 U125 ( .A(a[0]), .B(b[0]), .Z(n181) );
  GTECH_OR2 U126 ( .A(a[1]), .B(b[1]), .Z(n171) );
  GTECH_NOR2 U127 ( .A(b[2]), .B(a[2]), .Z(n164) );
  GTECH_NOT U128 ( .A(a[3]), .Z(n188) );
endmodule

