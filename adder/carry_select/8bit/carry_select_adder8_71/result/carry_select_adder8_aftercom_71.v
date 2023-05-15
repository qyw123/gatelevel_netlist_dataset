
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190;

  GTECH_MUX2 U73 ( .A(n142), .B(n143), .S(n144), .Z(sum[7]) );
  GTECH_XNOR2 U74 ( .A(n145), .B(n146), .Z(n143) );
  GTECH_XNOR2 U75 ( .A(n147), .B(n145), .Z(n142) );
  GTECH_XNOR2 U76 ( .A(a[7]), .B(b[7]), .Z(n145) );
  GTECH_ADD_ABC U77 ( .A(a[6]), .B(n148), .C(b[6]), .COUT(n147) );
  GTECH_MUX2 U78 ( .A(n149), .B(n150), .S(n144), .Z(sum[6]) );
  GTECH_XOR2 U79 ( .A(n151), .B(n152), .Z(n150) );
  GTECH_XOR2 U80 ( .A(n148), .B(n152), .Z(n149) );
  GTECH_XOR2 U81 ( .A(a[6]), .B(b[6]), .Z(n152) );
  GTECH_AOI21 U82 ( .A(n153), .B(n154), .C(n155), .Z(n148) );
  GTECH_MUX2 U83 ( .A(n156), .B(n157), .S(n144), .Z(sum[5]) );
  GTECH_XOR2 U84 ( .A(n158), .B(n159), .Z(n157) );
  GTECH_XNOR2 U85 ( .A(n160), .B(n159), .Z(n156) );
  GTECH_OAI21 U86 ( .A(a[5]), .B(b[5]), .C(n153), .Z(n159) );
  GTECH_AO21 U87 ( .A(n144), .B(n161), .C(n162), .Z(sum[4]) );
  GTECH_OR_NOT U88 ( .A(n158), .B(n154), .Z(n161) );
  GTECH_NOT U89 ( .A(n160), .Z(n154) );
  GTECH_MUX2 U90 ( .A(n163), .B(n164), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U91 ( .A(n165), .B(n166), .Z(n164) );
  GTECH_XOR2 U92 ( .A(n167), .B(n165), .Z(n163) );
  GTECH_XOR2 U93 ( .A(a[3]), .B(b[3]), .Z(n165) );
  GTECH_OA22 U94 ( .A(b[2]), .B(n168), .C(a[2]), .D(n169), .Z(n167) );
  GTECH_AND2 U95 ( .A(n169), .B(a[2]), .Z(n168) );
  GTECH_MUX2 U96 ( .A(n170), .B(n171), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U97 ( .A(n172), .B(n173), .Z(n171) );
  GTECH_XNOR2 U98 ( .A(n172), .B(n169), .Z(n170) );
  GTECH_AO21 U99 ( .A(n174), .B(n175), .C(n176), .Z(n169) );
  GTECH_XNOR2 U100 ( .A(a[2]), .B(b[2]), .Z(n172) );
  GTECH_MUX2 U101 ( .A(n177), .B(n178), .S(n179), .Z(sum[1]) );
  GTECH_AND_NOT U102 ( .A(n174), .B(n176), .Z(n179) );
  GTECH_OAI21 U103 ( .A(cin), .B(n175), .C(n180), .Z(n178) );
  GTECH_AO21 U104 ( .A(n180), .B(cin), .C(n175), .Z(n177) );
  GTECH_AO21 U105 ( .A(n181), .B(cin), .C(n182), .Z(sum[0]) );
  GTECH_OR2 U106 ( .A(n175), .B(n183), .Z(n181) );
  GTECH_AO21 U107 ( .A(n144), .B(n184), .C(n162), .Z(cout) );
  GTECH_NOR3 U108 ( .A(n158), .B(n160), .C(n144), .Z(n162) );
  GTECH_AND2 U109 ( .A(b[4]), .B(a[4]), .Z(n160) );
  GTECH_AO22 U110 ( .A(n146), .B(a[7]), .C(n185), .D(b[7]), .Z(n184) );
  GTECH_OR2 U111 ( .A(n146), .B(a[7]), .Z(n185) );
  GTECH_ADD_ABC U112 ( .A(a[6]), .B(n151), .C(b[6]), .COUT(n146) );
  GTECH_AOI21 U113 ( .A(n153), .B(n158), .C(n155), .Z(n151) );
  GTECH_AND_NOT U114 ( .A(n186), .B(b[5]), .Z(n155) );
  GTECH_NOR2 U115 ( .A(a[4]), .B(b[4]), .Z(n158) );
  GTECH_OR_NOT U116 ( .A(n186), .B(b[5]), .Z(n153) );
  GTECH_NOT U117 ( .A(a[5]), .Z(n186) );
  GTECH_AO21 U118 ( .A(n187), .B(cin), .C(n182), .Z(n144) );
  GTECH_NOR3 U119 ( .A(n183), .B(cin), .C(n175), .Z(n182) );
  GTECH_AND2 U120 ( .A(a[0]), .B(b[0]), .Z(n175) );
  GTECH_NOT U121 ( .A(n180), .Z(n183) );
  GTECH_AO22 U122 ( .A(n166), .B(a[3]), .C(n188), .D(b[3]), .Z(n187) );
  GTECH_OR2 U123 ( .A(a[3]), .B(n166), .Z(n188) );
  GTECH_AO21 U124 ( .A(n173), .B(a[2]), .C(n189), .Z(n166) );
  GTECH_NOT U125 ( .A(n190), .Z(n189) );
  GTECH_OAI21 U126 ( .A(a[2]), .B(n173), .C(b[2]), .Z(n190) );
  GTECH_AO21 U127 ( .A(n174), .B(n180), .C(n176), .Z(n173) );
  GTECH_AND2 U128 ( .A(b[1]), .B(a[1]), .Z(n176) );
  GTECH_OR2 U129 ( .A(a[0]), .B(b[0]), .Z(n180) );
  GTECH_OR2 U130 ( .A(a[1]), .B(b[1]), .Z(n174) );
endmodule

