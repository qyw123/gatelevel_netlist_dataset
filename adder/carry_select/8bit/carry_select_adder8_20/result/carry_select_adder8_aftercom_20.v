
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
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192;

  GTECH_MUX2 U69 ( .A(n138), .B(n139), .S(n140), .Z(sum[7]) );
  GTECH_XNOR2 U70 ( .A(n141), .B(n142), .Z(n139) );
  GTECH_XOR2 U71 ( .A(n141), .B(n143), .Z(n138) );
  GTECH_NOR2 U72 ( .A(n144), .B(n145), .Z(n143) );
  GTECH_OA21 U73 ( .A(b[6]), .B(a[6]), .C(n146), .Z(n145) );
  GTECH_XNOR2 U74 ( .A(a[7]), .B(b[7]), .Z(n141) );
  GTECH_AO21 U75 ( .A(n147), .B(n144), .C(n148), .Z(sum[6]) );
  GTECH_NOT U76 ( .A(n149), .Z(n148) );
  GTECH_MUX2 U77 ( .A(n150), .B(n151), .S(b[6]), .Z(n149) );
  GTECH_OR2 U78 ( .A(n147), .B(a[6]), .Z(n151) );
  GTECH_XNOR2 U79 ( .A(a[6]), .B(n147), .Z(n150) );
  GTECH_AO21 U80 ( .A(n152), .B(n140), .C(n146), .Z(n147) );
  GTECH_OAI2N2 U81 ( .A(n153), .B(n154), .C(a[5]), .D(b[5]), .Z(n146) );
  GTECH_MUX2 U82 ( .A(n155), .B(n156), .S(n140), .Z(sum[5]) );
  GTECH_XNOR2 U83 ( .A(n157), .B(n158), .Z(n156) );
  GTECH_XNOR2 U84 ( .A(n154), .B(n158), .Z(n155) );
  GTECH_AOI21 U85 ( .A(a[5]), .B(b[5]), .C(n153), .Z(n158) );
  GTECH_OAI21 U86 ( .A(n159), .B(n160), .C(n161), .Z(sum[4]) );
  GTECH_AND_NOT U87 ( .A(n154), .B(n157), .Z(n159) );
  GTECH_NOT U88 ( .A(n162), .Z(n154) );
  GTECH_MUX2 U89 ( .A(n163), .B(n164), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U90 ( .A(n165), .B(n166), .Z(n164) );
  GTECH_XOR2 U91 ( .A(n167), .B(n165), .Z(n163) );
  GTECH_XOR2 U92 ( .A(a[3]), .B(b[3]), .Z(n165) );
  GTECH_OA21 U93 ( .A(a[2]), .B(n168), .C(n169), .Z(n167) );
  GTECH_AO21 U94 ( .A(n168), .B(a[2]), .C(b[2]), .Z(n169) );
  GTECH_MUX2 U95 ( .A(n170), .B(n171), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U96 ( .A(n172), .B(n173), .Z(n171) );
  GTECH_XNOR2 U97 ( .A(n172), .B(n168), .Z(n170) );
  GTECH_OAI21 U98 ( .A(n174), .B(n175), .C(n176), .Z(n168) );
  GTECH_XOR2 U99 ( .A(a[2]), .B(n177), .Z(n172) );
  GTECH_MUX2 U100 ( .A(n178), .B(n179), .S(n180), .Z(sum[1]) );
  GTECH_AND_NOT U101 ( .A(n176), .B(n174), .Z(n180) );
  GTECH_AO21 U102 ( .A(n181), .B(n175), .C(n182), .Z(n179) );
  GTECH_OAI21 U103 ( .A(n182), .B(n181), .C(n175), .Z(n178) );
  GTECH_NOT U104 ( .A(n183), .Z(n175) );
  GTECH_NOT U105 ( .A(cin), .Z(n181) );
  GTECH_XNOR2 U106 ( .A(cin), .B(n184), .Z(sum[0]) );
  GTECH_OAI21 U107 ( .A(n185), .B(n160), .C(n161), .Z(cout) );
  GTECH_OR3 U108 ( .A(n157), .B(n162), .C(n140), .Z(n161) );
  GTECH_NOT U109 ( .A(n160), .Z(n140) );
  GTECH_AND2 U110 ( .A(b[4]), .B(a[4]), .Z(n162) );
  GTECH_MUX2 U111 ( .A(n184), .B(n186), .S(cin), .Z(n160) );
  GTECH_AOI21 U112 ( .A(n166), .B(a[3]), .C(n187), .Z(n186) );
  GTECH_OA21 U113 ( .A(a[3]), .B(n166), .C(b[3]), .Z(n187) );
  GTECH_OAI21 U114 ( .A(n173), .B(n188), .C(n189), .Z(n166) );
  GTECH_AO21 U115 ( .A(n188), .B(n173), .C(n177), .Z(n189) );
  GTECH_NOT U116 ( .A(b[2]), .Z(n177) );
  GTECH_NOT U117 ( .A(a[2]), .Z(n188) );
  GTECH_OA21 U118 ( .A(n174), .B(n182), .C(n176), .Z(n173) );
  GTECH_NOT U119 ( .A(n190), .Z(n176) );
  GTECH_AND2 U120 ( .A(a[1]), .B(b[1]), .Z(n190) );
  GTECH_NOR2 U121 ( .A(b[1]), .B(a[1]), .Z(n174) );
  GTECH_OR2 U122 ( .A(n183), .B(n182), .Z(n184) );
  GTECH_NOR2 U123 ( .A(a[0]), .B(b[0]), .Z(n182) );
  GTECH_AND2 U124 ( .A(a[0]), .B(b[0]), .Z(n183) );
  GTECH_AOI21 U125 ( .A(n142), .B(a[7]), .C(n191), .Z(n185) );
  GTECH_OA21 U126 ( .A(a[7]), .B(n142), .C(b[7]), .Z(n191) );
  GTECH_AO21 U127 ( .A(n152), .B(n192), .C(n144), .Z(n142) );
  GTECH_AND2 U128 ( .A(b[6]), .B(a[6]), .Z(n144) );
  GTECH_OR2 U129 ( .A(b[6]), .B(a[6]), .Z(n192) );
  GTECH_OAI2N2 U130 ( .A(n153), .B(n157), .C(a[5]), .D(b[5]), .Z(n152) );
  GTECH_NOR2 U131 ( .A(a[4]), .B(b[4]), .Z(n157) );
  GTECH_NOR2 U132 ( .A(a[5]), .B(b[5]), .Z(n153) );
endmodule

