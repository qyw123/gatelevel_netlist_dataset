
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187;

  GTECH_MUX2 U70 ( .A(n139), .B(n140), .S(n141), .Z(sum[7]) );
  GTECH_XOR2 U71 ( .A(n142), .B(n143), .Z(n140) );
  GTECH_XOR2 U72 ( .A(n144), .B(n143), .Z(n139) );
  GTECH_XOR2 U73 ( .A(a[7]), .B(b[7]), .Z(n143) );
  GTECH_OA21 U74 ( .A(n145), .B(n146), .C(n147), .Z(n144) );
  GTECH_MUX2 U75 ( .A(n148), .B(n149), .S(n141), .Z(sum[6]) );
  GTECH_XOR2 U76 ( .A(n150), .B(n151), .Z(n149) );
  GTECH_XOR2 U77 ( .A(n150), .B(n146), .Z(n148) );
  GTECH_AOI21 U78 ( .A(n152), .B(n153), .C(n154), .Z(n146) );
  GTECH_NOT U79 ( .A(n155), .Z(n153) );
  GTECH_AOI21 U80 ( .A(n156), .B(n157), .C(n145), .Z(n150) );
  GTECH_NOT U81 ( .A(b[6]), .Z(n157) );
  GTECH_MUX2 U82 ( .A(n158), .B(n159), .S(n141), .Z(sum[5]) );
  GTECH_XOR2 U83 ( .A(n160), .B(n161), .Z(n159) );
  GTECH_XNOR2 U84 ( .A(n155), .B(n160), .Z(n158) );
  GTECH_OAI21 U85 ( .A(a[5]), .B(b[5]), .C(n152), .Z(n160) );
  GTECH_OR_NOT U86 ( .A(n162), .B(n163), .Z(sum[4]) );
  GTECH_OAI21 U87 ( .A(n155), .B(n161), .C(n141), .Z(n163) );
  GTECH_MUX2 U88 ( .A(n164), .B(n165), .S(n166), .Z(sum[3]) );
  GTECH_XOR2 U89 ( .A(n167), .B(n168), .Z(n165) );
  GTECH_OA21 U90 ( .A(n169), .B(n170), .C(n171), .Z(n168) );
  GTECH_XNOR2 U91 ( .A(n167), .B(n172), .Z(n164) );
  GTECH_XNOR2 U92 ( .A(a[3]), .B(b[3]), .Z(n167) );
  GTECH_MUX2 U93 ( .A(n173), .B(n174), .S(n166), .Z(sum[2]) );
  GTECH_XNOR2 U94 ( .A(n170), .B(n175), .Z(n174) );
  GTECH_OA21 U95 ( .A(n176), .B(n177), .C(n178), .Z(n170) );
  GTECH_XNOR2 U96 ( .A(n179), .B(n175), .Z(n173) );
  GTECH_AND_NOT U97 ( .A(n171), .B(n169), .Z(n175) );
  GTECH_MUX2 U98 ( .A(n180), .B(n181), .S(n182), .Z(sum[1]) );
  GTECH_AND_NOT U99 ( .A(n178), .B(n176), .Z(n182) );
  GTECH_AO21 U100 ( .A(n166), .B(n177), .C(n183), .Z(n181) );
  GTECH_OAI21 U101 ( .A(n183), .B(n166), .C(n177), .Z(n180) );
  GTECH_NAND2 U102 ( .A(a[0]), .B(b[0]), .Z(n177) );
  GTECH_XOR2 U103 ( .A(cin), .B(n184), .Z(sum[0]) );
  GTECH_AO21 U104 ( .A(n141), .B(n185), .C(n162), .Z(cout) );
  GTECH_NOR3 U105 ( .A(n155), .B(n161), .C(n141), .Z(n162) );
  GTECH_AND2 U106 ( .A(a[4]), .B(b[4]), .Z(n155) );
  GTECH_ADD_ABC U107 ( .A(a[7]), .B(n142), .C(b[7]), .COUT(n185) );
  GTECH_OA21 U108 ( .A(n145), .B(n151), .C(n147), .Z(n142) );
  GTECH_OR_NOT U109 ( .A(b[6]), .B(n156), .Z(n147) );
  GTECH_AOI21 U110 ( .A(n152), .B(n161), .C(n154), .Z(n151) );
  GTECH_NOR2 U111 ( .A(b[5]), .B(a[5]), .Z(n154) );
  GTECH_NOR2 U112 ( .A(b[4]), .B(a[4]), .Z(n161) );
  GTECH_NAND2 U113 ( .A(a[5]), .B(b[5]), .Z(n152) );
  GTECH_AND_NOT U114 ( .A(b[6]), .B(n156), .Z(n145) );
  GTECH_NOT U115 ( .A(a[6]), .Z(n156) );
  GTECH_MUX2 U116 ( .A(n186), .B(n184), .S(n166), .Z(n141) );
  GTECH_NOT U117 ( .A(cin), .Z(n166) );
  GTECH_XOR2 U118 ( .A(a[0]), .B(b[0]), .Z(n184) );
  GTECH_OA21 U119 ( .A(a[3]), .B(n172), .C(n187), .Z(n186) );
  GTECH_AO21 U120 ( .A(n172), .B(a[3]), .C(b[3]), .Z(n187) );
  GTECH_OAI21 U121 ( .A(n179), .B(n169), .C(n171), .Z(n172) );
  GTECH_NAND2 U122 ( .A(a[2]), .B(b[2]), .Z(n171) );
  GTECH_NOR2 U123 ( .A(a[2]), .B(b[2]), .Z(n169) );
  GTECH_OA21 U124 ( .A(n176), .B(n183), .C(n178), .Z(n179) );
  GTECH_NAND2 U125 ( .A(a[1]), .B(b[1]), .Z(n178) );
  GTECH_NOR2 U126 ( .A(b[0]), .B(a[0]), .Z(n183) );
  GTECH_NOR2 U127 ( .A(a[1]), .B(b[1]), .Z(n176) );
endmodule

