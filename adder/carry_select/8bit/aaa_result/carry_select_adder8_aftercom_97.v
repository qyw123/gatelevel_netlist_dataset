
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
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187;

  GTECH_MUX2 U65 ( .A(n134), .B(n135), .S(n136), .Z(sum[7]) );
  GTECH_XOR2 U66 ( .A(n137), .B(n138), .Z(n135) );
  GTECH_XOR2 U67 ( .A(n139), .B(n138), .Z(n134) );
  GTECH_XOR2 U68 ( .A(a[7]), .B(b[7]), .Z(n138) );
  GTECH_OA21 U69 ( .A(n140), .B(n141), .C(n142), .Z(n139) );
  GTECH_NOT U70 ( .A(n143), .Z(n141) );
  GTECH_MUX2 U71 ( .A(n144), .B(n145), .S(n136), .Z(sum[6]) );
  GTECH_XOR2 U72 ( .A(n146), .B(n147), .Z(n145) );
  GTECH_XNOR2 U73 ( .A(n146), .B(n143), .Z(n144) );
  GTECH_AO21 U74 ( .A(n148), .B(n149), .C(n150), .Z(n143) );
  GTECH_OA21 U75 ( .A(b[6]), .B(a[6]), .C(n151), .Z(n146) );
  GTECH_MUX2 U76 ( .A(n152), .B(n153), .S(n136), .Z(sum[5]) );
  GTECH_XOR2 U77 ( .A(n154), .B(n155), .Z(n153) );
  GTECH_XNOR2 U78 ( .A(n149), .B(n154), .Z(n152) );
  GTECH_OA21 U79 ( .A(b[5]), .B(a[5]), .C(n148), .Z(n154) );
  GTECH_OR_NOT U80 ( .A(n156), .B(n157), .Z(sum[4]) );
  GTECH_AO21 U81 ( .A(n155), .B(n149), .C(n158), .Z(n157) );
  GTECH_MUX2 U82 ( .A(n159), .B(n160), .S(n161), .Z(sum[3]) );
  GTECH_XOR2 U83 ( .A(n162), .B(n163), .Z(n160) );
  GTECH_OA21 U84 ( .A(n164), .B(n165), .C(n166), .Z(n162) );
  GTECH_NOT U85 ( .A(n167), .Z(n165) );
  GTECH_XOR2 U86 ( .A(n168), .B(n163), .Z(n159) );
  GTECH_XOR2 U87 ( .A(a[3]), .B(b[3]), .Z(n163) );
  GTECH_MUX2 U88 ( .A(n169), .B(n170), .S(n161), .Z(sum[2]) );
  GTECH_XNOR2 U89 ( .A(n171), .B(n167), .Z(n170) );
  GTECH_AO21 U90 ( .A(n172), .B(n173), .C(n174), .Z(n167) );
  GTECH_XOR2 U91 ( .A(n171), .B(n175), .Z(n169) );
  GTECH_OA21 U92 ( .A(b[2]), .B(a[2]), .C(n176), .Z(n171) );
  GTECH_MUX2 U93 ( .A(n177), .B(n178), .S(n179), .Z(sum[1]) );
  GTECH_OA21 U94 ( .A(a[1]), .B(b[1]), .C(n173), .Z(n179) );
  GTECH_AO21 U95 ( .A(n172), .B(n161), .C(n180), .Z(n178) );
  GTECH_NOT U96 ( .A(n181), .Z(n177) );
  GTECH_OA21 U97 ( .A(n161), .B(n180), .C(n172), .Z(n181) );
  GTECH_NAND2 U98 ( .A(a[0]), .B(b[0]), .Z(n172) );
  GTECH_XNOR2 U99 ( .A(n161), .B(n182), .Z(sum[0]) );
  GTECH_AO21 U100 ( .A(n136), .B(n183), .C(n156), .Z(cout) );
  GTECH_AND3 U101 ( .A(n149), .B(n155), .C(n158), .Z(n156) );
  GTECH_NOT U102 ( .A(n136), .Z(n158) );
  GTECH_NAND2 U103 ( .A(a[4]), .B(b[4]), .Z(n149) );
  GTECH_ADD_ABC U104 ( .A(a[7]), .B(n137), .C(b[7]), .COUT(n183) );
  GTECH_OA21 U105 ( .A(n140), .B(n147), .C(n142), .Z(n137) );
  GTECH_OR2 U106 ( .A(a[6]), .B(b[6]), .Z(n142) );
  GTECH_NOT U107 ( .A(n184), .Z(n147) );
  GTECH_AO21 U108 ( .A(n185), .B(n148), .C(n150), .Z(n184) );
  GTECH_NOR2 U109 ( .A(b[5]), .B(a[5]), .Z(n150) );
  GTECH_NAND2 U110 ( .A(a[5]), .B(b[5]), .Z(n148) );
  GTECH_NOT U111 ( .A(n155), .Z(n185) );
  GTECH_OR2 U112 ( .A(b[4]), .B(a[4]), .Z(n155) );
  GTECH_NOT U113 ( .A(n151), .Z(n140) );
  GTECH_NAND2 U114 ( .A(a[6]), .B(b[6]), .Z(n151) );
  GTECH_MUX2 U115 ( .A(n186), .B(n182), .S(n161), .Z(n136) );
  GTECH_NOT U116 ( .A(cin), .Z(n161) );
  GTECH_XOR2 U117 ( .A(a[0]), .B(b[0]), .Z(n182) );
  GTECH_ADD_ABC U118 ( .A(a[3]), .B(n168), .C(b[3]), .COUT(n186) );
  GTECH_OA21 U119 ( .A(n164), .B(n175), .C(n166), .Z(n168) );
  GTECH_OR2 U120 ( .A(b[2]), .B(a[2]), .Z(n166) );
  GTECH_NOT U121 ( .A(n187), .Z(n175) );
  GTECH_AO21 U122 ( .A(n180), .B(n173), .C(n174), .Z(n187) );
  GTECH_NOR2 U123 ( .A(b[1]), .B(a[1]), .Z(n174) );
  GTECH_NAND2 U124 ( .A(b[1]), .B(a[1]), .Z(n173) );
  GTECH_NOR2 U125 ( .A(b[0]), .B(a[0]), .Z(n180) );
  GTECH_NOT U126 ( .A(n176), .Z(n164) );
  GTECH_NAND2 U127 ( .A(a[2]), .B(b[2]), .Z(n176) );
endmodule

