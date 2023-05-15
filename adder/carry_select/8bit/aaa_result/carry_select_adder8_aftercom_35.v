
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
         n183, n184, n185, n186, n187, n188;

  GTECH_OAI2N2 U70 ( .A(n139), .B(n140), .C(n141), .D(n140), .Z(sum[7]) );
  GTECH_ADD_AB U71 ( .A(n142), .B(n143), .S(n141) );
  GTECH_AND_NOT U72 ( .A(n144), .B(n145), .Z(n142) );
  GTECH_AO21 U73 ( .A(n146), .B(n147), .C(n148), .Z(n144) );
  GTECH_ADD_AB U74 ( .A(n149), .B(n143), .S(n139) );
  GTECH_XNOR2 U75 ( .A(b[7]), .B(a[7]), .Z(n143) );
  GTECH_NOT U76 ( .A(n150), .Z(sum[6]) );
  GTECH_AOI222 U77 ( .A(n145), .B(n151), .C(n152), .D(b[6]), .E(n153), .F(n146), .Z(n150) );
  GTECH_XNOR2 U78 ( .A(n147), .B(n151), .Z(n153) );
  GTECH_AND_NOT U79 ( .A(n147), .B(n151), .Z(n152) );
  GTECH_OAI21 U80 ( .A(n154), .B(n140), .C(n148), .Z(n151) );
  GTECH_OA21 U81 ( .A(n155), .B(n156), .C(n157), .Z(n148) );
  GTECH_OAI21 U82 ( .A(n158), .B(n159), .C(n160), .Z(sum[5]) );
  GTECH_OAI21 U83 ( .A(n155), .B(n161), .C(n158), .Z(n160) );
  GTECH_NOT U84 ( .A(n157), .Z(n161) );
  GTECH_XNOR2 U85 ( .A(b[5]), .B(a[5]), .Z(n159) );
  GTECH_OAI21 U86 ( .A(n162), .B(n140), .C(n156), .Z(n158) );
  GTECH_OAI21 U87 ( .A(n163), .B(n140), .C(n164), .Z(sum[4]) );
  GTECH_OAI22 U88 ( .A(n165), .B(n166), .C(cin), .D(n167), .Z(sum[3]) );
  GTECH_ADD_AB U89 ( .A(n168), .B(n169), .S(n167) );
  GTECH_ADD_ABC U90 ( .A(a[2]), .B(n170), .C(b[2]), .COUT(n168) );
  GTECH_ADD_AB U91 ( .A(n171), .B(n169), .S(n166) );
  GTECH_XNOR2 U92 ( .A(b[3]), .B(a[3]), .Z(n169) );
  GTECH_OAI22 U93 ( .A(n165), .B(n172), .C(cin), .D(n173), .Z(sum[2]) );
  GTECH_XNOR2 U94 ( .A(n170), .B(n174), .Z(n173) );
  GTECH_OA21 U95 ( .A(n175), .B(n176), .C(n177), .Z(n170) );
  GTECH_XNOR2 U96 ( .A(n178), .B(n174), .Z(n172) );
  GTECH_ADD_AB U97 ( .A(b[2]), .B(a[2]), .S(n174) );
  GTECH_OAI2N2 U98 ( .A(n179), .B(n180), .C(n181), .D(n179), .Z(sum[1]) );
  GTECH_OAI21 U99 ( .A(cin), .B(n176), .C(n182), .Z(n181) );
  GTECH_AOI21 U100 ( .A(n182), .B(cin), .C(n176), .Z(n180) );
  GTECH_AND2 U101 ( .A(a[0]), .B(b[0]), .Z(n176) );
  GTECH_AND_NOT U102 ( .A(n177), .B(n175), .Z(n179) );
  GTECH_XNOR2 U103 ( .A(n165), .B(n183), .Z(sum[0]) );
  GTECH_OAI21 U104 ( .A(n184), .B(n140), .C(n164), .Z(cout) );
  GTECH_NAND2 U105 ( .A(n140), .B(n163), .Z(n164) );
  GTECH_AND_NOT U106 ( .A(n156), .B(n162), .Z(n163) );
  GTECH_NAND2 U107 ( .A(b[4]), .B(a[4]), .Z(n156) );
  GTECH_AOI2N2 U108 ( .A(n165), .B(n183), .C(n185), .D(n165), .Z(n140) );
  GTECH_AOI21 U109 ( .A(n171), .B(a[3]), .C(n186), .Z(n185) );
  GTECH_OA21 U110 ( .A(a[3]), .B(n171), .C(b[3]), .Z(n186) );
  GTECH_ADD_ABC U111 ( .A(n178), .B(a[2]), .C(b[2]), .COUT(n171) );
  GTECH_OA21 U112 ( .A(n175), .B(n182), .C(n177), .Z(n178) );
  GTECH_OR2 U113 ( .A(a[1]), .B(b[1]), .Z(n177) );
  GTECH_OR2 U114 ( .A(a[0]), .B(b[0]), .Z(n182) );
  GTECH_AND2 U115 ( .A(b[1]), .B(a[1]), .Z(n175) );
  GTECH_ADD_AB U116 ( .A(b[0]), .B(a[0]), .S(n183) );
  GTECH_NOT U117 ( .A(cin), .Z(n165) );
  GTECH_AOI21 U118 ( .A(n149), .B(a[7]), .C(n187), .Z(n184) );
  GTECH_OA21 U119 ( .A(a[7]), .B(n149), .C(b[7]), .Z(n187) );
  GTECH_OR_NOT U120 ( .A(n145), .B(n188), .Z(n149) );
  GTECH_AO21 U121 ( .A(n147), .B(n146), .C(n154), .Z(n188) );
  GTECH_OA21 U122 ( .A(n162), .B(n155), .C(n157), .Z(n154) );
  GTECH_NAND2 U123 ( .A(a[5]), .B(b[5]), .Z(n157) );
  GTECH_NOR2 U124 ( .A(a[5]), .B(b[5]), .Z(n155) );
  GTECH_NOR2 U125 ( .A(a[4]), .B(b[4]), .Z(n162) );
  GTECH_NOT U126 ( .A(b[6]), .Z(n146) );
  GTECH_NOT U127 ( .A(a[6]), .Z(n147) );
  GTECH_AND2 U128 ( .A(b[6]), .B(a[6]), .Z(n145) );
endmodule

