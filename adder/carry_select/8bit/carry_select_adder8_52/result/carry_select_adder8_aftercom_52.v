
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184;

  GTECH_MUX2 U64 ( .A(n133), .B(n134), .S(n135), .Z(sum[7]) );
  GTECH_XOR2 U65 ( .A(n136), .B(n137), .Z(n134) );
  GTECH_OA21 U66 ( .A(n138), .B(n139), .C(n140), .Z(n137) );
  GTECH_XOR2 U67 ( .A(n136), .B(n141), .Z(n133) );
  GTECH_XOR2 U68 ( .A(n142), .B(b[7]), .Z(n136) );
  GTECH_MUX2 U69 ( .A(n143), .B(n144), .S(n135), .Z(sum[6]) );
  GTECH_XOR2 U70 ( .A(n139), .B(n145), .Z(n144) );
  GTECH_OA21 U71 ( .A(n146), .B(n147), .C(n148), .Z(n139) );
  GTECH_NOT U72 ( .A(n149), .Z(n147) );
  GTECH_XOR2 U73 ( .A(n150), .B(n145), .Z(n143) );
  GTECH_OR_NOT U74 ( .A(n138), .B(n140), .Z(n145) );
  GTECH_MUX2 U75 ( .A(n151), .B(n152), .S(n135), .Z(sum[5]) );
  GTECH_XNOR2 U76 ( .A(n149), .B(n153), .Z(n152) );
  GTECH_XOR2 U77 ( .A(n153), .B(n154), .Z(n151) );
  GTECH_OR_NOT U78 ( .A(n146), .B(n148), .Z(n153) );
  GTECH_NAND2 U79 ( .A(n155), .B(n156), .Z(sum[4]) );
  GTECH_OAI21 U80 ( .A(n149), .B(n154), .C(n157), .Z(n156) );
  GTECH_MUX2 U81 ( .A(n158), .B(n159), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U82 ( .A(n160), .B(n161), .Z(n159) );
  GTECH_XOR2 U83 ( .A(n160), .B(n162), .Z(n158) );
  GTECH_AO21 U84 ( .A(n163), .B(n164), .C(n165), .Z(n162) );
  GTECH_XOR2 U85 ( .A(a[3]), .B(b[3]), .Z(n160) );
  GTECH_MUX2 U86 ( .A(n166), .B(n167), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U87 ( .A(n168), .B(n169), .Z(n167) );
  GTECH_XNOR2 U88 ( .A(n168), .B(n164), .Z(n166) );
  GTECH_OAI21 U89 ( .A(n170), .B(n171), .C(n172), .Z(n164) );
  GTECH_NOT U90 ( .A(n173), .Z(n171) );
  GTECH_OR_NOT U91 ( .A(n165), .B(n163), .Z(n168) );
  GTECH_MUX2 U92 ( .A(n174), .B(n175), .S(n176), .Z(sum[1]) );
  GTECH_OR_NOT U93 ( .A(n170), .B(n172), .Z(n176) );
  GTECH_AO21 U94 ( .A(n177), .B(cin), .C(n173), .Z(n175) );
  GTECH_OAI21 U95 ( .A(cin), .B(n173), .C(n177), .Z(n174) );
  GTECH_NOT U96 ( .A(n178), .Z(n177) );
  GTECH_XOR2 U97 ( .A(cin), .B(n179), .Z(sum[0]) );
  GTECH_OAI21 U98 ( .A(n180), .B(n135), .C(n155), .Z(cout) );
  GTECH_OR3 U99 ( .A(n154), .B(n149), .C(n157), .Z(n155) );
  GTECH_AND2 U100 ( .A(b[4]), .B(a[4]), .Z(n149) );
  GTECH_NOT U101 ( .A(n157), .Z(n135) );
  GTECH_MUX2 U102 ( .A(n179), .B(n181), .S(cin), .Z(n157) );
  GTECH_OA21 U103 ( .A(a[3]), .B(n161), .C(n182), .Z(n181) );
  GTECH_AO21 U104 ( .A(n161), .B(a[3]), .C(b[3]), .Z(n182) );
  GTECH_AO21 U105 ( .A(n163), .B(n169), .C(n165), .Z(n161) );
  GTECH_AND2 U106 ( .A(b[2]), .B(a[2]), .Z(n165) );
  GTECH_OAI21 U107 ( .A(n170), .B(n178), .C(n172), .Z(n169) );
  GTECH_NAND2 U108 ( .A(b[1]), .B(a[1]), .Z(n172) );
  GTECH_NOR2 U109 ( .A(a[1]), .B(b[1]), .Z(n170) );
  GTECH_OR2 U110 ( .A(a[2]), .B(b[2]), .Z(n163) );
  GTECH_NOR2 U111 ( .A(n178), .B(n173), .Z(n179) );
  GTECH_AND2 U112 ( .A(b[0]), .B(a[0]), .Z(n173) );
  GTECH_NOR2 U113 ( .A(b[0]), .B(a[0]), .Z(n178) );
  GTECH_OA21 U114 ( .A(n141), .B(n142), .C(n183), .Z(n180) );
  GTECH_OAI21 U115 ( .A(a[7]), .B(n184), .C(b[7]), .Z(n183) );
  GTECH_NOT U116 ( .A(n141), .Z(n184) );
  GTECH_NOT U117 ( .A(a[7]), .Z(n142) );
  GTECH_OA21 U118 ( .A(n138), .B(n150), .C(n140), .Z(n141) );
  GTECH_NAND2 U119 ( .A(b[6]), .B(a[6]), .Z(n140) );
  GTECH_OA21 U120 ( .A(n146), .B(n154), .C(n148), .Z(n150) );
  GTECH_NAND2 U121 ( .A(b[5]), .B(a[5]), .Z(n148) );
  GTECH_NOR2 U122 ( .A(b[4]), .B(a[4]), .Z(n154) );
  GTECH_NOR2 U123 ( .A(b[5]), .B(a[5]), .Z(n146) );
  GTECH_NOR2 U124 ( .A(b[6]), .B(a[6]), .Z(n138) );
endmodule

