
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187;

  GTECH_MUX2 U67 ( .A(n136), .B(n137), .S(n138), .Z(sum[7]) );
  GTECH_XOR2 U68 ( .A(n139), .B(n140), .Z(n137) );
  GTECH_XOR2 U69 ( .A(n141), .B(n140), .Z(n136) );
  GTECH_XOR2 U70 ( .A(a[7]), .B(b[7]), .Z(n140) );
  GTECH_OA21 U71 ( .A(n142), .B(n143), .C(n144), .Z(n141) );
  GTECH_MUX2 U72 ( .A(n145), .B(n146), .S(n138), .Z(sum[6]) );
  GTECH_XOR2 U73 ( .A(n147), .B(n148), .Z(n146) );
  GTECH_XOR2 U74 ( .A(n147), .B(n143), .Z(n145) );
  GTECH_OA21 U75 ( .A(n149), .B(n150), .C(n151), .Z(n143) );
  GTECH_NOT U76 ( .A(n152), .Z(n149) );
  GTECH_OA21 U77 ( .A(b[6]), .B(a[6]), .C(n153), .Z(n147) );
  GTECH_MUX2 U78 ( .A(n154), .B(n155), .S(n138), .Z(sum[5]) );
  GTECH_XOR2 U79 ( .A(n156), .B(n157), .Z(n155) );
  GTECH_XNOR2 U80 ( .A(n156), .B(n152), .Z(n154) );
  GTECH_OA21 U81 ( .A(b[5]), .B(a[5]), .C(n158), .Z(n156) );
  GTECH_OR_NOT U82 ( .A(n159), .B(n160), .Z(sum[4]) );
  GTECH_AO21 U83 ( .A(n157), .B(n152), .C(n161), .Z(n160) );
  GTECH_MUX2 U84 ( .A(n162), .B(n163), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U85 ( .A(n164), .B(n165), .Z(n163) );
  GTECH_XOR2 U86 ( .A(n164), .B(n166), .Z(n162) );
  GTECH_AOI21 U87 ( .A(n167), .B(n168), .C(n169), .Z(n166) );
  GTECH_XNOR2 U88 ( .A(a[3]), .B(b[3]), .Z(n164) );
  GTECH_MUX2 U89 ( .A(n170), .B(n171), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U90 ( .A(n172), .B(n173), .Z(n171) );
  GTECH_XOR2 U91 ( .A(n172), .B(n168), .Z(n170) );
  GTECH_OA21 U92 ( .A(n174), .B(n175), .C(n176), .Z(n168) );
  GTECH_AND_NOT U93 ( .A(n167), .B(n169), .Z(n172) );
  GTECH_MUX2 U94 ( .A(n177), .B(n178), .S(n179), .Z(sum[1]) );
  GTECH_OA21 U95 ( .A(a[1]), .B(b[1]), .C(n180), .Z(n179) );
  GTECH_NOT U96 ( .A(n181), .Z(n178) );
  GTECH_OA21 U97 ( .A(n174), .B(cin), .C(n182), .Z(n181) );
  GTECH_AO21 U98 ( .A(cin), .B(n182), .C(n174), .Z(n177) );
  GTECH_AND_NOT U99 ( .A(a[0]), .B(n183), .Z(n174) );
  GTECH_XNOR2 U100 ( .A(cin), .B(n184), .Z(sum[0]) );
  GTECH_AO21 U101 ( .A(n138), .B(n185), .C(n159), .Z(cout) );
  GTECH_AND3 U102 ( .A(n152), .B(n157), .C(n161), .Z(n159) );
  GTECH_NAND2 U103 ( .A(b[4]), .B(a[4]), .Z(n152) );
  GTECH_ADD_ABC U104 ( .A(a[7]), .B(n139), .C(b[7]), .COUT(n185) );
  GTECH_OA21 U105 ( .A(n148), .B(n142), .C(n144), .Z(n139) );
  GTECH_OR2 U106 ( .A(b[6]), .B(a[6]), .Z(n144) );
  GTECH_NOT U107 ( .A(n153), .Z(n142) );
  GTECH_NAND2 U108 ( .A(b[6]), .B(a[6]), .Z(n153) );
  GTECH_OA21 U109 ( .A(n157), .B(n150), .C(n151), .Z(n148) );
  GTECH_OR2 U110 ( .A(a[5]), .B(b[5]), .Z(n151) );
  GTECH_NOT U111 ( .A(n158), .Z(n150) );
  GTECH_NAND2 U112 ( .A(b[5]), .B(a[5]), .Z(n158) );
  GTECH_OR2 U113 ( .A(b[4]), .B(a[4]), .Z(n157) );
  GTECH_NOT U114 ( .A(n161), .Z(n138) );
  GTECH_MUX2 U115 ( .A(n184), .B(n186), .S(cin), .Z(n161) );
  GTECH_AOI21 U116 ( .A(n165), .B(a[3]), .C(n187), .Z(n186) );
  GTECH_OA21 U117 ( .A(n165), .B(a[3]), .C(b[3]), .Z(n187) );
  GTECH_AO21 U118 ( .A(n173), .B(n167), .C(n169), .Z(n165) );
  GTECH_ADD_AB U119 ( .A(b[2]), .B(a[2]), .COUT(n169) );
  GTECH_OR2 U120 ( .A(a[2]), .B(b[2]), .Z(n167) );
  GTECH_OA21 U121 ( .A(n182), .B(n175), .C(n176), .Z(n173) );
  GTECH_OR2 U122 ( .A(a[1]), .B(b[1]), .Z(n176) );
  GTECH_NOT U123 ( .A(n180), .Z(n175) );
  GTECH_NAND2 U124 ( .A(b[1]), .B(a[1]), .Z(n180) );
  GTECH_OR_NOT U125 ( .A(a[0]), .B(n183), .Z(n182) );
  GTECH_NOT U126 ( .A(b[0]), .Z(n183) );
  GTECH_XNOR2 U127 ( .A(a[0]), .B(b[0]), .Z(n184) );
endmodule

