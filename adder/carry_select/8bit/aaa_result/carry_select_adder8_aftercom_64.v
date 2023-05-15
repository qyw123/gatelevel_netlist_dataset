
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190;

  GTECH_MUX2 U66 ( .A(n135), .B(n136), .S(n137), .Z(sum[7]) );
  GTECH_XOR2 U67 ( .A(n138), .B(n139), .Z(n136) );
  GTECH_OAI21 U68 ( .A(n140), .B(n141), .C(n142), .Z(n138) );
  GTECH_XOR2 U69 ( .A(n143), .B(n139), .Z(n135) );
  GTECH_NOT U70 ( .A(n144), .Z(n139) );
  GTECH_XOR2 U71 ( .A(a[7]), .B(b[7]), .Z(n144) );
  GTECH_OAI21 U72 ( .A(n140), .B(n145), .C(n142), .Z(n143) );
  GTECH_MUX2 U73 ( .A(n146), .B(n147), .S(n137), .Z(sum[6]) );
  GTECH_XOR2 U74 ( .A(n141), .B(n148), .Z(n147) );
  GTECH_OAI21 U75 ( .A(n149), .B(n150), .C(n151), .Z(n141) );
  GTECH_XOR2 U76 ( .A(n145), .B(n148), .Z(n146) );
  GTECH_OA21 U77 ( .A(a[6]), .B(b[6]), .C(n152), .Z(n148) );
  GTECH_NOT U78 ( .A(n140), .Z(n152) );
  GTECH_MUX2 U79 ( .A(n153), .B(n154), .S(n155), .Z(sum[5]) );
  GTECH_OA21 U80 ( .A(n156), .B(n137), .C(n150), .Z(n155) );
  GTECH_XOR2 U81 ( .A(b[5]), .B(a[5]), .Z(n154) );
  GTECH_NAND2 U82 ( .A(n157), .B(n151), .Z(n153) );
  GTECH_AO21 U83 ( .A(n158), .B(n159), .C(n160), .Z(sum[4]) );
  GTECH_MUX2 U84 ( .A(n161), .B(n162), .S(n163), .Z(sum[3]) );
  GTECH_NOT U85 ( .A(n164), .Z(n162) );
  GTECH_XOR2 U86 ( .A(n165), .B(n166), .Z(n164) );
  GTECH_OA21 U87 ( .A(n167), .B(n168), .C(n169), .Z(n166) );
  GTECH_XOR2 U88 ( .A(n165), .B(n170), .Z(n161) );
  GTECH_XOR2 U89 ( .A(a[3]), .B(b[3]), .Z(n165) );
  GTECH_MUX2 U90 ( .A(n171), .B(n172), .S(n163), .Z(sum[2]) );
  GTECH_XOR2 U91 ( .A(n168), .B(n173), .Z(n172) );
  GTECH_OA21 U92 ( .A(n174), .B(n175), .C(n176), .Z(n168) );
  GTECH_XOR2 U93 ( .A(n173), .B(n177), .Z(n171) );
  GTECH_OR_NOT U94 ( .A(n167), .B(n169), .Z(n173) );
  GTECH_MUX2 U95 ( .A(n178), .B(n179), .S(n180), .Z(sum[1]) );
  GTECH_AND2 U96 ( .A(n176), .B(n181), .Z(n180) );
  GTECH_AO21 U97 ( .A(n163), .B(n175), .C(n182), .Z(n179) );
  GTECH_OAI21 U98 ( .A(n182), .B(n163), .C(n175), .Z(n178) );
  GTECH_NAND2 U99 ( .A(b[0]), .B(a[0]), .Z(n175) );
  GTECH_XOR2 U100 ( .A(n163), .B(n183), .Z(sum[0]) );
  GTECH_AO21 U101 ( .A(n159), .B(n184), .C(n160), .Z(cout) );
  GTECH_AND_NOT U102 ( .A(n137), .B(n158), .Z(n160) );
  GTECH_NAND2 U103 ( .A(n185), .B(n150), .Z(n158) );
  GTECH_NAND2 U104 ( .A(a[4]), .B(b[4]), .Z(n150) );
  GTECH_ADD_ABC U105 ( .A(a[7]), .B(n186), .C(b[7]), .COUT(n184) );
  GTECH_OA21 U106 ( .A(n140), .B(n145), .C(n142), .Z(n186) );
  GTECH_OR2 U107 ( .A(b[6]), .B(a[6]), .Z(n142) );
  GTECH_OAI21 U108 ( .A(n156), .B(n149), .C(n151), .Z(n145) );
  GTECH_NAND2 U109 ( .A(a[5]), .B(b[5]), .Z(n151) );
  GTECH_NOT U110 ( .A(n157), .Z(n149) );
  GTECH_OR2 U111 ( .A(a[5]), .B(b[5]), .Z(n157) );
  GTECH_NOT U112 ( .A(n185), .Z(n156) );
  GTECH_OR2 U113 ( .A(a[4]), .B(b[4]), .Z(n185) );
  GTECH_AND2 U114 ( .A(b[6]), .B(a[6]), .Z(n140) );
  GTECH_NOT U115 ( .A(n137), .Z(n159) );
  GTECH_MUX2 U116 ( .A(n187), .B(n183), .S(n163), .Z(n137) );
  GTECH_NOT U117 ( .A(cin), .Z(n163) );
  GTECH_XOR2 U118 ( .A(a[0]), .B(n188), .Z(n183) );
  GTECH_AOI21 U119 ( .A(n170), .B(a[3]), .C(n189), .Z(n187) );
  GTECH_OA21 U120 ( .A(a[3]), .B(n170), .C(b[3]), .Z(n189) );
  GTECH_OAI21 U121 ( .A(n177), .B(n167), .C(n169), .Z(n170) );
  GTECH_NAND2 U122 ( .A(a[2]), .B(b[2]), .Z(n169) );
  GTECH_NOT U123 ( .A(n190), .Z(n167) );
  GTECH_OR2 U124 ( .A(a[2]), .B(b[2]), .Z(n190) );
  GTECH_OA21 U125 ( .A(n182), .B(n174), .C(n176), .Z(n177) );
  GTECH_NAND2 U126 ( .A(a[1]), .B(b[1]), .Z(n176) );
  GTECH_NOT U127 ( .A(n181), .Z(n174) );
  GTECH_OR2 U128 ( .A(a[1]), .B(b[1]), .Z(n181) );
  GTECH_AND_NOT U129 ( .A(n188), .B(a[0]), .Z(n182) );
  GTECH_NOT U130 ( .A(b[0]), .Z(n188) );
endmodule

