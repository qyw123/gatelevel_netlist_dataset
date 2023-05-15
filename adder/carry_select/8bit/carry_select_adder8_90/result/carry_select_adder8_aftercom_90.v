
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
         n178, n179, n180, n181, n182, n183, n184, n185;

  GTECH_OAI22 U65 ( .A(n134), .B(n135), .C(n136), .D(n137), .Z(sum[7]) );
  GTECH_XNOR2 U66 ( .A(n138), .B(n139), .Z(n136) );
  GTECH_AND2 U67 ( .A(n140), .B(n141), .Z(n138) );
  GTECH_OAI21 U68 ( .A(b[6]), .B(a[6]), .C(n142), .Z(n141) );
  GTECH_XOR2 U69 ( .A(n143), .B(n139), .Z(n134) );
  GTECH_XNOR2 U70 ( .A(a[7]), .B(b[7]), .Z(n139) );
  GTECH_OAI22 U71 ( .A(n144), .B(n135), .C(n145), .D(n137), .Z(sum[6]) );
  GTECH_XOR2 U72 ( .A(n142), .B(n146), .Z(n145) );
  GTECH_AO21 U73 ( .A(n147), .B(n148), .C(n149), .Z(n142) );
  GTECH_XOR2 U74 ( .A(n150), .B(n146), .Z(n144) );
  GTECH_OAI21 U75 ( .A(b[6]), .B(a[6]), .C(n140), .Z(n146) );
  GTECH_OAI22 U76 ( .A(n151), .B(n135), .C(n137), .D(n152), .Z(sum[5]) );
  GTECH_XNOR2 U77 ( .A(n153), .B(n148), .Z(n152) );
  GTECH_XOR2 U78 ( .A(n154), .B(n153), .Z(n151) );
  GTECH_AND_NOT U79 ( .A(n147), .B(n149), .Z(n153) );
  GTECH_NAND2 U80 ( .A(n155), .B(n156), .Z(sum[4]) );
  GTECH_OAI21 U81 ( .A(n148), .B(n154), .C(n137), .Z(n155) );
  GTECH_OAI22 U82 ( .A(n157), .B(n158), .C(cin), .D(n159), .Z(sum[3]) );
  GTECH_XNOR2 U83 ( .A(n160), .B(n161), .Z(n159) );
  GTECH_OA21 U84 ( .A(n162), .B(n163), .C(n164), .Z(n160) );
  GTECH_XOR2 U85 ( .A(n165), .B(n161), .Z(n158) );
  GTECH_XNOR2 U86 ( .A(a[3]), .B(b[3]), .Z(n161) );
  GTECH_OAI22 U87 ( .A(n157), .B(n166), .C(cin), .D(n167), .Z(sum[2]) );
  GTECH_XNOR2 U88 ( .A(n163), .B(n168), .Z(n167) );
  GTECH_OA21 U89 ( .A(n169), .B(n170), .C(n171), .Z(n163) );
  GTECH_XNOR2 U90 ( .A(n172), .B(n168), .Z(n166) );
  GTECH_OR_NOT U91 ( .A(n162), .B(n164), .Z(n168) );
  GTECH_OAI2N2 U92 ( .A(n173), .B(n174), .C(n175), .D(n173), .Z(sum[1]) );
  GTECH_AO21 U93 ( .A(n157), .B(n170), .C(n176), .Z(n175) );
  GTECH_OA21 U94 ( .A(n176), .B(n157), .C(n170), .Z(n174) );
  GTECH_AND_NOT U95 ( .A(n171), .B(n169), .Z(n173) );
  GTECH_XNOR2 U96 ( .A(n157), .B(n177), .Z(sum[0]) );
  GTECH_OAI21 U97 ( .A(n178), .B(n135), .C(n156), .Z(cout) );
  GTECH_OR3 U98 ( .A(n154), .B(n148), .C(n137), .Z(n156) );
  GTECH_NOT U99 ( .A(n135), .Z(n137) );
  GTECH_AND2 U100 ( .A(b[4]), .B(a[4]), .Z(n148) );
  GTECH_OAI22 U101 ( .A(n179), .B(n157), .C(cin), .D(n177), .Z(n135) );
  GTECH_AND_NOT U102 ( .A(n170), .B(n176), .Z(n177) );
  GTECH_NAND2 U103 ( .A(b[0]), .B(a[0]), .Z(n170) );
  GTECH_NOT U104 ( .A(cin), .Z(n157) );
  GTECH_OA21 U105 ( .A(a[3]), .B(n165), .C(n180), .Z(n179) );
  GTECH_AO21 U106 ( .A(n165), .B(a[3]), .C(b[3]), .Z(n180) );
  GTECH_OAI21 U107 ( .A(n162), .B(n172), .C(n164), .Z(n165) );
  GTECH_NAND2 U108 ( .A(a[2]), .B(b[2]), .Z(n164) );
  GTECH_OA21 U109 ( .A(n176), .B(n169), .C(n171), .Z(n172) );
  GTECH_NAND2 U110 ( .A(b[1]), .B(a[1]), .Z(n171) );
  GTECH_NOR2 U111 ( .A(b[1]), .B(a[1]), .Z(n169) );
  GTECH_NOR2 U112 ( .A(a[0]), .B(b[0]), .Z(n176) );
  GTECH_NOR2 U113 ( .A(b[2]), .B(a[2]), .Z(n162) );
  GTECH_OA21 U114 ( .A(n181), .B(n182), .C(n183), .Z(n178) );
  GTECH_OAI21 U115 ( .A(a[7]), .B(n143), .C(b[7]), .Z(n183) );
  GTECH_NOT U116 ( .A(n181), .Z(n143) );
  GTECH_NOT U117 ( .A(a[7]), .Z(n182) );
  GTECH_AND2 U118 ( .A(n184), .B(n140), .Z(n181) );
  GTECH_NAND2 U119 ( .A(b[6]), .B(a[6]), .Z(n140) );
  GTECH_OAI21 U120 ( .A(a[6]), .B(b[6]), .C(n150), .Z(n184) );
  GTECH_AO21 U121 ( .A(n147), .B(n185), .C(n149), .Z(n150) );
  GTECH_AND2 U122 ( .A(b[5]), .B(a[5]), .Z(n149) );
  GTECH_NOT U123 ( .A(n154), .Z(n185) );
  GTECH_NOR2 U124 ( .A(a[4]), .B(b[4]), .Z(n154) );
  GTECH_OR2 U125 ( .A(a[5]), .B(b[5]), .Z(n147) );
endmodule

