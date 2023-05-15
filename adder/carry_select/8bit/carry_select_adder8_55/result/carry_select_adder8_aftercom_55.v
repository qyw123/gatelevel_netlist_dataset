
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186;

  GTECH_MUX2 U69 ( .A(n138), .B(n139), .S(n140), .Z(sum[7]) );
  GTECH_XOR2 U70 ( .A(n141), .B(n142), .Z(n139) );
  GTECH_OA21 U71 ( .A(n143), .B(n144), .C(n145), .Z(n142) );
  GTECH_XNOR2 U72 ( .A(n141), .B(n146), .Z(n138) );
  GTECH_XNOR2 U73 ( .A(a[7]), .B(b[7]), .Z(n141) );
  GTECH_MUX2 U74 ( .A(n147), .B(n148), .S(n140), .Z(sum[6]) );
  GTECH_XOR2 U75 ( .A(n143), .B(n149), .Z(n148) );
  GTECH_OA21 U76 ( .A(n150), .B(n151), .C(n152), .Z(n143) );
  GTECH_XOR2 U77 ( .A(n149), .B(n153), .Z(n147) );
  GTECH_OR_NOT U78 ( .A(n144), .B(n145), .Z(n149) );
  GTECH_MUX2 U79 ( .A(n154), .B(n155), .S(n140), .Z(sum[5]) );
  GTECH_XOR2 U80 ( .A(n151), .B(n156), .Z(n155) );
  GTECH_XNOR2 U81 ( .A(n156), .B(n157), .Z(n154) );
  GTECH_OR_NOT U82 ( .A(n150), .B(n152), .Z(n156) );
  GTECH_NAND2 U83 ( .A(n158), .B(n159), .Z(sum[4]) );
  GTECH_AO21 U84 ( .A(n151), .B(n157), .C(n140), .Z(n159) );
  GTECH_MUX2 U85 ( .A(n160), .B(n161), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U86 ( .A(n162), .B(n163), .Z(n161) );
  GTECH_XOR2 U87 ( .A(n162), .B(n164), .Z(n160) );
  GTECH_OA21 U88 ( .A(n165), .B(n166), .C(n167), .Z(n164) );
  GTECH_XNOR2 U89 ( .A(a[3]), .B(b[3]), .Z(n162) );
  GTECH_MUX2 U90 ( .A(n168), .B(n169), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U91 ( .A(n170), .B(n171), .Z(n169) );
  GTECH_XOR2 U92 ( .A(n166), .B(n170), .Z(n168) );
  GTECH_OR_NOT U93 ( .A(n165), .B(n167), .Z(n170) );
  GTECH_AOI21 U94 ( .A(n172), .B(n173), .C(n174), .Z(n166) );
  GTECH_MUX2 U95 ( .A(n175), .B(n176), .S(n177), .Z(sum[1]) );
  GTECH_NOR2 U96 ( .A(n174), .B(n178), .Z(n177) );
  GTECH_OAI21 U97 ( .A(cin), .B(n173), .C(n179), .Z(n176) );
  GTECH_AO21 U98 ( .A(n179), .B(cin), .C(n173), .Z(n175) );
  GTECH_AND2 U99 ( .A(a[0]), .B(b[0]), .Z(n173) );
  GTECH_XNOR2 U100 ( .A(cin), .B(n180), .Z(sum[0]) );
  GTECH_OAI21 U101 ( .A(n181), .B(n140), .C(n158), .Z(cout) );
  GTECH_NAND3 U102 ( .A(n151), .B(n157), .C(n140), .Z(n158) );
  GTECH_NOT U103 ( .A(n182), .Z(n157) );
  GTECH_NAND2 U104 ( .A(b[4]), .B(a[4]), .Z(n151) );
  GTECH_MUX2 U105 ( .A(n180), .B(n183), .S(cin), .Z(n140) );
  GTECH_AOI21 U106 ( .A(n163), .B(a[3]), .C(n184), .Z(n183) );
  GTECH_OA21 U107 ( .A(a[3]), .B(n163), .C(b[3]), .Z(n184) );
  GTECH_OAI21 U108 ( .A(n171), .B(n165), .C(n167), .Z(n163) );
  GTECH_NAND2 U109 ( .A(b[2]), .B(a[2]), .Z(n167) );
  GTECH_NOR2 U110 ( .A(b[2]), .B(a[2]), .Z(n165) );
  GTECH_AOI21 U111 ( .A(n179), .B(n172), .C(n174), .Z(n171) );
  GTECH_AND2 U112 ( .A(b[1]), .B(a[1]), .Z(n174) );
  GTECH_NOT U113 ( .A(n178), .Z(n172) );
  GTECH_NOR2 U114 ( .A(a[1]), .B(b[1]), .Z(n178) );
  GTECH_NOT U115 ( .A(n185), .Z(n179) );
  GTECH_NOR2 U116 ( .A(b[0]), .B(a[0]), .Z(n185) );
  GTECH_XNOR2 U117 ( .A(a[0]), .B(b[0]), .Z(n180) );
  GTECH_AOI21 U118 ( .A(n146), .B(a[7]), .C(n186), .Z(n181) );
  GTECH_OA21 U119 ( .A(a[7]), .B(n146), .C(b[7]), .Z(n186) );
  GTECH_OAI21 U120 ( .A(n153), .B(n144), .C(n145), .Z(n146) );
  GTECH_NAND2 U121 ( .A(b[6]), .B(a[6]), .Z(n145) );
  GTECH_NOR2 U122 ( .A(b[6]), .B(a[6]), .Z(n144) );
  GTECH_OA21 U123 ( .A(n150), .B(n182), .C(n152), .Z(n153) );
  GTECH_NAND2 U124 ( .A(b[5]), .B(a[5]), .Z(n152) );
  GTECH_NOR2 U125 ( .A(a[4]), .B(b[4]), .Z(n182) );
  GTECH_NOR2 U126 ( .A(a[5]), .B(b[5]), .Z(n150) );
endmodule

