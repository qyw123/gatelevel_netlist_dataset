
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
         n183, n184, n185, n186;

  GTECH_MUX2 U70 ( .A(n139), .B(n140), .S(n141), .Z(sum[7]) );
  GTECH_XNOR2 U71 ( .A(n142), .B(n143), .Z(n140) );
  GTECH_AND2 U72 ( .A(n144), .B(n145), .Z(n142) );
  GTECH_OAI21 U73 ( .A(b[6]), .B(a[6]), .C(n146), .Z(n144) );
  GTECH_ADD_AB U74 ( .A(n147), .B(n143), .S(n139) );
  GTECH_ADD_AB U75 ( .A(b[7]), .B(a[7]), .S(n143) );
  GTECH_OAI21 U76 ( .A(n148), .B(n145), .C(n149), .Z(sum[6]) );
  GTECH_MUX2 U77 ( .A(n150), .B(n151), .S(b[6]), .Z(n149) );
  GTECH_OR_NOT U78 ( .A(a[6]), .B(n148), .Z(n151) );
  GTECH_ADD_AB U79 ( .A(a[6]), .B(n148), .S(n150) );
  GTECH_AOI21 U80 ( .A(n152), .B(n153), .C(n146), .Z(n148) );
  GTECH_AO21 U81 ( .A(n154), .B(n155), .C(n156), .Z(n146) );
  GTECH_MUX2 U82 ( .A(n157), .B(n158), .S(n159), .Z(sum[5]) );
  GTECH_AOI21 U83 ( .A(n160), .B(n153), .C(n155), .Z(n159) );
  GTECH_NOT U84 ( .A(n141), .Z(n153) );
  GTECH_ADD_AB U85 ( .A(b[5]), .B(a[5]), .S(n158) );
  GTECH_OR_NOT U86 ( .A(n156), .B(n154), .Z(n157) );
  GTECH_OAI21 U87 ( .A(n161), .B(n141), .C(n162), .Z(sum[4]) );
  GTECH_MUX2 U88 ( .A(n163), .B(n164), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U89 ( .A(n165), .B(n166), .Z(n164) );
  GTECH_XNOR2 U90 ( .A(n167), .B(n166), .Z(n163) );
  GTECH_XNOR2 U91 ( .A(b[3]), .B(a[3]), .Z(n166) );
  GTECH_ADD_ABC U92 ( .A(a[2]), .B(n168), .C(b[2]), .COUT(n167) );
  GTECH_MUX2 U93 ( .A(n169), .B(n170), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U94 ( .A(n171), .B(n172), .Z(n170) );
  GTECH_XNOR2 U95 ( .A(n168), .B(n172), .Z(n169) );
  GTECH_XNOR2 U96 ( .A(b[2]), .B(a[2]), .Z(n172) );
  GTECH_OA21 U97 ( .A(n173), .B(n174), .C(n175), .Z(n168) );
  GTECH_MUX2 U98 ( .A(n176), .B(n177), .S(n178), .Z(sum[1]) );
  GTECH_AND_NOT U99 ( .A(n175), .B(n173), .Z(n178) );
  GTECH_OAI21 U100 ( .A(cin), .B(n174), .C(n179), .Z(n177) );
  GTECH_AO21 U101 ( .A(n179), .B(cin), .C(n174), .Z(n176) );
  GTECH_AND_NOT U102 ( .A(a[0]), .B(n180), .Z(n174) );
  GTECH_XNOR2 U103 ( .A(cin), .B(n181), .Z(sum[0]) );
  GTECH_OAI21 U104 ( .A(n182), .B(n141), .C(n162), .Z(cout) );
  GTECH_NAND2 U105 ( .A(n141), .B(n161), .Z(n162) );
  GTECH_AND_NOT U106 ( .A(n160), .B(n155), .Z(n161) );
  GTECH_AND2 U107 ( .A(b[4]), .B(a[4]), .Z(n155) );
  GTECH_MUX2 U108 ( .A(n181), .B(n183), .S(cin), .Z(n141) );
  GTECH_AOI21 U109 ( .A(n165), .B(a[3]), .C(n184), .Z(n183) );
  GTECH_OA21 U110 ( .A(a[3]), .B(n165), .C(b[3]), .Z(n184) );
  GTECH_ADD_ABC U111 ( .A(n171), .B(a[2]), .C(b[2]), .COUT(n165) );
  GTECH_OA21 U112 ( .A(n173), .B(n179), .C(n175), .Z(n171) );
  GTECH_OR2 U113 ( .A(a[1]), .B(b[1]), .Z(n175) );
  GTECH_OR_NOT U114 ( .A(a[0]), .B(n180), .Z(n179) );
  GTECH_NOT U115 ( .A(b[0]), .Z(n180) );
  GTECH_AND2 U116 ( .A(b[1]), .B(a[1]), .Z(n173) );
  GTECH_XNOR2 U117 ( .A(b[0]), .B(a[0]), .Z(n181) );
  GTECH_AOI21 U118 ( .A(n147), .B(a[7]), .C(n185), .Z(n182) );
  GTECH_OA21 U119 ( .A(a[7]), .B(n147), .C(b[7]), .Z(n185) );
  GTECH_NAND2 U120 ( .A(n186), .B(n145), .Z(n147) );
  GTECH_NAND2 U121 ( .A(b[6]), .B(a[6]), .Z(n145) );
  GTECH_OAI21 U122 ( .A(a[6]), .B(b[6]), .C(n152), .Z(n186) );
  GTECH_AO21 U123 ( .A(n160), .B(n154), .C(n156), .Z(n152) );
  GTECH_AND2 U124 ( .A(b[5]), .B(a[5]), .Z(n156) );
  GTECH_OR2 U125 ( .A(a[5]), .B(b[5]), .Z(n154) );
  GTECH_OR2 U126 ( .A(a[4]), .B(b[4]), .Z(n160) );
endmodule

