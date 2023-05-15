
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
         n178, n179, n180, n181, n182, n183, n184, n185, n186;

  GTECH_MUX2 U65 ( .A(n134), .B(n135), .S(n136), .Z(sum[7]) );
  GTECH_XOR2 U66 ( .A(n137), .B(n138), .Z(n135) );
  GTECH_OA21 U67 ( .A(n139), .B(n140), .C(n141), .Z(n138) );
  GTECH_NOR2 U68 ( .A(b[6]), .B(a[6]), .Z(n139) );
  GTECH_XNOR2 U69 ( .A(n137), .B(n142), .Z(n134) );
  GTECH_XOR2 U70 ( .A(n143), .B(b[7]), .Z(n137) );
  GTECH_MUX2 U71 ( .A(n144), .B(n145), .S(n136), .Z(sum[6]) );
  GTECH_XNOR2 U72 ( .A(n146), .B(n140), .Z(n145) );
  GTECH_OA21 U73 ( .A(n147), .B(n148), .C(n149), .Z(n140) );
  GTECH_XOR2 U74 ( .A(n146), .B(n150), .Z(n144) );
  GTECH_OA21 U75 ( .A(b[6]), .B(a[6]), .C(n141), .Z(n146) );
  GTECH_MUX2 U76 ( .A(n151), .B(n152), .S(n136), .Z(sum[5]) );
  GTECH_XNOR2 U77 ( .A(n148), .B(n153), .Z(n152) );
  GTECH_XNOR2 U78 ( .A(n153), .B(n154), .Z(n151) );
  GTECH_AND_NOT U79 ( .A(n149), .B(n147), .Z(n153) );
  GTECH_NAND2 U80 ( .A(n155), .B(n156), .Z(sum[4]) );
  GTECH_AO21 U81 ( .A(n148), .B(n157), .C(n136), .Z(n155) );
  GTECH_NOT U82 ( .A(n154), .Z(n157) );
  GTECH_NOT U83 ( .A(n158), .Z(n148) );
  GTECH_MUX2 U84 ( .A(n159), .B(n160), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U85 ( .A(n161), .B(n162), .Z(n160) );
  GTECH_XNOR2 U86 ( .A(n161), .B(n163), .Z(n159) );
  GTECH_OA21 U87 ( .A(n164), .B(n165), .C(n166), .Z(n163) );
  GTECH_XOR2 U88 ( .A(a[3]), .B(b[3]), .Z(n161) );
  GTECH_MUX2 U89 ( .A(n167), .B(n168), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U90 ( .A(n169), .B(n170), .Z(n168) );
  GTECH_XNOR2 U91 ( .A(n169), .B(n165), .Z(n167) );
  GTECH_OA21 U92 ( .A(n171), .B(n172), .C(n173), .Z(n165) );
  GTECH_AND_NOT U93 ( .A(n166), .B(n164), .Z(n169) );
  GTECH_MUX2 U94 ( .A(n174), .B(n175), .S(n176), .Z(sum[1]) );
  GTECH_AND_NOT U95 ( .A(n173), .B(n171), .Z(n176) );
  GTECH_AO21 U96 ( .A(n177), .B(n172), .C(n178), .Z(n175) );
  GTECH_OAI21 U97 ( .A(n178), .B(n177), .C(n172), .Z(n174) );
  GTECH_XNOR2 U98 ( .A(n177), .B(n179), .Z(sum[0]) );
  GTECH_NOT U99 ( .A(cin), .Z(n177) );
  GTECH_OAI21 U100 ( .A(n180), .B(n136), .C(n156), .Z(cout) );
  GTECH_OR3 U101 ( .A(n154), .B(n158), .C(n181), .Z(n156) );
  GTECH_ADD_AB U102 ( .A(b[4]), .B(a[4]), .COUT(n158) );
  GTECH_NOT U103 ( .A(n181), .Z(n136) );
  GTECH_MUX2 U104 ( .A(n179), .B(n182), .S(cin), .Z(n181) );
  GTECH_OA21 U105 ( .A(a[3]), .B(n162), .C(n183), .Z(n182) );
  GTECH_AO21 U106 ( .A(n162), .B(a[3]), .C(b[3]), .Z(n183) );
  GTECH_OAI21 U107 ( .A(n164), .B(n170), .C(n166), .Z(n162) );
  GTECH_NAND2 U108 ( .A(a[2]), .B(b[2]), .Z(n166) );
  GTECH_OA21 U109 ( .A(n178), .B(n171), .C(n173), .Z(n170) );
  GTECH_NAND2 U110 ( .A(b[1]), .B(a[1]), .Z(n173) );
  GTECH_NOR2 U111 ( .A(a[1]), .B(b[1]), .Z(n171) );
  GTECH_NOR2 U112 ( .A(b[2]), .B(a[2]), .Z(n164) );
  GTECH_AND_NOT U113 ( .A(n172), .B(n178), .Z(n179) );
  GTECH_NOR2 U114 ( .A(a[0]), .B(b[0]), .Z(n178) );
  GTECH_NAND2 U115 ( .A(b[0]), .B(a[0]), .Z(n172) );
  GTECH_OA21 U116 ( .A(n184), .B(n143), .C(n185), .Z(n180) );
  GTECH_OAI21 U117 ( .A(a[7]), .B(n142), .C(b[7]), .Z(n185) );
  GTECH_NOT U118 ( .A(n184), .Z(n142) );
  GTECH_NOT U119 ( .A(a[7]), .Z(n143) );
  GTECH_ADD_AB U120 ( .A(n186), .B(n141), .COUT(n184) );
  GTECH_NAND2 U121 ( .A(a[6]), .B(b[6]), .Z(n141) );
  GTECH_OAI21 U122 ( .A(a[6]), .B(b[6]), .C(n150), .Z(n186) );
  GTECH_OAI21 U123 ( .A(n147), .B(n154), .C(n149), .Z(n150) );
  GTECH_NAND2 U124 ( .A(b[5]), .B(a[5]), .Z(n149) );
  GTECH_NOR2 U125 ( .A(a[4]), .B(b[4]), .Z(n154) );
  GTECH_NOR2 U126 ( .A(a[5]), .B(b[5]), .Z(n147) );
endmodule

