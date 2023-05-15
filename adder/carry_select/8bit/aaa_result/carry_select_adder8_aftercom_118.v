
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
  GTECH_XNOR2 U66 ( .A(n137), .B(n138), .Z(n135) );
  GTECH_OA21 U67 ( .A(a[6]), .B(n139), .C(n140), .Z(n137) );
  GTECH_AO21 U68 ( .A(n139), .B(a[6]), .C(b[6]), .Z(n140) );
  GTECH_XNOR2 U69 ( .A(n138), .B(n141), .Z(n134) );
  GTECH_XNOR2 U70 ( .A(a[7]), .B(b[7]), .Z(n138) );
  GTECH_MUX2 U71 ( .A(n142), .B(n143), .S(n136), .Z(sum[6]) );
  GTECH_XOR2 U72 ( .A(n144), .B(n139), .Z(n143) );
  GTECH_OAI2N2 U73 ( .A(n145), .B(n146), .C(a[5]), .D(b[5]), .Z(n139) );
  GTECH_XOR2 U74 ( .A(n144), .B(n147), .Z(n142) );
  GTECH_XOR2 U75 ( .A(a[6]), .B(b[6]), .Z(n144) );
  GTECH_MUX2 U76 ( .A(n148), .B(n149), .S(n136), .Z(sum[5]) );
  GTECH_XOR2 U77 ( .A(n150), .B(n146), .Z(n149) );
  GTECH_XOR2 U78 ( .A(n150), .B(n151), .Z(n148) );
  GTECH_AO21 U79 ( .A(a[5]), .B(b[5]), .C(n145), .Z(n150) );
  GTECH_NAND2 U80 ( .A(n152), .B(n153), .Z(sum[4]) );
  GTECH_AO21 U81 ( .A(n146), .B(n154), .C(n136), .Z(n152) );
  GTECH_MUX2 U82 ( .A(n155), .B(n156), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U83 ( .A(n157), .B(n158), .Z(n156) );
  GTECH_XOR2 U84 ( .A(n157), .B(n159), .Z(n155) );
  GTECH_AND2 U85 ( .A(n160), .B(n161), .Z(n159) );
  GTECH_OAI21 U86 ( .A(b[2]), .B(a[2]), .C(n162), .Z(n160) );
  GTECH_XNOR2 U87 ( .A(a[3]), .B(b[3]), .Z(n157) );
  GTECH_MUX2 U88 ( .A(n163), .B(n164), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U89 ( .A(n165), .B(n166), .Z(n164) );
  GTECH_XOR2 U90 ( .A(n165), .B(n162), .Z(n163) );
  GTECH_OAI21 U91 ( .A(n167), .B(n168), .C(n169), .Z(n162) );
  GTECH_OA21 U92 ( .A(b[2]), .B(a[2]), .C(n161), .Z(n165) );
  GTECH_MUX2 U93 ( .A(n170), .B(n171), .S(n172), .Z(sum[1]) );
  GTECH_AND_NOT U94 ( .A(n169), .B(n167), .Z(n172) );
  GTECH_AO21 U95 ( .A(n173), .B(n168), .C(n174), .Z(n171) );
  GTECH_OAI21 U96 ( .A(n174), .B(n173), .C(n168), .Z(n170) );
  GTECH_NOT U97 ( .A(cin), .Z(n173) );
  GTECH_XNOR2 U98 ( .A(cin), .B(n175), .Z(sum[0]) );
  GTECH_OAI21 U99 ( .A(n176), .B(n136), .C(n153), .Z(cout) );
  GTECH_NAND3 U100 ( .A(n146), .B(n154), .C(n136), .Z(n153) );
  GTECH_NOT U101 ( .A(n151), .Z(n154) );
  GTECH_NAND2 U102 ( .A(a[4]), .B(b[4]), .Z(n146) );
  GTECH_MUX2 U103 ( .A(n175), .B(n177), .S(cin), .Z(n136) );
  GTECH_NOT U104 ( .A(n178), .Z(n177) );
  GTECH_AO21 U105 ( .A(n158), .B(a[3]), .C(n179), .Z(n178) );
  GTECH_NOT U106 ( .A(n180), .Z(n179) );
  GTECH_OAI21 U107 ( .A(a[3]), .B(n158), .C(b[3]), .Z(n180) );
  GTECH_NAND2 U108 ( .A(n181), .B(n161), .Z(n158) );
  GTECH_NAND2 U109 ( .A(a[2]), .B(b[2]), .Z(n161) );
  GTECH_OAI21 U110 ( .A(a[2]), .B(b[2]), .C(n166), .Z(n181) );
  GTECH_OAI21 U111 ( .A(n167), .B(n174), .C(n169), .Z(n166) );
  GTECH_NAND2 U112 ( .A(b[1]), .B(a[1]), .Z(n169) );
  GTECH_NOR2 U113 ( .A(b[1]), .B(a[1]), .Z(n167) );
  GTECH_OR_NOT U114 ( .A(n174), .B(n168), .Z(n175) );
  GTECH_NAND2 U115 ( .A(b[0]), .B(a[0]), .Z(n168) );
  GTECH_NOR2 U116 ( .A(a[0]), .B(b[0]), .Z(n174) );
  GTECH_NOT U117 ( .A(n182), .Z(n176) );
  GTECH_AO21 U118 ( .A(n141), .B(a[7]), .C(n183), .Z(n182) );
  GTECH_OA21 U119 ( .A(a[7]), .B(n141), .C(b[7]), .Z(n183) );
  GTECH_AO21 U120 ( .A(n147), .B(a[6]), .C(n184), .Z(n141) );
  GTECH_OA21 U121 ( .A(a[6]), .B(n147), .C(b[6]), .Z(n184) );
  GTECH_OAI2N2 U122 ( .A(n145), .B(n151), .C(a[5]), .D(b[5]), .Z(n147) );
  GTECH_NOR2 U123 ( .A(b[4]), .B(a[4]), .Z(n151) );
  GTECH_NOR2 U124 ( .A(b[5]), .B(a[5]), .Z(n145) );
endmodule

