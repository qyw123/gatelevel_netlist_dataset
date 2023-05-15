
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
  GTECH_XOR2 U67 ( .A(n137), .B(n139), .Z(n134) );
  GTECH_OA21 U68 ( .A(n140), .B(n141), .C(n142), .Z(n139) );
  GTECH_NOR2 U69 ( .A(a[6]), .B(b[6]), .Z(n140) );
  GTECH_XNOR2 U70 ( .A(a[7]), .B(b[7]), .Z(n137) );
  GTECH_MUX2 U71 ( .A(n143), .B(n144), .S(n136), .Z(sum[6]) );
  GTECH_XNOR2 U72 ( .A(n145), .B(n146), .Z(n144) );
  GTECH_XOR2 U73 ( .A(n145), .B(n141), .Z(n143) );
  GTECH_AOI2N2 U74 ( .A(a[5]), .B(b[5]), .C(n147), .D(n148), .Z(n141) );
  GTECH_OAI21 U75 ( .A(b[6]), .B(a[6]), .C(n142), .Z(n145) );
  GTECH_MUX2 U76 ( .A(n149), .B(n150), .S(n136), .Z(sum[5]) );
  GTECH_XNOR2 U77 ( .A(n151), .B(n152), .Z(n150) );
  GTECH_XNOR2 U78 ( .A(n148), .B(n152), .Z(n149) );
  GTECH_AOI21 U79 ( .A(a[5]), .B(b[5]), .C(n147), .Z(n152) );
  GTECH_NAND2 U80 ( .A(n153), .B(n154), .Z(sum[4]) );
  GTECH_OAI21 U81 ( .A(n155), .B(n151), .C(n136), .Z(n153) );
  GTECH_MUX2 U82 ( .A(n156), .B(n157), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U83 ( .A(n158), .B(n159), .Z(n157) );
  GTECH_XOR2 U84 ( .A(n158), .B(n160), .Z(n156) );
  GTECH_OA21 U85 ( .A(n161), .B(n162), .C(n163), .Z(n160) );
  GTECH_NOR2 U86 ( .A(a[2]), .B(b[2]), .Z(n161) );
  GTECH_XNOR2 U87 ( .A(a[3]), .B(b[3]), .Z(n158) );
  GTECH_MUX2 U88 ( .A(n164), .B(n165), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U89 ( .A(n166), .B(n167), .Z(n165) );
  GTECH_XOR2 U90 ( .A(n166), .B(n162), .Z(n164) );
  GTECH_OA21 U91 ( .A(n168), .B(n169), .C(n170), .Z(n162) );
  GTECH_OAI21 U92 ( .A(b[2]), .B(a[2]), .C(n163), .Z(n166) );
  GTECH_MUX2 U93 ( .A(n171), .B(n172), .S(n173), .Z(sum[1]) );
  GTECH_AND_NOT U94 ( .A(n170), .B(n168), .Z(n173) );
  GTECH_AO21 U95 ( .A(n174), .B(n169), .C(n175), .Z(n172) );
  GTECH_OAI21 U96 ( .A(n175), .B(n174), .C(n169), .Z(n171) );
  GTECH_XOR2 U97 ( .A(n174), .B(n176), .Z(sum[0]) );
  GTECH_NOT U98 ( .A(cin), .Z(n174) );
  GTECH_OAI21 U99 ( .A(n177), .B(n178), .C(n154), .Z(cout) );
  GTECH_OR3 U100 ( .A(n151), .B(n155), .C(n136), .Z(n154) );
  GTECH_NOT U101 ( .A(n178), .Z(n136) );
  GTECH_NOT U102 ( .A(n148), .Z(n155) );
  GTECH_NAND2 U103 ( .A(a[4]), .B(b[4]), .Z(n148) );
  GTECH_MUX2 U104 ( .A(n176), .B(n179), .S(cin), .Z(n178) );
  GTECH_AOI21 U105 ( .A(n159), .B(a[3]), .C(n180), .Z(n179) );
  GTECH_OA21 U106 ( .A(a[3]), .B(n159), .C(b[3]), .Z(n180) );
  GTECH_NAND2 U107 ( .A(n181), .B(n163), .Z(n159) );
  GTECH_NAND2 U108 ( .A(b[2]), .B(a[2]), .Z(n163) );
  GTECH_OAI21 U109 ( .A(a[2]), .B(b[2]), .C(n167), .Z(n181) );
  GTECH_OAI21 U110 ( .A(n175), .B(n168), .C(n170), .Z(n167) );
  GTECH_NAND2 U111 ( .A(b[1]), .B(a[1]), .Z(n170) );
  GTECH_NOR2 U112 ( .A(a[1]), .B(b[1]), .Z(n168) );
  GTECH_NAND2 U113 ( .A(n169), .B(n182), .Z(n176) );
  GTECH_NOT U114 ( .A(n175), .Z(n182) );
  GTECH_NOR2 U115 ( .A(a[0]), .B(b[0]), .Z(n175) );
  GTECH_NAND2 U116 ( .A(b[0]), .B(a[0]), .Z(n169) );
  GTECH_AOI21 U117 ( .A(n138), .B(a[7]), .C(n183), .Z(n177) );
  GTECH_OA21 U118 ( .A(a[7]), .B(n138), .C(b[7]), .Z(n183) );
  GTECH_NAND2 U119 ( .A(n184), .B(n142), .Z(n138) );
  GTECH_NAND2 U120 ( .A(b[6]), .B(a[6]), .Z(n142) );
  GTECH_OAI21 U121 ( .A(a[6]), .B(b[6]), .C(n146), .Z(n184) );
  GTECH_OAI2N2 U122 ( .A(n151), .B(n147), .C(a[5]), .D(b[5]), .Z(n146) );
  GTECH_NOR2 U123 ( .A(b[5]), .B(a[5]), .Z(n147) );
  GTECH_NOR2 U124 ( .A(b[4]), .B(a[4]), .Z(n151) );
endmodule

