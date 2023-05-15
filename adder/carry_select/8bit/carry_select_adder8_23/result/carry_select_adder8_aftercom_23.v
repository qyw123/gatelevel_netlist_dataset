
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
         n183, n184, n185, n186;

  GTECH_MUX2 U70 ( .A(n139), .B(n140), .S(n141), .Z(sum[7]) );
  GTECH_XNOR2 U71 ( .A(n142), .B(n143), .Z(n140) );
  GTECH_XOR2 U72 ( .A(n142), .B(n144), .Z(n139) );
  GTECH_AOI21 U73 ( .A(n145), .B(n146), .C(n147), .Z(n144) );
  GTECH_XNOR2 U74 ( .A(a[7]), .B(b[7]), .Z(n142) );
  GTECH_MUX2 U75 ( .A(n148), .B(n149), .S(n141), .Z(sum[6]) );
  GTECH_XOR2 U76 ( .A(n150), .B(n151), .Z(n149) );
  GTECH_XOR2 U77 ( .A(n146), .B(n151), .Z(n148) );
  GTECH_AND_NOT U78 ( .A(n145), .B(n147), .Z(n151) );
  GTECH_AOI21 U79 ( .A(n152), .B(n153), .C(n154), .Z(n146) );
  GTECH_NOT U80 ( .A(n155), .Z(n152) );
  GTECH_MUX2 U81 ( .A(n156), .B(n157), .S(n141), .Z(sum[5]) );
  GTECH_XNOR2 U82 ( .A(n158), .B(n159), .Z(n157) );
  GTECH_XOR2 U83 ( .A(n159), .B(n155), .Z(n156) );
  GTECH_OA21 U84 ( .A(b[5]), .B(a[5]), .C(n153), .Z(n159) );
  GTECH_OR2 U85 ( .A(n160), .B(n161), .Z(sum[4]) );
  GTECH_OA21 U86 ( .A(n158), .B(n155), .C(n141), .Z(n160) );
  GTECH_MUX2 U87 ( .A(n162), .B(n163), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U88 ( .A(n164), .B(n165), .Z(n163) );
  GTECH_XOR2 U89 ( .A(n164), .B(n166), .Z(n162) );
  GTECH_AOI21 U90 ( .A(n167), .B(n168), .C(n169), .Z(n166) );
  GTECH_XNOR2 U91 ( .A(a[3]), .B(b[3]), .Z(n164) );
  GTECH_MUX2 U92 ( .A(n170), .B(n171), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U93 ( .A(n172), .B(n173), .Z(n171) );
  GTECH_XOR2 U94 ( .A(n172), .B(n168), .Z(n170) );
  GTECH_AO21 U95 ( .A(n174), .B(n175), .C(n176), .Z(n168) );
  GTECH_AND_NOT U96 ( .A(n167), .B(n169), .Z(n172) );
  GTECH_MUX2 U97 ( .A(n177), .B(n178), .S(n179), .Z(sum[1]) );
  GTECH_AND_NOT U98 ( .A(n175), .B(n176), .Z(n179) );
  GTECH_NOT U99 ( .A(n180), .Z(n178) );
  GTECH_OA21 U100 ( .A(n174), .B(cin), .C(n181), .Z(n180) );
  GTECH_AO21 U101 ( .A(cin), .B(n181), .C(n174), .Z(n177) );
  GTECH_XOR2 U102 ( .A(cin), .B(n182), .Z(sum[0]) );
  GTECH_AO21 U103 ( .A(n141), .B(n183), .C(n161), .Z(cout) );
  GTECH_NOR3 U104 ( .A(n155), .B(n158), .C(n141), .Z(n161) );
  GTECH_AND2 U105 ( .A(a[4]), .B(b[4]), .Z(n155) );
  GTECH_AO22 U106 ( .A(n184), .B(b[7]), .C(n143), .D(a[7]), .Z(n183) );
  GTECH_OR2 U107 ( .A(n143), .B(a[7]), .Z(n184) );
  GTECH_AO21 U108 ( .A(n150), .B(n145), .C(n147), .Z(n143) );
  GTECH_AND2 U109 ( .A(b[6]), .B(a[6]), .Z(n147) );
  GTECH_OR2 U110 ( .A(b[6]), .B(a[6]), .Z(n145) );
  GTECH_AOI21 U111 ( .A(n158), .B(n153), .C(n154), .Z(n150) );
  GTECH_NOR2 U112 ( .A(a[5]), .B(b[5]), .Z(n154) );
  GTECH_NAND2 U113 ( .A(a[5]), .B(b[5]), .Z(n153) );
  GTECH_NOR2 U114 ( .A(b[4]), .B(a[4]), .Z(n158) );
  GTECH_MUX2 U115 ( .A(n182), .B(n185), .S(cin), .Z(n141) );
  GTECH_AO21 U116 ( .A(n165), .B(a[3]), .C(n186), .Z(n185) );
  GTECH_OA21 U117 ( .A(n165), .B(a[3]), .C(b[3]), .Z(n186) );
  GTECH_AO21 U118 ( .A(n173), .B(n167), .C(n169), .Z(n165) );
  GTECH_AND2 U119 ( .A(b[2]), .B(a[2]), .Z(n169) );
  GTECH_OR2 U120 ( .A(b[2]), .B(a[2]), .Z(n167) );
  GTECH_AO21 U121 ( .A(n181), .B(n175), .C(n176), .Z(n173) );
  GTECH_AND2 U122 ( .A(b[1]), .B(a[1]), .Z(n176) );
  GTECH_OR2 U123 ( .A(b[1]), .B(a[1]), .Z(n175) );
  GTECH_AND_NOT U124 ( .A(n181), .B(n174), .Z(n182) );
  GTECH_AND2 U125 ( .A(b[0]), .B(a[0]), .Z(n174) );
  GTECH_OR2 U126 ( .A(a[0]), .B(b[0]), .Z(n181) );
endmodule

