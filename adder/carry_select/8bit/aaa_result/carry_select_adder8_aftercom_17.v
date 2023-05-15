
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
         n182, n183, n184;

  GTECH_MUX2 U69 ( .A(n138), .B(n139), .S(n140), .Z(sum[7]) );
  GTECH_ADD_AB U70 ( .A(n141), .B(n142), .S(n139) );
  GTECH_XNOR2 U71 ( .A(n143), .B(n142), .Z(n138) );
  GTECH_ADD_AB U72 ( .A(b[7]), .B(a[7]), .S(n142) );
  GTECH_OA21 U73 ( .A(n144), .B(n145), .C(n146), .Z(n143) );
  GTECH_MUX2 U74 ( .A(n147), .B(n148), .S(n149), .Z(sum[6]) );
  GTECH_OA21 U75 ( .A(n150), .B(n151), .C(n145), .Z(n149) );
  GTECH_AOI21 U76 ( .A(n152), .B(n153), .C(n154), .Z(n145) );
  GTECH_ADD_AB U77 ( .A(b[6]), .B(a[6]), .S(n148) );
  GTECH_NAND2 U78 ( .A(n146), .B(n155), .Z(n147) );
  GTECH_MUX2 U79 ( .A(n156), .B(n157), .S(n158), .Z(sum[5]) );
  GTECH_AOI21 U80 ( .A(n159), .B(n140), .C(n153), .Z(n158) );
  GTECH_NOT U81 ( .A(n151), .Z(n140) );
  GTECH_ADD_AB U82 ( .A(b[5]), .B(a[5]), .S(n157) );
  GTECH_NAND2 U83 ( .A(n152), .B(n160), .Z(n156) );
  GTECH_NOT U84 ( .A(n154), .Z(n160) );
  GTECH_OAI21 U85 ( .A(n161), .B(n151), .C(n162), .Z(sum[4]) );
  GTECH_MUX2 U86 ( .A(n163), .B(n164), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U87 ( .A(n165), .B(n166), .Z(n164) );
  GTECH_XNOR2 U88 ( .A(n167), .B(n166), .Z(n163) );
  GTECH_XNOR2 U89 ( .A(b[3]), .B(a[3]), .Z(n166) );
  GTECH_ADD_ABC U90 ( .A(a[2]), .B(n168), .C(b[2]), .COUT(n167) );
  GTECH_MUX2 U91 ( .A(n169), .B(n170), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U92 ( .A(n171), .B(n172), .Z(n170) );
  GTECH_XNOR2 U93 ( .A(n168), .B(n172), .Z(n169) );
  GTECH_XNOR2 U94 ( .A(b[2]), .B(a[2]), .Z(n172) );
  GTECH_OA21 U95 ( .A(n173), .B(n174), .C(n175), .Z(n168) );
  GTECH_MUX2 U96 ( .A(n176), .B(n177), .S(n178), .Z(sum[1]) );
  GTECH_AND_NOT U97 ( .A(n175), .B(n173), .Z(n178) );
  GTECH_OAI21 U98 ( .A(cin), .B(n174), .C(n179), .Z(n177) );
  GTECH_AO21 U99 ( .A(n179), .B(cin), .C(n174), .Z(n176) );
  GTECH_AND2 U100 ( .A(b[0]), .B(a[0]), .Z(n174) );
  GTECH_XNOR2 U101 ( .A(cin), .B(n180), .Z(sum[0]) );
  GTECH_OAI21 U102 ( .A(n181), .B(n151), .C(n162), .Z(cout) );
  GTECH_NAND2 U103 ( .A(n151), .B(n161), .Z(n162) );
  GTECH_AND_NOT U104 ( .A(n159), .B(n153), .Z(n161) );
  GTECH_AND2 U105 ( .A(b[4]), .B(a[4]), .Z(n153) );
  GTECH_MUX2 U106 ( .A(n180), .B(n182), .S(cin), .Z(n151) );
  GTECH_AOI21 U107 ( .A(n165), .B(a[3]), .C(n183), .Z(n182) );
  GTECH_OA21 U108 ( .A(a[3]), .B(n165), .C(b[3]), .Z(n183) );
  GTECH_ADD_ABC U109 ( .A(n171), .B(a[2]), .C(b[2]), .COUT(n165) );
  GTECH_OA21 U110 ( .A(n173), .B(n179), .C(n175), .Z(n171) );
  GTECH_OR2 U111 ( .A(b[1]), .B(a[1]), .Z(n175) );
  GTECH_OR2 U112 ( .A(a[0]), .B(b[0]), .Z(n179) );
  GTECH_AND2 U113 ( .A(b[1]), .B(a[1]), .Z(n173) );
  GTECH_XNOR2 U114 ( .A(b[0]), .B(a[0]), .Z(n180) );
  GTECH_AOI21 U115 ( .A(n141), .B(a[7]), .C(n184), .Z(n181) );
  GTECH_OA21 U116 ( .A(a[7]), .B(n141), .C(b[7]), .Z(n184) );
  GTECH_OAI21 U117 ( .A(n144), .B(n150), .C(n146), .Z(n141) );
  GTECH_NAND2 U118 ( .A(b[6]), .B(a[6]), .Z(n146) );
  GTECH_AOI21 U119 ( .A(n159), .B(n152), .C(n154), .Z(n150) );
  GTECH_AND2 U120 ( .A(b[5]), .B(a[5]), .Z(n154) );
  GTECH_OR2 U121 ( .A(a[5]), .B(b[5]), .Z(n152) );
  GTECH_OR2 U122 ( .A(b[4]), .B(a[4]), .Z(n159) );
  GTECH_NOT U123 ( .A(n155), .Z(n144) );
  GTECH_OR2 U124 ( .A(a[6]), .B(b[6]), .Z(n155) );
endmodule

