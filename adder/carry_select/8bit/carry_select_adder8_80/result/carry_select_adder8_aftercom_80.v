
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
         n179, n180, n181, n182, n183, n184, n185;

  GTECH_MUX2 U66 ( .A(n135), .B(n136), .S(n137), .Z(sum[7]) );
  GTECH_XOR2 U67 ( .A(n138), .B(n139), .Z(n136) );
  GTECH_XNOR2 U68 ( .A(n138), .B(n140), .Z(n135) );
  GTECH_AOI21 U69 ( .A(n141), .B(n142), .C(n143), .Z(n140) );
  GTECH_XOR2 U70 ( .A(a[7]), .B(b[7]), .Z(n138) );
  GTECH_MUX2 U71 ( .A(n144), .B(n145), .S(n137), .Z(sum[6]) );
  GTECH_XOR2 U72 ( .A(n146), .B(n147), .Z(n145) );
  GTECH_XOR2 U73 ( .A(n146), .B(n141), .Z(n144) );
  GTECH_OAI22 U74 ( .A(n148), .B(n149), .C(n150), .D(n151), .Z(n141) );
  GTECH_AND_NOT U75 ( .A(n142), .B(n143), .Z(n146) );
  GTECH_MUX2 U76 ( .A(n152), .B(n153), .S(n137), .Z(sum[5]) );
  GTECH_XNOR2 U77 ( .A(n154), .B(n155), .Z(n153) );
  GTECH_XOR2 U78 ( .A(n149), .B(n155), .Z(n152) );
  GTECH_OAI21 U79 ( .A(n150), .B(n151), .C(n156), .Z(n155) );
  GTECH_OR_NOT U80 ( .A(n157), .B(n158), .Z(sum[4]) );
  GTECH_AO21 U81 ( .A(n149), .B(n154), .C(n159), .Z(n158) );
  GTECH_MUX2 U82 ( .A(n160), .B(n161), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U83 ( .A(n162), .B(n163), .Z(n161) );
  GTECH_XNOR2 U84 ( .A(n164), .B(n162), .Z(n160) );
  GTECH_XNOR2 U85 ( .A(a[3]), .B(b[3]), .Z(n162) );
  GTECH_AOI2N2 U86 ( .A(n165), .B(n166), .C(b[2]), .D(n167), .Z(n164) );
  GTECH_NOR2 U87 ( .A(n165), .B(n166), .Z(n167) );
  GTECH_MUX2 U88 ( .A(n168), .B(n169), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U89 ( .A(n170), .B(n171), .Z(n169) );
  GTECH_XNOR2 U90 ( .A(n170), .B(n166), .Z(n168) );
  GTECH_AOI21 U91 ( .A(n172), .B(n173), .C(n174), .Z(n166) );
  GTECH_XNOR2 U92 ( .A(n165), .B(b[2]), .Z(n170) );
  GTECH_MUX2 U93 ( .A(n175), .B(n176), .S(n177), .Z(sum[1]) );
  GTECH_AND_NOT U94 ( .A(n172), .B(n174), .Z(n177) );
  GTECH_OAI21 U95 ( .A(cin), .B(n173), .C(n178), .Z(n176) );
  GTECH_AO21 U96 ( .A(n178), .B(cin), .C(n173), .Z(n175) );
  GTECH_XNOR2 U97 ( .A(cin), .B(n179), .Z(sum[0]) );
  GTECH_AO21 U98 ( .A(n180), .B(n137), .C(n157), .Z(cout) );
  GTECH_AND3 U99 ( .A(n149), .B(n154), .C(n159), .Z(n157) );
  GTECH_NAND2 U100 ( .A(a[4]), .B(b[4]), .Z(n149) );
  GTECH_NOT U101 ( .A(n159), .Z(n137) );
  GTECH_MUX2 U102 ( .A(n179), .B(n181), .S(cin), .Z(n159) );
  GTECH_AOI22 U103 ( .A(n163), .B(a[3]), .C(n182), .D(b[3]), .Z(n181) );
  GTECH_OR2 U104 ( .A(a[3]), .B(n163), .Z(n182) );
  GTECH_OAI21 U105 ( .A(n171), .B(n165), .C(n183), .Z(n163) );
  GTECH_AO21 U106 ( .A(n165), .B(n171), .C(n184), .Z(n183) );
  GTECH_NOT U107 ( .A(b[2]), .Z(n184) );
  GTECH_NOT U108 ( .A(a[2]), .Z(n165) );
  GTECH_AOI21 U109 ( .A(n172), .B(n178), .C(n174), .Z(n171) );
  GTECH_AND2 U110 ( .A(a[1]), .B(b[1]), .Z(n174) );
  GTECH_OR2 U111 ( .A(b[1]), .B(a[1]), .Z(n172) );
  GTECH_OR_NOT U112 ( .A(n173), .B(n178), .Z(n179) );
  GTECH_OR2 U113 ( .A(b[0]), .B(a[0]), .Z(n178) );
  GTECH_AND2 U114 ( .A(a[0]), .B(b[0]), .Z(n173) );
  GTECH_AO22 U115 ( .A(n185), .B(b[7]), .C(n139), .D(a[7]), .Z(n180) );
  GTECH_OR2 U116 ( .A(n139), .B(a[7]), .Z(n185) );
  GTECH_AO21 U117 ( .A(n142), .B(n147), .C(n143), .Z(n139) );
  GTECH_AND2 U118 ( .A(b[6]), .B(a[6]), .Z(n143) );
  GTECH_OAI2N2 U119 ( .A(n150), .B(n151), .C(n154), .D(n156), .Z(n147) );
  GTECH_NOT U120 ( .A(n148), .Z(n156) );
  GTECH_AND_NOT U121 ( .A(n151), .B(a[5]), .Z(n148) );
  GTECH_OR2 U122 ( .A(a[4]), .B(b[4]), .Z(n154) );
  GTECH_NOT U123 ( .A(b[5]), .Z(n151) );
  GTECH_NOT U124 ( .A(a[5]), .Z(n150) );
  GTECH_OR2 U125 ( .A(a[6]), .B(b[6]), .Z(n142) );
endmodule

