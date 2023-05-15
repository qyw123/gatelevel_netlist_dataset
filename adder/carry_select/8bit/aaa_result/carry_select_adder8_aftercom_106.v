
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189;

  GTECH_MUX2 U70 ( .A(n139), .B(n140), .S(n141), .Z(sum[7]) );
  GTECH_XOR2 U71 ( .A(n142), .B(n143), .Z(n140) );
  GTECH_OA21 U72 ( .A(n144), .B(n145), .C(n146), .Z(n142) );
  GTECH_XOR2 U73 ( .A(n147), .B(n143), .Z(n139) );
  GTECH_XOR2 U74 ( .A(a[7]), .B(b[7]), .Z(n143) );
  GTECH_MUX2 U75 ( .A(n148), .B(n149), .S(n141), .Z(sum[6]) );
  GTECH_XOR2 U76 ( .A(n150), .B(n145), .Z(n149) );
  GTECH_AOI21 U77 ( .A(n151), .B(n152), .C(n153), .Z(n145) );
  GTECH_XOR2 U78 ( .A(n150), .B(n154), .Z(n148) );
  GTECH_AOI21 U79 ( .A(n155), .B(n156), .C(n144), .Z(n150) );
  GTECH_NOT U80 ( .A(b[6]), .Z(n156) );
  GTECH_MUX2 U81 ( .A(n157), .B(n158), .S(n141), .Z(sum[5]) );
  GTECH_XOR2 U82 ( .A(n159), .B(n160), .Z(n158) );
  GTECH_XNOR2 U83 ( .A(n159), .B(n161), .Z(n157) );
  GTECH_OA21 U84 ( .A(a[5]), .B(b[5]), .C(n151), .Z(n159) );
  GTECH_OR_NOT U85 ( .A(n162), .B(n163), .Z(sum[4]) );
  GTECH_OAI21 U86 ( .A(n160), .B(n161), .C(n164), .Z(n163) );
  GTECH_MUX2 U87 ( .A(n165), .B(n166), .S(n167), .Z(sum[3]) );
  GTECH_XOR2 U88 ( .A(n168), .B(n169), .Z(n166) );
  GTECH_OA21 U89 ( .A(n170), .B(n171), .C(n172), .Z(n169) );
  GTECH_XNOR2 U90 ( .A(n168), .B(n173), .Z(n165) );
  GTECH_XNOR2 U91 ( .A(a[3]), .B(b[3]), .Z(n168) );
  GTECH_MUX2 U92 ( .A(n174), .B(n175), .S(n167), .Z(sum[2]) );
  GTECH_XNOR2 U93 ( .A(n171), .B(n176), .Z(n175) );
  GTECH_OA21 U94 ( .A(n177), .B(n178), .C(n179), .Z(n171) );
  GTECH_XNOR2 U95 ( .A(n176), .B(n180), .Z(n174) );
  GTECH_AND_NOT U96 ( .A(n172), .B(n170), .Z(n176) );
  GTECH_MUX2 U97 ( .A(n181), .B(n182), .S(n183), .Z(sum[1]) );
  GTECH_AND_NOT U98 ( .A(n179), .B(n177), .Z(n183) );
  GTECH_AO21 U99 ( .A(n167), .B(n178), .C(n184), .Z(n182) );
  GTECH_OAI21 U100 ( .A(n184), .B(n167), .C(n178), .Z(n181) );
  GTECH_NAND2 U101 ( .A(b[0]), .B(a[0]), .Z(n178) );
  GTECH_XNOR2 U102 ( .A(cin), .B(n185), .Z(sum[0]) );
  GTECH_AO21 U103 ( .A(n164), .B(n186), .C(n162), .Z(cout) );
  GTECH_NOR3 U104 ( .A(n160), .B(n161), .C(n164), .Z(n162) );
  GTECH_NOT U105 ( .A(n152), .Z(n160) );
  GTECH_NAND2 U106 ( .A(b[4]), .B(a[4]), .Z(n152) );
  GTECH_ADD_ABC U107 ( .A(a[7]), .B(n147), .C(b[7]), .COUT(n186) );
  GTECH_OA21 U108 ( .A(n144), .B(n154), .C(n146), .Z(n147) );
  GTECH_OR_NOT U109 ( .A(b[6]), .B(n155), .Z(n146) );
  GTECH_AOI21 U110 ( .A(n151), .B(n161), .C(n153), .Z(n154) );
  GTECH_NOR2 U111 ( .A(a[5]), .B(b[5]), .Z(n153) );
  GTECH_NOR2 U112 ( .A(b[4]), .B(a[4]), .Z(n161) );
  GTECH_NAND2 U113 ( .A(b[5]), .B(a[5]), .Z(n151) );
  GTECH_AND_NOT U114 ( .A(b[6]), .B(n155), .Z(n144) );
  GTECH_NOT U115 ( .A(a[6]), .Z(n155) );
  GTECH_NOT U116 ( .A(n141), .Z(n164) );
  GTECH_MUX2 U117 ( .A(n187), .B(n185), .S(n167), .Z(n141) );
  GTECH_NOT U118 ( .A(cin), .Z(n167) );
  GTECH_XOR2 U119 ( .A(a[0]), .B(n188), .Z(n185) );
  GTECH_NOT U120 ( .A(b[0]), .Z(n188) );
  GTECH_AOI21 U121 ( .A(n173), .B(a[3]), .C(n189), .Z(n187) );
  GTECH_OA21 U122 ( .A(a[3]), .B(n173), .C(b[3]), .Z(n189) );
  GTECH_OAI21 U123 ( .A(n180), .B(n170), .C(n172), .Z(n173) );
  GTECH_NAND2 U124 ( .A(a[2]), .B(b[2]), .Z(n172) );
  GTECH_NOR2 U125 ( .A(a[2]), .B(b[2]), .Z(n170) );
  GTECH_OA21 U126 ( .A(n184), .B(n177), .C(n179), .Z(n180) );
  GTECH_NAND2 U127 ( .A(b[1]), .B(a[1]), .Z(n179) );
  GTECH_NOR2 U128 ( .A(b[1]), .B(a[1]), .Z(n177) );
  GTECH_NOR2 U129 ( .A(b[0]), .B(a[0]), .Z(n184) );
endmodule

