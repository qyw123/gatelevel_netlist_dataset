
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
         n178, n179, n180, n181, n182, n183, n184;

  GTECH_MUX2 U65 ( .A(n134), .B(n135), .S(n136), .Z(sum[7]) );
  GTECH_XOR2 U66 ( .A(n137), .B(n138), .Z(n135) );
  GTECH_XOR2 U67 ( .A(n137), .B(n139), .Z(n134) );
  GTECH_AND2 U68 ( .A(n140), .B(n141), .Z(n139) );
  GTECH_OAI21 U69 ( .A(b[6]), .B(a[6]), .C(n142), .Z(n140) );
  GTECH_XNOR2 U70 ( .A(a[7]), .B(b[7]), .Z(n137) );
  GTECH_MUX2 U71 ( .A(n143), .B(n144), .S(n136), .Z(sum[6]) );
  GTECH_XOR2 U72 ( .A(n145), .B(n146), .Z(n144) );
  GTECH_XOR2 U73 ( .A(n145), .B(n142), .Z(n143) );
  GTECH_AO21 U74 ( .A(n147), .B(n148), .C(n149), .Z(n142) );
  GTECH_OA21 U75 ( .A(b[6]), .B(a[6]), .C(n141), .Z(n145) );
  GTECH_MUX2 U76 ( .A(n150), .B(n151), .S(n136), .Z(sum[5]) );
  GTECH_XOR2 U77 ( .A(n152), .B(n153), .Z(n151) );
  GTECH_XOR2 U78 ( .A(n148), .B(n152), .Z(n150) );
  GTECH_AND_NOT U79 ( .A(n147), .B(n149), .Z(n152) );
  GTECH_NAND2 U80 ( .A(n154), .B(n155), .Z(sum[4]) );
  GTECH_OAI21 U81 ( .A(n148), .B(n156), .C(n136), .Z(n154) );
  GTECH_MUX2 U82 ( .A(n157), .B(n158), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U83 ( .A(n159), .B(n160), .Z(n158) );
  GTECH_XOR2 U84 ( .A(n159), .B(n161), .Z(n157) );
  GTECH_AO21 U85 ( .A(n162), .B(n163), .C(n164), .Z(n161) );
  GTECH_XOR2 U86 ( .A(a[3]), .B(b[3]), .Z(n159) );
  GTECH_MUX2 U87 ( .A(n165), .B(n166), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U88 ( .A(n167), .B(n168), .Z(n166) );
  GTECH_XOR2 U89 ( .A(n167), .B(n163), .Z(n165) );
  GTECH_AO21 U90 ( .A(n169), .B(n170), .C(n171), .Z(n163) );
  GTECH_AND_NOT U91 ( .A(n162), .B(n164), .Z(n167) );
  GTECH_MUX2 U92 ( .A(n172), .B(n173), .S(n174), .Z(sum[1]) );
  GTECH_AND_NOT U93 ( .A(n169), .B(n171), .Z(n174) );
  GTECH_OAI21 U94 ( .A(cin), .B(n170), .C(n175), .Z(n173) );
  GTECH_AO21 U95 ( .A(n175), .B(cin), .C(n170), .Z(n172) );
  GTECH_XOR2 U96 ( .A(cin), .B(n176), .Z(sum[0]) );
  GTECH_OAI21 U97 ( .A(n177), .B(n178), .C(n155), .Z(cout) );
  GTECH_OR3 U98 ( .A(n156), .B(n148), .C(n136), .Z(n155) );
  GTECH_AND2 U99 ( .A(b[4]), .B(a[4]), .Z(n148) );
  GTECH_NOT U100 ( .A(n153), .Z(n156) );
  GTECH_NOT U101 ( .A(n136), .Z(n178) );
  GTECH_MUX2 U102 ( .A(n176), .B(n179), .S(cin), .Z(n136) );
  GTECH_OA21 U103 ( .A(a[3]), .B(n160), .C(n180), .Z(n179) );
  GTECH_AO21 U104 ( .A(n160), .B(a[3]), .C(b[3]), .Z(n180) );
  GTECH_AO21 U105 ( .A(n162), .B(n168), .C(n164), .Z(n160) );
  GTECH_AND2 U106 ( .A(a[2]), .B(b[2]), .Z(n164) );
  GTECH_AO21 U107 ( .A(n175), .B(n169), .C(n171), .Z(n168) );
  GTECH_AND2 U108 ( .A(b[1]), .B(a[1]), .Z(n171) );
  GTECH_OR2 U109 ( .A(b[1]), .B(a[1]), .Z(n169) );
  GTECH_OR2 U110 ( .A(b[2]), .B(a[2]), .Z(n162) );
  GTECH_AND_NOT U111 ( .A(n175), .B(n170), .Z(n176) );
  GTECH_AND2 U112 ( .A(b[0]), .B(a[0]), .Z(n170) );
  GTECH_OR2 U113 ( .A(a[0]), .B(b[0]), .Z(n175) );
  GTECH_OA21 U114 ( .A(n138), .B(n181), .C(n182), .Z(n177) );
  GTECH_OAI21 U115 ( .A(a[7]), .B(n183), .C(b[7]), .Z(n182) );
  GTECH_NOT U116 ( .A(a[7]), .Z(n181) );
  GTECH_NOT U117 ( .A(n183), .Z(n138) );
  GTECH_NAND2 U118 ( .A(n184), .B(n141), .Z(n183) );
  GTECH_NAND2 U119 ( .A(b[6]), .B(a[6]), .Z(n141) );
  GTECH_OAI21 U120 ( .A(a[6]), .B(b[6]), .C(n146), .Z(n184) );
  GTECH_AO21 U121 ( .A(n147), .B(n153), .C(n149), .Z(n146) );
  GTECH_AND2 U122 ( .A(b[5]), .B(a[5]), .Z(n149) );
  GTECH_OR2 U123 ( .A(a[4]), .B(b[4]), .Z(n153) );
  GTECH_OR2 U124 ( .A(a[5]), .B(b[5]), .Z(n147) );
endmodule

