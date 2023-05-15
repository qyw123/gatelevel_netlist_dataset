
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
         n182, n183, n184, n185;

  GTECH_MUX2 U69 ( .A(n138), .B(n139), .S(n140), .Z(sum[7]) );
  GTECH_XNOR2 U70 ( .A(n141), .B(n142), .Z(n139) );
  GTECH_AND2 U71 ( .A(n143), .B(n144), .Z(n141) );
  GTECH_OAI21 U72 ( .A(b[6]), .B(a[6]), .C(n145), .Z(n143) );
  GTECH_ADD_AB U73 ( .A(n146), .B(n142), .S(n138) );
  GTECH_ADD_AB U74 ( .A(b[7]), .B(a[7]), .S(n142) );
  GTECH_OAI21 U75 ( .A(n147), .B(n144), .C(n148), .Z(sum[6]) );
  GTECH_MUX2 U76 ( .A(n149), .B(n150), .S(b[6]), .Z(n148) );
  GTECH_OR_NOT U77 ( .A(a[6]), .B(n147), .Z(n150) );
  GTECH_ADD_AB U78 ( .A(a[6]), .B(n147), .S(n149) );
  GTECH_AOI21 U79 ( .A(n151), .B(n152), .C(n145), .Z(n147) );
  GTECH_AO21 U80 ( .A(n153), .B(n154), .C(n155), .Z(n145) );
  GTECH_MUX2 U81 ( .A(n156), .B(n157), .S(n158), .Z(sum[5]) );
  GTECH_AOI21 U82 ( .A(n159), .B(n152), .C(n154), .Z(n158) );
  GTECH_NOT U83 ( .A(n140), .Z(n152) );
  GTECH_ADD_AB U84 ( .A(b[5]), .B(a[5]), .S(n157) );
  GTECH_OR_NOT U85 ( .A(n155), .B(n153), .Z(n156) );
  GTECH_OAI21 U86 ( .A(n160), .B(n140), .C(n161), .Z(sum[4]) );
  GTECH_MUX2 U87 ( .A(n162), .B(n163), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U88 ( .A(n164), .B(n165), .Z(n163) );
  GTECH_XNOR2 U89 ( .A(n166), .B(n165), .Z(n162) );
  GTECH_XNOR2 U90 ( .A(b[3]), .B(a[3]), .Z(n165) );
  GTECH_ADD_ABC U91 ( .A(a[2]), .B(n167), .C(b[2]), .COUT(n166) );
  GTECH_MUX2 U92 ( .A(n168), .B(n169), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U93 ( .A(n170), .B(n171), .Z(n169) );
  GTECH_XNOR2 U94 ( .A(n167), .B(n171), .Z(n168) );
  GTECH_XNOR2 U95 ( .A(b[2]), .B(a[2]), .Z(n171) );
  GTECH_OA21 U96 ( .A(n172), .B(n173), .C(n174), .Z(n167) );
  GTECH_MUX2 U97 ( .A(n175), .B(n176), .S(n177), .Z(sum[1]) );
  GTECH_AND_NOT U98 ( .A(n174), .B(n172), .Z(n177) );
  GTECH_OAI21 U99 ( .A(cin), .B(n173), .C(n178), .Z(n176) );
  GTECH_AO21 U100 ( .A(n178), .B(cin), .C(n173), .Z(n175) );
  GTECH_AND_NOT U101 ( .A(a[0]), .B(n179), .Z(n173) );
  GTECH_XNOR2 U102 ( .A(cin), .B(n180), .Z(sum[0]) );
  GTECH_OAI21 U103 ( .A(n181), .B(n140), .C(n161), .Z(cout) );
  GTECH_NAND2 U104 ( .A(n140), .B(n160), .Z(n161) );
  GTECH_AND_NOT U105 ( .A(n159), .B(n154), .Z(n160) );
  GTECH_AND2 U106 ( .A(b[4]), .B(a[4]), .Z(n154) );
  GTECH_MUX2 U107 ( .A(n180), .B(n182), .S(cin), .Z(n140) );
  GTECH_AOI21 U108 ( .A(n164), .B(a[3]), .C(n183), .Z(n182) );
  GTECH_OA21 U109 ( .A(a[3]), .B(n164), .C(b[3]), .Z(n183) );
  GTECH_ADD_ABC U110 ( .A(n170), .B(a[2]), .C(b[2]), .COUT(n164) );
  GTECH_OA21 U111 ( .A(n172), .B(n178), .C(n174), .Z(n170) );
  GTECH_OR2 U112 ( .A(a[1]), .B(b[1]), .Z(n174) );
  GTECH_OR_NOT U113 ( .A(a[0]), .B(n179), .Z(n178) );
  GTECH_NOT U114 ( .A(b[0]), .Z(n179) );
  GTECH_AND2 U115 ( .A(b[1]), .B(a[1]), .Z(n172) );
  GTECH_XNOR2 U116 ( .A(b[0]), .B(a[0]), .Z(n180) );
  GTECH_AOI21 U117 ( .A(n146), .B(a[7]), .C(n184), .Z(n181) );
  GTECH_OA21 U118 ( .A(a[7]), .B(n146), .C(b[7]), .Z(n184) );
  GTECH_NAND2 U119 ( .A(n185), .B(n144), .Z(n146) );
  GTECH_NAND2 U120 ( .A(b[6]), .B(a[6]), .Z(n144) );
  GTECH_OAI21 U121 ( .A(a[6]), .B(b[6]), .C(n151), .Z(n185) );
  GTECH_AO21 U122 ( .A(n159), .B(n153), .C(n155), .Z(n151) );
  GTECH_AND2 U123 ( .A(b[5]), .B(a[5]), .Z(n155) );
  GTECH_OR2 U124 ( .A(a[5]), .B(b[5]), .Z(n153) );
  GTECH_OR2 U125 ( .A(b[4]), .B(a[4]), .Z(n159) );
endmodule

