
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196;

  GTECH_MUX2 U74 ( .A(n143), .B(n144), .S(n145), .Z(sum[7]) );
  GTECH_XOR2 U75 ( .A(n146), .B(n147), .Z(n144) );
  GTECH_XOR2 U76 ( .A(n148), .B(n147), .Z(n143) );
  GTECH_XOR2 U77 ( .A(a[7]), .B(b[7]), .Z(n147) );
  GTECH_OA21 U78 ( .A(n149), .B(n150), .C(n151), .Z(n148) );
  GTECH_MUX2 U79 ( .A(n152), .B(n153), .S(n145), .Z(sum[6]) );
  GTECH_XOR2 U80 ( .A(n154), .B(n155), .Z(n153) );
  GTECH_XOR2 U81 ( .A(n154), .B(n150), .Z(n152) );
  GTECH_AOI21 U82 ( .A(n156), .B(n157), .C(n158), .Z(n150) );
  GTECH_NOT U83 ( .A(n159), .Z(n156) );
  GTECH_OA21 U84 ( .A(b[6]), .B(a[6]), .C(n160), .Z(n154) );
  GTECH_NOT U85 ( .A(n149), .Z(n160) );
  GTECH_MUX2 U86 ( .A(n161), .B(n162), .S(n145), .Z(sum[5]) );
  GTECH_XNOR2 U87 ( .A(n163), .B(n164), .Z(n162) );
  GTECH_XOR2 U88 ( .A(n159), .B(n164), .Z(n161) );
  GTECH_OA21 U89 ( .A(b[5]), .B(a[5]), .C(n157), .Z(n164) );
  GTECH_NOT U90 ( .A(n165), .Z(sum[4]) );
  GTECH_NOR2 U91 ( .A(n166), .B(n167), .Z(n165) );
  GTECH_OA21 U92 ( .A(n163), .B(n159), .C(n145), .Z(n167) );
  GTECH_MUX2 U93 ( .A(n168), .B(n169), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U94 ( .A(n170), .B(n171), .Z(n169) );
  GTECH_XOR2 U95 ( .A(n170), .B(n172), .Z(n168) );
  GTECH_AOI21 U96 ( .A(n173), .B(n174), .C(n175), .Z(n172) );
  GTECH_XNOR2 U97 ( .A(a[3]), .B(b[3]), .Z(n170) );
  GTECH_MUX2 U98 ( .A(n176), .B(n177), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U99 ( .A(n178), .B(n179), .Z(n177) );
  GTECH_XOR2 U100 ( .A(n178), .B(n174), .Z(n176) );
  GTECH_OA21 U101 ( .A(n180), .B(n181), .C(n182), .Z(n174) );
  GTECH_AND_NOT U102 ( .A(n173), .B(n175), .Z(n178) );
  GTECH_MUX2 U103 ( .A(n183), .B(n184), .S(n185), .Z(sum[1]) );
  GTECH_OA21 U104 ( .A(a[1]), .B(b[1]), .C(n186), .Z(n185) );
  GTECH_NOT U105 ( .A(n181), .Z(n186) );
  GTECH_NOT U106 ( .A(n187), .Z(n184) );
  GTECH_OA21 U107 ( .A(n180), .B(cin), .C(n188), .Z(n187) );
  GTECH_AO21 U108 ( .A(cin), .B(n188), .C(n180), .Z(n183) );
  GTECH_AND_NOT U109 ( .A(b[0]), .B(n189), .Z(n180) );
  GTECH_XOR2 U110 ( .A(cin), .B(n190), .Z(sum[0]) );
  GTECH_AO21 U111 ( .A(n145), .B(n191), .C(n166), .Z(cout) );
  GTECH_NOR3 U112 ( .A(n163), .B(n159), .C(n145), .Z(n166) );
  GTECH_AND2 U113 ( .A(b[4]), .B(a[4]), .Z(n159) );
  GTECH_ADD_ABC U114 ( .A(a[7]), .B(n146), .C(b[7]), .COUT(n191) );
  GTECH_OA21 U115 ( .A(n149), .B(n155), .C(n151), .Z(n146) );
  GTECH_NOT U116 ( .A(n192), .Z(n151) );
  GTECH_NOR2 U117 ( .A(a[6]), .B(b[6]), .Z(n192) );
  GTECH_AOI21 U118 ( .A(n163), .B(n157), .C(n158), .Z(n155) );
  GTECH_NOR2 U119 ( .A(a[5]), .B(b[5]), .Z(n158) );
  GTECH_NAND2 U120 ( .A(a[5]), .B(b[5]), .Z(n157) );
  GTECH_NOR2 U121 ( .A(a[4]), .B(b[4]), .Z(n163) );
  GTECH_AND2 U122 ( .A(a[6]), .B(b[6]), .Z(n149) );
  GTECH_MUX2 U123 ( .A(n190), .B(n193), .S(cin), .Z(n145) );
  GTECH_OA21 U124 ( .A(a[3]), .B(n171), .C(n194), .Z(n193) );
  GTECH_AO21 U125 ( .A(a[3]), .B(n171), .C(b[3]), .Z(n194) );
  GTECH_AO21 U126 ( .A(n179), .B(n173), .C(n175), .Z(n171) );
  GTECH_AND2 U127 ( .A(a[2]), .B(b[2]), .Z(n175) );
  GTECH_OR_NOT U128 ( .A(a[2]), .B(n195), .Z(n173) );
  GTECH_NOT U129 ( .A(b[2]), .Z(n195) );
  GTECH_OA21 U130 ( .A(n188), .B(n181), .C(n182), .Z(n179) );
  GTECH_NOT U131 ( .A(n196), .Z(n182) );
  GTECH_NOR2 U132 ( .A(b[1]), .B(a[1]), .Z(n196) );
  GTECH_AND2 U133 ( .A(b[1]), .B(a[1]), .Z(n181) );
  GTECH_OR_NOT U134 ( .A(b[0]), .B(n189), .Z(n188) );
  GTECH_NOT U135 ( .A(a[0]), .Z(n189) );
  GTECH_XOR2 U136 ( .A(a[0]), .B(b[0]), .Z(n190) );
endmodule

