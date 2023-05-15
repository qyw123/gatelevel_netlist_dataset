
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191;

  GTECH_MUX2 U68 ( .A(n137), .B(n138), .S(n139), .Z(sum[7]) );
  GTECH_XNOR2 U69 ( .A(n140), .B(n141), .Z(n138) );
  GTECH_AND2 U70 ( .A(n142), .B(n143), .Z(n141) );
  GTECH_OAI21 U71 ( .A(b[6]), .B(a[6]), .C(n144), .Z(n143) );
  GTECH_OA21 U72 ( .A(n145), .B(n146), .C(n147), .Z(n144) );
  GTECH_XNOR2 U73 ( .A(n140), .B(n148), .Z(n137) );
  GTECH_XOR2 U74 ( .A(n149), .B(n150), .Z(n140) );
  GTECH_OAI21 U75 ( .A(n151), .B(n142), .C(n152), .Z(sum[6]) );
  GTECH_MUX2 U76 ( .A(n153), .B(n154), .S(b[6]), .Z(n152) );
  GTECH_OR_NOT U77 ( .A(a[6]), .B(n151), .Z(n154) );
  GTECH_XNOR2 U78 ( .A(a[6]), .B(n155), .Z(n153) );
  GTECH_NOT U79 ( .A(n151), .Z(n155) );
  GTECH_OA21 U80 ( .A(n156), .B(n139), .C(n157), .Z(n151) );
  GTECH_AOI21 U81 ( .A(n147), .B(n145), .C(n146), .Z(n157) );
  GTECH_MUX2 U82 ( .A(n158), .B(n159), .S(n139), .Z(sum[5]) );
  GTECH_XOR2 U83 ( .A(n160), .B(n161), .Z(n159) );
  GTECH_XNOR2 U84 ( .A(n161), .B(n162), .Z(n158) );
  GTECH_OR_NOT U85 ( .A(n146), .B(n147), .Z(n161) );
  GTECH_OAI21 U86 ( .A(n163), .B(n139), .C(n164), .Z(sum[4]) );
  GTECH_AND_NOT U87 ( .A(n162), .B(n145), .Z(n163) );
  GTECH_MUX2 U88 ( .A(n165), .B(n166), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U89 ( .A(n167), .B(n168), .Z(n166) );
  GTECH_XNOR2 U90 ( .A(n169), .B(n167), .Z(n165) );
  GTECH_XNOR2 U91 ( .A(a[3]), .B(b[3]), .Z(n167) );
  GTECH_OA21 U92 ( .A(a[2]), .B(n170), .C(n171), .Z(n169) );
  GTECH_AO21 U93 ( .A(n170), .B(a[2]), .C(b[2]), .Z(n171) );
  GTECH_MUX2 U94 ( .A(n172), .B(n173), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U95 ( .A(n174), .B(n175), .Z(n173) );
  GTECH_XOR2 U96 ( .A(n174), .B(n170), .Z(n172) );
  GTECH_AO21 U97 ( .A(n176), .B(n177), .C(n178), .Z(n170) );
  GTECH_XOR2 U98 ( .A(a[2]), .B(b[2]), .Z(n174) );
  GTECH_MUX2 U99 ( .A(n179), .B(n180), .S(n181), .Z(sum[1]) );
  GTECH_AND_NOT U100 ( .A(n176), .B(n178), .Z(n181) );
  GTECH_OAI21 U101 ( .A(cin), .B(n177), .C(n182), .Z(n180) );
  GTECH_AO21 U102 ( .A(n182), .B(cin), .C(n177), .Z(n179) );
  GTECH_AND2 U103 ( .A(b[0]), .B(a[0]), .Z(n177) );
  GTECH_XOR2 U104 ( .A(cin), .B(n183), .Z(sum[0]) );
  GTECH_OAI21 U105 ( .A(n184), .B(n139), .C(n164), .Z(cout) );
  GTECH_NAND3 U106 ( .A(n162), .B(n160), .C(n139), .Z(n164) );
  GTECH_NOT U107 ( .A(n145), .Z(n160) );
  GTECH_AND2 U108 ( .A(a[4]), .B(b[4]), .Z(n145) );
  GTECH_NOT U109 ( .A(n185), .Z(n139) );
  GTECH_MUX2 U110 ( .A(n183), .B(n186), .S(cin), .Z(n185) );
  GTECH_OA21 U111 ( .A(a[3]), .B(n168), .C(n187), .Z(n186) );
  GTECH_AO21 U112 ( .A(n168), .B(a[3]), .C(b[3]), .Z(n187) );
  GTECH_AO21 U113 ( .A(n175), .B(a[2]), .C(n188), .Z(n168) );
  GTECH_OA21 U114 ( .A(a[2]), .B(n175), .C(b[2]), .Z(n188) );
  GTECH_AO21 U115 ( .A(n182), .B(n176), .C(n178), .Z(n175) );
  GTECH_AND2 U116 ( .A(a[1]), .B(b[1]), .Z(n178) );
  GTECH_OR2 U117 ( .A(b[1]), .B(a[1]), .Z(n176) );
  GTECH_OR2 U118 ( .A(b[0]), .B(a[0]), .Z(n182) );
  GTECH_XOR2 U119 ( .A(a[0]), .B(b[0]), .Z(n183) );
  GTECH_OA21 U120 ( .A(n148), .B(n149), .C(n189), .Z(n184) );
  GTECH_AO21 U121 ( .A(n149), .B(n148), .C(n150), .Z(n189) );
  GTECH_NOT U122 ( .A(b[7]), .Z(n150) );
  GTECH_NOT U123 ( .A(a[7]), .Z(n149) );
  GTECH_OA21 U124 ( .A(n156), .B(n190), .C(n142), .Z(n148) );
  GTECH_OR_NOT U125 ( .A(n191), .B(a[6]), .Z(n142) );
  GTECH_AND_NOT U126 ( .A(n191), .B(a[6]), .Z(n190) );
  GTECH_NOT U127 ( .A(b[6]), .Z(n191) );
  GTECH_AOI21 U128 ( .A(n147), .B(n162), .C(n146), .Z(n156) );
  GTECH_AND2 U129 ( .A(a[5]), .B(b[5]), .Z(n146) );
  GTECH_OR2 U130 ( .A(b[4]), .B(a[4]), .Z(n162) );
  GTECH_OR2 U131 ( .A(b[5]), .B(a[5]), .Z(n147) );
endmodule

