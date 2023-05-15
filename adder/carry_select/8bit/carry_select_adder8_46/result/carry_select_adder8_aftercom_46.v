
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
         n179, n180, n181, n182, n183, n184, n185, n186;

  GTECH_MUX2 U66 ( .A(n135), .B(n136), .S(n137), .Z(sum[7]) );
  GTECH_XOR2 U67 ( .A(n138), .B(n139), .Z(n136) );
  GTECH_OA21 U68 ( .A(a[6]), .B(n140), .C(n141), .Z(n138) );
  GTECH_AO21 U69 ( .A(n140), .B(a[6]), .C(b[6]), .Z(n141) );
  GTECH_XNOR2 U70 ( .A(n139), .B(n142), .Z(n135) );
  GTECH_XOR2 U71 ( .A(n143), .B(n144), .Z(n139) );
  GTECH_MUX2 U72 ( .A(n145), .B(n146), .S(n137), .Z(sum[6]) );
  GTECH_XOR2 U73 ( .A(n147), .B(n140), .Z(n146) );
  GTECH_AO21 U74 ( .A(n148), .B(n149), .C(n150), .Z(n140) );
  GTECH_XOR2 U75 ( .A(n147), .B(n151), .Z(n145) );
  GTECH_XOR2 U76 ( .A(a[6]), .B(b[6]), .Z(n147) );
  GTECH_MUX2 U77 ( .A(n152), .B(n153), .S(n137), .Z(sum[5]) );
  GTECH_XNOR2 U78 ( .A(n149), .B(n154), .Z(n153) );
  GTECH_XNOR2 U79 ( .A(n154), .B(n155), .Z(n152) );
  GTECH_OR_NOT U80 ( .A(n150), .B(n148), .Z(n154) );
  GTECH_NAND2 U81 ( .A(n156), .B(n157), .Z(sum[4]) );
  GTECH_OAI21 U82 ( .A(n149), .B(n158), .C(n159), .Z(n157) );
  GTECH_MUX2 U83 ( .A(n160), .B(n161), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U84 ( .A(n162), .B(n163), .Z(n161) );
  GTECH_XNOR2 U85 ( .A(n162), .B(n164), .Z(n160) );
  GTECH_AOI21 U86 ( .A(n165), .B(n166), .C(n167), .Z(n164) );
  GTECH_XOR2 U87 ( .A(a[3]), .B(b[3]), .Z(n162) );
  GTECH_MUX2 U88 ( .A(n168), .B(n169), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U89 ( .A(n170), .B(n171), .Z(n169) );
  GTECH_XNOR2 U90 ( .A(n166), .B(n170), .Z(n168) );
  GTECH_OR_NOT U91 ( .A(n167), .B(n165), .Z(n170) );
  GTECH_AO21 U92 ( .A(n172), .B(n173), .C(n174), .Z(n166) );
  GTECH_MUX2 U93 ( .A(n175), .B(n176), .S(n177), .Z(sum[1]) );
  GTECH_OR_NOT U94 ( .A(n174), .B(n172), .Z(n177) );
  GTECH_AO21 U95 ( .A(n178), .B(cin), .C(n173), .Z(n176) );
  GTECH_OAI21 U96 ( .A(cin), .B(n173), .C(n178), .Z(n175) );
  GTECH_NOR2 U97 ( .A(n179), .B(n180), .Z(n173) );
  GTECH_XOR2 U98 ( .A(cin), .B(n181), .Z(sum[0]) );
  GTECH_OAI21 U99 ( .A(n182), .B(n137), .C(n156), .Z(cout) );
  GTECH_OR3 U100 ( .A(n158), .B(n149), .C(n159), .Z(n156) );
  GTECH_AND2 U101 ( .A(b[4]), .B(a[4]), .Z(n149) );
  GTECH_NOT U102 ( .A(n159), .Z(n137) );
  GTECH_MUX2 U103 ( .A(n181), .B(n183), .S(cin), .Z(n159) );
  GTECH_OA21 U104 ( .A(a[3]), .B(n163), .C(n184), .Z(n183) );
  GTECH_AO21 U105 ( .A(n163), .B(a[3]), .C(b[3]), .Z(n184) );
  GTECH_AO21 U106 ( .A(n171), .B(n165), .C(n167), .Z(n163) );
  GTECH_AND2 U107 ( .A(b[2]), .B(a[2]), .Z(n167) );
  GTECH_OR2 U108 ( .A(b[2]), .B(a[2]), .Z(n165) );
  GTECH_AO21 U109 ( .A(n172), .B(n178), .C(n174), .Z(n171) );
  GTECH_AND2 U110 ( .A(b[1]), .B(a[1]), .Z(n174) );
  GTECH_OR_NOT U111 ( .A(b[0]), .B(n179), .Z(n178) );
  GTECH_OR2 U112 ( .A(a[1]), .B(b[1]), .Z(n172) );
  GTECH_XOR2 U113 ( .A(n179), .B(n180), .Z(n181) );
  GTECH_NOT U114 ( .A(b[0]), .Z(n180) );
  GTECH_NOT U115 ( .A(a[0]), .Z(n179) );
  GTECH_OA21 U116 ( .A(n142), .B(n143), .C(n185), .Z(n182) );
  GTECH_AO21 U117 ( .A(n143), .B(n142), .C(n144), .Z(n185) );
  GTECH_NOT U118 ( .A(b[7]), .Z(n144) );
  GTECH_NOT U119 ( .A(a[7]), .Z(n143) );
  GTECH_AOI21 U120 ( .A(n151), .B(a[6]), .C(n186), .Z(n142) );
  GTECH_OA21 U121 ( .A(a[6]), .B(n151), .C(b[6]), .Z(n186) );
  GTECH_AO21 U122 ( .A(n155), .B(n148), .C(n150), .Z(n151) );
  GTECH_AND2 U123 ( .A(b[5]), .B(a[5]), .Z(n150) );
  GTECH_OR2 U124 ( .A(b[5]), .B(a[5]), .Z(n148) );
  GTECH_NOT U125 ( .A(n158), .Z(n155) );
  GTECH_NOR2 U126 ( .A(a[4]), .B(b[4]), .Z(n158) );
endmodule

