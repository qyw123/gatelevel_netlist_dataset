
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
         n182, n183, n184, n185, n186, n187;

  GTECH_MUX2 U69 ( .A(n138), .B(n139), .S(n140), .Z(sum[7]) );
  GTECH_XOR2 U70 ( .A(n141), .B(n142), .Z(n139) );
  GTECH_OA21 U71 ( .A(n143), .B(n144), .C(n145), .Z(n141) );
  GTECH_XOR2 U72 ( .A(n146), .B(n142), .Z(n138) );
  GTECH_XOR2 U73 ( .A(a[7]), .B(b[7]), .Z(n142) );
  GTECH_MUX2 U74 ( .A(n147), .B(n148), .S(n140), .Z(sum[6]) );
  GTECH_XNOR2 U75 ( .A(n149), .B(n144), .Z(n148) );
  GTECH_AOI21 U76 ( .A(n150), .B(n151), .C(n152), .Z(n144) );
  GTECH_XNOR2 U77 ( .A(n149), .B(n153), .Z(n147) );
  GTECH_OAI21 U78 ( .A(a[6]), .B(b[6]), .C(n154), .Z(n149) );
  GTECH_MUX2 U79 ( .A(n155), .B(n156), .S(n140), .Z(sum[5]) );
  GTECH_XOR2 U80 ( .A(n157), .B(n151), .Z(n156) );
  GTECH_NOT U81 ( .A(n158), .Z(n151) );
  GTECH_XOR2 U82 ( .A(n159), .B(n157), .Z(n155) );
  GTECH_OAI21 U83 ( .A(a[5]), .B(b[5]), .C(n150), .Z(n157) );
  GTECH_OR_NOT U84 ( .A(n160), .B(n161), .Z(sum[4]) );
  GTECH_OAI21 U85 ( .A(n158), .B(n159), .C(n162), .Z(n161) );
  GTECH_MUX2 U86 ( .A(n163), .B(n164), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U87 ( .A(n165), .B(n166), .Z(n164) );
  GTECH_XOR2 U88 ( .A(n165), .B(n167), .Z(n163) );
  GTECH_OA21 U89 ( .A(n168), .B(n169), .C(n170), .Z(n167) );
  GTECH_XNOR2 U90 ( .A(a[3]), .B(b[3]), .Z(n165) );
  GTECH_MUX2 U91 ( .A(n171), .B(n172), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U92 ( .A(n173), .B(n174), .Z(n172) );
  GTECH_XNOR2 U93 ( .A(n169), .B(n173), .Z(n171) );
  GTECH_AND_NOT U94 ( .A(n170), .B(n168), .Z(n173) );
  GTECH_AOI21 U95 ( .A(n175), .B(n176), .C(n177), .Z(n169) );
  GTECH_MUX2 U96 ( .A(n178), .B(n179), .S(n180), .Z(sum[1]) );
  GTECH_AND_NOT U97 ( .A(n175), .B(n177), .Z(n180) );
  GTECH_OAI21 U98 ( .A(cin), .B(n176), .C(n181), .Z(n179) );
  GTECH_AO21 U99 ( .A(n181), .B(cin), .C(n176), .Z(n178) );
  GTECH_ADD_AB U100 ( .A(b[0]), .B(a[0]), .COUT(n176) );
  GTECH_XNOR2 U101 ( .A(cin), .B(n182), .Z(sum[0]) );
  GTECH_AO21 U102 ( .A(n162), .B(n183), .C(n160), .Z(cout) );
  GTECH_NOR3 U103 ( .A(n158), .B(n159), .C(n162), .Z(n160) );
  GTECH_ADD_AB U104 ( .A(a[4]), .B(b[4]), .COUT(n158) );
  GTECH_ADD_ABC U105 ( .A(a[7]), .B(n146), .C(b[7]), .COUT(n183) );
  GTECH_OA21 U106 ( .A(n143), .B(n153), .C(n145), .Z(n146) );
  GTECH_OR2 U107 ( .A(b[6]), .B(a[6]), .Z(n145) );
  GTECH_AOI21 U108 ( .A(n150), .B(n159), .C(n152), .Z(n153) );
  GTECH_NOT U109 ( .A(n184), .Z(n152) );
  GTECH_OR2 U110 ( .A(b[5]), .B(a[5]), .Z(n184) );
  GTECH_NOR2 U111 ( .A(b[4]), .B(a[4]), .Z(n159) );
  GTECH_NAND2 U112 ( .A(a[5]), .B(b[5]), .Z(n150) );
  GTECH_NOT U113 ( .A(n154), .Z(n143) );
  GTECH_NAND2 U114 ( .A(a[6]), .B(b[6]), .Z(n154) );
  GTECH_NOT U115 ( .A(n140), .Z(n162) );
  GTECH_MUX2 U116 ( .A(n182), .B(n185), .S(cin), .Z(n140) );
  GTECH_AOI21 U117 ( .A(n166), .B(a[3]), .C(n186), .Z(n185) );
  GTECH_OA21 U118 ( .A(a[3]), .B(n166), .C(b[3]), .Z(n186) );
  GTECH_OAI21 U119 ( .A(n174), .B(n168), .C(n170), .Z(n166) );
  GTECH_NAND2 U120 ( .A(b[2]), .B(a[2]), .Z(n170) );
  GTECH_NOR2 U121 ( .A(a[2]), .B(b[2]), .Z(n168) );
  GTECH_AOI21 U122 ( .A(n181), .B(n175), .C(n177), .Z(n174) );
  GTECH_ADD_AB U123 ( .A(a[1]), .B(b[1]), .COUT(n177) );
  GTECH_OR2 U124 ( .A(b[1]), .B(a[1]), .Z(n175) );
  GTECH_OR2 U125 ( .A(b[0]), .B(a[0]), .Z(n181) );
  GTECH_XOR2 U126 ( .A(n187), .B(b[0]), .Z(n182) );
  GTECH_NOT U127 ( .A(a[0]), .Z(n187) );
endmodule

