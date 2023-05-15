
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
  GTECH_XOR2 U66 ( .A(n137), .B(n138), .Z(n135) );
  GTECH_XOR2 U67 ( .A(n137), .B(n139), .Z(n134) );
  GTECH_AOI21 U68 ( .A(n140), .B(n141), .C(n142), .Z(n139) );
  GTECH_XOR2 U69 ( .A(n143), .B(b[7]), .Z(n137) );
  GTECH_MUX2 U70 ( .A(n144), .B(n145), .S(n146), .Z(sum[6]) );
  GTECH_AOI21 U71 ( .A(n147), .B(n136), .C(n141), .Z(n146) );
  GTECH_AO21 U72 ( .A(n148), .B(n149), .C(n150), .Z(n141) );
  GTECH_XOR2 U73 ( .A(b[6]), .B(a[6]), .Z(n145) );
  GTECH_OR_NOT U74 ( .A(n142), .B(n140), .Z(n144) );
  GTECH_MUX2 U75 ( .A(n151), .B(n152), .S(n153), .Z(sum[5]) );
  GTECH_AOI21 U76 ( .A(n154), .B(n136), .C(n148), .Z(n153) );
  GTECH_XOR2 U77 ( .A(b[5]), .B(a[5]), .Z(n152) );
  GTECH_OR_NOT U78 ( .A(n150), .B(n149), .Z(n151) );
  GTECH_OR2 U79 ( .A(n155), .B(n156), .Z(sum[4]) );
  GTECH_OA21 U80 ( .A(n157), .B(n148), .C(n136), .Z(n155) );
  GTECH_MUX2 U81 ( .A(n158), .B(n159), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U82 ( .A(n160), .B(n161), .Z(n159) );
  GTECH_NOT U83 ( .A(n162), .Z(n158) );
  GTECH_XOR2 U84 ( .A(n160), .B(n163), .Z(n162) );
  GTECH_AND_NOT U85 ( .A(n164), .B(n165), .Z(n163) );
  GTECH_AO21 U86 ( .A(n166), .B(n167), .C(n168), .Z(n164) );
  GTECH_XOR2 U87 ( .A(a[3]), .B(b[3]), .Z(n160) );
  GTECH_MUX2 U88 ( .A(n169), .B(n170), .S(n171), .Z(sum[2]) );
  GTECH_MUX2 U89 ( .A(n172), .B(n173), .S(n168), .Z(n170) );
  GTECH_AO21 U90 ( .A(n174), .B(n175), .C(n176), .Z(n168) );
  GTECH_MUX2 U91 ( .A(n172), .B(n173), .S(n177), .Z(n169) );
  GTECH_XOR2 U92 ( .A(n166), .B(n167), .Z(n173) );
  GTECH_AO21 U93 ( .A(n166), .B(n167), .C(n165), .Z(n172) );
  GTECH_MUX2 U94 ( .A(n178), .B(n179), .S(n180), .Z(sum[1]) );
  GTECH_AND_NOT U95 ( .A(n175), .B(n176), .Z(n180) );
  GTECH_AO21 U96 ( .A(n174), .B(n171), .C(n181), .Z(n179) );
  GTECH_NOT U97 ( .A(n182), .Z(n178) );
  GTECH_OA21 U98 ( .A(n171), .B(n181), .C(n174), .Z(n182) );
  GTECH_NAND2 U99 ( .A(a[0]), .B(b[0]), .Z(n174) );
  GTECH_NOT U100 ( .A(cin), .Z(n171) );
  GTECH_XOR2 U101 ( .A(cin), .B(n183), .Z(sum[0]) );
  GTECH_AO21 U102 ( .A(n136), .B(n184), .C(n156), .Z(cout) );
  GTECH_NOR3 U103 ( .A(n157), .B(n148), .C(n136), .Z(n156) );
  GTECH_AND2 U104 ( .A(a[4]), .B(b[4]), .Z(n148) );
  GTECH_OAI2N2 U105 ( .A(n138), .B(n143), .C(n185), .D(b[7]), .Z(n184) );
  GTECH_OR_NOT U106 ( .A(a[7]), .B(n138), .Z(n185) );
  GTECH_NOT U107 ( .A(a[7]), .Z(n143) );
  GTECH_AOI21 U108 ( .A(n147), .B(n140), .C(n142), .Z(n138) );
  GTECH_AND2 U109 ( .A(b[6]), .B(a[6]), .Z(n142) );
  GTECH_OR2 U110 ( .A(b[6]), .B(a[6]), .Z(n140) );
  GTECH_AO21 U111 ( .A(n154), .B(n149), .C(n150), .Z(n147) );
  GTECH_AND2 U112 ( .A(b[5]), .B(a[5]), .Z(n150) );
  GTECH_OR2 U113 ( .A(a[5]), .B(b[5]), .Z(n149) );
  GTECH_NOT U114 ( .A(n157), .Z(n154) );
  GTECH_NOR2 U115 ( .A(b[4]), .B(a[4]), .Z(n157) );
  GTECH_MUX2 U116 ( .A(n183), .B(n186), .S(cin), .Z(n136) );
  GTECH_OA21 U117 ( .A(a[3]), .B(n161), .C(n187), .Z(n186) );
  GTECH_AO21 U118 ( .A(a[3]), .B(n161), .C(b[3]), .Z(n187) );
  GTECH_OR_NOT U119 ( .A(n165), .B(n188), .Z(n161) );
  GTECH_AO21 U120 ( .A(n167), .B(n166), .C(n177), .Z(n188) );
  GTECH_AO21 U121 ( .A(n181), .B(n175), .C(n176), .Z(n177) );
  GTECH_NOR2 U122 ( .A(b[1]), .B(a[1]), .Z(n176) );
  GTECH_NAND2 U123 ( .A(a[1]), .B(b[1]), .Z(n175) );
  GTECH_NOR2 U124 ( .A(b[0]), .B(a[0]), .Z(n181) );
  GTECH_NOT U125 ( .A(a[2]), .Z(n166) );
  GTECH_NOT U126 ( .A(b[2]), .Z(n167) );
  GTECH_AND2 U127 ( .A(a[2]), .B(b[2]), .Z(n165) );
  GTECH_XOR2 U128 ( .A(a[0]), .B(b[0]), .Z(n183) );
endmodule

