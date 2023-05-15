
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
  GTECH_XNOR2 U67 ( .A(n138), .B(n139), .Z(n136) );
  GTECH_XOR2 U68 ( .A(n138), .B(n140), .Z(n135) );
  GTECH_AOI21 U69 ( .A(n141), .B(n142), .C(n143), .Z(n140) );
  GTECH_XNOR2 U70 ( .A(a[7]), .B(b[7]), .Z(n138) );
  GTECH_MUX2 U71 ( .A(n144), .B(n145), .S(n137), .Z(sum[6]) );
  GTECH_XOR2 U72 ( .A(n146), .B(n147), .Z(n145) );
  GTECH_XOR2 U73 ( .A(n141), .B(n147), .Z(n144) );
  GTECH_AND_NOT U74 ( .A(n142), .B(n143), .Z(n147) );
  GTECH_AOI21 U75 ( .A(n148), .B(n149), .C(n150), .Z(n141) );
  GTECH_MUX2 U76 ( .A(n151), .B(n152), .S(n137), .Z(sum[5]) );
  GTECH_XNOR2 U77 ( .A(n153), .B(n154), .Z(n152) );
  GTECH_XNOR2 U78 ( .A(n149), .B(n153), .Z(n151) );
  GTECH_AOI21 U79 ( .A(n155), .B(n156), .C(n157), .Z(n153) );
  GTECH_NOT U80 ( .A(n158), .Z(n149) );
  GTECH_NAND2 U81 ( .A(n159), .B(n160), .Z(sum[4]) );
  GTECH_NOT U82 ( .A(n161), .Z(n160) );
  GTECH_OAI21 U83 ( .A(n158), .B(n154), .C(n137), .Z(n159) );
  GTECH_MUX2 U84 ( .A(n162), .B(n163), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U85 ( .A(n164), .B(n165), .Z(n163) );
  GTECH_XOR2 U86 ( .A(n166), .B(n164), .Z(n162) );
  GTECH_XOR2 U87 ( .A(a[3]), .B(b[3]), .Z(n164) );
  GTECH_OA22 U88 ( .A(b[2]), .B(n167), .C(a[2]), .D(n168), .Z(n166) );
  GTECH_AND2 U89 ( .A(a[2]), .B(n168), .Z(n167) );
  GTECH_MUX2 U90 ( .A(n169), .B(n170), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U91 ( .A(n171), .B(n172), .Z(n170) );
  GTECH_XOR2 U92 ( .A(n171), .B(n168), .Z(n169) );
  GTECH_AO21 U93 ( .A(n173), .B(n174), .C(n175), .Z(n168) );
  GTECH_XOR2 U94 ( .A(a[2]), .B(b[2]), .Z(n171) );
  GTECH_MUX2 U95 ( .A(n176), .B(n177), .S(n178), .Z(sum[1]) );
  GTECH_AND_NOT U96 ( .A(n173), .B(n175), .Z(n178) );
  GTECH_OAI21 U97 ( .A(cin), .B(n174), .C(n179), .Z(n177) );
  GTECH_AO21 U98 ( .A(n179), .B(cin), .C(n174), .Z(n176) );
  GTECH_XOR2 U99 ( .A(cin), .B(n180), .Z(sum[0]) );
  GTECH_AO21 U100 ( .A(n181), .B(n137), .C(n161), .Z(cout) );
  GTECH_NOR3 U101 ( .A(n158), .B(n154), .C(n137), .Z(n161) );
  GTECH_AND2 U102 ( .A(b[4]), .B(a[4]), .Z(n158) );
  GTECH_MUX2 U103 ( .A(n180), .B(n182), .S(cin), .Z(n137) );
  GTECH_OA22 U104 ( .A(b[3]), .B(n183), .C(a[3]), .D(n165), .Z(n182) );
  GTECH_AND2 U105 ( .A(a[3]), .B(n165), .Z(n183) );
  GTECH_AO21 U106 ( .A(n172), .B(a[2]), .C(n184), .Z(n165) );
  GTECH_NOT U107 ( .A(n185), .Z(n184) );
  GTECH_OAI21 U108 ( .A(a[2]), .B(n172), .C(b[2]), .Z(n185) );
  GTECH_AO21 U109 ( .A(n179), .B(n173), .C(n175), .Z(n172) );
  GTECH_AND2 U110 ( .A(a[1]), .B(b[1]), .Z(n175) );
  GTECH_OR2 U111 ( .A(b[1]), .B(a[1]), .Z(n173) );
  GTECH_AND_NOT U112 ( .A(n179), .B(n174), .Z(n180) );
  GTECH_AND2 U113 ( .A(b[0]), .B(a[0]), .Z(n174) );
  GTECH_OR2 U114 ( .A(b[0]), .B(a[0]), .Z(n179) );
  GTECH_AO22 U115 ( .A(n186), .B(b[7]), .C(n139), .D(a[7]), .Z(n181) );
  GTECH_OR2 U116 ( .A(n139), .B(a[7]), .Z(n186) );
  GTECH_AO21 U117 ( .A(n142), .B(n146), .C(n143), .Z(n139) );
  GTECH_AND2 U118 ( .A(b[6]), .B(a[6]), .Z(n143) );
  GTECH_AOI21 U119 ( .A(n148), .B(n154), .C(n150), .Z(n146) );
  GTECH_AND_NOT U120 ( .A(n155), .B(b[5]), .Z(n150) );
  GTECH_NOR2 U121 ( .A(a[4]), .B(b[4]), .Z(n154) );
  GTECH_NOT U122 ( .A(n157), .Z(n148) );
  GTECH_NOR2 U123 ( .A(n155), .B(n156), .Z(n157) );
  GTECH_NOT U124 ( .A(b[5]), .Z(n156) );
  GTECH_NOT U125 ( .A(a[5]), .Z(n155) );
  GTECH_OR2 U126 ( .A(a[6]), .B(b[6]), .Z(n142) );
endmodule

