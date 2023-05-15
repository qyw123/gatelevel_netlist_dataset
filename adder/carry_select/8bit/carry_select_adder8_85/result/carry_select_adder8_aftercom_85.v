
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
  GTECH_OAI2N2 U74 ( .A(n148), .B(n149), .C(a[5]), .D(b[5]), .Z(n140) );
  GTECH_XOR2 U75 ( .A(n147), .B(n150), .Z(n145) );
  GTECH_XOR2 U76 ( .A(a[6]), .B(b[6]), .Z(n147) );
  GTECH_MUX2 U77 ( .A(n151), .B(n152), .S(n137), .Z(sum[5]) );
  GTECH_XOR2 U78 ( .A(n153), .B(n154), .Z(n152) );
  GTECH_XNOR2 U79 ( .A(n154), .B(n155), .Z(n151) );
  GTECH_AOI21 U80 ( .A(a[5]), .B(b[5]), .C(n148), .Z(n154) );
  GTECH_NAND2 U81 ( .A(n156), .B(n157), .Z(sum[4]) );
  GTECH_OAI21 U82 ( .A(n153), .B(n155), .C(n158), .Z(n156) );
  GTECH_MUX2 U83 ( .A(n159), .B(n160), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U84 ( .A(n161), .B(n162), .Z(n160) );
  GTECH_XNOR2 U85 ( .A(n161), .B(n163), .Z(n159) );
  GTECH_AOI21 U86 ( .A(n164), .B(n165), .C(n166), .Z(n163) );
  GTECH_XOR2 U87 ( .A(a[3]), .B(b[3]), .Z(n161) );
  GTECH_MUX2 U88 ( .A(n167), .B(n168), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U89 ( .A(n169), .B(n170), .Z(n168) );
  GTECH_XNOR2 U90 ( .A(n165), .B(n170), .Z(n167) );
  GTECH_OR_NOT U91 ( .A(n166), .B(n164), .Z(n170) );
  GTECH_AO21 U92 ( .A(n171), .B(n172), .C(n173), .Z(n165) );
  GTECH_MUX2 U93 ( .A(n174), .B(n175), .S(n176), .Z(sum[1]) );
  GTECH_AND_NOT U94 ( .A(n171), .B(n173), .Z(n176) );
  GTECH_OAI21 U95 ( .A(cin), .B(n172), .C(n177), .Z(n175) );
  GTECH_AO21 U96 ( .A(n177), .B(cin), .C(n172), .Z(n174) );
  GTECH_AND2 U97 ( .A(a[0]), .B(b[0]), .Z(n172) );
  GTECH_XOR2 U98 ( .A(cin), .B(n178), .Z(sum[0]) );
  GTECH_OAI21 U99 ( .A(n179), .B(n137), .C(n157), .Z(cout) );
  GTECH_OR3 U100 ( .A(n155), .B(n153), .C(n158), .Z(n157) );
  GTECH_NOT U101 ( .A(n149), .Z(n153) );
  GTECH_NAND2 U102 ( .A(a[4]), .B(b[4]), .Z(n149) );
  GTECH_NOT U103 ( .A(n158), .Z(n137) );
  GTECH_MUX2 U104 ( .A(n178), .B(n180), .S(cin), .Z(n158) );
  GTECH_OA21 U105 ( .A(a[3]), .B(n162), .C(n181), .Z(n180) );
  GTECH_AO21 U106 ( .A(n162), .B(a[3]), .C(b[3]), .Z(n181) );
  GTECH_AO21 U107 ( .A(n169), .B(n164), .C(n166), .Z(n162) );
  GTECH_AND_NOT U108 ( .A(b[2]), .B(n182), .Z(n166) );
  GTECH_OR_NOT U109 ( .A(b[2]), .B(n182), .Z(n164) );
  GTECH_NOT U110 ( .A(a[2]), .Z(n182) );
  GTECH_AO21 U111 ( .A(n171), .B(n177), .C(n173), .Z(n169) );
  GTECH_AND2 U112 ( .A(b[1]), .B(a[1]), .Z(n173) );
  GTECH_OR_NOT U113 ( .A(a[0]), .B(n183), .Z(n177) );
  GTECH_NOT U114 ( .A(n184), .Z(n171) );
  GTECH_NOR2 U115 ( .A(b[1]), .B(a[1]), .Z(n184) );
  GTECH_XNOR2 U116 ( .A(a[0]), .B(n183), .Z(n178) );
  GTECH_NOT U117 ( .A(b[0]), .Z(n183) );
  GTECH_OA21 U118 ( .A(n142), .B(n143), .C(n185), .Z(n179) );
  GTECH_AO21 U119 ( .A(n143), .B(n142), .C(n144), .Z(n185) );
  GTECH_NOT U120 ( .A(b[7]), .Z(n144) );
  GTECH_NOT U121 ( .A(a[7]), .Z(n143) );
  GTECH_AOI21 U122 ( .A(n150), .B(a[6]), .C(n186), .Z(n142) );
  GTECH_OA21 U123 ( .A(a[6]), .B(n150), .C(b[6]), .Z(n186) );
  GTECH_OAI2N2 U124 ( .A(n155), .B(n148), .C(a[5]), .D(b[5]), .Z(n150) );
  GTECH_NOR2 U125 ( .A(a[5]), .B(b[5]), .Z(n148) );
  GTECH_NOR2 U126 ( .A(b[4]), .B(a[4]), .Z(n155) );
endmodule

